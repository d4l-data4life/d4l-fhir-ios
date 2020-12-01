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
//  HumanName.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/HumanName)
//

import Foundation

/**
Name of a human - parts and usage.

A human's name with the ability to identify parts and usage.
*/
open class HumanName: Element {
	override open class var resourceType: String {
		get { return "HumanName" }
	}

    private static var keyPaths: [String: PartialKeyPath<HumanName>] = [

        "family" : \HumanName.family,
        "given" : \HumanName.given,
        "period" : \HumanName.period,
        "prefix" : \HumanName.prefix,
        "suffix" : \HumanName.suffix,
        "text" : \HumanName.text,
        "use" : \HumanName.use
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = HumanName.keyPaths[name] as? KeyPath<HumanName, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = HumanName.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Family name (often called 'Surname').
	public var family: String?

	/// Given names (not always 'first'). Includes middle names.
	public var given: [String]?

	/// Time period when name was/is in use.
	public var period: Period?

	/// Parts that come before the name.
	public var prefix: [String]?

	/// Parts that come after the name.
	public var suffix: [String]?

	/// Text representation of the full name.
	public var text: String?

	/// Identifies the purpose for this name.
	public var use: NameUse?

	enum HumanNameKeys: String, CodingKey {
		case family
		case given
		case period
		case prefix
		case suffix
		case text
		case use
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: HumanNameKeys.self)
		try container.encodeIfPresent(family, forKey: .family)
		try container.encodeArrayIfPresent(given, forKey: .given)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeArrayIfPresent(prefix, forKey: .prefix)
		try container.encodeArrayIfPresent(suffix, forKey: .suffix)
		try container.encodeIfPresent(text, forKey: .text)
		try container.encodeIfPresent(use, forKey: .use)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  HumanNameKeys.self)
		family = try container.decodeIfPresent(String.self, forKey: .family)
		given = try container.decodeArrayIfPresent([String].self, forKey: .given)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		prefix = try container.decodeArrayIfPresent([String].self, forKey: .prefix)
		suffix = try container.decodeArrayIfPresent([String].self, forKey: .suffix)
		text = try container.decodeIfPresent(String.self, forKey: .text)
		use = try container.decodeIfPresent(NameUse.self, forKey: .use)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? HumanName else {
            return false
        }

		return	family == object.family &&
			given == object.given &&
			period == object.period &&
			prefix == object.prefix &&
			suffix == object.suffix &&
			text == object.text &&
			use == object.use &&
			super.equal(to: to)
	}
}

extension HumanName {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? HumanName else {
            return self
        }

        resource.family = self.family
        resource.given = self.given
        resource.period = self.period?.copy(with: zone) as? Period
        resource.prefix = self.prefix
        resource.suffix = self.suffix
        resource.text = self.text
        resource.use = self.use

        return resource
    }
}
