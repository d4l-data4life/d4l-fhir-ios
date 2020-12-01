//  Copyright (c) 2020 D4L data4life gGmbH
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


/**
Data encoded as a base-64 string.
*/
public struct Base64Binary: FHIRPrimitive, ExpressibleByStringLiteral, CustomStringConvertible {

	/// The base-64 string.
	public var value: String

	/// An optional id of the element.
	public var id: String?

	/// The parent/owner of the receiver, if any. Used to dereference resources.
	public weak var _owner: FHIRAbstractBase?

	/// Optional extensions of the element.
	public var extension_fhir: [Extension]?


	/**
	Designated initializer.

	- parameter value: The Base64 string representing data of the receiver
	*/
	public init(value: String) {
		self.value = value
	}


	// MARK: - ExpressibleByStringLiteral

	public init(stringLiteral value: StringLiteralType) {
		self.value = value
	}

	public init(unicodeScalarLiteral value: Character) {
		self.value = "\(value)"
	}

	public init(extendedGraphemeClusterLiteral value: StringLiteralType) {
		self.value = value
	}


	// MARK: - Printable, Equatable and Comparable

	public var description: String {
		return "<Base64Binary; \(value.count) chars>"
	}


    enum CodingKeys: String, CodingKey {
        case value
        case id
        case owner
        case extension_fhir
    }
}

extension Base64Binary: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy:  CodingKeys.self)
        value = try container.decode(String.self, forKey: .value)
        id = try container.decodeIfPresent(String.self, forKey: .id)
        _owner = try container.decodeIfPresent(FHIRAbstractBase.self, forKey: .owner)
        extension_fhir = try container.decodeIfPresent([Extension].self, forKey: .extension_fhir)

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(_owner, forKey: .owner)
        try container.encodeIfPresent(extension_fhir, forKey: .extension_fhir)
        try container.encode(id, forKey: .id)

    }
}


extension Base64Binary: Equatable, Comparable {

	public static func == (lhs: Base64Binary, rhs: Base64Binary) -> Bool {
		return lhs.value == rhs.value
	}

	public static func < (lh: Base64Binary, rh: Base64Binary) -> Bool {
		return lh.value < rh.value
	}
}
