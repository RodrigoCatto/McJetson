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

class GetSearchPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ooi_pose = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('ooi_pose')) {
        this.ooi_pose = initObj.ooi_pose
      }
      else {
        this.ooi_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSearchPositionRequest
    // Serialize message field [ooi_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.ooi_pose, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSearchPositionRequest
    let len;
    let data = new GetSearchPositionRequest(null);
    // Deserialize message field [ooi_pose]
    data.ooi_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.ooi_pose);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hector_nav_msgs/GetSearchPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a579e8b989d066f6c17946ab060a6ff9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    geometry_msgs/PoseStamped ooi_pose
    float32 distance
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new GetSearchPositionRequest(null);
    if (msg.ooi_pose !== undefined) {
      resolved.ooi_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.ooi_pose)
    }
    else {
      resolved.ooi_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

class GetSearchPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.search_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('search_pose')) {
        this.search_pose = initObj.search_pose
      }
      else {
        this.search_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSearchPositionResponse
    // Serialize message field [search_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.search_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSearchPositionResponse
    let len;
    let data = new GetSearchPositionResponse(null);
    // Deserialize message field [search_pose]
    data.search_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.search_pose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hector_nav_msgs/GetSearchPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cc90c22cc49490b4dd1ef4798491231';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped search_pose
    
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new GetSearchPositionResponse(null);
    if (msg.search_pose !== undefined) {
      resolved.search_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.search_pose)
    }
    else {
      resolved.search_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSearchPositionRequest,
  Response: GetSearchPositionResponse,
  md5sum() { return 'a28d7c2840927c12082b304156df4111'; },
  datatype() { return 'hector_nav_msgs/GetSearchPosition'; }
};
