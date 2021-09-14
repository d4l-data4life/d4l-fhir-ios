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
//  ReferralRequest.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ReferralRequest)
//

import Foundation

/**
A request for referral or transfer of care.

Used to record and send details about a request for referral service or transfer of a patient to the care of another
provider or provider organization.
*/
open class ReferralRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ReferralRequest" }
	}

    private static var keyPaths: [String: PartialKeyPath<ReferralRequest>] = [

        "authoredOn" : \ReferralRequest.authoredOn,
        "basedOn" : \ReferralRequest.basedOn,
        "context" : \ReferralRequest.context,
        "definition" : \ReferralRequest.definition,
        "description_fhir" : \ReferralRequest.description_fhir,
        "groupIdentifier" : \ReferralRequest.groupIdentifier,
        "identifier" : \ReferralRequest.identifier,
        "intent" : \ReferralRequest.intent,
        "note" : \ReferralRequest.note,
        "occurrenceDateTime" : \ReferralRequest.occurrenceDateTime,
        "occurrencePeriod" : \ReferralRequest.occurrencePeriod,
        "priority" : \ReferralRequest.priority,
        "reasonCode" : \ReferralRequest.reasonCode,
        "reasonReference" : \ReferralRequest.reasonReference,
        "recipient" : \ReferralRequest.recipient,
        "relevantHistory" : \ReferralRequest.relevantHistory,
        "replaces" : \ReferralRequest.replaces,
        "requester" : \ReferralRequest.requester,
        "serviceRequested" : \ReferralRequest.serviceRequested,
        "specialty" : \ReferralRequest.specialty,
        "status" : \ReferralRequest.status,
        "subject" : \ReferralRequest.subject,
        "supportingInfo" : \ReferralRequest.supportingInfo,
        "type" : \ReferralRequest.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ReferralRequest.keyPaths[name] as? KeyPath<ReferralRequest, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ReferralRequest.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Date of creation/activation.
	public var authoredOn: DateTime?

	/// Request fulfilled by this request.
	public var basedOn: [Reference]?

	/// Originating encounter.
	public var context: Reference?

	/// Instantiates protocol or definition.
	public var definition: [Reference]?

	/// A textual description of the referral.
	public var description_fhir: String?

	/// Composite request this is part of.
	public var groupIdentifier: Identifier?

	/// Business identifier.
	public var identifier: [Identifier]?

	/// Distinguishes the "level" of authorization/demand implicit in this request.
	public var intent: RequestIntent?

	/// Comments made about referral request.
	public var note: [Annotation]?

	/// When the service(s) requested in the referral should occur.
	public var occurrenceDateTime: DateTime?

	/// When the service(s) requested in the referral should occur.
	public var occurrencePeriod: Period?

	/// An indication of the urgency of referral (or where applicable the type of transfer of care) request.
	public var priority: RequestPriority?

	/// Reason for referral / transfer of care request.
	public var reasonCode: [CodeableConcept]?

	/// Why is service needed?.
	public var reasonReference: [Reference]?

	/// Receiver of referral / transfer of care request.
	public var recipient: [Reference]?

	/// Key events in history of request.
	public var relevantHistory: [Reference]?

	/// Request(s) replaced by this request.
	public var replaces: [Reference]?

	/// Who/what is requesting service.
	public var requester: ReferralRequestRequester?

	/// Actions requested as part of the referral.
	public var serviceRequested: [CodeableConcept]?

	/// The clinical specialty (discipline) that the referral is requested for.
	public var specialty: CodeableConcept?

	/// The status of the authorization/intention reflected by the referral request record.
	public var status: RequestStatus?

	/// Patient referred to care or transfer.
	public var subject: Reference?

	/// Additonal information to support referral or transfer of care request.
	public var supportingInfo: [Reference]?

	/// Referral/Transition of care request type.
	public var type: CodeableConcept?

	enum ReferralRequestKeys: String, CodingKey {
		case authoredOn
		case basedOn
		case context
		case definition
		case description_fhir = "description"
		case groupIdentifier
		case identifier
		case intent
		case note
		case occurrenceDateTime
		case occurrencePeriod
		case priority
		case reasonCode
		case reasonReference
		case recipient
		case relevantHistory
		case replaces
		case requester
		case serviceRequested
		case specialty
		case status
		case subject
		case supportingInfo
		case type
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(intent: RequestIntent, status: RequestStatus, subject: Reference) {
		self.init()
		self.intent = intent
		self.status = status
		self.subject = subject
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ReferralRequestKeys.self)
		if let item = intent {
			try container.encode(item, forKey: .intent)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("intent")
		}
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		if let item = subject {
			try container.encode(item, forKey: .subject)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("subject")
		}
		try container.encodeIfPresent(authoredOn, forKey: .authoredOn)
		try container.encodeArrayIfPresent(basedOn, forKey: .basedOn)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeArrayIfPresent(definition, forKey: .definition)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeIfPresent(groupIdentifier, forKey: .groupIdentifier)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeIfPresent(occurrenceDateTime, forKey: .occurrenceDateTime)
		try container.encodeIfPresent(occurrencePeriod, forKey: .occurrencePeriod)
		try container.encodeIfPresent(priority, forKey: .priority)
		try container.encodeArrayIfPresent(reasonCode, forKey: .reasonCode)
		try container.encodeArrayIfPresent(reasonReference, forKey: .reasonReference)
		try container.encodeArrayIfPresent(recipient, forKey: .recipient)
		try container.encodeArrayIfPresent(relevantHistory, forKey: .relevantHistory)
		try container.encodeArrayIfPresent(replaces, forKey: .replaces)
		try container.encodeIfPresent(requester, forKey: .requester)
		try container.encodeArrayIfPresent(serviceRequested, forKey: .serviceRequested)
		try container.encodeIfPresent(specialty, forKey: .specialty)
		try container.encodeArrayIfPresent(supportingInfo, forKey: .supportingInfo)
		try container.encodeIfPresent(type, forKey: .type)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ReferralRequestKeys.self)
		intent = try container.decode(RequestIntent.self, forKey: .intent)
		status = try container.decode(RequestStatus.self, forKey: .status)
		subject = try container.decode(Reference.self, forKey: .subject)
		authoredOn = try container.decodeIfPresent(DateTime.self, forKey: .authoredOn)
		basedOn = try container.decodeArrayIfPresent([Reference].self, forKey: .basedOn)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		definition = try container.decodeArrayIfPresent([Reference].self, forKey: .definition)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		groupIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .groupIdentifier)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		occurrenceDateTime = try container.decodeIfPresent(DateTime.self, forKey: .occurrenceDateTime)
		occurrencePeriod = try container.decodeIfPresent(Period.self, forKey: .occurrencePeriod)
		priority = try container.decodeIfPresent(RequestPriority.self, forKey: .priority)
		reasonCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .reasonCode)
		reasonReference = try container.decodeArrayIfPresent([Reference].self, forKey: .reasonReference)
		recipient = try container.decodeArrayIfPresent([Reference].self, forKey: .recipient)
		relevantHistory = try container.decodeArrayIfPresent([Reference].self, forKey: .relevantHistory)
		replaces = try container.decodeArrayIfPresent([Reference].self, forKey: .replaces)
		requester = try container.decodeIfPresent(ReferralRequestRequester.self, forKey: .requester)
		serviceRequested = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .serviceRequested)
		specialty = try container.decodeIfPresent(CodeableConcept.self, forKey: .specialty)
		supportingInfo = try container.decodeArrayIfPresent([Reference].self, forKey: .supportingInfo)
		type = try container.decodeIfPresent(CodeableConcept.self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ReferralRequest else {
            return false
        }

		return	authoredOn == object.authoredOn &&
			basedOn == object.basedOn &&
			context == object.context &&
			definition == object.definition &&
			description_fhir == object.description_fhir &&
			groupIdentifier == object.groupIdentifier &&
			identifier == object.identifier &&
			intent == object.intent &&
			note == object.note &&
			occurrenceDateTime == object.occurrenceDateTime &&
			occurrencePeriod == object.occurrencePeriod &&
			priority == object.priority &&
			reasonCode == object.reasonCode &&
			reasonReference == object.reasonReference &&
			recipient == object.recipient &&
			relevantHistory == object.relevantHistory &&
			replaces == object.replaces &&
			requester == object.requester &&
			serviceRequested == object.serviceRequested &&
			specialty == object.specialty &&
			status == object.status &&
			subject == object.subject &&
			supportingInfo == object.supportingInfo &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension ReferralRequest {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ReferralRequest else {
            return self
        }

        resource.authoredOn = self.authoredOn
        resource.basedOn = self.basedOn?.compactMap { $0.copy(with: zone) as? Reference }
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.definition = self.definition?.compactMap { $0.copy(with: zone) as? Reference }
        resource.description_fhir = self.description_fhir
        resource.groupIdentifier = self.groupIdentifier?.copy(with: zone) as? Identifier
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.intent = self.intent
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.occurrenceDateTime = self.occurrenceDateTime
        resource.occurrencePeriod = self.occurrencePeriod?.copy(with: zone) as? Period
        resource.priority = self.priority
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.recipient = self.recipient?.compactMap { $0.copy(with: zone) as? Reference }
        resource.relevantHistory = self.relevantHistory?.compactMap { $0.copy(with: zone) as? Reference }
        resource.replaces = self.replaces?.compactMap { $0.copy(with: zone) as? Reference }
        resource.requester = self.requester?.copy(with: zone) as? ReferralRequestRequester
        resource.serviceRequested = self.serviceRequested?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.specialty = self.specialty?.copy(with: zone) as? CodeableConcept
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy(with: zone) as? Reference }
        resource.type = self.type?.copy(with: zone) as? CodeableConcept

        return resource
    }
}

