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

/**
Abstract superclass for all FHIR data elements.
*/
open class FHIRAbstractBase: Codable, CustomStringConvertible, CustomDebugStringConvertible {

	/// The type of the resource or element.
	open class var resourceType: String {
		get { return "FHIRAbstractBase" }
	}

	public required init() {

    }

    public required init(from decoder: Decoder) throws {

    }

    public subscript<T>(_ name: String) -> T? {
        return nil
    }

    public subscript(untyped name: String) -> Any? {
        return nil
    }

	// MARK: - CustomStringConvertible

    open var description: String {
        return "<\(type(of: self).resourceType)>"
    }

    // MARK: - CustomStringConvertible

    open var debugDescription: String {
        guard let jsonData = try? JSONEncoder().encode(self), let jsonString = String(data: jsonData, encoding: .utf8) else {
            return description
        }

        return jsonString
    }

    func equal(to: FHIRAbstractBase) -> Bool {
        return description == to.description
    }
}

extension FHIRAbstractBase: Equatable {
    public static func == (lhs: FHIRAbstractBase, rhs: FHIRAbstractBase) -> Bool {
        return lhs.equal(to: rhs)
    }
}

extension FHIRAbstractBase: NSCopying {
    public func copy(with zone: NSZone? = nil) -> Any {
        return type(of: self).init()
    }
}
