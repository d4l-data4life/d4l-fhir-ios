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
//  Procedure.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Procedure)
//

import Foundation

/**
An action that is being or was performed on a patient.

An action that is or was performed on a patient. This can be a physical intervention like an operation, or less invasive
like counseling or hypnotherapy.
*/
open class Procedure: DomainResource {
	override open class var resourceType: String {
		get { return "Procedure" }
	}

    private static var keyPaths: [String: PartialKeyPath<Procedure>] = [

        "basedOn" : \Procedure.basedOn,
        "bodySite" : \Procedure.bodySite,
        "category" : \Procedure.category,
        "code" : \Procedure.code,
        "complication" : \Procedure.complication,
        "complicationDetail" : \Procedure.complicationDetail,
        "context" : \Procedure.context,
        "definition" : \Procedure.definition,
        "focalDevice" : \Procedure.focalDevice,
        "followUp" : \Procedure.followUp,
        "identifier" : \Procedure.identifier,
        "location" : \Procedure.location,
        "notDone" : \Procedure.notDone,
        "notDoneReason" : \Procedure.notDoneReason,
        "note" : \Procedure.note,
        "outcome" : \Procedure.outcome,
        "partOf" : \Procedure.partOf,
        "performedDateTime" : \Procedure.performedDateTime,
        "performedPeriod" : \Procedure.performedPeriod,
        "performer" : \Procedure.performer,
        "reasonCode" : \Procedure.reasonCode,
        "reasonReference" : \Procedure.reasonReference,
        "report" : \Procedure.report,
        "status" : \Procedure.status,
        "subject" : \Procedure.subject,
        "usedCode" : \Procedure.usedCode,
        "usedReference" : \Procedure.usedReference
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Procedure.keyPaths[name] as? KeyPath<Procedure, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Procedure.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// A request for this procedure.
	public var basedOn: [Reference]?

	/// Target body sites.
	public var bodySite: [CodeableConcept]?

	/// Classification of the procedure.
	public var category: CodeableConcept?

	/// Identification of the procedure.
	public var code: CodeableConcept?

	/// Complication following the procedure.
	public var complication: [CodeableConcept]?

	/// A condition that is a result of the procedure.
	public var complicationDetail: [Reference]?

	/// Encounter or episode associated with the procedure.
	public var context: Reference?

	/// Instantiates protocol or definition.
	public var definition: [Reference]?

	/// Device changed in procedure.
	public var focalDevice: [ProcedureFocalDevice]?

	/// Instructions for follow up.
	public var followUp: [CodeableConcept]?

	/// External Identifiers for this procedure.
	public var identifier: [Identifier]?

	/// Where the procedure happened.
	public var location: Reference?

	/// True if procedure was not performed as scheduled.
	public var notDone: Bool?

	/// Reason procedure was not performed.
	public var notDoneReason: CodeableConcept?

	/// Additional information about the procedure.
	public var note: [Annotation]?

	/// The result of procedure.
	public var outcome: CodeableConcept?

	/// Part of referenced event.
	public var partOf: [Reference]?

	/// Date/Period the procedure was performed.
	public var performedDateTime: DateTime?

	/// Date/Period the procedure was performed.
	public var performedPeriod: Period?

	/// The people who performed the procedure.
	public var performer: [ProcedurePerformer]?

	/// Coded reason procedure performed.
	public var reasonCode: [CodeableConcept]?

	/// Condition that is the reason the procedure performed.
	public var reasonReference: [Reference]?

	/// Any report resulting from the procedure.
	public var report: [Reference]?

	/// A code specifying the state of the procedure. Generally this will be in-progress or completed state.
	public var status: EventStatus?

	/// Who the procedure was performed on.
	public var subject: Reference?

	/// Coded items used during the procedure.
	public var usedCode: [CodeableConcept]?

	/// Items used during procedure.
	public var usedReference: [Reference]?

	enum ProcedureKeys: String, CodingKey {
		case basedOn
		case bodySite
		case category
		case code
		case complication
		case complicationDetail
		case context
		case definition
		case focalDevice
		case followUp
		case identifier
		case location
		case notDone
		case notDoneReason
		case note
		case outcome
		case partOf
		case performedDateTime
		case performedPeriod
		case performer
		case reasonCode
		case reasonReference
		case report
		case status
		case subject
		case usedCode
		case usedReference
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(status: EventStatus, subject: Reference) {
		self.init()
		self.status = status
		self.subject = subject
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ProcedureKeys.self)
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
		try container.encodeArrayIfPresent(basedOn, forKey: .basedOn)
		try container.encodeArrayIfPresent(bodySite, forKey: .bodySite)
		try container.encodeIfPresent(category, forKey: .category)
		try container.encodeIfPresent(code, forKey: .code)
		try container.encodeArrayIfPresent(complication, forKey: .complication)
		try container.encodeArrayIfPresent(complicationDetail, forKey: .complicationDetail)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeArrayIfPresent(definition, forKey: .definition)
		try container.encodeArrayIfPresent(focalDevice, forKey: .focalDevice)
		try container.encodeArrayIfPresent(followUp, forKey: .followUp)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(location, forKey: .location)
		try container.encodeIfPresent(notDone, forKey: .notDone)
		try container.encodeIfPresent(notDoneReason, forKey: .notDoneReason)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeIfPresent(outcome, forKey: .outcome)
		try container.encodeArrayIfPresent(partOf, forKey: .partOf)
		try container.encodeIfPresent(performedDateTime, forKey: .performedDateTime)
		try container.encodeIfPresent(performedPeriod, forKey: .performedPeriod)
		try container.encodeArrayIfPresent(performer, forKey: .performer)
		try container.encodeArrayIfPresent(reasonCode, forKey: .reasonCode)
		try container.encodeArrayIfPresent(reasonReference, forKey: .reasonReference)
		try container.encodeArrayIfPresent(report, forKey: .report)
		try container.encodeArrayIfPresent(usedCode, forKey: .usedCode)
		try container.encodeArrayIfPresent(usedReference, forKey: .usedReference)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ProcedureKeys.self)
		status = try container.decode(EventStatus.self, forKey: .status)
		subject = try container.decode(Reference.self, forKey: .subject)
		basedOn = try container.decodeArrayIfPresent([Reference].self, forKey: .basedOn)
		bodySite = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .bodySite)
		category = try container.decodeIfPresent(CodeableConcept.self, forKey: .category)
		code = try container.decodeIfPresent(CodeableConcept.self, forKey: .code)
		complication = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .complication)
		complicationDetail = try container.decodeArrayIfPresent([Reference].self, forKey: .complicationDetail)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		definition = try container.decodeArrayIfPresent([Reference].self, forKey: .definition)
		focalDevice = try container.decodeArrayIfPresent([ProcedureFocalDevice].self, forKey: .focalDevice)
		followUp = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .followUp)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		location = try container.decodeIfPresent(Reference.self, forKey: .location)
		notDone = try container.decodeIfPresent(Bool.self, forKey: .notDone)
		notDoneReason = try container.decodeIfPresent(CodeableConcept.self, forKey: .notDoneReason)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		outcome = try container.decodeIfPresent(CodeableConcept.self, forKey: .outcome)
		partOf = try container.decodeArrayIfPresent([Reference].self, forKey: .partOf)
		performedDateTime = try container.decodeIfPresent(DateTime.self, forKey: .performedDateTime)
		performedPeriod = try container.decodeIfPresent(Period.self, forKey: .performedPeriod)
		performer = try container.decodeArrayIfPresent([ProcedurePerformer].self, forKey: .performer)
		reasonCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .reasonCode)
		reasonReference = try container.decodeArrayIfPresent([Reference].self, forKey: .reasonReference)
		report = try container.decodeArrayIfPresent([Reference].self, forKey: .report)
		usedCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .usedCode)
		usedReference = try container.decodeArrayIfPresent([Reference].self, forKey: .usedReference)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Procedure else {
            return false
        }

		return	basedOn == object.basedOn &&
			bodySite == object.bodySite &&
			category == object.category &&
			code == object.code &&
			complication == object.complication &&
			complicationDetail == object.complicationDetail &&
			context == object.context &&
			definition == object.definition &&
			focalDevice == object.focalDevice &&
			followUp == object.followUp &&
			identifier == object.identifier &&
			location == object.location &&
			notDone == object.notDone &&
			notDoneReason == object.notDoneReason &&
			note == object.note &&
			outcome == object.outcome &&
			partOf == object.partOf &&
			performedDateTime == object.performedDateTime &&
			performedPeriod == object.performedPeriod &&
			performer == object.performer &&
			reasonCode == object.reasonCode &&
			reasonReference == object.reasonReference &&
			report == object.report &&
			status == object.status &&
			subject == object.subject &&
			usedCode == object.usedCode &&
			usedReference == object.usedReference &&
			super.equal(to: to)
	}
}

