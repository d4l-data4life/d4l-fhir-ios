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
//  CarePlan.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/CarePlan)
//

import Foundation

/**
Healthcare plan for patient or group.

Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or
community for a period of time, possibly limited to care for a specific condition or set of conditions.
*/
open class CarePlan: DomainResource {
	override open class var resourceType: String {
		get { return "CarePlan" }
	}

    private static var keyPaths: [String: PartialKeyPath<CarePlan>] = [

        "activity" : \CarePlan.activity,
        "addresses" : \CarePlan.addresses,
        "author" : \CarePlan.author,
        "basedOn" : \CarePlan.basedOn,
        "careTeam" : \CarePlan.careTeam,
        "category" : \CarePlan.category,
        "context" : \CarePlan.context,
        "definition" : \CarePlan.definition,
        "description_fhir" : \CarePlan.description_fhir,
        "goal" : \CarePlan.goal,
        "identifier" : \CarePlan.identifier,
        "intent" : \CarePlan.intent,
        "note" : \CarePlan.note,
        "partOf" : \CarePlan.partOf,
        "period" : \CarePlan.period,
        "replaces" : \CarePlan.replaces,
        "status" : \CarePlan.status,
        "subject" : \CarePlan.subject,
        "supportingInfo" : \CarePlan.supportingInfo,
        "title" : \CarePlan.title
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = CarePlan.keyPaths[name] as? KeyPath<CarePlan, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = CarePlan.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Action to occur as part of plan.
	public var activity: [CarePlanActivity]?

	/// Health issues this plan addresses.
	public var addresses: [Reference]?

	/// Who is responsible for contents of the plan.
	public var author: [Reference]?

	/// Fulfills care plan.
	public var basedOn: [Reference]?

	/// Who's involved in plan?.
	public var careTeam: [Reference]?

	/// Type of plan.
	public var category: [CodeableConcept]?

	/// Created in context of.
	public var context: Reference?

	/// Protocol or definition.
	public var definition: [Reference]?

	/// Summary of nature of plan.
	public var description_fhir: String?

	/// Desired outcome of plan.
	public var goal: [Reference]?

	/// External Ids for this plan.
	public var identifier: [Identifier]?

	/// Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into
	/// the workflow chain.
	public var intent: CarePlanIntent?

	/// Comments about the plan.
	public var note: [Annotation]?

	/// Part of referenced CarePlan.
	public var partOf: [Reference]?

	/// Time period plan covers.
	public var period: Period?

	/// CarePlan replaced by this CarePlan.
	public var replaces: [Reference]?

	/// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical
	/// record.
	public var status: CarePlanStatus?

	/// Who care plan is for.
	public var subject: Reference?

	/// Information considered as part of plan.
	public var supportingInfo: [Reference]?

	/// Human-friendly name for the CarePlan.
	public var title: String?

	enum CarePlanKeys: String, CodingKey {
		case activity
		case addresses
		case author
		case basedOn
		case careTeam
		case category
		case context
		case definition
		case description_fhir = "description"
		case goal
		case identifier
		case intent
		case note
		case partOf
		case period
		case replaces
		case status
		case subject
		case supportingInfo
		case title
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(intent: CarePlanIntent, status: CarePlanStatus, subject: Reference) {
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
		var container = encoder.container(keyedBy: CarePlanKeys.self)
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
		try container.encodeArrayIfPresent(activity, forKey: .activity)
		try container.encodeArrayIfPresent(addresses, forKey: .addresses)
		try container.encodeArrayIfPresent(author, forKey: .author)
		try container.encodeArrayIfPresent(basedOn, forKey: .basedOn)
		try container.encodeArrayIfPresent(careTeam, forKey: .careTeam)
		try container.encodeArrayIfPresent(category, forKey: .category)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeArrayIfPresent(definition, forKey: .definition)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeArrayIfPresent(goal, forKey: .goal)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeArrayIfPresent(partOf, forKey: .partOf)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeArrayIfPresent(replaces, forKey: .replaces)
		try container.encodeArrayIfPresent(supportingInfo, forKey: .supportingInfo)
		try container.encodeIfPresent(title, forKey: .title)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  CarePlanKeys.self)
		intent = try container.decode(CarePlanIntent.self, forKey: .intent)
		status = try container.decode(CarePlanStatus.self, forKey: .status)
		subject = try container.decode(Reference.self, forKey: .subject)
		activity = try container.decodeArrayIfPresent([CarePlanActivity].self, forKey: .activity)
		addresses = try container.decodeArrayIfPresent([Reference].self, forKey: .addresses)
		author = try container.decodeArrayIfPresent([Reference].self, forKey: .author)
		basedOn = try container.decodeArrayIfPresent([Reference].self, forKey: .basedOn)
		careTeam = try container.decodeArrayIfPresent([Reference].self, forKey: .careTeam)
		category = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .category)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		definition = try container.decodeArrayIfPresent([Reference].self, forKey: .definition)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		goal = try container.decodeArrayIfPresent([Reference].self, forKey: .goal)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		partOf = try container.decodeArrayIfPresent([Reference].self, forKey: .partOf)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		replaces = try container.decodeArrayIfPresent([Reference].self, forKey: .replaces)
		supportingInfo = try container.decodeArrayIfPresent([Reference].self, forKey: .supportingInfo)
		title = try container.decodeIfPresent(String.self, forKey: .title)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? CarePlan else {
            return false
        }

		return	activity == object.activity &&
			addresses == object.addresses &&
			author == object.author &&
			basedOn == object.basedOn &&
			careTeam == object.careTeam &&
			category == object.category &&
			context == object.context &&
			definition == object.definition &&
			description_fhir == object.description_fhir &&
			goal == object.goal &&
			identifier == object.identifier &&
			intent == object.intent &&
			note == object.note &&
			partOf == object.partOf &&
			period == object.period &&
			replaces == object.replaces &&
			status == object.status &&
			subject == object.subject &&
			supportingInfo == object.supportingInfo &&
			title == object.title &&
			super.equal(to: to)
	}
}

