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
//  Quantity.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Quantity)
//

import Foundation

/**
A measured or measurable amount.

A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are
not precisely quantified, including amounts involving arbitrary units and floating currencies.
*/
open class Quantity: Element {
	override open class var resourceType: String {
		get { return "Quantity" }
	}

    private static var keyPaths: [String: PartialKeyPath<Quantity>] = [

        "code" : \Quantity.code,
        "comparator" : \Quantity.comparator,
        "system" : \Quantity.system,
        "unit" : \Quantity.unit,
        "value" : \Quantity.value
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Quantity.keyPaths[name] as? KeyPath<Quantity, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Quantity.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Coded form of the unit.
	public var code: String?

	/// How the value should be understood and represented - whether the actual value is greater or less than the stated
	/// value due to measurement issues; e.g. if the comparator is "<" , then the real value is < stated value.
	public var comparator: QuantityComparator?

	/// System that defines coded unit form.
	public var system: String?

	/// Unit representation.
	public var unit: String?

	/// Numerical value (with implicit precision).
	public var value: Float?

	enum QuantityKeys: String, CodingKey {
		case code
		case comparator
		case system
		case unit
		case value
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: QuantityKeys.self)
		try container.encodeIfPresent(code, forKey: .code)
		try container.encodeIfPresent(comparator, forKey: .comparator)
		try container.encodeIfPresent(system, forKey: .system)
		try container.encodeIfPresent(unit, forKey: .unit)
		try container.encodeIfPresent(value, forKey: .value)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  QuantityKeys.self)
		code = try container.decodeIfPresent(String.self, forKey: .code)
		comparator = try container.decodeIfPresent(QuantityComparator.self, forKey: .comparator)
		system = try container.decodeIfPresent(String.self, forKey: .system)
		unit = try container.decodeIfPresent(String.self, forKey: .unit)
		value = try container.decodeIfPresent(Float.self, forKey: .value)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Quantity else {
            return false
        }

		return	code == object.code &&
			comparator == object.comparator &&
			system == object.system &&
			unit == object.unit &&
			value == object.value &&
			super.equal(to: to)
	}
}

extension Quantity {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Quantity else {
            return self
        }

        resource.code = self.code
        resource.comparator = self.comparator
        resource.system = self.system
        resource.unit = self.unit
        resource.value = self.value

        return resource
    }
}