extension Procedure {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Procedure else {
            return self
        }

        resource.basedOn = self.basedOn?.compactMap { $0.copy(with: zone) as? Reference }
        resource.bodySite = self.bodySite?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.category = self.category?.copy(with: zone) as? CodeableConcept
        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.complication = self.complication?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.complicationDetail = self.complicationDetail?.compactMap { $0.copy(with: zone) as? Reference }
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.definition = self.definition?.compactMap { $0.copy(with: zone) as? Reference }
        resource.focalDevice = self.focalDevice?.compactMap { $0.copy(with: zone) as? ProcedureFocalDevice }
        resource.followUp = self.followUp?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.location = self.location?.copy(with: zone) as? Reference
        resource.notDone = self.notDone
        resource.notDoneReason = self.notDoneReason?.copy(with: zone) as? CodeableConcept
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.outcome = self.outcome?.copy(with: zone) as? CodeableConcept
        resource.partOf = self.partOf?.compactMap { $0.copy(with: zone) as? Reference }
        resource.performedDateTime = self.performedDateTime
        resource.performedPeriod = self.performedPeriod?.copy(with: zone) as? Period
        resource.performer = self.performer?.compactMap { $0.copy(with: zone) as? ProcedurePerformer }
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.report = self.report?.compactMap { $0.copy(with: zone) as? Reference }
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.usedCode = self.usedCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.usedReference = self.usedReference?.compactMap { $0.copy(with: zone) as? Reference }

