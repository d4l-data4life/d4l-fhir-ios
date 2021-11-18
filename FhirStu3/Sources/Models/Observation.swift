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
//  Observation.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Observation)
//

import Foundation

/**
Measurements and simple assertions.

Measurements and simple assertions made about a patient, device or other subject.
*/
open class Observation: DomainResource {
	override open class var resourceType: String {
		get { return "Observation" }
	}

    private static var keyPaths: [String: PartialKeyPath<Observation>] = [

        "basedOn" : \Observation.basedOn,
        "bodySite" : \Observation.bodySite,
        "category" : \Observation.category,
        "code" : \Observation.code,
        "comment" : \Observation.comment,
        "component" : \Observation.component,
        "context" : \Observation.context,
        "dataAbsentReason" : \Observation.dataAbsentReason,
        "device" : \Observation.device,
        "effectiveDateTime" : \Observation.effectiveDateTime,
        "effectivePeriod" : \Observation.effectivePeriod,
        "identifier" : \Observation.identifier,
        "interpretation" : \Observation.interpretation,
        "issued" : \Observation.issued,
        "method" : \Observation.method,
        "performer" : \Observation.performer,
        "referenceRange" : \Observation.referenceRange,
        "related" : \Observation.related,
        "specimen" : \Observation.specimen,
        "status" : \Observation.status,
        "subject" : \Observation.subject,
        "valueAttachment" : \Observation.valueAttachment,
        "valueBoolean" : \Observation.valueBoolean,
        "valueCodeableConcept" : \Observation.valueCodeableConcept,
        "valueDateTime" : \Observation.valueDateTime,
        "valuePeriod" : \Observation.valuePeriod,
        "valueQuantity" : \Observation.valueQuantity,
        "valueRange" : \Observation.valueRange,
        "valueRatio" : \Observation.valueRatio,
        "valueSampledData" : \Observation.valueSampledData,
        "valueString" : \Observation.valueString,
        "valueTime" : \Observation.valueTime
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Observation.keyPaths[name] as? KeyPath<Observation, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Observation.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Fulfills plan, proposal or order.
	public var basedOn: [Reference]?

	/// Observed body part.
	public var bodySite: CodeableConcept?

	/// Classification of  type of observation.
	public var category: [CodeableConcept]?

	/// Type of observation (code / type).
	public var code: CodeableConcept?

	/// Comments about result.
	public var comment: String?

	/// Component results.
	public var component: [ObservationComponent]?

	/// Healthcare event during which this observation is made.
	public var context: Reference?

	/// Why the result is missing.
	public var dataAbsentReason: CodeableConcept?

	/// (Measurement) Device.
	public var device: Reference?

	/// Clinically relevant time/time-period for observation.
	public var effectiveDateTime: DateTime?

	/// Clinically relevant time/time-period for observation.
	public var effectivePeriod: Period?

	/// Business Identifier for observation.
	public var identifier: [Identifier]?

	/// High, low, normal, etc..
	public var interpretation: CodeableConcept?

	/// Date/Time this was made available.
	public var issued: Instant?

	/// How it was done.
	public var method: CodeableConcept?

	/// Who is responsible for the observation.
	public var performer: [Reference]?

	/// Provides guide for interpretation.
	public var referenceRange: [ObservationReferenceRange]?

	/// Resource related to this observation.
	public var related: [ObservationRelated]?

	/// Specimen used for this observation.
	public var specimen: Reference?

	/// The status of the result value.
	public var status: ObservationStatus?

	/// Who and/or what this is about.
	public var subject: Reference?

	/// Actual result.
	public var valueAttachment: Attachment?

	/// Actual result.
	public var valueBoolean: Bool?

	/// Actual result.
	public var valueCodeableConcept: CodeableConcept?

	/// Actual result.
	public var valueDateTime: DateTime?

	/// Actual result.
	public var valuePeriod: Period?

	/// Actual result.
	public var valueQuantity: Quantity?

	/// Actual result.
	public var valueRange: Range?

	/// Actual result.
	public var valueRatio: Ratio?

	/// Actual result.
	public var valueSampledData: SampledData?

	/// Actual result.
	public var valueString: String?

	/// Actual result.
	public var valueTime: FHIRTime?

	enum ObservationKeys: String, CodingKey {
		case basedOn
		case bodySite
		case category
		case code
		case comment
		case component
		case context
		case dataAbsentReason
		case device
		case effectiveDateTime
		case effectivePeriod
		case identifier
		case interpretation
		case issued
		case method
		case performer
		case referenceRange
		case related
		case specimen
		case status
		case subject
		case valueAttachment
		case valueBoolean
		case valueCodeableConcept
		case valueDateTime
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueSampledData
		case valueString
		case valueTime
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(code: CodeableConcept, status: ObservationStatus) {
		self.init()
		self.code = code
		self.status = status
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ObservationKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		try container.encodeArrayIfPresent(basedOn, forKey: .basedOn)
		try container.encodeIfPresent(bodySite, forKey: .bodySite)
		try container.encodeArrayIfPresent(category, forKey: .category)
		try container.encodeIfPresent(comment, forKey: .comment)
		try container.encodeArrayIfPresent(component, forKey: .component)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeIfPresent(dataAbsentReason, forKey: .dataAbsentReason)
		try container.encodeIfPresent(device, forKey: .device)
		try container.encodeIfPresent(effectiveDateTime, forKey: .effectiveDateTime)
		try container.encodeIfPresent(effectivePeriod, forKey: .effectivePeriod)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(interpretation, forKey: .interpretation)
		try container.encodeIfPresent(issued, forKey: .issued)
		try container.encodeIfPresent(method, forKey: .method)
		try container.encodeArrayIfPresent(performer, forKey: .performer)
		try container.encodeArrayIfPresent(referenceRange, forKey: .referenceRange)
		try container.encodeArrayIfPresent(related, forKey: .related)
		try container.encodeIfPresent(specimen, forKey: .specimen)
		try container.encodeIfPresent(subject, forKey: .subject)
		try container.encodeIfPresent(valueAttachment, forKey: .valueAttachment)
		try container.encodeIfPresent(valueBoolean, forKey: .valueBoolean)
		try container.encodeIfPresent(valueCodeableConcept, forKey: .valueCodeableConcept)
		try container.encodeIfPresent(valueDateTime, forKey: .valueDateTime)
		try container.encodeIfPresent(valuePeriod, forKey: .valuePeriod)
		try container.encodeIfPresent(valueQuantity, forKey: .valueQuantity)
		try container.encodeIfPresent(valueRange, forKey: .valueRange)
		try container.encodeIfPresent(valueRatio, forKey: .valueRatio)
		try container.encodeIfPresent(valueSampledData, forKey: .valueSampledData)
		try container.encodeIfPresent(valueString, forKey: .valueString)
		try container.encodeIfPresent(valueTime, forKey: .valueTime)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ObservationKeys.self)
		code = try container.decode(CodeableConcept.self, forKey: .code)
		status = try container.decode(ObservationStatus.self, forKey: .status)
		basedOn = try container.decodeArrayIfPresent([Reference].self, forKey: .basedOn)
		bodySite = try container.decodeIfPresent(CodeableConcept.self, forKey: .bodySite)
		category = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .category)
		comment = try container.decodeIfPresent(String.self, forKey: .comment)
		component = try container.decodeArrayIfPresent([ObservationComponent].self, forKey: .component)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		dataAbsentReason = try container.decodeIfPresent(CodeableConcept.self, forKey: .dataAbsentReason)
		device = try container.decodeIfPresent(Reference.self, forKey: .device)
		effectiveDateTime = try container.decodeIfPresent(DateTime.self, forKey: .effectiveDateTime)
		effectivePeriod = try container.decodeIfPresent(Period.self, forKey: .effectivePeriod)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		interpretation = try container.decodeIfPresent(CodeableConcept.self, forKey: .interpretation)
		issued = try container.decodeIfPresent(Instant.self, forKey: .issued)
		method = try container.decodeIfPresent(CodeableConcept.self, forKey: .method)
		performer = try container.decodeArrayIfPresent([Reference].self, forKey: .performer)
		referenceRange = try container.decodeArrayIfPresent([ObservationReferenceRange].self, forKey: .referenceRange)
		related = try container.decodeArrayIfPresent([ObservationRelated].self, forKey: .related)
		specimen = try container.decodeIfPresent(Reference.self, forKey: .specimen)
		subject = try container.decodeIfPresent(Reference.self, forKey: .subject)
		valueAttachment = try container.decodeIfPresent(Attachment.self, forKey: .valueAttachment)
		valueBoolean = try container.decodeIfPresent(Bool.self, forKey: .valueBoolean)
		valueCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .valueCodeableConcept)
		valueDateTime = try container.decodeIfPresent(DateTime.self, forKey: .valueDateTime)
		valuePeriod = try container.decodeIfPresent(Period.self, forKey: .valuePeriod)
		valueQuantity = try container.decodeIfPresent(Quantity.self, forKey: .valueQuantity)
		valueRange = try container.decodeIfPresent(Range.self, forKey: .valueRange)
		valueRatio = try container.decodeIfPresent(Ratio.self, forKey: .valueRatio)
		valueSampledData = try container.decodeIfPresent(SampledData.self, forKey: .valueSampledData)
		valueString = try container.decodeIfPresent(String.self, forKey: .valueString)
		valueTime = try container.decodeIfPresent(FHIRTime.self, forKey: .valueTime)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Observation else {
            return false
        }

