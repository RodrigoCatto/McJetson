// Auto-generated. Do not edit!

// (in-package hector_nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetRecoveryInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_time = null;
      this.request_radius = null;
    }
    else {
      if (initObj.hasOwnProperty('request_time')) {
        this.request_time = initObj.request_time
      }
      else {
        this.request_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('request_radius')) {
        this.request_radius = initObj.request_radius
      }
      else {
        this.request_radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRecoveryInfoRequest
    // Serialize message field [request_time]
    bufferOffset = _serializer.time(obj.request_time, buffer, bufferOffset);
    // Serialize message field [request_radius]
    bufferOffset = _serializer.float64(obj.request_radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRecoveryInfoRequest
    let len;
    let data = new GetRecoveryInfoRequest(null);
    // Deserialize message field [request_time]
    data.request_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [request_radius]
    data.request_radius = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hector_nav_msgs/GetRecoveryInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3916a0c55958d5dd43204cd2fe5608f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    time request_time
    float64 request_radius
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRecoveryInfoRequest(null);
    if (msg.request_time !== undefined) {
      resolved.request_time = msg.request_time;
    }
    else {
      resolved.request_time = {secs: 0, nsecs: 0}
    }

    if (msg.request_radius !== undefined) {
      resolved.request_radius = msg.request_radius;
    }
    else {
      resolved.request_radius = 0.0
    }

    return resolved;
    }
};

class GetRecoveryInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory_radius_entry_pose_to_req_pose = null;
      this.radius_entry_pose = null;
      this.req_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory_radius_entry_pose_to_req_pose')) {
        this.trajectory_radius_entry_pose_to_req_pose = initObj.trajectory_radius_entry_pose_to_req_pose
      }
      else {
        this.trajectory_radius_entry_pose_to_req_pose = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('radius_entry_pose')) {
        this.radius_entry_pose = initObj.radius_entry_pose
      }
      else {
        this.radius_entry_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('req_pose')) {
        this.req_pose = initObj.req_pose
      }
      else {
        this.req_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRecoveryInfoResponse
    // Serialize message field [trajectory_radius_entry_pose_to_req_pose]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.trajectory_radius_entry_pose_to_req_pose, buffer, bufferOffset);
    // Serialize message field [radius_entry_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.radius_entry_pose, buffer, bufferOffset);
    // Serialize message field [req_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.req_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRecoveryInfoResponse
    let len;
    let data = new GetRecoveryInfoResponse(null);
    // Deserialize message field [trajectory_radius_entry_pose_to_req_pose]
    data.trajectory_radius_entry_pose_to_req_pose = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius_entry_pose]
    data.radius_entry_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [req_pose]
    data.req_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.trajectory_radius_entry_pose_to_req_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.radius_entry_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.req_pose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hector_nav_msgs/GetRecoveryInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a93581be8e34e3c09aeafc6b9b990ad5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path trajectory_radius_entry_pose_to_req_pose
    geometry_msgs/PoseStamped radius_entry_pose
    geometry_msgs/PoseStamped req_pose
    
    
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRecoveryInfoResponse(null);
    if (msg.trajectory_radius_entry_pose_to_req_pose !== undefined) {
      resolved.trajectory_radius_entry_pose_to_req_pose = nav_msgs.msg.Path.Resolve(msg.trajectory_radius_entry_pose_to_req_pose)
    }
    else {
      resolved.trajectory_radius_entry_pose_to_req_pose = new nav_msgs.msg.Path()
    }

    if (msg.radius_entry_pose !== undefined) {
      resolved.radius_entry_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.radius_entry_pose)
    }
    else {
      resolved.radius_entry_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.req_pose !== undefined) {
      resolved.req_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.req_pose)
    }
    else {
      resolved.req_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRecoveryInfoRequest,
  Response: GetRecoveryInfoResponse,
  md5sum() { return 'edd6e579a08e5c27f2b7fcfa4c39b7bb'; },
  datatype() { return 'hector_nav_msgs/GetRecoveryInfo'; }
};
