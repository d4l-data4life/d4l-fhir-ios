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
//  ProcedureRequest.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest)
//

import Foundation

/**
A request for a procedure or diagnostic to be performed.

A record of a request for diagnostic investigations, treatments, or operations to be performed.
*/
open class ProcedureRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ProcedureRequest" }
	}

    private static var keyPaths: [String: PartialKeyPath<ProcedureRequest>] = [

        "asNeededBoolean" : \ProcedureRequest.asNeededBoolean,
        "asNeededCodeableConcept" : \ProcedureRequest.asNeededCodeableConcept,
        "authoredOn" : \ProcedureRequest.authoredOn,
        "basedOn" : \ProcedureRequest.basedOn,
        "bodySite" : \ProcedureRequest.bodySite,
        "category" : \ProcedureRequest.category,
        "code" : \ProcedureRequest.code,
        "context" : \ProcedureRequest.context,
        "definition" : \ProcedureRequest.definition,
        "doNotPerform" : \ProcedureRequest.doNotPerform,
        "identifier" : \ProcedureRequest.identifier,
        "intent" : \ProcedureRequest.intent,
        "note" : \ProcedureRequest.note,
        "occurrenceDateTime" : \ProcedureRequest.occurrenceDateTime,
        "occurrencePeriod" : \ProcedureRequest.occurrencePeriod,
        "occurrenceTiming" : \ProcedureRequest.occurrenceTiming,
        "performer" : \ProcedureRequest.performer,
        "performerType" : \ProcedureRequest.performerType,
        "priority" : \ProcedureRequest.priority,
        "reasonCode" : \ProcedureRequest.reasonCode,
        "reasonReference" : \ProcedureRequest.reasonReference,
        "relevantHistory" : \ProcedureRequest.relevantHistory,
        "replaces" : \ProcedureRequest.replaces,
        "requester" : \ProcedureRequest.requester,
        "requisition" : \ProcedureRequest.requisition,
        "specimen" : \ProcedureRequest.specimen,
        "status" : \ProcedureRequest.status,
        "subject" : \ProcedureRequest.subject,
        "supportingInfo" : \ProcedureRequest.supportingInfo
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ProcedureRequest.keyPaths[name] as? KeyPath<ProcedureRequest, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ProcedureRequest.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Preconditions for procedure or diagnostic.
	public var asNeededBoolean: Bool?

	/// Preconditions for procedure or diagnostic.
	public var asNeededCodeableConcept: CodeableConcept?

	/// Date request signed.
	public var authoredOn: DateTime?

	/// What request fulfills.
	public var basedOn: [Reference]?

	/// Location on Body.
	public var bodySite: [CodeableConcept]?

	/// Classification of procedure.
	public var category: [CodeableConcept]?

	/// What is being requested/ordered.
	public var code: CodeableConcept?

	/// Encounter or Episode during which request was created.
	public var context: Reference?

	/// Protocol or definition.
	public var definition: [Reference]?

	/// True if procedure should not be performed.
	public var doNotPerform: Bool?

	/// Identifiers assigned to this order.
	public var identifier: [Identifier]?

	/// Whether the request is a proposal, plan, an original order or a reflex order.
	public var intent: RequestIntent?

	/// Comments.
	public var note: [Annotation]?

	/// When procedure should occur.
	public var occurrenceDateTime: DateTime?

	/// When procedure should occur.
	public var occurrencePeriod: Period?

	/// When procedure should occur.
	public var occurrenceTiming: Timing?

	/// Requested perfomer.
	public var performer: Reference?

	/// Performer role.
	public var performerType: CodeableConcept?

	/// Indicates how quickly the ProcedureRequest should be addressed with respect to other requests.
	public var priority: RequestPriority?

	/// Explanation/Justification for test.
	public var reasonCode: [CodeableConcept]?

	/// Explanation/Justification for test.
	public var reasonReference: [Reference]?

	/// Request provenance.
	public var relevantHistory: [Reference]?

	/// What request replaces.
	public var replaces: [Reference]?

	/// Who/what is requesting procedure or diagnostic.
	public var requester: ProcedureRequestRequester?

	/// Composite Request ID.
	public var requisition: Identifier?

	/// Procedure Samples.
	public var specimen: [Reference]?

	/// The status of the order.
	public var status: RequestStatus?

	/// Individual the service is ordered for.
	public var subject: Reference?

	/// Additional clinical information.
	public var supportingInfo: [Reference]?

	enum ProcedureRequestKeys: String, CodingKey {
		case asNeededBoolean
		case asNeededCodeableConcept
		case authoredOn
		case basedOn
		case bodySite
		case category
		case code
		case context
		case definition
		case doNotPerform
		case identifier
		case intent
		case note
		case occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case performer
		case performerType
		case priority
		case reasonCode
		case reasonReference
		case relevantHistory
		case replaces
		case requester
		case requisition
		case specimen
		case status
		case subject
		case supportingInfo
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(code: CodeableConcept, intent: RequestIntent, status: RequestStatus, subject: Reference) {
		self.init()
		self.code = code
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
		var container = encoder.container(keyedBy: ProcedureRequestKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
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
		try container.encodeIfPresent(asNeededBoolean, forKey: .asNeededBoolean)
		try container.encodeIfPresent(asNeededCodeableConcept, forKey: .asNeededCodeableConcept)
		try container.encodeIfPresent(authoredOn, forKey: .authoredOn)
		try container.encodeArrayIfPresent(basedOn, forKey: .basedOn)
		try container.encodeArrayIfPresent(bodySite, forKey: .bodySite)
		try container.encodeArrayIfPresent(category, forKey: .category)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeArrayIfPresent(definition, forKey: .definition)
		try container.encodeIfPresent(doNotPerform, forKey: .doNotPerform)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeIfPresent(occurrenceDateTime, forKey: .occurrenceDateTime)
		try container.encodeIfPresent(occurrencePeriod, forKey: .occurrencePeriod)
		try container.encodeIfPresent(occurrenceTiming, forKey: .occurrenceTiming)
		try container.encodeIfPresent(performer, forKey: .performer)
		try container.encodeIfPresent(performerType, forKey: .performerType)
		try container.encodeIfPresent(priority, forKey: .priority)
		try container.encodeArrayIfPresent(reasonCode, forKey: .reasonCode)
		try container.encodeArrayIfPresent(reasonReference, forKey: .reasonReference)
		try container.encodeArrayIfPresent(relevantHistory, forKey: .relevantHistory)
		try container.encodeArrayIfPresent(replaces, forKey: .replaces)
		try container.encodeIfPresent(requester, forKey: .requester)
		try container.encodeIfPresent(requisition, forKey: .requisition)
		try container.encodeArrayIfPresent(specimen, forKey: .specimen)
		try container.encodeArrayIfPresent(supportingInfo, forKey: .supportingInfo)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ProcedureRequestKeys.self)
		code = try container.decode(CodeableConcept.self, forKey: .code)
		intent = try container.decode(RequestIntent.self, forKey: .intent)
		status = try container.decode(RequestStatus.self, forKey: .status)
		subject = try container.decode(Reference.self, forKey: .subject)
		asNeededBoolean = try container.decodeIfPresent(Bool.self, forKey: .asNeededBoolean)
		asNeededCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .asNeededCodeableConcept)
		authoredOn = try container.decodeIfPresent(DateTime.self, forKey: .authoredOn)
		basedOn = try container.decodeArrayIfPresent([Reference].self, forKey: .basedOn)
		bodySite = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .bodySite)
		category = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .category)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		definition = try container.decodeArrayIfPresent([Reference].self, forKey: .definition)
		doNotPerform = try container.decodeIfPresent(Bool.self, forKey: .doNotPerform)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		occurrenceDateTime = try container.decodeIfPresent(DateTime.self, forKey: .occurrenceDateTime)
		occurrencePeriod = try container.decodeIfPresent(Period.self, forKey: .occurrencePeriod)
		occurrenceTiming = try container.decodeIfPresent(Timing.self, forKey: .occurrenceTiming)
		performer = try container.decodeIfPresent(Reference.self, forKey: .performer)
		performerType = try container.decodeIfPresent(CodeableConcept.self, forKey: .performerType)
		priority = try container.decodeIfPresent(RequestPriority.self, forKey: .priority)
		reasonCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .reasonCode)
		reasonReference = try container.decodeArrayIfPresent([Reference].self, forKey: .reasonReference)
		relevantHistory = try container.decodeArrayIfPresent([Reference].self, forKey: .relevantHistory)
		replaces = try container.decodeArrayIfPresent([Reference].self, forKey: .replaces)
		requester = try container.decodeIfPresent(ProcedureRequestRequester.self, forKey: .requester)
		requisition = try container.decodeIfPresent(Identifier.self, forKey: .requisition)
		specimen = try container.decodeArrayIfPresent([Reference].self, forKey: .specimen)
		supportingInfo = try container.decodeArrayIfPresent([Reference].self, forKey: .supportingInfo)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ProcedureRequest else {
            return false
        }

		return	asNeededBoolean == object.asNeededBoolean &&
			asNeededCodeableConcept == object.asNeededCodeableConcept &&
			authoredOn == object.authoredOn &&
			basedOn == object.basedOn &&
			bodySite == object.bodySite &&
			category == object.category &&
			code == object.code &&
			context == object.context &&
			definition == object.definition &&
			doNotPerform == object.doNotPerform &&
			identifier == object.identifier &&
			intent == object.intent &&
			note == object.note &&
			occurrenceDateTime == object.occurrenceDateTime &&
			occurrencePeriod == object.occurrencePeriod &&
			occurrenceTiming == object.occurrenceTiming &&
			performer == object.performer &&
			performerType == object.performerType &&
			priority == object.priority &&
			reasonCode == object.reasonCode &&
			reasonReference == object.reasonReference &&
			relevantHistory == object.relevantHistory &&
			replaces == object.replaces &&
			requester == object.requester &&
			requisition == object.requisition &&
			specimen == object.specimen &&
			status == object.status &&
			subject == object.subject &&
			supportingInfo == object.supportingInfo &&
			super.equal(to: to)
	}
}

