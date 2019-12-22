#if (ARDUINO >= 100)
 #include <Arduino.h>
#else
 #include <WProgram.h>
#endif
// Encoders on pins 2 and 13

#include <Servo.h> 
#include <ros.h>
#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "std_msgs/UInt16MultiArray.h"
#include "std_msgs/Int32.h"

const int ENCODER_EDGES_PER_ROTATION = 2048;  // this depends on your encoder
const int ENCODER_SAMPLES_PER_SECOND = 60;        // this will need to be tuned depending on your use case...
const int LOOP_DELAY_MS = 1 * 100;  

int Sinal_ESC;
int Sinal_SERVO;

ros::NodeHandle  nh;

Servo servo;
Servo esc;


void servo_cb( const std_msgs::UInt16MultiArray&  cmd_msg){
  servo.write(cmd_msg.data[0]); //set servo angle 
  esc.write(cmd_msg.data[1]); 
}


ros::Subscriber<std_msgs::UInt16MultiArray> sub("servo", servo_cb);

std_msgs::Int32 EncVel;
std_msgs::Int32 Int32;
ros::Publisher pub_encoder("encoder", &Int32);

std_msgs::Int32 Servo_Pos;
std_msgs::Int32 Int33;
ros::Publisher pub_servo("servo_pos", &Int33);

void setup(){

  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(pub_encoder);
  nh.advertise(pub_servo);


  servo.attach(9); //attach servo to pin 9
  esc.attach(10);//attach esc to pin 10

  servo.write(105);
  //esc.write(90);
  
  REG_PMC_PCER0 = PMC_PCER0_PID27
                | PMC_PCER0_PID28
                | PMC_PCER0_PID29;

  REG_TC0_CMR2 = TC_CMR_TCCLKS_TIMER_CLOCK4 
               | TC_CMR_WAVE
               | TC_CMR_ACPC_TOGGLE 
               | TC_CMR_WAVSEL_UP_RC;

  REG_TC0_RC2 = F_CPU / 128 / ENCODER_SAMPLES_PER_SECOND;
  REG_TC0_CMR0 = TC_CMR_ABETRG
               | TC_CMR_LDRA_EDGE
               | TC_CMR_LDRB_EDGE 
               | TC_CMR_ETRGEDG_EDGE 
               | TC_CMR_CPCTRG; 
               
  REG_TC0_BMR = TC_BMR_QDEN
              | TC_BMR_SPEEDEN
              | TC_BMR_EDGPHA;
              
  REG_TC0_CCR0 = TC_CCR_CLKEN | TC_CCR_SWTRG;  
  REG_TC0_CCR1 = TC_CCR_CLKEN | TC_CCR_SWTRG;  
  REG_TC0_CCR2 = TC_CCR_CLKEN | TC_CCR_SWTRG;  
               
  //Serial.begin(115200);
}

void loop(){

  int iIndexCount = REG_TC0_CV1;  
  int iSpeedPPP = REG_TC0_RA0;    
  double dSpeedRPS = ((iSpeedPPP / (ENCODER_EDGES_PER_ROTATION * 1.0)) * ENCODER_SAMPLES_PER_SECOND);
  double dSpeedRPM =  dSpeedRPS * 60;
  
  EncVel.data = int(dSpeedRPM);
  Servo_Pos.data = int(servo.read());

  //Serial.println(dSpeedRPM);
  
  pub_encoder.publish(&EncVel);
  pub_servo.publish(&Servo_Pos);
  nh.spinOnce();
  delay(16.66666);

  
}
