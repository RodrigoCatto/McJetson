// Auto-generated. Do not edit!

// (in-package hector_nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetDistanceToObstacleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.PointStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDistanceToObstacleRequest
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDistanceToObstacleRequest
    let len;
    let data = new GetDistanceToObstacleRequest(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.point);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hector_nav_msgs/GetDistanceToObstacleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47dfdbd810b48d0a47b7ad67e4191bcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    geometry_msgs/PointStamped point
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDistanceToObstacleRequest(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.PointStamped.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.PointStamped()
    }

    return resolved;
    }
};

class GetDistanceToObstacleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.end_point = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('end_point')) {
        this.end_point = initObj.end_point
      }
      else {
        this.end_point = new geometry_msgs.msg.PointStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDistanceToObstacleResponse
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [end_point]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.end_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDistanceToObstacleResponse
    let len;
    let data = new GetDistanceToObstacleResponse(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_point]
    data.end_point = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.end_point);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hector_nav_msgs/GetDistanceToObstacleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '019a8fc3bf7fd73c014dc08523397f1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 distance
    geometry_msgs/PointStamped end_point
    
    
    
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDistanceToObstacleResponse(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.end_point !== undefined) {
      resolved.end_point = geometry_msgs.msg.PointStamped.Resolve(msg.end_point)
    }
    else {
      resolved.end_point = new geometry_msgs.msg.PointStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDistanceToObstacleRequest,
  Response: GetDistanceToObstacleResponse,
  md5sum() { return 'db18115f41079cd33136cf1e23b216ad'; },
  datatype() { return 'hector_nav_msgs/GetDistanceToObstacle'; }
};
