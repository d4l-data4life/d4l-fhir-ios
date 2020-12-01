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
//  MedicationRequest.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/MedicationRequest)
//

import Foundation

/**
Ordering of medication for patient or group.

An order or request for both supply of the medication and the instructions for administration of the medication to a
patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to
generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow
patterns.
*/
open class MedicationRequest: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationRequest" }
	}

    private static var keyPaths: [String: PartialKeyPath<MedicationRequest>] = [

        "authoredOn" : \MedicationRequest.authoredOn,
        "basedOn" : \MedicationRequest.basedOn,
        "category" : \MedicationRequest.category,
        "context" : \MedicationRequest.context,
        "definition" : \MedicationRequest.definition,
        "detectedIssue" : \MedicationRequest.detectedIssue,
        "dispenseRequest" : \MedicationRequest.dispenseRequest,
        "dosageInstruction" : \MedicationRequest.dosageInstruction,
        "eventHistory" : \MedicationRequest.eventHistory,
        "groupIdentifier" : \MedicationRequest.groupIdentifier,
        "identifier" : \MedicationRequest.identifier,
        "intent" : \MedicationRequest.intent,
        "medicationCodeableConcept" : \MedicationRequest.medicationCodeableConcept,
        "medicationReference" : \MedicationRequest.medicationReference,
        "note" : \MedicationRequest.note,
        "priorPrescription" : \MedicationRequest.priorPrescription,
        "priority" : \MedicationRequest.priority,
        "reasonCode" : \MedicationRequest.reasonCode,
        "reasonReference" : \MedicationRequest.reasonReference,
        "recorder" : \MedicationRequest.recorder,
        "requester" : \MedicationRequest.requester,
        "status" : \MedicationRequest.status,
        "subject" : \MedicationRequest.subject,
        "substitution" : \MedicationRequest.substitution,
        "supportingInformation" : \MedicationRequest.supportingInformation
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = MedicationRequest.keyPaths[name] as? KeyPath<MedicationRequest, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = MedicationRequest.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// When request was initially authored.
	public var authoredOn: DateTime?

	/// What request fulfills.
	public var basedOn: [Reference]?

	/// Type of medication usage.
	public var category: CodeableConcept?

	/// Created during encounter/admission/stay.
	public var context: Reference?

	/// Protocol or definition.
	public var definition: [Reference]?

	/// Clinical Issue with action.
	public var detectedIssue: [Reference]?

	/// Medication supply authorization.
	public var dispenseRequest: MedicationRequestDispenseRequest?

	/// How the medication should be taken.
	public var dosageInstruction: [Dosage]?

	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?

	/// Composite request this is part of.
	public var groupIdentifier: Identifier?

	/// External ids for this request.
	public var identifier: [Identifier]?

	/// Whether the request is a proposal, plan, or an original order.
	public var intent: MedicationRequestIntent?

	/// Medication to be taken.
	public var medicationCodeableConcept: CodeableConcept?

	/// Medication to be taken.
	public var medicationReference: Reference?

	/// Information about the prescription.
	public var note: [Annotation]?

	/// An order/prescription that is being replaced.
	public var priorPrescription: Reference?

	/// Indicates how quickly the Medication Request should be addressed with respect to other requests.
	public var priority: MedicationRequestPriority?

	/// Reason or indication for writing the prescription.
	public var reasonCode: [CodeableConcept]?

	/// Condition or Observation that supports why the prescription is being written.
	public var reasonReference: [Reference]?

	/// Person who entered the request.
	public var recorder: Reference?

	/// Who/What requested the Request.
	public var requester: MedicationRequestRequester?

	/// A code specifying the current state of the order.  Generally this will be active or completed state.
	public var status: MedicationRequestStatus?

	/// Who or group medication request is for.
	public var subject: Reference?

	/// Any restrictions on medication substitution.
	public var substitution: MedicationRequestSubstitution?

	/// Information to support ordering of the medication.
	public var supportingInformation: [Reference]?

	enum MedicationRequestKeys: String, CodingKey {
		case authoredOn
		case basedOn
		case category
		case context
		case definition
		case detectedIssue
		case dispenseRequest
		case dosageInstruction
		case eventHistory
		case groupIdentifier
		case identifier
		case intent
		case medicationCodeableConcept
		case medicationReference
		case note
		case priorPrescription
		case priority
		case reasonCode
		case reasonReference
		case recorder
		case requester
		case status
		case subject
		case substitution
		case supportingInformation
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(intent: MedicationRequestIntent, medication: Any, subject: Reference) {
		self.init()
		self.intent = intent
		if let value = medication as? CodeableConcept {
			self.medicationCodeableConcept = value
		} else if let value = medication as? Reference {
			self.medicationReference = value
		} else {
			debugPrint("Type “\(Swift.type(of: medication))” for property “\(medication)” is invalid, ignoring")
		}
		self.subject = subject
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MedicationRequestKeys.self)
		if let item = intent {
			try container.encode(item, forKey: .intent)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("intent")
		}
		try container.encodeIfPresent(medicationCodeableConcept, forKey: .medicationCodeableConcept)
		try container.encodeIfPresent(medicationReference, forKey: .medicationReference)
		if let item = subject {
			try container.encode(item, forKey: .subject)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("subject")
		}
		try container.encodeIfPresent(authoredOn, forKey: .authoredOn)
		try container.encodeArrayIfPresent(basedOn, forKey: .basedOn)
		try container.encodeIfPresent(category, forKey: .category)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeArrayIfPresent(definition, forKey: .definition)
		try container.encodeArrayIfPresent(detectedIssue, forKey: .detectedIssue)
		try container.encodeIfPresent(dispenseRequest, forKey: .dispenseRequest)
		try container.encodeArrayIfPresent(dosageInstruction, forKey: .dosageInstruction)
		try container.encodeArrayIfPresent(eventHistory, forKey: .eventHistory)
		try container.encodeIfPresent(groupIdentifier, forKey: .groupIdentifier)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeIfPresent(priorPrescription, forKey: .priorPrescription)
		try container.encodeIfPresent(priority, forKey: .priority)
		try container.encodeArrayIfPresent(reasonCode, forKey: .reasonCode)
		try container.encodeArrayIfPresent(reasonReference, forKey: .reasonReference)
		try container.encodeIfPresent(recorder, forKey: .recorder)
		try container.encodeIfPresent(requester, forKey: .requester)
		try container.encodeIfPresent(status, forKey: .status)
		try container.encodeIfPresent(substitution, forKey: .substitution)
		try container.encodeArrayIfPresent(supportingInformation, forKey: .supportingInformation)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationRequestKeys.self)
		intent = try container.decode(MedicationRequestIntent.self, forKey: .intent)
		medicationCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .medicationCodeableConcept)
		medicationReference = try container.decodeIfPresent(Reference.self, forKey: .medicationReference)
		subject = try container.decode(Reference.self, forKey: .subject)
		authoredOn = try container.decodeIfPresent(DateTime.self, forKey: .authoredOn)
		basedOn = try container.decodeArrayIfPresent([Reference].self, forKey: .basedOn)
		category = try container.decodeIfPresent(CodeableConcept.self, forKey: .category)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		definition = try container.decodeArrayIfPresent([Reference].self, forKey: .definition)
		detectedIssue = try container.decodeArrayIfPresent([Reference].self, forKey: .detectedIssue)
		dispenseRequest = try container.decodeIfPresent(MedicationRequestDispenseRequest.self, forKey: .dispenseRequest)
		dosageInstruction = try container.decodeArrayIfPresent([Dosage].self, forKey: .dosageInstruction)
		eventHistory = try container.decodeArrayIfPresent([Reference].self, forKey: .eventHistory)
		groupIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .groupIdentifier)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		priorPrescription = try container.decodeIfPresent(Reference.self, forKey: .priorPrescription)
		priority = try container.decodeIfPresent(MedicationRequestPriority.self, forKey: .priority)
		reasonCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .reasonCode)
		reasonReference = try container.decodeArrayIfPresent([Reference].self, forKey: .reasonReference)
		recorder = try container.decodeIfPresent(Reference.self, forKey: .recorder)
		requester = try container.decodeIfPresent(MedicationRequestRequester.self, forKey: .requester)
		status = try container.decodeIfPresent(MedicationRequestStatus.self, forKey: .status)
		substitution = try container.decodeIfPresent(MedicationRequestSubstitution.self, forKey: .substitution)
		supportingInformation = try container.decodeArrayIfPresent([Reference].self, forKey: .supportingInformation)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? MedicationRequest else {
            return false
        }

		return	authoredOn == object.authoredOn &&
			basedOn == object.basedOn &&
			category == object.category &&
			context == object.context &&
			definition == object.definition &&
			detectedIssue == object.detectedIssue &&
			dispenseRequest == object.dispenseRequest &&
			dosageInstruction == object.dosageInstruction &&
			eventHistory == object.eventHistory &&
			groupIdentifier == object.groupIdentifier &&
			identifier == object.identifier &&
			intent == object.intent &&
			medicationCodeableConcept == object.medicationCodeableConcept &&
			medicationReference == object.medicationReference &&
			note == object.note &&
			priorPrescription == object.priorPrescription &&
			priority == object.priority &&
			reasonCode == object.reasonCode &&
			reasonReference == object.reasonReference &&
			recorder == object.recorder &&
			requester == object.requester &&
			status == object.status &&
			subject == object.subject &&
			substitution == object.substitution &&
			supportingInformation == object.supportingInformation &&
			super.equal(to: to)
	}
}

