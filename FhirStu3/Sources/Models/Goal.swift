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
//  Goal.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Goal)
//

import Foundation

/**
Describes the intended objective(s) for a patient, group or organization.

Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an
activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
*/
open class Goal: DomainResource {
	override open class var resourceType: String {
		get { return "Goal" }
	}

    private static var keyPaths: [String: PartialKeyPath<Goal>] = [

        "addresses" : \Goal.addresses,
        "category" : \Goal.category,
        "description_fhir" : \Goal.description_fhir,
        "expressedBy" : \Goal.expressedBy,
        "identifier" : \Goal.identifier,
        "note" : \Goal.note,
        "outcomeCode" : \Goal.outcomeCode,
        "outcomeReference" : \Goal.outcomeReference,
        "priority" : \Goal.priority,
        "startCodeableConcept" : \Goal.startCodeableConcept,
        "startDate" : \Goal.startDate,
        "status" : \Goal.status,
        "statusDate" : \Goal.statusDate,
        "statusReason" : \Goal.statusReason,
        "subject" : \Goal.subject,
        "target" : \Goal.target
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Goal.keyPaths[name] as? KeyPath<Goal, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Goal.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Issues addressed by this goal.
	public var addresses: [Reference]?

	/// E.g. Treatment, dietary, behavioral, etc..
	public var category: [CodeableConcept]?

	/// Code or text describing goal.
	public var description_fhir: CodeableConcept?

	/// Who's responsible for creating Goal?.
	public var expressedBy: Reference?

	/// External Ids for this goal.
	public var identifier: [Identifier]?

	/// Comments about the goal.
	public var note: [Annotation]?

	/// What result was achieved regarding the goal?.
	public var outcomeCode: [CodeableConcept]?

	/// Observation that resulted from goal.
	public var outcomeReference: [Reference]?

	/// high-priority | medium-priority | low-priority.
	public var priority: CodeableConcept?

	/// When goal pursuit begins.
	public var startCodeableConcept: CodeableConcept?

	/// When goal pursuit begins.
	public var startDate: FHIRDate?

	/// Indicates whether the goal has been reached and is still considered relevant.
	public var status: GoalStatus?

	/// When goal status took effect.
	public var statusDate: FHIRDate?

	/// Reason for current status.
	public var statusReason: String?

	/// Who this goal is intended for.
	public var subject: Reference?

	/// Target outcome for the goal.
	public var target: GoalTarget?

	enum GoalKeys: String, CodingKey {
		case addresses
		case category
		case description_fhir = "description"
		case expressedBy
		case identifier
		case note
		case outcomeCode
		case outcomeReference
		case priority
		case startCodeableConcept
		case startDate
		case status
		case statusDate
		case statusReason
		case subject
		case target
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(description_fhir: CodeableConcept, status: GoalStatus) {
		self.init()
		self.description_fhir = description_fhir
		self.status = status
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: GoalKeys.self)
		if let item = description_fhir {
			try container.encode(item, forKey: .description_fhir)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("description_fhir")
		}
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		try container.encodeArrayIfPresent(addresses, forKey: .addresses)
		try container.encodeArrayIfPresent(category, forKey: .category)
		try container.encodeIfPresent(expressedBy, forKey: .expressedBy)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeArrayIfPresent(outcomeCode, forKey: .outcomeCode)
		try container.encodeArrayIfPresent(outcomeReference, forKey: .outcomeReference)
		try container.encodeIfPresent(priority, forKey: .priority)
		try container.encodeIfPresent(startCodeableConcept, forKey: .startCodeableConcept)
		try container.encodeIfPresent(startDate, forKey: .startDate)
		try container.encodeIfPresent(statusDate, forKey: .statusDate)
		try container.encodeIfPresent(statusReason, forKey: .statusReason)
		try container.encodeIfPresent(subject, forKey: .subject)
		try container.encodeIfPresent(target, forKey: .target)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  GoalKeys.self)
		description_fhir = try container.decode(CodeableConcept.self, forKey: .description_fhir)
		status = try container.decode(GoalStatus.self, forKey: .status)
		addresses = try container.decodeArrayIfPresent([Reference].self, forKey: .addresses)
		category = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .category)
		expressedBy = try container.decodeIfPresent(Reference.self, forKey: .expressedBy)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		outcomeCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .outcomeCode)
		outcomeReference = try container.decodeArrayIfPresent([Reference].self, forKey: .outcomeReference)
		priority = try container.decodeIfPresent(CodeableConcept.self, forKey: .priority)
		startCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .startCodeableConcept)
		startDate = try container.decodeIfPresent(FHIRDate.self, forKey: .startDate)
		statusDate = try container.decodeIfPresent(FHIRDate.self, forKey: .statusDate)
		statusReason = try container.decodeIfPresent(String.self, forKey: .statusReason)
		subject = try container.decodeIfPresent(Reference.self, forKey: .subject)
		target = try container.decodeIfPresent(GoalTarget.self, forKey: .target)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Goal else {
            return false
        }

		return	addresses == object.addresses &&
			category == object.category &&
			description_fhir == object.description_fhir &&
			expressedBy == object.expressedBy &&
			identifier == object.identifier &&
			note == object.note &&
			outcomeCode == object.outcomeCode &&
			outcomeReference == object.outcomeReference &&
			priority == object.priority &&
			startCodeableConcept == object.startCodeableConcept &&
			startDate == object.startDate &&
			status == object.status &&
			statusDate == object.statusDate &&
			statusReason == object.statusReason &&
			subject == object.subject &&
			target == object.target &&
			super.equal(to: to)
	}
}

