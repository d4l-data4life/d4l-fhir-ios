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
//  Money.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Money)
//

import Foundation

/**
An amount of economic utility in some recognized currency.
*/
open class Money: Quantity {
	override open class var resourceType: String {
		get { return "Money" }
	}

    private static var keyPaths: [String: PartialKeyPath<Money>] = [

        :
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Money.keyPaths[name] as? KeyPath<Money, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Money.keyPaths[name] {
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

extension Money {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Money else {
            return self
        }

        return resource
    }
}
