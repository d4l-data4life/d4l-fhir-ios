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
//  Patient.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Patient)
//

import Foundation

/**
Information about an individual or animal receiving health care services.

Demographics and other administrative information about an individual or animal receiving care or other health-related
services.
*/
open class Patient: DomainResource {
	override open class var resourceType: String {
		get { return "Patient" }
	}

    private static var keyPaths: [String: PartialKeyPath<Patient>] = [

        "active" : \Patient.active,
        "address" : \Patient.address,
        "animal" : \Patient.animal,
        "birthDate" : \Patient.birthDate,
        "communication" : \Patient.communication,
        "contact" : \Patient.contact,
        "deceasedBoolean" : \Patient.deceasedBoolean,
        "deceasedDateTime" : \Patient.deceasedDateTime,
        "gender" : \Patient.gender,
        "generalPractitioner" : \Patient.generalPractitioner,
        "identifier" : \Patient.identifier,
        "link" : \Patient.link,
        "managingOrganization" : \Patient.managingOrganization,
        "maritalStatus" : \Patient.maritalStatus,
        "multipleBirthBoolean" : \Patient.multipleBirthBoolean,
        "multipleBirthInteger" : \Patient.multipleBirthInteger,
        "name" : \Patient.name,
        "photo" : \Patient.photo,
        "telecom" : \Patient.telecom
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Patient.keyPaths[name] as? KeyPath<Patient, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Patient.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Whether this patient's record is in active use.
	public var active: Bool?

	/// Addresses for the individual.
	public var address: [Address]?

	/// This patient is known to be an animal (non-human).
	public var animal: PatientAnimal?

	/// The date of birth for the individual.
	public var birthDate: FHIRDate?

	/// A list of Languages which may be used to communicate with the patient about his or her health.
	public var communication: [PatientCommunication]?

	/// A contact party (e.g. guardian, partner, friend) for the patient.
	public var contact: [PatientContact]?

	/// Indicates if the individual is deceased or not.
	public var deceasedBoolean: Bool?

	/// Indicates if the individual is deceased or not.
	public var deceasedDateTime: DateTime?

	/// Administrative Gender - the gender that the patient is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?

	/// Patient's nominated primary care provider.
	public var generalPractitioner: [Reference]?

	/// An identifier for this patient.
	public var identifier: [Identifier]?

	/// Link to another patient resource that concerns the same actual person.
	public var link: [PatientLink]?

	/// Organization that is the custodian of the patient record.
	public var managingOrganization: Reference?

	/// Marital (civil) status of a patient.
	public var maritalStatus: CodeableConcept?

	/// Whether patient is part of a multiple birth.
	public var multipleBirthBoolean: Bool?

	/// Whether patient is part of a multiple birth.
	public var multipleBirthInteger: Int?

	/// A name associated with the patient.
	public var name: [HumanName]?

	/// Image of the patient.
	public var photo: [Attachment]?

	/// A contact detail for the individual.
	public var telecom: [ContactPoint]?

	enum PatientKeys: String, CodingKey {
		case active
		case address
		case animal
		case birthDate
		case communication
		case contact
		case deceasedBoolean
		case deceasedDateTime
		case gender
		case generalPractitioner
		case identifier
		case link
		case managingOrganization
		case maritalStatus
		case multipleBirthBoolean
		case multipleBirthInteger
		case name
		case photo
		case telecom
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: PatientKeys.self)
		try container.encodeIfPresent(active, forKey: .active)
		try container.encodeArrayIfPresent(address, forKey: .address)
		try container.encodeIfPresent(animal, forKey: .animal)
		try container.encodeIfPresent(birthDate, forKey: .birthDate)
		try container.encodeArrayIfPresent(communication, forKey: .communication)
		try container.encodeArrayIfPresent(contact, forKey: .contact)
		try container.encodeIfPresent(deceasedBoolean, forKey: .deceasedBoolean)
		try container.encodeIfPresent(deceasedDateTime, forKey: .deceasedDateTime)
		try container.encodeIfPresent(gender, forKey: .gender)
		try container.encodeArrayIfPresent(generalPractitioner, forKey: .generalPractitioner)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(link, forKey: .link)
		try container.encodeIfPresent(managingOrganization, forKey: .managingOrganization)
		try container.encodeIfPresent(maritalStatus, forKey: .maritalStatus)
		try container.encodeIfPresent(multipleBirthBoolean, forKey: .multipleBirthBoolean)
		try container.encodeIfPresent(multipleBirthInteger, forKey: .multipleBirthInteger)
		try container.encodeArrayIfPresent(name, forKey: .name)
		try container.encodeArrayIfPresent(photo, forKey: .photo)
		try container.encodeArrayIfPresent(telecom, forKey: .telecom)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  PatientKeys.self)
		active = try container.decodeIfPresent(Bool.self, forKey: .active)
		address = try container.decodeArrayIfPresent([Address].self, forKey: .address)
		animal = try container.decodeIfPresent(PatientAnimal.self, forKey: .animal)
		birthDate = try container.decodeIfPresent(FHIRDate.self, forKey: .birthDate)
		communication = try container.decodeArrayIfPresent([PatientCommunication].self, forKey: .communication)
		contact = try container.decodeArrayIfPresent([PatientContact].self, forKey: .contact)
		deceasedBoolean = try container.decodeIfPresent(Bool.self, forKey: .deceasedBoolean)
		deceasedDateTime = try container.decodeIfPresent(DateTime.self, forKey: .deceasedDateTime)
		gender = try container.decodeIfPresent(AdministrativeGender.self, forKey: .gender)
		generalPractitioner = try container.decodeArrayIfPresent([Reference].self, forKey: .generalPractitioner)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		link = try container.decodeArrayIfPresent([PatientLink].self, forKey: .link)
		managingOrganization = try container.decodeIfPresent(Reference.self, forKey: .managingOrganization)
		maritalStatus = try container.decodeIfPresent(CodeableConcept.self, forKey: .maritalStatus)
		multipleBirthBoolean = try container.decodeIfPresent(Bool.self, forKey: .multipleBirthBoolean)
		multipleBirthInteger = try container.decodeIfPresent(Int.self, forKey: .multipleBirthInteger)
		name = try container.decodeArrayIfPresent([HumanName].self, forKey: .name)
		photo = try container.decodeArrayIfPresent([Attachment].self, forKey: .photo)
		telecom = try container.decodeArrayIfPresent([ContactPoint].self, forKey: .telecom)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Patient else {
            return false
        }

