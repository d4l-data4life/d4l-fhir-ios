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

//
//  Ratio.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Ratio)
//

import Foundation

/**
A ratio of two Quantity values - a numerator and a denominator.

A relationship of two Quantity values - expressed as a numerator and a denominator.
*/
open class Ratio: Element {
	override open class var resourceType: String {
		get { return "Ratio" }
	}

    private static var keyPaths: [String: PartialKeyPath<Ratio>] = [

        "denominator" : \Ratio.denominator,
        "numerator" : \Ratio.numerator
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Ratio.keyPaths[name] as? KeyPath<Ratio, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Ratio.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Denominator value.
	public var denominator: Quantity?

	/// Numerator value.
	public var numerator: Quantity?

	enum RatioKeys: String, CodingKey {
		case denominator
		case numerator
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: RatioKeys.self)
		try container.encodeIfPresent(denominator, forKey: .denominator)
		try container.encodeIfPresent(numerator, forKey: .numerator)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  RatioKeys.self)
		denominator = try container.decodeIfPresent(Quantity.self, forKey: .denominator)
		numerator = try container.decodeIfPresent(Quantity.self, forKey: .numerator)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Ratio else {
            return false
        }

		return	denominator == object.denominator &&
			numerator == object.numerator &&
			super.equal(to: to)
	}
}

extension Ratio {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Ratio else {
            return self
        }

        resource.denominator = self.denominator?.copy(with: zone) as? Quantity
        resource.numerator = self.numerator?.copy(with: zone) as? Quantity

        return resource
    }
}