extension MedicationRequest {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? MedicationRequest else {
            return self
        }

        resource.authoredOn = self.authoredOn
        resource.basedOn = self.basedOn?.compactMap { $0.copy(with: zone) as? Reference }
        resource.category = self.category?.copy(with: zone) as? CodeableConcept
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.definition = self.definition?.compactMap { $0.copy(with: zone) as? Reference }
        resource.detectedIssue = self.detectedIssue?.compactMap { $0.copy(with: zone) as? Reference }
        resource.dispenseRequest = self.dispenseRequest?.copy(with: zone) as? MedicationRequestDispenseRequest
        resource.dosageInstruction = self.dosageInstruction?.compactMap { $0.copy(with: zone) as? Dosage }
        resource.eventHistory = self.eventHistory?.compactMap { $0.copy(with: zone) as? Reference }
        resource.groupIdentifier = self.groupIdentifier?.copy(with: zone) as? Identifier
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.intent = self.intent
        resource.medicationCodeableConcept = self.medicationCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.medicationReference = self.medicationReference?.copy(with: zone) as? Reference
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.priorPrescription = self.priorPrescription?.copy(with: zone) as? Reference
        resource.priority = self.priority
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.recorder = self.recorder?.copy(with: zone) as? Reference
        resource.requester = self.requester?.copy(with: zone) as? MedicationRequestRequester
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.substitution = self.substitution?.copy(with: zone) as? MedicationRequestSubstitution
        resource.supportingInformation = self.supportingInformation?.compactMap { $0.copy(with: zone) as? Reference }

