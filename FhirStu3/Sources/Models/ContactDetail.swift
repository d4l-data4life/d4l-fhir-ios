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
//  ContactDetail.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ContactDetail)
//

import Foundation

/**
Contact information.

Specifies contact information for a person or organization.
*/
open class ContactDetail: Element {
	override open class var resourceType: String {
		get { return "ContactDetail" }
	}

    private static var keyPaths: [String: PartialKeyPath<ContactDetail>] = [

        "name" : \ContactDetail.name,
        "telecom" : \ContactDetail.telecom
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ContactDetail.keyPaths[name] as? KeyPath<ContactDetail, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ContactDetail.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Name of an individual to contact.
	public var name: String?

	/// Contact details for individual or organization.
	public var telecom: [ContactPoint]?

	enum ContactDetailKeys: String, CodingKey {
		case name
		case telecom
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ContactDetailKeys.self)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeArrayIfPresent(telecom, forKey: .telecom)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ContactDetailKeys.self)
		name = try container.decodeIfPresent(String.self, forKey: .name)
		telecom = try container.decodeArrayIfPresent([ContactPoint].self, forKey: .telecom)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ContactDetail else {
            return false
        }

		return	name == object.name &&
			telecom == object.telecom &&
			super.equal(to: to)
	}
}

extension ContactDetail {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ContactDetail else {
            return self
        }

        resource.name = self.name
        resource.telecom = self.telecom?.compactMap { $0.copy(with: zone) as? ContactPoint }

        return resource
    }
}