extension CarePlan {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? CarePlan else {
            return self
        }

        resource.activity = self.activity?.compactMap { $0.copy(with: zone) as? CarePlanActivity }
        resource.addresses = self.addresses?.compactMap { $0.copy(with: zone) as? Reference }
        resource.author = self.author?.compactMap { $0.copy(with: zone) as? Reference }
        resource.basedOn = self.basedOn?.compactMap { $0.copy(with: zone) as? Reference }
        resource.careTeam = self.careTeam?.compactMap { $0.copy(with: zone) as? Reference }
        resource.category = self.category?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.definition = self.definition?.compactMap { $0.copy(with: zone) as? Reference }
        resource.description_fhir = self.description_fhir
        resource.goal = self.goal?.compactMap { $0.copy(with: zone) as? Reference }
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.intent = self.intent
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.partOf = self.partOf?.compactMap { $0.copy(with: zone) as? Reference }
        resource.period = self.period?.copy(with: zone) as? Period
        resource.replaces = self.replaces?.compactMap { $0.copy(with: zone) as? Reference }
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy(with: zone) as? Reference }
        resource.title = self.title

        return resource
    }
}

/**
Action to occur as part of plan.

Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform,
self-monitoring, education, etc.
*/
open class CarePlanActivity: BackboneElement {
	override open class var resourceType: String {
		get { return "CarePlanActivity" }
	}

    private static var keyPaths: [String: PartialKeyPath<CarePlanActivity>] = [

        "detail" : \CarePlanActivity.detail,
        "outcomeCodeableConcept" : \CarePlanActivity.outcomeCodeableConcept,
        "outcomeReference" : \CarePlanActivity.outcomeReference,
        "progress" : \CarePlanActivity.progress,
        "reference" : \CarePlanActivity.reference
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = CarePlanActivity.keyPaths[name] as? KeyPath<CarePlanActivity, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = CarePlanActivity.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// In-line definition of activity.
	public var detail: CarePlanActivityDetail?

	/// Results of the activity.
	public var outcomeCodeableConcept: [CodeableConcept]?

	/// Appointment, Encounter, Procedure, etc..
	public var outcomeReference: [Reference]?

	/// Comments about the activity status/progress.
	public var progress: [Annotation]?

	/// Activity details defined in specific resource.
	public var reference: Reference?

	enum CarePlanActivityKeys: String, CodingKey {
		case detail
		case outcomeCodeableConcept
		case outcomeReference
		case progress
		case reference
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: CarePlanActivityKeys.self)
		try container.encodeIfPresent(detail, forKey: .detail)
		try container.encodeArrayIfPresent(outcomeCodeableConcept, forKey: .outcomeCodeableConcept)
		try container.encodeArrayIfPresent(outcomeReference, forKey: .outcomeReference)
		try container.encodeArrayIfPresent(progress, forKey: .progress)
		try container.encodeIfPresent(reference, forKey: .reference)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  CarePlanActivityKeys.self)
		detail = try container.decodeIfPresent(CarePlanActivityDetail.self, forKey: .detail)
		outcomeCodeableConcept = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .outcomeCodeableConcept)
		outcomeReference = try container.decodeArrayIfPresent([Reference].self, forKey: .outcomeReference)
		progress = try container.decodeArrayIfPresent([Annotation].self, forKey: .progress)
		reference = try container.decodeIfPresent(Reference.self, forKey: .reference)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? CarePlanActivity else {
            return false
        }

		return	detail == object.detail &&
			outcomeCodeableConcept == object.outcomeCodeableConcept &&
			outcomeReference == object.outcomeReference &&
			progress == object.progress &&
			reference == object.reference &&
			super.equal(to: to)
	}
}

