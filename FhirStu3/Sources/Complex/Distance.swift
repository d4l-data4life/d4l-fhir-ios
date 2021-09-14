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

//
//  Distance.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Distance)
//

import Foundation

/**
A length - a value with a unit that is a physical distance.
*/
open class Distance: Quantity {
	override open class var resourceType: String {
		get { return "Distance" }
	}

    private static var keyPaths: [String: PartialKeyPath<Distance>] = [

        :
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Distance.keyPaths[name] as? KeyPath<Distance, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Distance.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

	required public init() {
      	super.init()
    }

    public required init(from decoder: Decoder) throws {
    	try super.init(from: decoder)
    }

    override open func encode(to encoder: Encoder) throws {
    	try super.encode(to: encoder)
    }
}

extension Distance {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Distance else {
            return self
        }

        return resource
    }
}
