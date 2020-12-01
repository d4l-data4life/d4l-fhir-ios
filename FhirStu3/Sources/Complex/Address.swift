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
//  Address.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Address)
//

import Foundation

/**
An address expressed using postal conventions (as opposed to GPS or other location definition formats).

An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type
may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid
for mail delivery.  There are a variety of postal address formats defined around the world.
*/
open class Address: Element {
	override open class var resourceType: String {
		get { return "Address" }
	}

    private static var keyPaths: [String: PartialKeyPath<Address>] = [

        "city" : \Address.city,
        "country" : \Address.country,
        "district" : \Address.district,
        "line" : \Address.line,
        "period" : \Address.period,
        "postalCode" : \Address.postalCode,
        "state" : \Address.state,
        "text" : \Address.text,
        "type" : \Address.type,
        "use" : \Address.use
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Address.keyPaths[name] as? KeyPath<Address, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Address.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Name of city, town etc..
	public var city: String?

	/// Country (e.g. can be ISO 3166 2 or 3 letter code).
	public var country: String?

	/// District name (aka county).
	public var district: String?

	/// Street name, number, direction & P.O. Box etc..
	public var line: [String]?

	/// Time period when address was/is in use.
	public var period: Period?

	/// Postal code for area.
	public var postalCode: String?

	/// Sub-unit of country (abbreviations ok).
	public var state: String?

	/// Text representation of the address.
	public var text: String?

	/// Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of
	/// addresses). Most addresses are both.
	public var type: AddressType?

	/// The purpose of this address.
	public var use: AddressUse?

	enum AddressKeys: String, CodingKey {
		case city
		case country
		case district
		case line
		case period
		case postalCode
		case state
		case text
		case type
		case use
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: AddressKeys.self)
		try container.encodeIfPresent(city, forKey: .city)
		try container.encodeIfPresent(country, forKey: .country)
		try container.encodeIfPresent(district, forKey: .district)
		try container.encodeArrayIfPresent(line, forKey: .line)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeIfPresent(postalCode, forKey: .postalCode)
		try container.encodeIfPresent(state, forKey: .state)
		try container.encodeIfPresent(text, forKey: .text)
		try container.encodeIfPresent(type, forKey: .type)
		try container.encodeIfPresent(use, forKey: .use)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  AddressKeys.self)
		city = try container.decodeIfPresent(String.self, forKey: .city)
		country = try container.decodeIfPresent(String.self, forKey: .country)
		district = try container.decodeIfPresent(String.self, forKey: .district)
		line = try container.decodeArrayIfPresent([String].self, forKey: .line)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
		state = try container.decodeIfPresent(String.self, forKey: .state)
		text = try container.decodeIfPresent(String.self, forKey: .text)
		type = try container.decodeIfPresent(AddressType.self, forKey: .type)
		use = try container.decodeIfPresent(AddressUse.self, forKey: .use)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Address else {
            return false
        }

		return	city == object.city &&
			country == object.country &&
			district == object.district &&
			line == object.line &&
			period == object.period &&
			postalCode == object.postalCode &&
			state == object.state &&
			text == object.text &&
			type == object.type &&
			use == object.use &&
			super.equal(to: to)
	}
}

extension Address {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Address else {
            return self
        }

        resource.city = self.city
        resource.country = self.country
        resource.district = self.district
        resource.line = self.line
        resource.period = self.period?.copy(with: zone) as? Period
        resource.postalCode = self.postalCode
        resource.state = self.state
        resource.text = self.text
        resource.type = self.type
        resource.use = self.use

        return resource
    }
}