extension CarePlanActivity {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? CarePlanActivity else {
            return self
        }

        resource.detail = self.detail?.copy(with: zone) as? CarePlanActivityDetail
        resource.outcomeCodeableConcept = self.outcomeCodeableConcept?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.outcomeReference = self.outcomeReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.progress = self.progress?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.reference = self.reference?.copy(with: zone) as? Reference

        return resource
    }
}

/**
In-line definition of activity.

A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know
about specific resources such as procedure etc.
*/
open class CarePlanActivityDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "CarePlanActivityDetail" }
	}

    private static var keyPaths: [String: PartialKeyPath<CarePlanActivityDetail>] = [

        "category" : \CarePlanActivityDetail.category,
        "code" : \CarePlanActivityDetail.code,
        "dailyAmount" : \CarePlanActivityDetail.dailyAmount,
        "definition" : \CarePlanActivityDetail.definition,
        "description_fhir" : \CarePlanActivityDetail.description_fhir,
        "goal" : \CarePlanActivityDetail.goal,
        "location" : \CarePlanActivityDetail.location,
        "performer" : \CarePlanActivityDetail.performer,
        "productCodeableConcept" : \CarePlanActivityDetail.productCodeableConcept,
        "productReference" : \CarePlanActivityDetail.productReference,
        "prohibited" : \CarePlanActivityDetail.prohibited,
        "quantity" : \CarePlanActivityDetail.quantity,
        "reasonCode" : \CarePlanActivityDetail.reasonCode,
        "reasonReference" : \CarePlanActivityDetail.reasonReference,
        "scheduledPeriod" : \CarePlanActivityDetail.scheduledPeriod,
        "scheduledString" : \CarePlanActivityDetail.scheduledString,
        "scheduledTiming" : \CarePlanActivityDetail.scheduledTiming,
        "status" : \CarePlanActivityDetail.status,
        "statusReason" : \CarePlanActivityDetail.statusReason
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = CarePlanActivityDetail.keyPaths[name] as? KeyPath<CarePlanActivityDetail, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = CarePlanActivityDetail.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// diet | drug | encounter | observation | procedure | supply | other.
	public var category: CodeableConcept?

	/// Detail type of activity.
	public var code: CodeableConcept?

	/// How to consume/day?.
	public var dailyAmount: Quantity?

	/// Protocol or definition.
	public var definition: Reference?

	/// Extra info describing activity to perform.
	public var description_fhir: String?

	/// Goals this activity relates to.
	public var goal: [Reference]?

	/// Where it should happen.
	public var location: Reference?

	/// Who will be responsible?.
	public var performer: [Reference]?

	/// What is to be administered/supplied.
	public var productCodeableConcept: CodeableConcept?

	/// What is to be administered/supplied.
	public var productReference: Reference?

	/// Do NOT do.
	public var prohibited: Bool?

	/// How much to administer/supply/consume.
	public var quantity: Quantity?

	/// Why activity should be done or why activity was prohibited.
	public var reasonCode: [CodeableConcept]?

	/// Condition triggering need for activity.
	public var reasonReference: [Reference]?

	/// When activity is to occur.
	public var scheduledPeriod: Period?

	/// When activity is to occur.
	public var scheduledString: String?

	/// When activity is to occur.
	public var scheduledTiming: Timing?

	/// Identifies what progress is being made for the specific activity.
	public var status: CarePlanActivityStatus?

	/// Reason for current status.
	public var statusReason: String?

	enum CarePlanActivityDetailKeys: String, CodingKey {
		case category
		case code
		case dailyAmount
		case definition
		case description_fhir = "description"
		case goal
		case location
		case performer
		case productCodeableConcept
		case productReference
		case prohibited
		case quantity
		case reasonCode
		case reasonReference
		case scheduledPeriod
		case scheduledString
		case scheduledTiming
		case status
		case statusReason
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(status: CarePlanActivityStatus) {
		self.init()
		self.status = status
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: CarePlanActivityDetailKeys.self)
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		try container.encodeIfPresent(category, forKey: .category)
		try container.encodeIfPresent(code, forKey: .code)
		try container.encodeIfPresent(dailyAmount, forKey: .dailyAmount)
		try container.encodeIfPresent(definition, forKey: .definition)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeArrayIfPresent(goal, forKey: .goal)
		try container.encodeIfPresent(location, forKey: .location)
		try container.encodeArrayIfPresent(performer, forKey: .performer)
		try container.encodeIfPresent(productCodeableConcept, forKey: .productCodeableConcept)
		try container.encodeIfPresent(productReference, forKey: .productReference)
		try container.encodeIfPresent(prohibited, forKey: .prohibited)
		try container.encodeIfPresent(quantity, forKey: .quantity)
		try container.encodeArrayIfPresent(reasonCode, forKey: .reasonCode)
		try container.encodeArrayIfPresent(reasonReference, forKey: .reasonReference)
		try container.encodeIfPresent(scheduledPeriod, forKey: .scheduledPeriod)
		try container.encodeIfPresent(scheduledString, forKey: .scheduledString)
		try container.encodeIfPresent(scheduledTiming, forKey: .scheduledTiming)
		try container.encodeIfPresent(statusReason, forKey: .statusReason)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  CarePlanActivityDetailKeys.self)
		status = try container.decode(CarePlanActivityStatus.self, forKey: .status)
		category = try container.decodeIfPresent(CodeableConcept.self, forKey: .category)
		code = try container.decodeIfPresent(CodeableConcept.self, forKey: .code)
		dailyAmount = try container.decodeIfPresent(Quantity.self, forKey: .dailyAmount)
		definition = try container.decodeIfPresent(Reference.self, forKey: .definition)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		goal = try container.decodeArrayIfPresent([Reference].self, forKey: .goal)
		location = try container.decodeIfPresent(Reference.self, forKey: .location)
		performer = try container.decodeArrayIfPresent([Reference].self, forKey: .performer)
		productCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .productCodeableConcept)
		productReference = try container.decodeIfPresent(Reference.self, forKey: .productReference)
		prohibited = try container.decodeIfPresent(Bool.self, forKey: .prohibited)
		quantity = try container.decodeIfPresent(Quantity.self, forKey: .quantity)
		reasonCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .reasonCode)
		reasonReference = try container.decodeArrayIfPresent([Reference].self, forKey: .reasonReference)
		scheduledPeriod = try container.decodeIfPresent(Period.self, forKey: .scheduledPeriod)
		scheduledString = try container.decodeIfPresent(String.self, forKey: .scheduledString)
		scheduledTiming = try container.decodeIfPresent(Timing.self, forKey: .scheduledTiming)
		statusReason = try container.decodeIfPresent(String.self, forKey: .statusReason)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? CarePlanActivityDetail else {
            return false
        }

		return	category == object.category &&
			code == object.code &&
			dailyAmount == object.dailyAmount &&
			definition == object.definition &&
			description_fhir == object.description_fhir &&
			goal == object.goal &&
			location == object.location &&
			performer == object.performer &&
			productCodeableConcept == object.productCodeableConcept &&
			productReference == object.productReference &&
			prohibited == object.prohibited &&
			quantity == object.quantity &&
			reasonCode == object.reasonCode &&
			reasonReference == object.reasonReference &&
			scheduledPeriod == object.scheduledPeriod &&
			scheduledString == object.scheduledString &&
			scheduledTiming == object.scheduledTiming &&
			status == object.status &&
			statusReason == object.statusReason &&
			super.equal(to: to)
	}
}

extension CarePlanActivityDetail {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? CarePlanActivityDetail else {
            return self
        }

        resource.category = self.category?.copy(with: zone) as? CodeableConcept
        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.dailyAmount = self.dailyAmount?.copy(with: zone) as? Quantity
        resource.definition = self.definition?.copy(with: zone) as? Reference
        resource.description_fhir = self.description_fhir
        resource.goal = self.goal?.compactMap { $0.copy(with: zone) as? Reference }
        resource.location = self.location?.copy(with: zone) as? Reference
        resource.performer = self.performer?.compactMap { $0.copy(with: zone) as? Reference }
        resource.productCodeableConcept = self.productCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.productReference = self.productReference?.copy(with: zone) as? Reference
        resource.prohibited = self.prohibited
        resource.quantity = self.quantity?.copy(with: zone) as? Quantity
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.scheduledPeriod = self.scheduledPeriod?.copy(with: zone) as? Period
        resource.scheduledString = self.scheduledString
        resource.scheduledTiming = self.scheduledTiming?.copy(with: zone) as? Timing
        resource.status = self.status
        resource.statusReason = self.statusReason

        return resource
    }
}
