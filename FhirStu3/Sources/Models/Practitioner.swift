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
//  Practitioner.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Practitioner)
//

import Foundation

/**
A person with a  formal responsibility in the provisioning of healthcare or related services.

A person who is directly or indirectly involved in the provisioning of healthcare.
*/
open class Practitioner: DomainResource {
	override open class var resourceType: String {
		get { return "Practitioner" }
	}

    private static var keyPaths: [String: PartialKeyPath<Practitioner>] = [

        "active" : \Practitioner.active,
        "address" : \Practitioner.address,
        "birthDate" : \Practitioner.birthDate,
        "communication" : \Practitioner.communication,
        "gender" : \Practitioner.gender,
        "identifier" : \Practitioner.identifier,
        "name" : \Practitioner.name,
        "photo" : \Practitioner.photo,
        "qualification" : \Practitioner.qualification,
        "telecom" : \Practitioner.telecom
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Practitioner.keyPaths[name] as? KeyPath<Practitioner, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Practitioner.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Whether this practitioner's record is in active use.
	public var active: Bool?

	/// Address(es) of the practitioner that are not role specific (typically home address).
	public var address: [Address]?

	/// The date  on which the practitioner was born.
	public var birthDate: FHIRDate?

	/// A language the practitioner is able to use in patient communication.
	public var communication: [CodeableConcept]?

	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?

	/// A identifier for the person as this agent.
	public var identifier: [Identifier]?

	/// The name(s) associated with the practitioner.
	public var name: [HumanName]?

	/// Image of the person.
	public var photo: [Attachment]?

	/// Qualifications obtained by training and certification.
	public var qualification: [PractitionerQualification]?

	/// A contact detail for the practitioner (that apply to all roles).
	public var telecom: [ContactPoint]?

	enum PractitionerKeys: String, CodingKey {
		case active
		case address
		case birthDate
		case communication
		case gender
		case identifier
		case name
		case photo
		case qualification
		case telecom
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: PractitionerKeys.self)
		try container.encodeIfPresent(active, forKey: .active)
		try container.encodeArrayIfPresent(address, forKey: .address)
		try container.encodeIfPresent(birthDate, forKey: .birthDate)
		try container.encodeArrayIfPresent(communication, forKey: .communication)
		try container.encodeIfPresent(gender, forKey: .gender)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(name, forKey: .name)
		try container.encodeArrayIfPresent(photo, forKey: .photo)
		try container.encodeArrayIfPresent(qualification, forKey: .qualification)
		try container.encodeArrayIfPresent(telecom, forKey: .telecom)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  PractitionerKeys.self)
		active = try container.decodeIfPresent(Bool.self, forKey: .active)
		address = try container.decodeArrayIfPresent([Address].self, forKey: .address)
		birthDate = try container.decodeIfPresent(FHIRDate.self, forKey: .birthDate)
		communication = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .communication)
		gender = try container.decodeIfPresent(AdministrativeGender.self, forKey: .gender)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		name = try container.decodeArrayIfPresent([HumanName].self, forKey: .name)
		photo = try container.decodeArrayIfPresent([Attachment].self, forKey: .photo)
		qualification = try container.decodeArrayIfPresent([PractitionerQualification].self, forKey: .qualification)
		telecom = try container.decodeArrayIfPresent([ContactPoint].self, forKey: .telecom)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Practitioner else {
            return false
        }

		return	active == object.active &&
			address == object.address &&
			birthDate == object.birthDate &&
			communication == object.communication &&
			gender == object.gender &&
			identifier == object.identifier &&
			name == object.name &&
			photo == object.photo &&
			qualification == object.qualification &&
			telecom == object.telecom &&
			super.equal(to: to)
	}
}

extension Practitioner {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Practitioner else {
            return self
        }

        resource.active = self.active
        resource.address = self.address?.compactMap { $0.copy(with: zone) as? Address }
        resource.birthDate = self.birthDate
        resource.communication = self.communication?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.gender = self.gender
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.name = self.name?.compactMap { $0.copy(with: zone) as? HumanName }
        resource.photo = self.photo?.compactMap { $0.copy(with: zone) as? Attachment }
        resource.qualification = self.qualification?.compactMap { $0.copy(with: zone) as? PractitionerQualification }
        resource.telecom = self.telecom?.compactMap { $0.copy(with: zone) as? ContactPoint }

        return resource
    }
}

/**
Qualifications obtained by training and certification.
*/
open class PractitionerQualification: BackboneElement {
	override open class var resourceType: String {
		get { return "PractitionerQualification" }
	}

    private static var keyPaths: [String: PartialKeyPath<PractitionerQualification>] = [

        "code" : \PractitionerQualification.code,
        "identifier" : \PractitionerQualification.identifier,
        "issuer" : \PractitionerQualification.issuer,
        "period" : \PractitionerQualification.period
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = PractitionerQualification.keyPaths[name] as? KeyPath<PractitionerQualification, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = PractitionerQualification.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Coded representation of the qualification.
	public var code: CodeableConcept?

	/// An identifier for this qualification for the practitioner.
	public var identifier: [Identifier]?

	/// Organization that regulates and issues the qualification.
	public var issuer: Reference?

	/// Period during which the qualification is valid.
	public var period: Period?

	enum PractitionerQualificationKeys: String, CodingKey {
		case code
		case identifier
		case issuer
		case period
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(code: CodeableConcept) {
		self.init()
		self.code = code
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: PractitionerQualificationKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(issuer, forKey: .issuer)
		try container.encodeIfPresent(period, forKey: .period)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  PractitionerQualificationKeys.self)
		code = try container.decode(CodeableConcept.self, forKey: .code)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		issuer = try container.decodeIfPresent(Reference.self, forKey: .issuer)
		period = try container.decodeIfPresent(Period.self, forKey: .period)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? PractitionerQualification else {
            return false
        }

		return	code == object.code &&
			identifier == object.identifier &&
			issuer == object.issuer &&
			period == object.period &&
			super.equal(to: to)
	}
}

extension PractitionerQualification {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? PractitionerQualification else {
            return self
        }

        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.issuer = self.issuer?.copy(with: zone) as? Reference
        resource.period = self.period?.copy(with: zone) as? Period

        return resource
    }
}
