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
//  Condition.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Condition)
//

import Foundation

/**
Detailed information about conditions, problems or diagnoses.

A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a
level of concern.
*/
open class Condition: DomainResource {
	override open class var resourceType: String {
		get { return "Condition" }
	}

    private static var keyPaths: [String: PartialKeyPath<Condition>] = [

        "abatementAge" : \Condition.abatementAge,
        "abatementBoolean" : \Condition.abatementBoolean,
        "abatementDateTime" : \Condition.abatementDateTime,
        "abatementPeriod" : \Condition.abatementPeriod,
        "abatementRange" : \Condition.abatementRange,
        "abatementString" : \Condition.abatementString,
        "assertedDate" : \Condition.assertedDate,
        "asserter" : \Condition.asserter,
        "bodySite" : \Condition.bodySite,
        "category" : \Condition.category,
        "clinicalStatus" : \Condition.clinicalStatus,
        "code" : \Condition.code,
        "context" : \Condition.context,
        "evidence" : \Condition.evidence,
        "identifier" : \Condition.identifier,
        "note" : \Condition.note,
        "onsetAge" : \Condition.onsetAge,
        "onsetDateTime" : \Condition.onsetDateTime,
        "onsetPeriod" : \Condition.onsetPeriod,
        "onsetRange" : \Condition.onsetRange,
        "onsetString" : \Condition.onsetString,
        "severity" : \Condition.severity,
        "stage" : \Condition.stage,
        "subject" : \Condition.subject,
        "verificationStatus" : \Condition.verificationStatus
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Condition.keyPaths[name] as? KeyPath<Condition, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Condition.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// If/when in resolution/remission.
	public var abatementAge: Age?

	/// If/when in resolution/remission.
	public var abatementBoolean: Bool?

	/// If/when in resolution/remission.
	public var abatementDateTime: DateTime?

	/// If/when in resolution/remission.
	public var abatementPeriod: Period?

	/// If/when in resolution/remission.
	public var abatementRange: Range?

	/// If/when in resolution/remission.
	public var abatementString: String?

	/// Date record was believed accurate.
	public var assertedDate: DateTime?

	/// Person who asserts this condition.
	public var asserter: Reference?

	/// Anatomical location, if relevant.
	public var bodySite: [CodeableConcept]?

	/// problem-list-item | encounter-diagnosis.
	public var category: [CodeableConcept]?

	/// active | recurrence | inactive | remission | resolved.
	public var clinicalStatus: String?

	/// Identification of the condition, problem or diagnosis.
	public var code: CodeableConcept?

	/// Encounter or episode when condition first asserted.
	public var context: Reference?

	/// Supporting evidence.
	public var evidence: [ConditionEvidence]?

	/// External Ids for this condition.
	public var identifier: [Identifier]?

	/// Additional information about the Condition.
	public var note: [Annotation]?

	/// Estimated or actual date,  date-time, or age.
	public var onsetAge: Age?

	/// Estimated or actual date,  date-time, or age.
	public var onsetDateTime: DateTime?

	/// Estimated or actual date,  date-time, or age.
	public var onsetPeriod: Period?

	/// Estimated or actual date,  date-time, or age.
	public var onsetRange: Range?

	/// Estimated or actual date,  date-time, or age.
	public var onsetString: String?

	/// Subjective severity of condition.
	public var severity: CodeableConcept?

	/// Stage/grade, usually assessed formally.
	public var stage: ConditionStage?

	/// Who has the condition?.
	public var subject: Reference?

	/// The verification status to support the clinical status of the condition.
	public var verificationStatus: ConditionVerificationStatus?

	enum ConditionKeys: String, CodingKey {
		case abatementAge
		case abatementBoolean
		case abatementDateTime
		case abatementPeriod
		case abatementRange
		case abatementString
		case assertedDate
		case asserter
		case bodySite
		case category
		case clinicalStatus
		case code
		case context
		case evidence
		case identifier
		case note
		case onsetAge
		case onsetDateTime
		case onsetPeriod
		case onsetRange
		case onsetString
		case severity
		case stage
		case subject
		case verificationStatus
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(subject: Reference) {
		self.init()
		self.subject = subject
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ConditionKeys.self)
		if let item = subject {
			try container.encode(item, forKey: .subject)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("subject")
		}
		try container.encodeIfPresent(abatementAge, forKey: .abatementAge)
		try container.encodeIfPresent(abatementBoolean, forKey: .abatementBoolean)
		try container.encodeIfPresent(abatementDateTime, forKey: .abatementDateTime)
		try container.encodeIfPresent(abatementPeriod, forKey: .abatementPeriod)
		try container.encodeIfPresent(abatementRange, forKey: .abatementRange)
		try container.encodeIfPresent(abatementString, forKey: .abatementString)
		try container.encodeIfPresent(assertedDate, forKey: .assertedDate)
		try container.encodeIfPresent(asserter, forKey: .asserter)
		try container.encodeArrayIfPresent(bodySite, forKey: .bodySite)
		try container.encodeArrayIfPresent(category, forKey: .category)
		try container.encodeIfPresent(clinicalStatus, forKey: .clinicalStatus)
		try container.encodeIfPresent(code, forKey: .code)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeArrayIfPresent(evidence, forKey: .evidence)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeIfPresent(onsetAge, forKey: .onsetAge)
		try container.encodeIfPresent(onsetDateTime, forKey: .onsetDateTime)
		try container.encodeIfPresent(onsetPeriod, forKey: .onsetPeriod)
		try container.encodeIfPresent(onsetRange, forKey: .onsetRange)
		try container.encodeIfPresent(onsetString, forKey: .onsetString)
		try container.encodeIfPresent(severity, forKey: .severity)
		try container.encodeIfPresent(stage, forKey: .stage)
		try container.encodeIfPresent(verificationStatus, forKey: .verificationStatus)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ConditionKeys.self)
		subject = try container.decode(Reference.self, forKey: .subject)
		abatementAge = try container.decodeIfPresent(Age.self, forKey: .abatementAge)
		abatementBoolean = try container.decodeIfPresent(Bool.self, forKey: .abatementBoolean)
		abatementDateTime = try container.decodeIfPresent(DateTime.self, forKey: .abatementDateTime)
		abatementPeriod = try container.decodeIfPresent(Period.self, forKey: .abatementPeriod)
		abatementRange = try container.decodeIfPresent(Range.self, forKey: .abatementRange)
		abatementString = try container.decodeIfPresent(String.self, forKey: .abatementString)
		assertedDate = try container.decodeIfPresent(DateTime.self, forKey: .assertedDate)
		asserter = try container.decodeIfPresent(Reference.self, forKey: .asserter)
		bodySite = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .bodySite)
		category = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .category)
		clinicalStatus = try container.decodeIfPresent(String.self, forKey: .clinicalStatus)
		code = try container.decodeIfPresent(CodeableConcept.self, forKey: .code)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		evidence = try container.decodeArrayIfPresent([ConditionEvidence].self, forKey: .evidence)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		onsetAge = try container.decodeIfPresent(Age.self, forKey: .onsetAge)
		onsetDateTime = try container.decodeIfPresent(DateTime.self, forKey: .onsetDateTime)
		onsetPeriod = try container.decodeIfPresent(Period.self, forKey: .onsetPeriod)
		onsetRange = try container.decodeIfPresent(Range.self, forKey: .onsetRange)
		onsetString = try container.decodeIfPresent(String.self, forKey: .onsetString)
		severity = try container.decodeIfPresent(CodeableConcept.self, forKey: .severity)
		stage = try container.decodeIfPresent(ConditionStage.self, forKey: .stage)
		verificationStatus = try container.decodeIfPresent(ConditionVerificationStatus.self, forKey: .verificationStatus)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Condition else {
            return false
        }

		return	abatementAge == object.abatementAge &&
			abatementBoolean == object.abatementBoolean &&
			abatementDateTime == object.abatementDateTime &&
			abatementPeriod == object.abatementPeriod &&
			abatementRange == object.abatementRange &&
			abatementString == object.abatementString &&
			assertedDate == object.assertedDate &&
			asserter == object.asserter &&
			bodySite == object.bodySite &&
			category == object.category &&
			clinicalStatus == object.clinicalStatus &&
			code == object.code &&
			context == object.context &&
			evidence == object.evidence &&
			identifier == object.identifier &&
			note == object.note &&
			onsetAge == object.onsetAge &&
			onsetDateTime == object.onsetDateTime &&
			onsetPeriod == object.onsetPeriod &&
			onsetRange == object.onsetRange &&
			onsetString == object.onsetString &&
			severity == object.severity &&
			stage == object.stage &&
			subject == object.subject &&
			verificationStatus == object.verificationStatus &&
			super.equal(to: to)
	}
}

