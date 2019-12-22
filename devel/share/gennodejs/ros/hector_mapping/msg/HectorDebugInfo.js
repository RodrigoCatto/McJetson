// Auto-generated. Do not edit!

// (in-package hector_mapping.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HectorIterData = require('./HectorIterData.js');

//-----------------------------------------------------------

class HectorDebugInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iterData = null;
    }
    else {
      if (initObj.hasOwnProperty('iterData')) {
        this.iterData = initObj.iterData
      }
      else {
        this.iterData = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HectorDebugInfo
    // Serialize message field [iterData]
    // Serialize the length for message field [iterData]
    bufferOffset = _serializer.uint32(obj.iterData.length, buffer, bufferOffset);
    obj.iterData.forEach((val) => {
      bufferOffset = HectorIterData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HectorDebugInfo
    let len;
    let data = new HectorDebugInfo(null);
    // Deserialize message field [iterData]
    // Deserialize array length for message field [iterData]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.iterData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.iterData[i] = HectorIterData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 104 * object.iterData.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hector_mapping/HectorDebugInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d33c0696c0c536f5c1447c260756674';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    HectorIterData[] iterData
    ================================================================================
    MSG: hector_mapping/HectorIterData
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
    const resolved = new HectorDebugInfo(null);
    if (msg.iterData !== undefined) {
      resolved.iterData = new Array(msg.iterData.length);
      for (let i = 0; i < resolved.iterData.length; ++i) {
        resolved.iterData[i] = HectorIterData.Resolve(msg.iterData[i]);
      }
    }
    else {
      resolved.iterData = []
    }

    return resolved;
    }
};

module.exports = HectorDebugInfo;