        return resource
    }
}

/**
Medication supply authorization.

Indicates the specific details for the dispense or medication supply part of a medication request (also known as a
Medication Prescription or Medication Order).  Note that this information is not always sent with the order.  There may
be in some settings (e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy
department.
*/
open class MedicationRequestDispenseRequest: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationRequestDispenseRequest" }
	}

    private static var keyPaths: [String: PartialKeyPath<MedicationRequestDispenseRequest>] = [

        "expectedSupplyDuration" : \MedicationRequestDispenseRequest.expectedSupplyDuration,
        "numberOfRepeatsAllowed" : \MedicationRequestDispenseRequest.numberOfRepeatsAllowed,
        "performer" : \MedicationRequestDispenseRequest.performer,
        "quantity" : \MedicationRequestDispenseRequest.quantity,
        "validityPeriod" : \MedicationRequestDispenseRequest.validityPeriod
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = MedicationRequestDispenseRequest.keyPaths[name] as? KeyPath<MedicationRequestDispenseRequest, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = MedicationRequestDispenseRequest.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Number of days supply per dispense.
	public var expectedSupplyDuration: Duration?

	/// Number of refills authorized.
	public var numberOfRepeatsAllowed: Int?

	/// Intended dispenser.
	public var performer: Reference?

	/// Amount of medication to supply per dispense.
	public var quantity: Quantity?

	/// Time period supply is authorized for.
	public var validityPeriod: Period?

	enum MedicationRequestDispenseRequestKeys: String, CodingKey {
		case expectedSupplyDuration
		case numberOfRepeatsAllowed
		case performer
		case quantity
		case validityPeriod
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MedicationRequestDispenseRequestKeys.self)
		try container.encodeIfPresent(expectedSupplyDuration, forKey: .expectedSupplyDuration)
		try container.encodeIfPresent(numberOfRepeatsAllowed, forKey: .numberOfRepeatsAllowed)
		try container.encodeIfPresent(performer, forKey: .performer)
		try container.encodeIfPresent(quantity, forKey: .quantity)
		try container.encodeIfPresent(validityPeriod, forKey: .validityPeriod)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationRequestDispenseRequestKeys.self)
		expectedSupplyDuration = try container.decodeIfPresent(Duration.self, forKey: .expectedSupplyDuration)
		numberOfRepeatsAllowed = try container.decodeIfPresent(Int.self, forKey: .numberOfRepeatsAllowed)
		performer = try container.decodeIfPresent(Reference.self, forKey: .performer)
		quantity = try container.decodeIfPresent(Quantity.self, forKey: .quantity)
		validityPeriod = try container.decodeIfPresent(Period.self, forKey: .validityPeriod)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? MedicationRequestDispenseRequest else {
            return false
        }

		return	expectedSupplyDuration == object.expectedSupplyDuration &&
			numberOfRepeatsAllowed == object.numberOfRepeatsAllowed &&
			performer == object.performer &&
			quantity == object.quantity &&
			validityPeriod == object.validityPeriod &&
			super.equal(to: to)
	}
}

