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
//  FamilyMemberHistory.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory)
//

import Foundation

/**
Information about patient's relatives, relevant for patient.

Significant health events and conditions for a person related to the patient relevant in the context of care for the
patient.
*/
open class FamilyMemberHistory: DomainResource {
	override open class var resourceType: String {
		get { return "FamilyMemberHistory" }
	}

    private static var keyPaths: [String: PartialKeyPath<FamilyMemberHistory>] = [

        "ageAge" : \FamilyMemberHistory.ageAge,
        "ageRange" : \FamilyMemberHistory.ageRange,
        "ageString" : \FamilyMemberHistory.ageString,
        "bornDate" : \FamilyMemberHistory.bornDate,
        "bornPeriod" : \FamilyMemberHistory.bornPeriod,
        "bornString" : \FamilyMemberHistory.bornString,
        "condition" : \FamilyMemberHistory.condition,
        "date" : \FamilyMemberHistory.date,
        "deceasedAge" : \FamilyMemberHistory.deceasedAge,
        "deceasedBoolean" : \FamilyMemberHistory.deceasedBoolean,
        "deceasedDate" : \FamilyMemberHistory.deceasedDate,
        "deceasedRange" : \FamilyMemberHistory.deceasedRange,
        "deceasedString" : \FamilyMemberHistory.deceasedString,
        "definition" : \FamilyMemberHistory.definition,
        "estimatedAge" : \FamilyMemberHistory.estimatedAge,
        "gender" : \FamilyMemberHistory.gender,
        "identifier" : \FamilyMemberHistory.identifier,
        "name" : \FamilyMemberHistory.name,
        "notDone" : \FamilyMemberHistory.notDone,
        "notDoneReason" : \FamilyMemberHistory.notDoneReason,
        "note" : \FamilyMemberHistory.note,
        "patient" : \FamilyMemberHistory.patient,
        "reasonCode" : \FamilyMemberHistory.reasonCode,
        "reasonReference" : \FamilyMemberHistory.reasonReference,
        "relationship" : \FamilyMemberHistory.relationship,
        "status" : \FamilyMemberHistory.status
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = FamilyMemberHistory.keyPaths[name] as? KeyPath<FamilyMemberHistory, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = FamilyMemberHistory.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// (approximate) age.
	public var ageAge: Age?

	/// (approximate) age.
	public var ageRange: Range?

	/// (approximate) age.
	public var ageString: String?

	/// (approximate) date of birth.
	public var bornDate: FHIRDate?

	/// (approximate) date of birth.
	public var bornPeriod: Period?

	/// (approximate) date of birth.
	public var bornString: String?

	/// Condition that the related person had.
	public var condition: [FamilyMemberHistoryCondition]?

	/// When history was captured/updated.
	public var date: DateTime?

	/// Dead? How old/when?.
	public var deceasedAge: Age?

	/// Dead? How old/when?.
	public var deceasedBoolean: Bool?

	/// Dead? How old/when?.
	public var deceasedDate: FHIRDate?

	/// Dead? How old/when?.
	public var deceasedRange: Range?

	/// Dead? How old/when?.
	public var deceasedString: String?

	/// Instantiates protocol or definition.
	public var definition: [Reference]?

	/// Age is estimated?.
	public var estimatedAge: Bool?

	/// Administrative Gender - the gender that the relative is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?

	/// External Id(s) for this record.
	public var identifier: [Identifier]?

	/// The family member described.
	public var name: String?

	/// The taking of a family member's history did not occur.
	public var notDone: Bool?

	/// subject-unknown | withheld | unable-to-obtain | deferred.
	public var notDoneReason: CodeableConcept?

	/// General note about related person.
	public var note: [Annotation]?

	/// Patient history is about.
	public var patient: Reference?

	/// Why was family member history performed?.
	public var reasonCode: [CodeableConcept]?

	/// Why was family member history performed?.
	public var reasonReference: [Reference]?

	/// Relationship to the subject.
	public var relationship: CodeableConcept?

	/// A code specifying the status of the record of the family history of a specific family member.
	public var status: FamilyHistoryStatus?

	enum FamilyMemberHistoryKeys: String, CodingKey {
		case ageAge
		case ageRange
		case ageString
		case bornDate
		case bornPeriod
		case bornString
		case condition
		case date
		case deceasedAge
		case deceasedBoolean
		case deceasedDate
		case deceasedRange
		case deceasedString
		case definition
		case estimatedAge
		case gender
		case identifier
		case name
		case notDone
		case notDoneReason
		case note
		case patient
		case reasonCode
		case reasonReference
		case relationship
		case status
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(patient: Reference, relationship: CodeableConcept, status: FamilyHistoryStatus) {
		self.init()
		self.patient = patient
		self.relationship = relationship
		self.status = status
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: FamilyMemberHistoryKeys.self)
		if let item = patient {
			try container.encode(item, forKey: .patient)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("patient")
		}
		if let item = relationship {
			try container.encode(item, forKey: .relationship)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("relationship")
		}
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		try container.encodeIfPresent(ageAge, forKey: .ageAge)
		try container.encodeIfPresent(ageRange, forKey: .ageRange)
		try container.encodeIfPresent(ageString, forKey: .ageString)
		try container.encodeIfPresent(bornDate, forKey: .bornDate)
		try container.encodeIfPresent(bornPeriod, forKey: .bornPeriod)
		try container.encodeIfPresent(bornString, forKey: .bornString)
		try container.encodeArrayIfPresent(condition, forKey: .condition)
		try container.encodeIfPresent(date, forKey: .date)
		try container.encodeIfPresent(deceasedAge, forKey: .deceasedAge)
		try container.encodeIfPresent(deceasedBoolean, forKey: .deceasedBoolean)
		try container.encodeIfPresent(deceasedDate, forKey: .deceasedDate)
		try container.encodeIfPresent(deceasedRange, forKey: .deceasedRange)
		try container.encodeIfPresent(deceasedString, forKey: .deceasedString)
		try container.encodeArrayIfPresent(definition, forKey: .definition)
		try container.encodeIfPresent(estimatedAge, forKey: .estimatedAge)
		try container.encodeIfPresent(gender, forKey: .gender)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeIfPresent(notDone, forKey: .notDone)
		try container.encodeIfPresent(notDoneReason, forKey: .notDoneReason)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeArrayIfPresent(reasonCode, forKey: .reasonCode)
		try container.encodeArrayIfPresent(reasonReference, forKey: .reasonReference)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  FamilyMemberHistoryKeys.self)
		patient = try container.decode(Reference.self, forKey: .patient)
		relationship = try container.decode(CodeableConcept.self, forKey: .relationship)
		status = try container.decode(FamilyHistoryStatus.self, forKey: .status)
		ageAge = try container.decodeIfPresent(Age.self, forKey: .ageAge)
		ageRange = try container.decodeIfPresent(Range.self, forKey: .ageRange)
		ageString = try container.decodeIfPresent(String.self, forKey: .ageString)
		bornDate = try container.decodeIfPresent(FHIRDate.self, forKey: .bornDate)
		bornPeriod = try container.decodeIfPresent(Period.self, forKey: .bornPeriod)
		bornString = try container.decodeIfPresent(String.self, forKey: .bornString)
		condition = try container.decodeArrayIfPresent([FamilyMemberHistoryCondition].self, forKey: .condition)
		date = try container.decodeIfPresent(DateTime.self, forKey: .date)
		deceasedAge = try container.decodeIfPresent(Age.self, forKey: .deceasedAge)
		deceasedBoolean = try container.decodeIfPresent(Bool.self, forKey: .deceasedBoolean)
		deceasedDate = try container.decodeIfPresent(FHIRDate.self, forKey: .deceasedDate)
		deceasedRange = try container.decodeIfPresent(Range.self, forKey: .deceasedRange)
		deceasedString = try container.decodeIfPresent(String.self, forKey: .deceasedString)
		definition = try container.decodeArrayIfPresent([Reference].self, forKey: .definition)
		estimatedAge = try container.decodeIfPresent(Bool.self, forKey: .estimatedAge)
		gender = try container.decodeIfPresent(AdministrativeGender.self, forKey: .gender)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		name = try container.decodeIfPresent(String.self, forKey: .name)
		notDone = try container.decodeIfPresent(Bool.self, forKey: .notDone)
		notDoneReason = try container.decodeIfPresent(CodeableConcept.self, forKey: .notDoneReason)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		reasonCode = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .reasonCode)
		reasonReference = try container.decodeArrayIfPresent([Reference].self, forKey: .reasonReference)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? FamilyMemberHistory else {
            return false
        }