extension Condition {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Condition else {
            return self
        }

        resource.abatementAge = self.abatementAge?.copy(with: zone) as? Age
        resource.abatementBoolean = self.abatementBoolean
        resource.abatementDateTime = self.abatementDateTime
        resource.abatementPeriod = self.abatementPeriod?.copy(with: zone) as? Period
        resource.abatementRange = self.abatementRange?.copy(with: zone) as? Range
        resource.abatementString = self.abatementString
        resource.assertedDate = self.assertedDate
        resource.asserter = self.asserter?.copy(with: zone) as? Reference
        resource.bodySite = self.bodySite?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.category = self.category?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.clinicalStatus = self.clinicalStatus
        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.evidence = self.evidence?.compactMap { $0.copy(with: zone) as? ConditionEvidence }
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.onsetAge = self.onsetAge?.copy(with: zone) as? Age
        resource.onsetDateTime = self.onsetDateTime
        resource.onsetPeriod = self.onsetPeriod?.copy(with: zone) as? Period
        resource.onsetRange = self.onsetRange?.copy(with: zone) as? Range
        resource.onsetString = self.onsetString
        resource.severity = self.severity?.copy(with: zone) as? CodeableConcept
        resource.stage = self.stage?.copy(with: zone) as? ConditionStage
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.verificationStatus = self.verificationStatus