		return	basedOn == object.basedOn &&
			bodySite == object.bodySite &&
			category == object.category &&
			code == object.code &&
			comment == object.comment &&
			component == object.component &&
			context == object.context &&
			dataAbsentReason == object.dataAbsentReason &&
			device == object.device &&
			effectiveDateTime == object.effectiveDateTime &&
			effectivePeriod == object.effectivePeriod &&
			identifier == object.identifier &&
			interpretation == object.interpretation &&
			issued == object.issued &&
			method == object.method &&
			performer == object.performer &&
			referenceRange == object.referenceRange &&
			related == object.related &&
			specimen == object.specimen &&
			status == object.status &&
			subject == object.subject &&
			valueAttachment == object.valueAttachment &&
			valueBoolean == object.valueBoolean &&
			valueCodeableConcept == object.valueCodeableConcept &&
			valueDateTime == object.valueDateTime &&
			valuePeriod == object.valuePeriod &&
			valueQuantity == object.valueQuantity &&
			valueRange == object.valueRange &&
			valueRatio == object.valueRatio &&
			valueSampledData == object.valueSampledData &&
			valueString == object.valueString &&
			valueTime == object.valueTime &&
			super.equal(to: to)
	}
}

extension Observation {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Observation else {
            return self
        }

        resource.basedOn = self.basedOn?.compactMap { $0.copy(with: zone) as? Reference }
        resource.bodySite = self.bodySite?.copy(with: zone) as? CodeableConcept
        resource.category = self.category?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.comment = self.comment
        resource.component = self.component?.compactMap { $0.copy(with: zone) as? ObservationComponent }
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.dataAbsentReason = self.dataAbsentReason?.copy(with: zone) as? CodeableConcept
        resource.device = self.device?.copy(with: zone) as? Reference
        resource.effectiveDateTime = self.effectiveDateTime
        resource.effectivePeriod = self.effectivePeriod?.copy(with: zone) as? Period
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.interpretation = self.interpretation?.copy(with: zone) as? CodeableConcept
        resource.issued = self.issued
        resource.method = self.method?.copy(with: zone) as? CodeableConcept
        resource.performer = self.performer?.compactMap { $0.copy(with: zone) as? Reference }
        resource.referenceRange = self.referenceRange?.compactMap { $0.copy(with: zone) as? ObservationReferenceRange }
        resource.related = self.related?.compactMap { $0.copy(with: zone) as? ObservationRelated }
        resource.specimen = self.specimen?.copy(with: zone) as? Reference
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.valueAttachment = self.valueAttachment?.copy(with: zone) as? Attachment
        resource.valueBoolean = self.valueBoolean
        resource.valueCodeableConcept = self.valueCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.valueDateTime = self.valueDateTime
        resource.valuePeriod = self.valuePeriod?.copy(with: zone) as? Period
        resource.valueQuantity = self.valueQuantity?.copy(with: zone) as? Quantity
        resource.valueRange = self.valueRange?.copy(with: zone) as? Range
        resource.valueRatio = self.valueRatio?.copy(with: zone) as? Ratio
        resource.valueSampledData = self.valueSampledData?.copy(with: zone) as? SampledData
        resource.valueString = self.valueString
        resource.valueTime = self.valueTime

