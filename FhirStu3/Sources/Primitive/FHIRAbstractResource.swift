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
Abstract superclass for all FHIR resource models.
*/
open class FHIRAbstractResource: FHIRAbstractBase {

	/// A specific version id, if the instance was created using `vread`.
	public var _versionId: String?

    enum AbstractResourceKeys: String, CodingKey {
        case resourceType
    }

    public override subscript<T>(_ name: String) -> T? {
        return nil
    }

    public override subscript(untyped name: String) -> Any? {
        return nil
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: AbstractResourceKeys.self)
		try container.encode(Swift.type(of: self).resourceType, forKey: .resourceType)
	}

    override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? FHIRAbstractResource else {
            return false
        }

        return _versionId == object._versionId && super.equal(to: to)
    }
}