		return	active == object.active &&
			address == object.address &&
			animal == object.animal &&
			birthDate == object.birthDate &&
			communication == object.communication &&
			contact == object.contact &&
			deceasedBoolean == object.deceasedBoolean &&
			deceasedDateTime == object.deceasedDateTime &&
			gender == object.gender &&
			generalPractitioner == object.generalPractitioner &&
			identifier == object.identifier &&
			link == object.link &&
			managingOrganization == object.managingOrganization &&
			maritalStatus == object.maritalStatus &&
			multipleBirthBoolean == object.multipleBirthBoolean &&
			multipleBirthInteger == object.multipleBirthInteger &&
			name == object.name &&
			photo == object.photo &&
			telecom == object.telecom &&
			super.equal(to: to)
	}
}

extension Patient {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Patient else {
            return self
        }

        resource.active = self.active
        resource.address = self.address?.compactMap { $0.copy(with: zone) as? Address }
        resource.animal = self.animal?.copy(with: zone) as? PatientAnimal
        resource.birthDate = self.birthDate
        resource.communication = self.communication?.compactMap { $0.copy(with: zone) as? PatientCommunication }
        resource.contact = self.contact?.compactMap { $0.copy(with: zone) as? PatientContact }
        resource.deceasedBoolean = self.deceasedBoolean
        resource.deceasedDateTime = self.deceasedDateTime
        resource.gender = self.gender
        resource.generalPractitioner = self.generalPractitioner?.compactMap { $0.copy(with: zone) as? Reference }
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.link = self.link?.compactMap { $0.copy(with: zone) as? PatientLink }
        resource.managingOrganization = self.managingOrganization?.copy(with: zone) as? Reference
        resource.maritalStatus = self.maritalStatus?.copy(with: zone) as? CodeableConcept
        resource.multipleBirthBoolean = self.multipleBirthBoolean
        resource.multipleBirthInteger = self.multipleBirthInteger
        resource.name = self.name?.compactMap { $0.copy(with: zone) as? HumanName }
        resource.photo = self.photo?.compactMap { $0.copy(with: zone) as? Attachment }
        resource.telecom = self.telecom?.compactMap { $0.copy(with: zone) as? ContactPoint }

