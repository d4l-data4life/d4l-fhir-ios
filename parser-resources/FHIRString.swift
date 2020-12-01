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
Struct to hold on to strings.
*/
public struct FHIRString: FHIRPrimitive, CustomStringConvertible, ExpressibleByStringLiteral {

	/// The actual string value.
	public var string: String

	/// An optional id of the element.
	public var id: String?

	/// The parent/owner of the receiver, if any. Used to dereference resources.
	public weak var _owner: FHIRAbstractBase?

	/// Optional extensions of the element.
	public var extension_fhir: [Extension]?

	/// Returns true if the string is the empty string.
	public var isEmpty: Bool {
		return string.isEmpty
	}


	/**
	Designated initializer.

	- parameter string: The string represented by the receiver
	*/
	public init(_ string: String) {
		self.string = string
	}


	// MARK: - FHIRJSONType

	public typealias JSONType = String

	public init(json: JSONType, owner: FHIRAbstractBase?, context: inout FHIRInstantiationContext) {
		self.init(json)
		_owner = owner
	}

	public func asJSON(errors: inout [FHIRValidationError]) -> JSONType {
		return string
	}


	// MARK: - ExpressibleByStringLiteral

	public init(stringLiteral value: StringLiteralType) {
		self.init(value)
	}

	public init(unicodeScalarLiteral value: Character) {
		self.init("\(value)")
	}

	public init(extendedGraphemeClusterLiteral value: StringLiteralType) {
		self.init(value)
	}


	// MARK: - CustomStringConvertible

	public var description: String {
		return string
	}
}


extension FHIRString: Equatable, Comparable, Hashable {

	public static func ==(l: FHIRString, r: FHIRString) -> Bool {
		return l.string == r.string
	}

	public static func ==(l: String, r: FHIRString) -> Bool {
		return l == r.string
	}

	public static func ==(l: FHIRString, r: String) -> Bool {
		return l.string == r
	}


	public static func <(lh: FHIRString, rh: FHIRString) -> Bool {
		return lh.string < rh.string
	}

	public static func <(lh: String, rh: FHIRString) -> Bool {
		return lh < rh.string
	}

	public static func <(lh: FHIRString, rh: String) -> Bool {
		return lh.string < rh
	}


	public var hashValue: Int {
        return string.hashValue
    }
}


extension String {

	/// Convert the receiver to `FHIRString`. This is particularly useful when dealing with optional Strings.
	public var fhir_string: FHIRString {
		return FHIRString(self)
	}
}
