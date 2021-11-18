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
//  Range.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Range)
//

import Foundation

/**
Set of values bounded by low and high.

A set of ordered Quantities defined by a low and high limit.
*/
open class Range: Element {
	override open class var resourceType: String {
		get { return "Range" }
	}

    private static var keyPaths: [String: PartialKeyPath<Range>] = [

        "high" : \Range.high,
        "low" : \Range.low
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Range.keyPaths[name] as? KeyPath<Range, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Range.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// High limit.
	public var high: Quantity?

	/// Low limit.
	public var low: Quantity?

	enum RangeKeys: String, CodingKey {
		case high
		case low
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: RangeKeys.self)
		try container.encodeIfPresent(high, forKey: .high)
		try container.encodeIfPresent(low, forKey: .low)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  RangeKeys.self)
		high = try container.decodeIfPresent(Quantity.self, forKey: .high)
		low = try container.decodeIfPresent(Quantity.self, forKey: .low)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Range else {
            return false
        }

		return	high == object.high &&
			low == object.low &&
			super.equal(to: to)
	}
}

extension Range {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Range else {
            return self
        }

        resource.high = self.high?.copy(with: zone) as? Quantity
        resource.low = self.low?.copy(with: zone) as? Quantity

        return resource
    }
}
