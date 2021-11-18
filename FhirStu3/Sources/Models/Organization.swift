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
//  Organization.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Organization)
//

import Foundation

/**
A grouping of people or organizations with a common purpose.

A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of
collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice
groups, etc.
*/
open class Organization: DomainResource {
	override open class var resourceType: String {
		get { return "Organization" }
	}

    private static var keyPaths: [String: PartialKeyPath<Organization>] = [

        "active" : \Organization.active,
        "address" : \Organization.address,
        "alias" : \Organization.alias,
        "contact" : \Organization.contact,
        "endpoint" : \Organization.endpoint,
        "identifier" : \Organization.identifier,
        "name" : \Organization.name,
        "partOf" : \Organization.partOf,
        "telecom" : \Organization.telecom,
        "type" : \Organization.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Organization.keyPaths[name] as? KeyPath<Organization, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Organization.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Whether the organization's record is still in active use.
	public var active: Bool?

	/// An address for the organization.
	public var address: [Address]?

	/// A list of alternate names that the organization is known as, or was known as in the past.
	public var alias: [String]?

	/// Contact for the organization for a certain purpose.
	public var contact: [OrganizationContact]?

	/// Technical endpoints providing access to services operated for the organization.
	public var endpoint: [Reference]?

	/// Identifies this organization  across multiple systems.
	public var identifier: [Identifier]?

	/// Name used for the organization.
	public var name: String?

	/// The organization of which this organization forms a part.
	public var partOf: Reference?

	/// A contact detail for the organization.
	public var telecom: [ContactPoint]?

	/// Kind of organization.
	public var type: [CodeableConcept]?

	enum OrganizationKeys: String, CodingKey {
		case active
		case address
		case alias
		case contact
		case endpoint
		case identifier
		case name
		case partOf
		case telecom
		case type
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: OrganizationKeys.self)
		try container.encodeIfPresent(active, forKey: .active)
		try container.encodeArrayIfPresent(address, forKey: .address)
		try container.encodeArrayIfPresent(alias, forKey: .alias)
		try container.encodeArrayIfPresent(contact, forKey: .contact)
		try container.encodeArrayIfPresent(endpoint, forKey: .endpoint)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeIfPresent(partOf, forKey: .partOf)
		try container.encodeArrayIfPresent(telecom, forKey: .telecom)
		try container.encodeArrayIfPresent(type, forKey: .type)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  OrganizationKeys.self)
		active = try container.decodeIfPresent(Bool.self, forKey: .active)
		address = try container.decodeArrayIfPresent([Address].self, forKey: .address)
		alias = try container.decodeArrayIfPresent([String].self, forKey: .alias)
		contact = try container.decodeArrayIfPresent([OrganizationContact].self, forKey: .contact)
		endpoint = try container.decodeArrayIfPresent([Reference].self, forKey: .endpoint)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		name = try container.decodeIfPresent(String.self, forKey: .name)
		partOf = try container.decodeIfPresent(Reference.self, forKey: .partOf)
		telecom = try container.decodeArrayIfPresent([ContactPoint].self, forKey: .telecom)
		type = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Organization else {
            return false
        }

		return	active == object.active &&
			address == object.address &&
			alias == object.alias &&
			contact == object.contact &&
			endpoint == object.endpoint &&
			identifier == object.identifier &&
			name == object.name &&
			partOf == object.partOf &&
			telecom == object.telecom &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension Organization {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Organization else {
            return self
        }

        resource.active = self.active
        resource.address = self.address?.compactMap { $0.copy(with: zone) as? Address }
        resource.alias = self.alias
        resource.contact = self.contact?.compactMap { $0.copy(with: zone) as? OrganizationContact }
        resource.endpoint = self.endpoint?.compactMap { $0.copy(with: zone) as? Reference }
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.name = self.name
        resource.partOf = self.partOf?.copy(with: zone) as? Reference
        resource.telecom = self.telecom?.compactMap { $0.copy(with: zone) as? ContactPoint }
        resource.type = self.type?.compactMap { $0.copy(with: zone) as? CodeableConcept }

        return resource
    }
}

/**
Contact for the organization for a certain purpose.
*/
open class OrganizationContact: BackboneElement {
	override open class var resourceType: String {
		get { return "OrganizationContact" }
	}

    private static var keyPaths: [String: PartialKeyPath<OrganizationContact>] = [

        "address" : \OrganizationContact.address,
        "name" : \OrganizationContact.name,
        "purpose" : \OrganizationContact.purpose,
        "telecom" : \OrganizationContact.telecom
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = OrganizationContact.keyPaths[name] as? KeyPath<OrganizationContact, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = OrganizationContact.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Visiting or postal addresses for the contact.
	public var address: Address?

	/// A name associated with the contact.
	public var name: HumanName?

	/// The type of contact.
	public var purpose: CodeableConcept?

	/// Contact details (telephone, email, etc.)  for a contact.
	public var telecom: [ContactPoint]?

	enum OrganizationContactKeys: String, CodingKey {
		case address
		case name
		case purpose
		case telecom
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: OrganizationContactKeys.self)
		try container.encodeIfPresent(address, forKey: .address)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeIfPresent(purpose, forKey: .purpose)
		try container.encodeArrayIfPresent(telecom, forKey: .telecom)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  OrganizationContactKeys.self)
		address = try container.decodeIfPresent(Address.self, forKey: .address)
		name = try container.decodeIfPresent(HumanName.self, forKey: .name)
		purpose = try container.decodeIfPresent(CodeableConcept.self, forKey: .purpose)
		telecom = try container.decodeArrayIfPresent([ContactPoint].self, forKey: .telecom)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? OrganizationContact else {
            return false
        }

		return	address == object.address &&
			name == object.name &&
			purpose == object.purpose &&
			telecom == object.telecom &&
			super.equal(to: to)
	}
}

extension OrganizationContact {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? OrganizationContact else {
            return self
        }

        resource.address = self.address?.copy(with: zone) as? Address
        resource.name = self.name?.copy(with: zone) as? HumanName
        resource.purpose = self.purpose?.copy(with: zone) as? CodeableConcept
        resource.telecom = self.telecom?.compactMap { $0.copy(with: zone) as? ContactPoint }

        return resource
    }
}
