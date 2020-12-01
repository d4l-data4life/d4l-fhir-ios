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
//  ContactPoint.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ContactPoint)
//

import Foundation

/**
Details of a Technology mediated contact point (phone, fax, email, etc.).

Details for all kinds of technology mediated contact points for a person or organization, including telephone, email,
etc.
*/
open class ContactPoint: Element {
	override open class var resourceType: String {
		get { return "ContactPoint" }
	}

    private static var keyPaths: [String: PartialKeyPath<ContactPoint>] = [

        "period" : \ContactPoint.period,
        "rank" : \ContactPoint.rank,
        "system" : \ContactPoint.system,
        "use" : \ContactPoint.use,
        "value" : \ContactPoint.value
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ContactPoint.keyPaths[name] as? KeyPath<ContactPoint, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ContactPoint.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Time period when the contact point was/is in use.
	public var period: Period?

	/// Specify preferred order of use (1 = highest).
	public var rank: Int?

	/// Telecommunications form for contact point - what communications system is required to make use of the contact.
	public var system: ContactPointSystem?

	/// Identifies the purpose for the contact point.
	public var use: ContactPointUse?

	/// The actual contact point details.
	public var value: String?

	enum ContactPointKeys: String, CodingKey {
		case period
		case rank
		case system
		case use
		case value
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ContactPointKeys.self)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeIfPresent(rank, forKey: .rank)
		try container.encodeIfPresent(system, forKey: .system)
		try container.encodeIfPresent(use, forKey: .use)
		try container.encodeIfPresent(value, forKey: .value)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ContactPointKeys.self)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		rank = try container.decodeIfPresent(Int.self, forKey: .rank)
		system = try container.decodeIfPresent(ContactPointSystem.self, forKey: .system)
		use = try container.decodeIfPresent(ContactPointUse.self, forKey: .use)
		value = try container.decodeIfPresent(String.self, forKey: .value)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ContactPoint else {
            return false
        }

		return	period == object.period &&
			rank == object.rank &&
			system == object.system &&
			use == object.use &&
			value == object.value &&
			super.equal(to: to)
	}
}

extension ContactPoint {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ContactPoint else {
            return self
        }

        resource.period = self.period?.copy(with: zone) as? Period
        resource.rank = self.rank
        resource.system = self.system
        resource.use = self.use
        resource.value = self.value

        return resource
    }
}