        return resource
    }
}

/**
This patient is known to be an animal (non-human).

This patient is known to be an animal.
*/
open class PatientAnimal: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientAnimal" }
	}

    private static var keyPaths: [String: PartialKeyPath<PatientAnimal>] = [

        "breed" : \PatientAnimal.breed,
        "genderStatus" : \PatientAnimal.genderStatus,
        "species" : \PatientAnimal.species
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = PatientAnimal.keyPaths[name] as? KeyPath<PatientAnimal, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = PatientAnimal.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// E.g. Poodle, Angus.
	public var breed: CodeableConcept?

	/// E.g. Neutered, Intact.
	public var genderStatus: CodeableConcept?

	/// E.g. Dog, Cow.
	public var species: CodeableConcept?

	enum PatientAnimalKeys: String, CodingKey {
		case breed
		case genderStatus
		case species
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(species: CodeableConcept) {
		self.init()
		self.species = species
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: PatientAnimalKeys.self)
		if let item = species {
			try container.encode(item, forKey: .species)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("species")
		}
		try container.encodeIfPresent(breed, forKey: .breed)
		try container.encodeIfPresent(genderStatus, forKey: .genderStatus)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  PatientAnimalKeys.self)
		species = try container.decode(CodeableConcept.self, forKey: .species)
		breed = try container.decodeIfPresent(CodeableConcept.self, forKey: .breed)
		genderStatus = try container.decodeIfPresent(CodeableConcept.self, forKey: .genderStatus)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? PatientAnimal else {
            return false
        }

		return	breed == object.breed &&
			genderStatus == object.genderStatus &&
			species == object.species &&
			super.equal(to: to)
	}
}

extension PatientAnimal {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? PatientAnimal else {
            return self
        }

        resource.breed = self.breed?.copy(with: zone) as? CodeableConcept
        resource.genderStatus = self.genderStatus?.copy(with: zone) as? CodeableConcept
        resource.species = self.species?.copy(with: zone) as? CodeableConcept

        return resource
    }
}

/**
A list of Languages which may be used to communicate with the patient about his or her health.

Languages which may be used to communicate with the patient about his or her health.
*/
open class PatientCommunication: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientCommunication" }
	}

    private static var keyPaths: [String: PartialKeyPath<PatientCommunication>] = [

        "language" : \PatientCommunication.language,
        "preferred" : \PatientCommunication.preferred
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = PatientCommunication.keyPaths[name] as? KeyPath<PatientCommunication, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = PatientCommunication.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// The language which can be used to communicate with the patient about his or her health.
	public var language: CodeableConcept?

	/// Language preference indicator.
	public var preferred: Bool?

	enum PatientCommunicationKeys: String, CodingKey {
		case language
		case preferred
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(language: CodeableConcept) {
		self.init()
		self.language = language
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: PatientCommunicationKeys.self)
		if let item = language {
			try container.encode(item, forKey: .language)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("language")
		}
		try container.encodeIfPresent(preferred, forKey: .preferred)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  PatientCommunicationKeys.self)
		language = try container.decode(CodeableConcept.self, forKey: .language)
		preferred = try container.decodeIfPresent(Bool.self, forKey: .preferred)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? PatientCommunication else {
            return false
        }

		return	language == object.language &&
			preferred == object.preferred &&
			super.equal(to: to)
	}
}

extension PatientCommunication {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? PatientCommunication else {
            return self
        }

        resource.language = self.language?.copy(with: zone) as? CodeableConcept
        resource.preferred = self.preferred

        return resource
    }
}

