// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: DataModel.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Tasks {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tasks: [Task] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Task {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  var createDate: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._createDate ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._createDate = newValue}
  }
  /// Returns true if `createDate` has been explicitly set.
  var hasCreateDate: Bool {return _storage._createDate != nil}
  /// Clears the value of `createDate`. Subsequent reads from it will return its default value.
  mutating func clearCreateDate() {_uniqueStorage()._createDate = nil}

  var isFinished: Bool {
    get {return _storage._isFinished}
    set {_uniqueStorage()._isFinished = newValue}
  }

  var subtasks: Int32 {
    get {return _storage._subtasks}
    set {_uniqueStorage()._subtasks = newValue}
  }

  var weight: Double {
    get {return _storage._weight}
    set {_uniqueStorage()._weight = newValue}
  }

  var children: [String] {
    get {return _storage._children}
    set {_uniqueStorage()._children = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Tasks: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Tasks"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tasks"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.tasks)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.tasks.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tasks, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Tasks, rhs: Tasks) -> Bool {
    if lhs.tasks != rhs.tasks {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Task: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Task"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "createDate"),
    4: .same(proto: "isFinished"),
    5: .same(proto: "subtasks"),
    6: .same(proto: "weight"),
    7: .same(proto: "children"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _name: String = String()
    var _createDate: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _isFinished: Bool = false
    var _subtasks: Int32 = 0
    var _weight: Double = 0
    var _children: [String] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _name = source._name
      _createDate = source._createDate
      _isFinished = source._isFinished
      _subtasks = source._subtasks
      _weight = source._weight
      _children = source._children
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._id)
        case 2: try decoder.decodeSingularStringField(value: &_storage._name)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._createDate)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._isFinished)
        case 5: try decoder.decodeSingularInt32Field(value: &_storage._subtasks)
        case 6: try decoder.decodeSingularDoubleField(value: &_storage._weight)
        case 7: try decoder.decodeRepeatedStringField(value: &_storage._children)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 2)
      }
      if let v = _storage._createDate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if _storage._isFinished != false {
        try visitor.visitSingularBoolField(value: _storage._isFinished, fieldNumber: 4)
      }
      if _storage._subtasks != 0 {
        try visitor.visitSingularInt32Field(value: _storage._subtasks, fieldNumber: 5)
      }
      if _storage._weight != 0 {
        try visitor.visitSingularDoubleField(value: _storage._weight, fieldNumber: 6)
      }
      if !_storage._children.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._children, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Task, rhs: Task) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._createDate != rhs_storage._createDate {return false}
        if _storage._isFinished != rhs_storage._isFinished {return false}
        if _storage._subtasks != rhs_storage._subtasks {return false}
        if _storage._weight != rhs_storage._weight {return false}
        if _storage._children != rhs_storage._children {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
