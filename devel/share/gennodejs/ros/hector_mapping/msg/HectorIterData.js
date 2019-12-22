// Auto-generated. Do not edit!

// (in-package hector_mapping.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HectorIterData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hessian = null;
      this.conditionNum = null;
      this.determinant = null;
      this.conditionNum2d = null;
      this.determinant2d = null;
    }
    else {
      if (initObj.hasOwnProperty('hessian')) {
        this.hessian = initObj.hessian
      }
      else {
        this.hessian = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('conditionNum')) {
        this.conditionNum = initObj.conditionNum
      }
      else {
        this.conditionNum = 0.0;
      }
      if (initObj.hasOwnProperty('determinant')) {
        this.determinant = initObj.determinant
      }
      else {
        this.determinant = 0.0;
      }
      if (initObj.hasOwnProperty('conditionNum2d')) {
        this.conditionNum2d = initObj.conditionNum2d
      }
      else {
        this.conditionNum2d = 0.0;
      }
      if (initObj.hasOwnProperty('determinant2d')) {
        this.determinant2d = initObj.determinant2d
      }
      else {
        this.determinant2d = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HectorIterData
    // Check that the constant length array field [hessian] has the right length
    if (obj.hessian.length !== 9) {
      throw new Error('Unable to serialize array field hessian - length must be 9')
    }
    // Serialize message field [hessian]
    bufferOffset = _arraySerializer.float64(obj.hessian, buffer, bufferOffset, 9);
    // Serialize message field [conditionNum]
    bufferOffset = _serializer.float64(obj.conditionNum, buffer, bufferOffset);
    // Serialize message field [determinant]
    bufferOffset = _serializer.float64(obj.determinant, buffer, bufferOffset);
    // Serialize message field [conditionNum2d]
    bufferOffset = _serializer.float64(obj.conditionNum2d, buffer, bufferOffset);
    // Serialize message field [determinant2d]
    bufferOffset = _serializer.float64(obj.determinant2d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HectorIterData
    let len;
    let data = new HectorIterData(null);
    // Deserialize message field [hessian]
    data.hessian = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [conditionNum]
    data.conditionNum = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [determinant]
    data.determinant = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [conditionNum2d]
    data.conditionNum2d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [determinant2d]
    data.determinant2d = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hector_mapping/HectorIterData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecedaa7e26b5fc817a1add44c17fec5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[9] hessian
    float64 conditionNum
    float64 determinant
    float64 conditionNum2d
    float64 determinant2d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HectorIterData(null);
    if (msg.hessian !== undefined) {
      resolved.hessian = msg.hessian;
    }
    else {
      resolved.hessian = new Array(9).fill(0)
    }

    if (msg.conditionNum !== undefined) {
      resolved.conditionNum = msg.conditionNum;
    }
    else {
      resolved.conditionNum = 0.0
    }

    if (msg.determinant !== undefined) {
      resolved.determinant = msg.determinant;
    }
    else {
      resolved.determinant = 0.0
    }

    if (msg.conditionNum2d !== undefined) {
      resolved.conditionNum2d = msg.conditionNum2d;
    }
    else {
      resolved.conditionNum2d = 0.0
    }

    if (msg.determinant2d !== undefined) {
      resolved.determinant2d = msg.determinant2d;
    }
    else {
      resolved.determinant2d = 0.0
    }

    return resolved;
    }
};

module.exports = HectorIterData;