/**
Who/what is requesting service.

The individual who initiated the request and has responsibility for its activation.
*/
open class ReferralRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "ReferralRequestRequester" }
	}

    private static var keyPaths: [String: PartialKeyPath<ReferralRequestRequester>] = [

        "agent" : \ReferralRequestRequester.agent,
        "onBehalfOf" : \ReferralRequestRequester.onBehalfOf
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ReferralRequestRequester.keyPaths[name] as? KeyPath<ReferralRequestRequester, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ReferralRequestRequester.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Individual making the request.
	public var agent: Reference?

	/// Organization agent is acting for.
	public var onBehalfOf: Reference?

	enum ReferralRequestRequesterKeys: String, CodingKey {
		case agent
		case onBehalfOf
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(agent: Reference) {
		self.init()
		self.agent = agent
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ReferralRequestRequesterKeys.self)
		if let item = agent {
			try container.encode(item, forKey: .agent)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("agent")
		}
		try container.encodeIfPresent(onBehalfOf, forKey: .onBehalfOf)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ReferralRequestRequesterKeys.self)
		agent = try container.decode(Reference.self, forKey: .agent)
		onBehalfOf = try container.decodeIfPresent(Reference.self, forKey: .onBehalfOf)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ReferralRequestRequester else {
            return false
        }

		return	agent == object.agent &&
			onBehalfOf == object.onBehalfOf &&
			super.equal(to: to)
	}
}

extension ReferralRequestRequester {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ReferralRequestRequester else {
            return self
        }

        resource.agent = self.agent?.copy(with: zone) as? Reference
        resource.onBehalfOf = self.onBehalfOf?.copy(with: zone) as? Reference

        return resource
    }
}