        return resource
    }
}

/**
Supporting evidence.

Supporting Evidence / manifestations that are the basis on which this condition is suspected or confirmed.
*/
open class ConditionEvidence: BackboneElement {
	override open class var resourceType: String {
		get { return "ConditionEvidence" }
	}

    private static var keyPaths: [String: PartialKeyPath<ConditionEvidence>] = [

        "code" : \ConditionEvidence.code,
        "detail" : \ConditionEvidence.detail
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ConditionEvidence.keyPaths[name] as? KeyPath<ConditionEvidence, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ConditionEvidence.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Manifestation/symptom.
	public var code: [CodeableConcept]?

	/// Supporting information found elsewhere.
	public var detail: [Reference]?

	enum ConditionEvidenceKeys: String, CodingKey {
		case code
		case detail
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ConditionEvidenceKeys.self)
		try container.encodeArrayIfPresent(code, forKey: .code)
		try container.encodeArrayIfPresent(detail, forKey: .detail)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ConditionEvidenceKeys.self)
		code = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .code)
		detail = try container.decodeArrayIfPresent([Reference].self, forKey: .detail)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ConditionEvidence else {
            return false
        }

		return	code == object.code &&
			detail == object.detail &&
			super.equal(to: to)
	}
}

extension ConditionEvidence {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ConditionEvidence else {
            return self
        }

        resource.code = self.code?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.detail = self.detail?.compactMap { $0.copy(with: zone) as? Reference }

        return resource
    }
}

/**
Stage/grade, usually assessed formally.

Clinical stage or grade of a condition. May include formal severity assessments.
*/
open class ConditionStage: BackboneElement {
	override open class var resourceType: String {
		get { return "ConditionStage" }
	}

    private static var keyPaths: [String: PartialKeyPath<ConditionStage>] = [

        "assessment" : \ConditionStage.assessment,
        "summary" : \ConditionStage.summary
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ConditionStage.keyPaths[name] as? KeyPath<ConditionStage, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ConditionStage.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Formal record of assessment.
	public var assessment: [Reference]?

	/// Simple summary (disease specific).
	public var summary: CodeableConcept?

	enum ConditionStageKeys: String, CodingKey {
		case assessment
		case summary
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ConditionStageKeys.self)
		try container.encodeArrayIfPresent(assessment, forKey: .assessment)
		try container.encodeIfPresent(summary, forKey: .summary)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ConditionStageKeys.self)
		assessment = try container.decodeArrayIfPresent([Reference].self, forKey: .assessment)
		summary = try container.decodeIfPresent(CodeableConcept.self, forKey: .summary)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ConditionStage else {
            return false
        }

		return	assessment == object.assessment &&
			summary == object.summary &&
			super.equal(to: to)
	}
}

extension ConditionStage {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ConditionStage else {
            return self
        }

        resource.assessment = self.assessment?.compactMap { $0.copy(with: zone) as? Reference }
        resource.summary = self.summary?.copy(with: zone) as? CodeableConcept

        return resource
    }
}
