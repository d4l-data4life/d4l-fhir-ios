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
//  Count.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Count)
//

import Foundation

/**
A measured or measurable amount.

A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are
not precisely quantified, including amounts involving arbitrary units and floating currencies.
*/
open class Count: Quantity {
	override open class var resourceType: String {
		get { return "Count" }
	}

    private static var keyPaths: [String: PartialKeyPath<Count>] = [

        :
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Count.keyPaths[name] as? KeyPath<Count, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Count.keyPaths[name] {
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

extension Count {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Count else {
            return self
        }

        return resource
    }
}