extension MedicationRequestDispenseRequest {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? MedicationRequestDispenseRequest else {
            return self
        }

        resource.expectedSupplyDuration = self.expectedSupplyDuration?.copy(with: zone) as? Duration
        resource.numberOfRepeatsAllowed = self.numberOfRepeatsAllowed
        resource.performer = self.performer?.copy(with: zone) as? Reference
        resource.quantity = self.quantity?.copy(with: zone) as? Quantity
        resource.validityPeriod = self.validityPeriod?.copy(with: zone) as? Period

        return resource
    }
}

/**
Who/What requested the Request.

The individual, organization or device that initiated the request and has responsibility for its activation.
*/
open class MedicationRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationRequestRequester" }
	}

    private static var keyPaths: [String: PartialKeyPath<MedicationRequestRequester>] = [

        "agent" : \MedicationRequestRequester.agent,
        "onBehalfOf" : \MedicationRequestRequester.onBehalfOf
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = MedicationRequestRequester.keyPaths[name] as? KeyPath<MedicationRequestRequester, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = MedicationRequestRequester.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Who ordered the initial medication(s).
	public var agent: Reference?

	/// Organization agent is acting for.
	public var onBehalfOf: Reference?

	enum MedicationRequestRequesterKeys: String, CodingKey {
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
		var container = encoder.container(keyedBy: MedicationRequestRequesterKeys.self)
		if let item = agent {
			try container.encode(item, forKey: .agent)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("agent")
		}
		try container.encodeIfPresent(onBehalfOf, forKey: .onBehalfOf)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationRequestRequesterKeys.self)
		agent = try container.decode(Reference.self, forKey: .agent)
		onBehalfOf = try container.decodeIfPresent(Reference.self, forKey: .onBehalfOf)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? MedicationRequestRequester else {
            return false
        }

		return	agent == object.agent &&
			onBehalfOf == object.onBehalfOf &&
			super.equal(to: to)
	}
}

extension MedicationRequestRequester {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? MedicationRequestRequester else {
            return self
        }

        resource.agent = self.agent?.copy(with: zone) as? Reference
        resource.onBehalfOf = self.onBehalfOf?.copy(with: zone) as? Reference

        return resource
    }
}

/**
Any restrictions on medication substitution.

Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen, in
other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified
substitution may be done.
*/
open class MedicationRequestSubstitution: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationRequestSubstitution" }
	}

    private static var keyPaths: [String: PartialKeyPath<MedicationRequestSubstitution>] = [

        "allowed" : \MedicationRequestSubstitution.allowed,
        "reason" : \MedicationRequestSubstitution.reason
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = MedicationRequestSubstitution.keyPaths[name] as? KeyPath<MedicationRequestSubstitution, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = MedicationRequestSubstitution.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Whether substitution is allowed or not.
	public var allowed: Bool?

	/// Why should (not) substitution be made.
	public var reason: CodeableConcept?

	enum MedicationRequestSubstitutionKeys: String, CodingKey {
		case allowed
		case reason
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(allowed: Bool) {
		self.init()
		self.allowed = allowed
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MedicationRequestSubstitutionKeys.self)
		if let item = allowed {
			try container.encode(item, forKey: .allowed)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("allowed")
		}
		try container.encodeIfPresent(reason, forKey: .reason)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationRequestSubstitutionKeys.self)
		allowed = try container.decode(Bool.self, forKey: .allowed)
		reason = try container.decodeIfPresent(CodeableConcept.self, forKey: .reason)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? MedicationRequestSubstitution else {
            return false
        }

		return	allowed == object.allowed &&
			reason == object.reason &&
			super.equal(to: to)
	}
}

extension MedicationRequestSubstitution {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? MedicationRequestSubstitution else {
            return self
        }

        resource.allowed = self.allowed
        resource.reason = self.reason?.copy(with: zone) as? CodeableConcept

        return resource
    }
}
