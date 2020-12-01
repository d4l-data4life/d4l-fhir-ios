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
Struct to hold on to URLs.
*/
public struct FHIRURL: FHIRPrimitive, CustomStringConvertible {

	/// The actual url.
	public var url: URL

	/// An optional id of the element.
	public var id: String?

	/// The parent/owner of the receiver, if any. Used to dereference resources.
	public weak var _owner: FHIRAbstractBase?

	/// Optional extensions of the element.
	public var extension_fhir: [Extension]?

	/// Returns true if the string is the empty string.
	public var absoluteString: String {
		return url.absoluteString
	}


	/**
	Designated initializer.

	- parameter string: The URL represented by the receiver
	*/
	public init(_ url: URL) {
		self.url = url
	}

	/**
	Convenience initializer.

	- parameter string: The URL string represented by the receiver
	*/
	public init?(_ string: String) {
		guard let url = URL(string: string) else {
			return nil
		}
		self.init(url)
	}


	// MARK: - FHIRJSONType

	public typealias JSONType = String

	public init(json: JSONType, owner: FHIRAbstractBase?, context: inout FHIRInstantiationContext) {
		if let url = URL(string: json) {
			self.url = url
		}
		else {
			context.addError(FHIRValidationError(key: "", problem: "“\(json)” is not a valid URI"))
			url = URL(string: "")!
		}
		_owner = owner
	}

	public func asJSON(errors: inout [FHIRValidationError]) -> JSONType {
		return url.absoluteString
	}


	// MARK: - CustomStringConvertible

	public var description: String {
		return url.description
	}
}


extension URL {

	public var absoluteFHIRString: FHIRString {
		return FHIRString(absoluteString)
	}

	/// Convert the receiver to `FHIRURL`. This is particularly useful when dealing with optional URLs.
	public var fhir_url: FHIRURL {
		return FHIRURL(self)
	}
}