extension ProcedureRequest {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ProcedureRequest else {
            return self
        }

        resource.asNeededBoolean = self.asNeededBoolean
        resource.asNeededCodeableConcept = self.asNeededCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.authoredOn = self.authoredOn
        resource.basedOn = self.basedOn?.compactMap { $0.copy(with: zone) as? Reference }
        resource.bodySite = self.bodySite?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.category = self.category?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.definition = self.definition?.compactMap { $0.copy(with: zone) as? Reference }
        resource.doNotPerform = self.doNotPerform
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.intent = self.intent
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.occurrenceDateTime = self.occurrenceDateTime
        resource.occurrencePeriod = self.occurrencePeriod?.copy(with: zone) as? Period
        resource.occurrenceTiming = self.occurrenceTiming?.copy(with: zone) as? Timing
        resource.performer = self.performer?.copy(with: zone) as? Reference
        resource.performerType = self.performerType?.copy(with: zone) as? CodeableConcept
        resource.priority = self.priority
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.relevantHistory = self.relevantHistory?.compactMap { $0.copy(with: zone) as? Reference }
        resource.replaces = self.replaces?.compactMap { $0.copy(with: zone) as? Reference }
        resource.requester = self.requester?.copy(with: zone) as? ProcedureRequestRequester
        resource.requisition = self.requisition?.copy(with: zone) as? Identifier
        resource.specimen = self.specimen?.compactMap { $0.copy(with: zone) as? Reference }
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy(with: zone) as? Reference }

        return resource
    }
}

