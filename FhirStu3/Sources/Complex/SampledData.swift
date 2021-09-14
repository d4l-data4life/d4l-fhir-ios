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
//  SampledData.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/SampledData)
//

import Foundation

/**
A series of measurements taken by a device.

A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the
data.
*/
open class SampledData: Element {
	override open class var resourceType: String {
		get { return "SampledData" }
	}

    private static var keyPaths: [String: PartialKeyPath<SampledData>] = [

        "data_fhir" : \SampledData.data_fhir,
        "dimensions" : \SampledData.dimensions,
        "factor" : \SampledData.factor,
        "lowerLimit" : \SampledData.lowerLimit,
        "origin" : \SampledData.origin,
        "period" : \SampledData.period,
        "upperLimit" : \SampledData.upperLimit
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = SampledData.keyPaths[name] as? KeyPath<SampledData, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = SampledData.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Decimal values with spaces, or "E" | "U" | "L".
	public var data_fhir: String?

	/// Number of sample points at each time point.
	public var dimensions: Int?

	/// Multiply data by this before adding to origin.
	public var factor: Float?

	/// Lower limit of detection.
	public var lowerLimit: Float?

	/// Zero value and units.
	public var origin: Quantity?

	/// Number of milliseconds between samples.
	public var period: Float?

	/// Upper limit of detection.
	public var upperLimit: Float?

	enum SampledDataKeys: String, CodingKey {
		case data_fhir
		case dimensions
		case factor
		case lowerLimit
		case origin
		case period
		case upperLimit
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(data_fhir: String, dimensions: Int, origin: Quantity, period: Float) {
		self.init()
		self.data_fhir = data_fhir
		self.dimensions = dimensions
		self.origin = origin
		self.period = period
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: SampledDataKeys.self)
		if let item = data_fhir {
			try container.encode(item, forKey: .data_fhir)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("data_fhir")
		}
		if let item = dimensions {
			try container.encode(item, forKey: .dimensions)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("dimensions")
		}
		if let item = origin {
			try container.encode(item, forKey: .origin)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("origin")
		}
		if let item = period {
			try container.encode(item, forKey: .period)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("period")
		}
		try container.encodeIfPresent(factor, forKey: .factor)
		try container.encodeIfPresent(lowerLimit, forKey: .lowerLimit)
		try container.encodeIfPresent(upperLimit, forKey: .upperLimit)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SampledDataKeys.self)
		data_fhir = try container.decode(String.self, forKey: .data_fhir)
		dimensions = try container.decode(Int.self, forKey: .dimensions)
		origin = try container.decode(Quantity.self, forKey: .origin)
		period = try container.decode(Float.self, forKey: .period)
		factor = try container.decodeIfPresent(Float.self, forKey: .factor)
		lowerLimit = try container.decodeIfPresent(Float.self, forKey: .lowerLimit)
		upperLimit = try container.decodeIfPresent(Float.self, forKey: .upperLimit)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? SampledData else {
            return false
        }

		return	data_fhir == object.data_fhir &&
			dimensions == object.dimensions &&
			factor == object.factor &&
			lowerLimit == object.lowerLimit &&
			origin == object.origin &&
			period == object.period &&
			upperLimit == object.upperLimit &&
			super.equal(to: to)
	}
}

extension SampledData {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? SampledData else {
            return self
        }

        resource.data_fhir = self.data_fhir
        resource.dimensions = self.dimensions
        resource.factor = self.factor
        resource.lowerLimit = self.lowerLimit
        resource.origin = self.origin?.copy(with: zone) as? Quantity
        resource.period = self.period
        resource.upperLimit = self.upperLimit

        return resource
    }
}