        return resource
    }
}

/**
Component results.

Some observations have multiple component observations.  These component observations are expressed as separate code
value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood
pressure measurement and multiple component observations for genetics observations.
*/
open class ObservationComponent: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationComponent" }
	}

    private static var keyPaths: [String: PartialKeyPath<ObservationComponent>] = [

        "code" : \ObservationComponent.code,
        "dataAbsentReason" : \ObservationComponent.dataAbsentReason,
        "interpretation" : \ObservationComponent.interpretation,
        "referenceRange" : \ObservationComponent.referenceRange,
        "valueAttachment" : \ObservationComponent.valueAttachment,
        "valueCodeableConcept" : \ObservationComponent.valueCodeableConcept,
        "valueDateTime" : \ObservationComponent.valueDateTime,
        "valuePeriod" : \ObservationComponent.valuePeriod,
        "valueQuantity" : \ObservationComponent.valueQuantity,
        "valueRange" : \ObservationComponent.valueRange,
        "valueRatio" : \ObservationComponent.valueRatio,
        "valueSampledData" : \ObservationComponent.valueSampledData,
        "valueString" : \ObservationComponent.valueString,
        "valueTime" : \ObservationComponent.valueTime
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ObservationComponent.keyPaths[name] as? KeyPath<ObservationComponent, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ObservationComponent.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Type of component observation (code / type).
	public var code: CodeableConcept?

	/// Why the component result is missing.
	public var dataAbsentReason: CodeableConcept?

	/// High, low, normal, etc..
	public var interpretation: CodeableConcept?

	/// Provides guide for interpretation of component result.
	public var referenceRange: [ObservationReferenceRange]?

	/// Actual component result.
	public var valueAttachment: Attachment?

	/// Actual component result.
	public var valueCodeableConcept: CodeableConcept?

	/// Actual component result.
	public var valueDateTime: DateTime?

	/// Actual component result.
	public var valuePeriod: Period?

	/// Actual component result.
	public var valueQuantity: Quantity?

	/// Actual component result.
	public var valueRange: Range?

	/// Actual component result.
	public var valueRatio: Ratio?

	/// Actual component result.
	public var valueSampledData: SampledData?

	/// Actual component result.
	public var valueString: String?

	/// Actual component result.
	public var valueTime: FHIRTime?

	enum ObservationComponentKeys: String, CodingKey {
		case code
		case dataAbsentReason
		case interpretation
		case referenceRange
		case valueAttachment
		case valueCodeableConcept
		case valueDateTime
		case valuePeriod
		case valueQuantity
		case valueRange
		case valueRatio
		case valueSampledData
		case valueString
		case valueTime
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
		var container = encoder.container(keyedBy: ObservationComponentKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		try container.encodeIfPresent(dataAbsentReason, forKey: .dataAbsentReason)
		try container.encodeIfPresent(interpretation, forKey: .interpretation)
		try container.encodeArrayIfPresent(referenceRange, forKey: .referenceRange)
		try container.encodeIfPresent(valueAttachment, forKey: .valueAttachment)
		try container.encodeIfPresent(valueCodeableConcept, forKey: .valueCodeableConcept)
		try container.encodeIfPresent(valueDateTime, forKey: .valueDateTime)
		try container.encodeIfPresent(valuePeriod, forKey: .valuePeriod)
		try container.encodeIfPresent(valueQuantity, forKey: .valueQuantity)
		try container.encodeIfPresent(valueRange, forKey: .valueRange)
		try container.encodeIfPresent(valueRatio, forKey: .valueRatio)
		try container.encodeIfPresent(valueSampledData, forKey: .valueSampledData)
		try container.encodeIfPresent(valueString, forKey: .valueString)
		try container.encodeIfPresent(valueTime, forKey: .valueTime)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ObservationComponentKeys.self)
		code = try container.decode(CodeableConcept.self, forKey: .code)
		dataAbsentReason = try container.decodeIfPresent(CodeableConcept.self, forKey: .dataAbsentReason)
		interpretation = try container.decodeIfPresent(CodeableConcept.self, forKey: .interpretation)
		referenceRange = try container.decodeArrayIfPresent([ObservationReferenceRange].self, forKey: .referenceRange)
		valueAttachment = try container.decodeIfPresent(Attachment.self, forKey: .valueAttachment)
		valueCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .valueCodeableConcept)
		valueDateTime = try container.decodeIfPresent(DateTime.self, forKey: .valueDateTime)
		valuePeriod = try container.decodeIfPresent(Period.self, forKey: .valuePeriod)
		valueQuantity = try container.decodeIfPresent(Quantity.self, forKey: .valueQuantity)
		valueRange = try container.decodeIfPresent(Range.self, forKey: .valueRange)
		valueRatio = try container.decodeIfPresent(Ratio.self, forKey: .valueRatio)
		valueSampledData = try container.decodeIfPresent(SampledData.self, forKey: .valueSampledData)
		valueString = try container.decodeIfPresent(String.self, forKey: .valueString)
		valueTime = try container.decodeIfPresent(FHIRTime.self, forKey: .valueTime)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ObservationComponent else {
            return false
        }

		return	code == object.code &&
			dataAbsentReason == object.dataAbsentReason &&
			interpretation == object.interpretation &&
			referenceRange == object.referenceRange &&
			valueAttachment == object.valueAttachment &&
			valueCodeableConcept == object.valueCodeableConcept &&
			valueDateTime == object.valueDateTime &&
			valuePeriod == object.valuePeriod &&
			valueQuantity == object.valueQuantity &&
			valueRange == object.valueRange &&
			valueRatio == object.valueRatio &&
			valueSampledData == object.valueSampledData &&
			valueString == object.valueString &&
			valueTime == object.valueTime &&
			super.equal(to: to)
	}
}