extension Goal {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Goal else {
            return self
        }

        resource.addresses = self.addresses?.compactMap { $0.copy(with: zone) as? Reference }
        resource.category = self.category?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.description_fhir = self.description_fhir?.copy(with: zone) as? CodeableConcept
        resource.expressedBy = self.expressedBy?.copy(with: zone) as? Reference
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.outcomeCode = self.outcomeCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.outcomeReference = self.outcomeReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.priority = self.priority?.copy(with: zone) as? CodeableConcept
        resource.startCodeableConcept = self.startCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.startDate = self.startDate
        resource.status = self.status
        resource.statusDate = self.statusDate
        resource.statusReason = self.statusReason
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.target = self.target?.copy(with: zone) as? GoalTarget

        return resource
    }
}

/**
Target outcome for the goal.

Indicates what should be done by when.
*/
open class GoalTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "GoalTarget" }
	}

    private static var keyPaths: [String: PartialKeyPath<GoalTarget>] = [

        "detailCodeableConcept" : \GoalTarget.detailCodeableConcept,
        "detailQuantity" : \GoalTarget.detailQuantity,
        "detailRange" : \GoalTarget.detailRange,
        "dueDate" : \GoalTarget.dueDate,
        "dueDuration" : \GoalTarget.dueDuration,
        "measure" : \GoalTarget.measure
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = GoalTarget.keyPaths[name] as? KeyPath<GoalTarget, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = GoalTarget.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// The target value to be achieved.
	public var detailCodeableConcept: CodeableConcept?

	/// The target value to be achieved.
	public var detailQuantity: Quantity?

	/// The target value to be achieved.
	public var detailRange: Range?

	/// Reach goal on or before.
	public var dueDate: FHIRDate?

	/// Reach goal on or before.
	public var dueDuration: Duration?

	/// The parameter whose value is being tracked.
	public var measure: CodeableConcept?

	enum GoalTargetKeys: String, CodingKey {
		case detailCodeableConcept
		case detailQuantity
		case detailRange
		case dueDate
		case dueDuration
		case measure
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: GoalTargetKeys.self)
		try container.encodeIfPresent(detailCodeableConcept, forKey: .detailCodeableConcept)
		try container.encodeIfPresent(detailQuantity, forKey: .detailQuantity)
		try container.encodeIfPresent(detailRange, forKey: .detailRange)
		try container.encodeIfPresent(dueDate, forKey: .dueDate)
		try container.encodeIfPresent(dueDuration, forKey: .dueDuration)
		try container.encodeIfPresent(measure, forKey: .measure)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  GoalTargetKeys.self)
		detailCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .detailCodeableConcept)
		detailQuantity = try container.decodeIfPresent(Quantity.self, forKey: .detailQuantity)
		detailRange = try container.decodeIfPresent(Range.self, forKey: .detailRange)
		dueDate = try container.decodeIfPresent(FHIRDate.self, forKey: .dueDate)
		dueDuration = try container.decodeIfPresent(Duration.self, forKey: .dueDuration)
		measure = try container.decodeIfPresent(CodeableConcept.self, forKey: .measure)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? GoalTarget else {
            return false
        }

		return	detailCodeableConcept == object.detailCodeableConcept &&
			detailQuantity == object.detailQuantity &&
			detailRange == object.detailRange &&
			dueDate == object.dueDate &&
			dueDuration == object.dueDuration &&
			measure == object.measure &&
			super.equal(to: to)
	}
}

extension GoalTarget {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? GoalTarget else {
            return self
        }

        resource.detailCodeableConcept = self.detailCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.detailQuantity = self.detailQuantity?.copy(with: zone) as? Quantity
        resource.detailRange = self.detailRange?.copy(with: zone) as? Range
        resource.dueDate = self.dueDate
        resource.dueDuration = self.dueDuration?.copy(with: zone) as? Duration
        resource.measure = self.measure?.copy(with: zone) as? CodeableConcept

        return resource
    }
}