/**
Who/what is requesting procedure or diagnostic.

The individual who initiated the request and has responsibility for its activation.
*/
open class ProcedureRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcedureRequestRequester" }
	}

    private static var keyPaths: [String: PartialKeyPath<ProcedureRequestRequester>] = [

        "agent" : \ProcedureRequestRequester.agent,
        "onBehalfOf" : \ProcedureRequestRequester.onBehalfOf
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ProcedureRequestRequester.keyPaths[name] as? KeyPath<ProcedureRequestRequester, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ProcedureRequestRequester.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Individual making the request.
	public var agent: Reference?

	/// Organization agent is acting for.
	public var onBehalfOf: Reference?

	enum ProcedureRequestRequesterKeys: String, CodingKey {
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
		var container = encoder.container(keyedBy: ProcedureRequestRequesterKeys.self)
		if let item = agent {
			try container.encode(item, forKey: .agent)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("agent")
		}
		try container.encodeIfPresent(onBehalfOf, forKey: .onBehalfOf)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ProcedureRequestRequesterKeys.self)
		agent = try container.decode(Reference.self, forKey: .agent)
		onBehalfOf = try container.decodeIfPresent(Reference.self, forKey: .onBehalfOf)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ProcedureRequestRequester else {
            return false
        }

		return	agent == object.agent &&
			onBehalfOf == object.onBehalfOf &&
			super.equal(to: to)
	}
}

extension ProcedureRequestRequester {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ProcedureRequestRequester else {
            return self
        }

        resource.agent = self.agent?.copy(with: zone) as? Reference
        resource.onBehalfOf = self.onBehalfOf?.copy(with: zone) as? Reference

        return resource
    }
}