extension ObservationComponent {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ObservationComponent else {
            return self
        }

        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.dataAbsentReason = self.dataAbsentReason?.copy(with: zone) as? CodeableConcept
        resource.interpretation = self.interpretation?.copy(with: zone) as? CodeableConcept
        resource.referenceRange = self.referenceRange?.compactMap { $0.copy(with: zone) as? ObservationReferenceRange }
        resource.valueAttachment = self.valueAttachment?.copy(with: zone) as? Attachment
        resource.valueCodeableConcept = self.valueCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.valueDateTime = self.valueDateTime
        resource.valuePeriod = self.valuePeriod?.copy(with: zone) as? Period
        resource.valueQuantity = self.valueQuantity?.copy(with: zone) as? Quantity
        resource.valueRange = self.valueRange?.copy(with: zone) as? Range
        resource.valueRatio = self.valueRatio?.copy(with: zone) as? Ratio
        resource.valueSampledData = self.valueSampledData?.copy(with: zone) as? SampledData
        resource.valueString = self.valueString
        resource.valueTime = self.valueTime

        return resource
    }
}

/**
Provides guide for interpretation.

Guidance on how to interpret the value by comparison to a normal or recommended range.
*/
open class ObservationReferenceRange: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationReferenceRange" }
	}

    private static var keyPaths: [String: PartialKeyPath<ObservationReferenceRange>] = [

        "age" : \ObservationReferenceRange.age,
        "appliesTo" : \ObservationReferenceRange.appliesTo,
        "high" : \ObservationReferenceRange.high,
        "low" : \ObservationReferenceRange.low,
        "text" : \ObservationReferenceRange.text,
        "type" : \ObservationReferenceRange.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ObservationReferenceRange.keyPaths[name] as? KeyPath<ObservationReferenceRange, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ObservationReferenceRange.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Applicable age range, if relevant.
	public var age: Range?

	/// Reference range population.
	public var appliesTo: [CodeableConcept]?

	/// High Range, if relevant.
	public var high: Quantity?

	/// Low Range, if relevant.
	public var low: Quantity?

	/// Text based reference range in an observation.
	public var text: String?

	/// Reference range qualifier.
	public var type: CodeableConcept?

	enum ObservationReferenceRangeKeys: String, CodingKey {
		case age
		case appliesTo
		case high
		case low
		case text
		case type
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ObservationReferenceRangeKeys.self)
		try container.encodeIfPresent(age, forKey: .age)
		try container.encodeArrayIfPresent(appliesTo, forKey: .appliesTo)
		try container.encodeIfPresent(high, forKey: .high)
		try container.encodeIfPresent(low, forKey: .low)
		try container.encodeIfPresent(text, forKey: .text)
		try container.encodeIfPresent(type, forKey: .type)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ObservationReferenceRangeKeys.self)
		age = try container.decodeIfPresent(Range.self, forKey: .age)
		appliesTo = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .appliesTo)
		high = try container.decodeIfPresent(Quantity.self, forKey: .high)
		low = try container.decodeIfPresent(Quantity.self, forKey: .low)
		text = try container.decodeIfPresent(String.self, forKey: .text)
		type = try container.decodeIfPresent(CodeableConcept.self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ObservationReferenceRange else {
            return false
        }

		return	age == object.age &&
			appliesTo == object.appliesTo &&
			high == object.high &&
			low == object.low &&
			text == object.text &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension ObservationReferenceRange {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ObservationReferenceRange else {
            return self
        }

        resource.age = self.age?.copy(with: zone) as? Range
        resource.appliesTo = self.appliesTo?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.high = self.high?.copy(with: zone) as? Quantity
        resource.low = self.low?.copy(with: zone) as? Quantity
        resource.text = self.text
        resource.type = self.type?.copy(with: zone) as? CodeableConcept

        return resource
    }
}