        return resource
    }
}

/**
Device changed in procedure.

A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis,
attaching a wound-vac, etc.) as a focal portion of the Procedure.
*/
open class ProcedureFocalDevice: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcedureFocalDevice" }
	}

    private static var keyPaths: [String: PartialKeyPath<ProcedureFocalDevice>] = [

        "action" : \ProcedureFocalDevice.action,
        "manipulated" : \ProcedureFocalDevice.manipulated
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ProcedureFocalDevice.keyPaths[name] as? KeyPath<ProcedureFocalDevice, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ProcedureFocalDevice.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Kind of change to device.
	public var action: CodeableConcept?

	/// Device that was changed.
	public var manipulated: Reference?

	enum ProcedureFocalDeviceKeys: String, CodingKey {
		case action
		case manipulated
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(manipulated: Reference) {
		self.init()
		self.manipulated = manipulated
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ProcedureFocalDeviceKeys.self)
		if let item = manipulated {
			try container.encode(item, forKey: .manipulated)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("manipulated")
		}
		try container.encodeIfPresent(action, forKey: .action)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ProcedureFocalDeviceKeys.self)
		manipulated = try container.decode(Reference.self, forKey: .manipulated)
		action = try container.decodeIfPresent(CodeableConcept.self, forKey: .action)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ProcedureFocalDevice else {
            return false
        }

		return	action == object.action &&
			manipulated == object.manipulated &&
			super.equal(to: to)
	}
}

extension ProcedureFocalDevice {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ProcedureFocalDevice else {
            return self
        }

        resource.action = self.action?.copy(with: zone) as? CodeableConcept
        resource.manipulated = self.manipulated?.copy(with: zone) as? Reference

        return resource
    }
}

/**
The people who performed the procedure.

Limited to 'real' people rather than equipment.
*/
open class ProcedurePerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcedurePerformer" }
	}

    private static var keyPaths: [String: PartialKeyPath<ProcedurePerformer>] = [

        "actor" : \ProcedurePerformer.actor,
        "onBehalfOf" : \ProcedurePerformer.onBehalfOf,
        "role" : \ProcedurePerformer.role
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ProcedurePerformer.keyPaths[name] as? KeyPath<ProcedurePerformer, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ProcedurePerformer.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// The reference to the practitioner.
	public var actor: Reference?

	/// Organization the device or practitioner was acting for.
	public var onBehalfOf: Reference?

	/// The role the actor was in.
	public var role: CodeableConcept?

	enum ProcedurePerformerKeys: String, CodingKey {
		case actor
		case onBehalfOf
		case role
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(actor: Reference) {
		self.init()
		self.actor = actor
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ProcedurePerformerKeys.self)
		if let item = actor {
			try container.encode(item, forKey: .actor)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("actor")
		}
		try container.encodeIfPresent(onBehalfOf, forKey: .onBehalfOf)
		try container.encodeIfPresent(role, forKey: .role)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ProcedurePerformerKeys.self)
		actor = try container.decode(Reference.self, forKey: .actor)
		onBehalfOf = try container.decodeIfPresent(Reference.self, forKey: .onBehalfOf)
		role = try container.decodeIfPresent(CodeableConcept.self, forKey: .role)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ProcedurePerformer else {
            return false
        }

		return	actor == object.actor &&
			onBehalfOf == object.onBehalfOf &&
			role == object.role &&
			super.equal(to: to)
	}
}

extension ProcedurePerformer {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ProcedurePerformer else {
            return self
        }

        resource.actor = self.actor?.copy(with: zone) as? Reference
        resource.onBehalfOf = self.onBehalfOf?.copy(with: zone) as? Reference
        resource.role = self.role?.copy(with: zone) as? CodeableConcept

        return resource
    }
}
