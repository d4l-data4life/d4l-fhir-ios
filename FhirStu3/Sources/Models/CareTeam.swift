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
//  CareTeam.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/CareTeam)
//

import Foundation

/**
Planned participants in the coordination and delivery of care for a patient or group.

The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of care
for a patient.
*/
open class CareTeam: DomainResource {
	override open class var resourceType: String {
		get { return "CareTeam" }
	}

    private static var keyPaths: [String: PartialKeyPath<CareTeam>] = [

        "category" : \CareTeam.category,
        "context" : \CareTeam.context,
        "identifier" : \CareTeam.identifier,
        "managingOrganization" : \CareTeam.managingOrganization,
        "name" : \CareTeam.name,
        "note" : \CareTeam.note,
        "participant" : \CareTeam.participant,
        "period" : \CareTeam.period,
        "reasonCode" : \CareTeam.reasonCode,
        "reasonReference" : \CareTeam.reasonReference,
        "status" : \CareTeam.status,
        "subject" : \CareTeam.subject
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = CareTeam.keyPaths[name] as? KeyPath<CareTeam, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = CareTeam.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Type of team.
	public var category: [CodeableConcept]?

	/// Encounter or episode associated with CareTeam.
	public var context: Reference?

	/// External Ids for this team.
	public var identifier: [Identifier]?

	/// Organization responsible for the care team.
	public var managingOrganization: [Reference]?

	/// Name of the team, such as crisis assessment team.
	public var name: String?

	/// Comments made about the CareTeam.
	public var note: [Annotation]?

	/// Members of the team.
	public var participant: [CareTeamParticipant]?

	/// Time period team covers.
	public var period: Period?

	/// Why the care team exists.
	public var reasonCode: [CodeableConcept]?

	/// Why the care team exists.
	public var reasonReference: [Reference]?

	/// Indicates the current state of the care team.
	public var status: CareTeamStatus?

	/// Who care team is for.
	public var subject: Reference?

	enum CareTeamKeys: String, CodingKey {
		case category
		case context
		case identifier
		case managingOrganization
		case name
		case note
		case participant
		case period
		case reasonCode
		case reasonReference
		case status
		case subject
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: CareTeamKeys.self)
		try container.encodeArrayIfPresent(category, forKey: .category)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(managingOrganization, forKey: .managingOrganization)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeArrayIfPresent(participant, forKey: .participant)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeArrayIfPresent(reasonCode, forKey: .reasonCode)
		try container.encodeArrayIfPresent(reasonReference, forKey: .reasonReference)
		try container.encodeIfPresent(status, forKey: .status)
		try container.encodeIfPresent(subject, forKey: .subject)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  CareTeamKeys.self)
		category = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .category)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		managingOrganization = try container.decodeArrayIfPresent([Reference].self, forKey: .managingOrganization)
		name = try container.decodeIfPresent(String.self, forKey: .name)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		participant = try container.decodeArrayIfPresent([CareTeamParticipant].self, forKey: .participant)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		reasonCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .reasonCode)
		reasonReference = try container.decodeArrayIfPresent([Reference].self, forKey: .reasonReference)
		status = try container.decodeIfPresent(CareTeamStatus.self, forKey: .status)
		subject = try container.decodeIfPresent(Reference.self, forKey: .subject)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? CareTeam else {
            return false
        }

		return	category == object.category &&
			context == object.context &&
			identifier == object.identifier &&
			managingOrganization == object.managingOrganization &&
			name == object.name &&
			note == object.note &&
			participant == object.participant &&
			period == object.period &&
			reasonCode == object.reasonCode &&
			reasonReference == object.reasonReference &&
			status == object.status &&
			subject == object.subject &&
			super.equal(to: to)
	}
}

extension CareTeam {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? CareTeam else {
            return self
        }

        resource.category = self.category?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.managingOrganization = self.managingOrganization?.compactMap { $0.copy(with: zone) as? Reference }
        resource.name = self.name
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.participant = self.participant?.compactMap { $0.copy(with: zone) as? CareTeamParticipant }
        resource.period = self.period?.copy(with: zone) as? Period
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference

        return resource
    }
}

/**
Members of the team.

Identifies all people and organizations who are expected to be involved in the care team.
*/
open class CareTeamParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "CareTeamParticipant" }
	}

    private static var keyPaths: [String: PartialKeyPath<CareTeamParticipant>] = [

        "member" : \CareTeamParticipant.member,
        "onBehalfOf" : \CareTeamParticipant.onBehalfOf,
        "period" : \CareTeamParticipant.period,
        "role" : \CareTeamParticipant.role
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = CareTeamParticipant.keyPaths[name] as? KeyPath<CareTeamParticipant, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = CareTeamParticipant.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Who is involved.
	public var member: Reference?

	/// Organization of the practitioner.
	public var onBehalfOf: Reference?

	/// Time period of participant.
	public var period: Period?

	/// Type of involvement.
	public var role: CodeableConcept?

	enum CareTeamParticipantKeys: String, CodingKey {
		case member
		case onBehalfOf
		case period
		case role
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: CareTeamParticipantKeys.self)
		try container.encodeIfPresent(member, forKey: .member)
		try container.encodeIfPresent(onBehalfOf, forKey: .onBehalfOf)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeIfPresent(role, forKey: .role)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  CareTeamParticipantKeys.self)
		member = try container.decodeIfPresent(Reference.self, forKey: .member)
		onBehalfOf = try container.decodeIfPresent(Reference.self, forKey: .onBehalfOf)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		role = try container.decodeIfPresent(CodeableConcept.self, forKey: .role)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? CareTeamParticipant else {
            return false
        }

		return	member == object.member &&
			onBehalfOf == object.onBehalfOf &&
			period == object.period &&
			role == object.role &&
			super.equal(to: to)
	}
}

extension CareTeamParticipant {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? CareTeamParticipant else {
            return self
        }

        resource.member = self.member?.copy(with: zone) as? Reference
        resource.onBehalfOf = self.onBehalfOf?.copy(with: zone) as? Reference
        resource.period = self.period?.copy(with: zone) as? Period
        resource.role = self.role?.copy(with: zone) as? CodeableConcept

        return resource
    }
}