/**
A contact party (e.g. guardian, partner, friend) for the patient.
*/
open class PatientContact: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientContact" }
	}

    private static var keyPaths: [String: PartialKeyPath<PatientContact>] = [

        "address" : \PatientContact.address,
        "gender" : \PatientContact.gender,
        "name" : \PatientContact.name,
        "organization" : \PatientContact.organization,
        "period" : \PatientContact.period,
        "relationship" : \PatientContact.relationship,
        "telecom" : \PatientContact.telecom
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = PatientContact.keyPaths[name] as? KeyPath<PatientContact, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = PatientContact.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Address for the contact person.
	public var address: Address?

	/// Administrative Gender - the gender that the contact person is considered to have for administration and record
	/// keeping purposes.
	public var gender: AdministrativeGender?

	/// A name associated with the contact person.
	public var name: HumanName?

	/// Organization that is associated with the contact.
	public var organization: Reference?

	/// The period during which this contact person or organization is valid to be contacted relating to this patient.
	public var period: Period?

	/// The kind of relationship.
	public var relationship: [CodeableConcept]?

	/// A contact detail for the person.
	public var telecom: [ContactPoint]?

	enum PatientContactKeys: String, CodingKey {
		case address
		case gender
		case name
		case organization
		case period
		case relationship
		case telecom
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: PatientContactKeys.self)
		try container.encodeIfPresent(address, forKey: .address)
		try container.encodeIfPresent(gender, forKey: .gender)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeIfPresent(organization, forKey: .organization)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeArrayIfPresent(relationship, forKey: .relationship)
		try container.encodeArrayIfPresent(telecom, forKey: .telecom)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  PatientContactKeys.self)
		address = try container.decodeIfPresent(Address.self, forKey: .address)
		gender = try container.decodeIfPresent(AdministrativeGender.self, forKey: .gender)
		name = try container.decodeIfPresent(HumanName.self, forKey: .name)
		organization = try container.decodeIfPresent(Reference.self, forKey: .organization)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		relationship = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .relationship)
		telecom = try container.decodeArrayIfPresent([ContactPoint].self, forKey: .telecom)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? PatientContact else {
            return false
        }

		return	address == object.address &&
			gender == object.gender &&
			name == object.name &&
			organization == object.organization &&
			period == object.period &&
			relationship == object.relationship &&
			telecom == object.telecom &&
			super.equal(to: to)
	}
}

extension PatientContact {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? PatientContact else {
            return self
        }

        resource.address = self.address?.copy(with: zone) as? Address
        resource.gender = self.gender
        resource.name = self.name?.copy(with: zone) as? HumanName
        resource.organization = self.organization?.copy(with: zone) as? Reference
        resource.period = self.period?.copy(with: zone) as? Period
        resource.relationship = self.relationship?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.telecom = self.telecom?.compactMap { $0.copy(with: zone) as? ContactPoint }

        return resource
    }
}

/**
Link to another patient resource that concerns the same actual person.

Link to another patient resource that concerns the same actual patient.
*/
open class PatientLink: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientLink" }
	}

    private static var keyPaths: [String: PartialKeyPath<PatientLink>] = [

        "other" : \PatientLink.other,
        "type" : \PatientLink.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = PatientLink.keyPaths[name] as? KeyPath<PatientLink, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = PatientLink.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// The other patient or related person resource that the link refers to.
	public var other: Reference?

	/// The type of link between this patient resource and another patient resource.
	public var type: LinkType?

	enum PatientLinkKeys: String, CodingKey {
		case other
		case type
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(other: Reference, type: LinkType) {
		self.init()
		self.other = other
		self.type = type
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: PatientLinkKeys.self)
		if let item = other {
			try container.encode(item, forKey: .other)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("other")
		}
		if let item = type {
			try container.encode(item, forKey: .type)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("type")
		}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  PatientLinkKeys.self)
		other = try container.decode(Reference.self, forKey: .other)
		type = try container.decode(LinkType.self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? PatientLink else {
            return false
        }

		return	other == object.other &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension PatientLink {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? PatientLink else {
            return self
        }

        resource.other = self.other?.copy(with: zone) as? Reference
        resource.type = self.type

        return resource
    }
}