		return	ageAge == object.ageAge &&
			ageRange == object.ageRange &&
			ageString == object.ageString &&
			bornDate == object.bornDate &&
			bornPeriod == object.bornPeriod &&
			bornString == object.bornString &&
			condition == object.condition &&
			date == object.date &&
			deceasedAge == object.deceasedAge &&
			deceasedBoolean == object.deceasedBoolean &&
			deceasedDate == object.deceasedDate &&
			deceasedRange == object.deceasedRange &&
			deceasedString == object.deceasedString &&
			definition == object.definition &&
			estimatedAge == object.estimatedAge &&
			gender == object.gender &&
			identifier == object.identifier &&
			name == object.name &&
			notDone == object.notDone &&
			notDoneReason == object.notDoneReason &&
			note == object.note &&
			patient == object.patient &&
			reasonCode == object.reasonCode &&
			reasonReference == object.reasonReference &&
			relationship == object.relationship &&
			status == object.status &&
			super.equal(to: to)
	}
}

extension FamilyMemberHistory {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? FamilyMemberHistory else {
            return self
        }

        resource.ageAge = self.ageAge?.copy(with: zone) as? Age
        resource.ageRange = self.ageRange?.copy(with: zone) as? Range
        resource.ageString = self.ageString
        resource.bornDate = self.bornDate
        resource.bornPeriod = self.bornPeriod?.copy(with: zone) as? Period
        resource.bornString = self.bornString
        resource.condition = self.condition?.compactMap { $0.copy(with: zone) as? FamilyMemberHistoryCondition }
        resource.date = self.date
        resource.deceasedAge = self.deceasedAge?.copy(with: zone) as? Age
        resource.deceasedBoolean = self.deceasedBoolean
        resource.deceasedDate = self.deceasedDate
        resource.deceasedRange = self.deceasedRange?.copy(with: zone) as? Range
        resource.deceasedString = self.deceasedString
        resource.definition = self.definition?.compactMap { $0.copy(with: zone) as? Reference }
        resource.estimatedAge = self.estimatedAge
        resource.gender = self.gender
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.name = self.name
        resource.notDone = self.notDone
        resource.notDoneReason = self.notDoneReason?.copy(with: zone) as? CodeableConcept
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.patient = self.patient?.copy(with: zone) as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy(with: zone) as? Reference }
        resource.relationship = self.relationship?.copy(with: zone) as? CodeableConcept
        resource.status = self.status

        return resource
    }
}