/**
Resource related to this observation.

A  reference to another resource (usually another Observation) whose relationship is defined by the relationship type
code.
*/
open class ObservationRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationRelated" }
	}

    private static var keyPaths: [String: PartialKeyPath<ObservationRelated>] = [

        "target" : \ObservationRelated.target,
        "type" : \ObservationRelated.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ObservationRelated.keyPaths[name] as? KeyPath<ObservationRelated, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ObservationRelated.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Resource that is related to this one.
	public var target: Reference?

	/// A code specifying the kind of relationship that exists with the target resource.
	public var type: ObservationRelationshipType?

	enum ObservationRelatedKeys: String, CodingKey {
		case target
		case type
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(target: Reference) {
		self.init()
		self.target = target
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ObservationRelatedKeys.self)
		if let item = target {
			try container.encode(item, forKey: .target)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("target")
		}
		try container.encodeIfPresent(type, forKey: .type)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ObservationRelatedKeys.self)
		target = try container.decode(Reference.self, forKey: .target)
		type = try container.decodeIfPresent(ObservationRelationshipType.self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ObservationRelated else {
            return false
        }

		return	target == object.target &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension ObservationRelated {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ObservationRelated else {
            return self
        }

        resource.target = self.target?.copy(with: zone) as? Reference
        resource.type = self.type

        return resource
    }
}
