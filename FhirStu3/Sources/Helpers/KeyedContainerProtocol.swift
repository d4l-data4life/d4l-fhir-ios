//  Copyright (c) 2021 D4L data4life gGmbH
//  All rights reserved.
//
//  D4L owns all legal rights, title and interest in and to the Software Development Kit ("SDK"),
//  including any intellectual property rights that subsist in the SDK.
//
//  The SDK and its documentation may be accessed and used for viewing/review purposes only.
//  Any usage of the SDK for other purposes, including usage for the development of
//  applications/third-party applications shall require the conclusion of a license agreement
//  between you and D4L.
//
//  If you are interested in licensing the SDK for your own applications/third-party
//  applications and/or if you’d like to contribute to the development of the SDK, please
//  contact D4L by email to help@data4life.care.

import Foundation

// MARK: Codable
extension KeyedEncodingContainerProtocol {
    mutating func encodeArray<T: Encodable>(_ values: [T], forKey key: Self.Key) throws {
        var arrayContainer = nestedUnkeyedContainer(forKey: key)
        try arrayContainer.encode(contentsOf: values)
    }

    mutating func encodeArrayIfPresent<T: Encodable>(_ values: [T]?, forKey key: Self.Key) throws {
        if let values = values {
            try encodeArray(values, forKey: key)
        }
    }
}

extension KeyedDecodingContainerProtocol {
    func decodeArray<T: Decodable>(_ value: [T].Type, forKey key: Self.Key) throws -> [T] {
        return try self.decode([T].self, forKey: key)
    }

    func decodeArrayIfPresent<T: Decodable>(_ value: [T].Type, forKey key: Self.Key) throws -> [T]? {
        return try self.decodeIfPresent([T].self, forKey: key)
    }
}

// MARK: DateAndTime
extension KeyedEncodingContainerProtocol {
    mutating func encode<T: DateAndTime>(_ value: T, forKey key: Self.Key) throws {
        try self.encode(value.description, forKey: key)
    }

    mutating func encodeIfPresent<T: DateAndTime>(_ value: T?, forKey key: Self.Key) throws {
        if let value = value {
            try self.encode(value.description, forKey: key)
        }
    }

    mutating func encodeArray<T: DateAndTime>(_ values: [T], forKey key: Self.Key) throws {
        var arrayContainer = nestedUnkeyedContainer(forKey: key)
        let dates = values.map { $0.description }
        try arrayContainer.encode(contentsOf: dates)
    }

    mutating func encodeArrayIfPresent<T: DateAndTime>(_ values: [T]?, forKey key: Self.Key) throws {
        if let values = values {
            try encodeArray(values, forKey: key)
        }
    }
}

extension KeyedDecodingContainerProtocol {
    func decodeArray<T: DateAndTime>(_ value: [T].Type, forKey key: Self.Key) throws -> [T] {
        let values = try self.decode([String].self, forKey: key)

        return try values.map {
            guard let date = T(string: $0) else {
                throw Data4LifeFHIRError.invalidDateFormat
            }

            return date
        }
    }

    func decodeArrayIfPresent<T: DateAndTime>(_ value: [T].Type, forKey key: Self.Key) throws -> [T]? {
        guard let values = try self.decodeIfPresent([String].self, forKey: key) else {
            return nil
        }

        return try values.map {
            guard let date = T(string: $0) else {
                throw Data4LifeFHIRError.invalidDateFormat
            }

            return date
        }
    }

    func decode<T: DateAndTime>(_ value: T.Type, forKey key: Self.Key) throws -> T {
        let decodedValue = try self.decode(String.self, forKey: key)
        guard let date = value.init(string: decodedValue) else {
            throw Data4LifeFHIRError.invalidDateFormat
        }
        return date
    }

    func decodeIfPresent<T: DateAndTime>(_ value: T.Type, forKey key: Self.Key) throws -> T? {
        guard let decodedValue = try self.decodeIfPresent(String.self, forKey: key) else {
            return nil
        }

        return value.init(string: decodedValue)
    }
}

// Required for Swift 4.0 and below
func ==<T: Equatable>(lhs: [T]?, rhs: [T]?) -> Bool {
    switch (lhs,rhs) {
    case (.some(let lhs), .some(let rhs)):
        return lhs == rhs
    case (.none, .none):
        return true
    default:
        return false
    }
}