/**
Condition that the related person had.

The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system to
represent more than one condition per resource, though there is nothing stopping multiple resources - one per condition.
*/
open class FamilyMemberHistoryCondition: BackboneElement {
	override open class var resourceType: String {
		get { return "FamilyMemberHistoryCondition" }
	}

    private static var keyPaths: [String: PartialKeyPath<FamilyMemberHistoryCondition>] = [

        "code" : \FamilyMemberHistoryCondition.code,
        "note" : \FamilyMemberHistoryCondition.note,
        "onsetAge" : \FamilyMemberHistoryCondition.onsetAge,
        "onsetPeriod" : \FamilyMemberHistoryCondition.onsetPeriod,
        "onsetRange" : \FamilyMemberHistoryCondition.onsetRange,
        "onsetString" : \FamilyMemberHistoryCondition.onsetString,
        "outcome" : \FamilyMemberHistoryCondition.outcome
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = FamilyMemberHistoryCondition.keyPaths[name] as? KeyPath<FamilyMemberHistoryCondition, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = FamilyMemberHistoryCondition.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Condition suffered by relation.
	public var code: CodeableConcept?

	/// Extra information about condition.
	public var note: [Annotation]?

	/// When condition first manifested.
	public var onsetAge: Age?

	/// When condition first manifested.
	public var onsetPeriod: Period?

	/// When condition first manifested.
	public var onsetRange: Range?

	/// When condition first manifested.
	public var onsetString: String?

	/// deceased | permanent disability | etc..
	public var outcome: CodeableConcept?

	enum FamilyMemberHistoryConditionKeys: String, CodingKey {
		case code
		case note
		case onsetAge
		case onsetPeriod
		case onsetRange
		case onsetString
		case outcome
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
		var container = encoder.container(keyedBy: FamilyMemberHistoryConditionKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeIfPresent(onsetAge, forKey: .onsetAge)
		try container.encodeIfPresent(onsetPeriod, forKey: .onsetPeriod)
		try container.encodeIfPresent(onsetRange, forKey: .onsetRange)
		try container.encodeIfPresent(onsetString, forKey: .onsetString)
		try container.encodeIfPresent(outcome, forKey: .outcome)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  FamilyMemberHistoryConditionKeys.self)
		code = try container.decode(CodeableConcept.self, forKey: .code)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		onsetAge = try container.decodeIfPresent(Age.self, forKey: .onsetAge)
		onsetPeriod = try container.decodeIfPresent(Period.self, forKey: .onsetPeriod)
		onsetRange = try container.decodeIfPresent(Range.self, forKey: .onsetRange)
		onsetString = try container.decodeIfPresent(String.self, forKey: .onsetString)
		outcome = try container.decodeIfPresent(CodeableConcept.self, forKey: .outcome)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? FamilyMemberHistoryCondition else {
            return false
        }

		return	code == object.code &&
			note == object.note &&
			onsetAge == object.onsetAge &&
			onsetPeriod == object.onsetPeriod &&
			onsetRange == object.onsetRange &&
			onsetString == object.onsetString &&
			outcome == object.outcome &&
			super.equal(to: to)
	}
}

extension FamilyMemberHistoryCondition {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? FamilyMemberHistoryCondition else {
            return self
        }

        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.onsetAge = self.onsetAge?.copy(with: zone) as? Age
        resource.onsetPeriod = self.onsetPeriod?.copy(with: zone) as? Period
        resource.onsetRange = self.onsetRange?.copy(with: zone) as? Range
        resource.onsetString = self.onsetString
        resource.outcome = self.outcome?.copy(with: zone) as? CodeableConcept

        return resource
    }
}
