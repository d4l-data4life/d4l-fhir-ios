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
//  Extension.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Extension)
//

import Foundation

/**
Optional Extensions Element.

Optional Extension Element - found in all resources.
*/
open class Extension: Element {
	override open class var resourceType: String {
		get { return "Extension" }
	}

    private static var keyPaths: [String: PartialKeyPath<Extension>] = [

        "url" : \Extension.url,
        "valueAddress" : \Extension.valueAddress,
        "valueAge" : \Extension.valueAge,
        "valueAnnotation" : \Extension.valueAnnotation,
        "valueAttachment" : \Extension.valueAttachment,
        "valueBase64Binary" : \Extension.valueBase64Binary,
        "valueBoolean" : \Extension.valueBoolean,
        "valueCode" : \Extension.valueCode,
        "valueCodeableConcept" : \Extension.valueCodeableConcept,
        "valueCoding" : \Extension.valueCoding,
        "valueContactPoint" : \Extension.valueContactPoint,
        "valueCount" : \Extension.valueCount,
        "valueDate" : \Extension.valueDate,
        "valueDateTime" : \Extension.valueDateTime,
        "valueDecimal" : \Extension.valueDecimal,
        "valueDistance" : \Extension.valueDistance,
        "valueDuration" : \Extension.valueDuration,
        "valueHumanName" : \Extension.valueHumanName,
        "valueId" : \Extension.valueId,
        "valueIdentifier" : \Extension.valueIdentifier,
        "valueInstant" : \Extension.valueInstant,
        "valueInteger" : \Extension.valueInteger,
        "valueMarkdown" : \Extension.valueMarkdown,
        "valueMeta" : \Extension.valueMeta,
        "valueMoney" : \Extension.valueMoney,
        "valueOid" : \Extension.valueOid,
        "valuePeriod" : \Extension.valuePeriod,
        "valuePositiveInt" : \Extension.valuePositiveInt,
        "valueQuantity" : \Extension.valueQuantity,
        "valueRange" : \Extension.valueRange,
        "valueRatio" : \Extension.valueRatio,
        "valueReference" : \Extension.valueReference,
        "valueSampledData" : \Extension.valueSampledData,
        "valueSignature" : \Extension.valueSignature,
        "valueString" : \Extension.valueString,
        "valueTime" : \Extension.valueTime,
        "valueTiming" : \Extension.valueTiming,
        "valueUnsignedInt" : \Extension.valueUnsignedInt,
        "valueUri" : \Extension.valueUri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Extension.keyPaths[name] as? KeyPath<Extension, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Extension.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// identifies the meaning of the extension.
	public var url: String?

	/// Value of extension.
	public var valueAddress: Address?

	/// Value of extension.
	public var valueAge: Age?

	/// Value of extension.
	public var valueAnnotation: Annotation?

	/// Value of extension.
	public var valueAttachment: Attachment?

	/// Value of extension.
	public var valueBase64Binary: String?

	/// Value of extension.
	public var valueBoolean: Bool?

	/// Value of extension.
	public var valueCode: String?

	/// Value of extension.
	public var valueCodeableConcept: CodeableConcept?

	/// Value of extension.
	public var valueCoding: Coding?

	/// Value of extension.
	public var valueContactPoint: ContactPoint?

	/// Value of extension.
	public var valueCount: Count?

	/// Value of extension.
	public var valueDate: FHIRDate?

	/// Value of extension.
	public var valueDateTime: DateTime?

	/// Value of extension.
	public var valueDecimal: Float?

	/// Value of extension.
	public var valueDistance: Distance?

	/// Value of extension.
	public var valueDuration: Duration?

	/// Value of extension.
	public var valueHumanName: HumanName?

	/// Value of extension.
	public var valueId: String?

	/// Value of extension.
	public var valueIdentifier: Identifier?

	/// Value of extension.
	public var valueInstant: Instant?

	/// Value of extension.
	public var valueInteger: Int?

	/// Value of extension.
	public var valueMarkdown: String?

	/// Value of extension.
	public var valueMeta: Meta?

	/// Value of extension.
	public var valueMoney: Money?

	/// Value of extension.
	public var valueOid: URL?

	/// Value of extension.
	public var valuePeriod: Period?

	/// Value of extension.
	public var valuePositiveInt: Int?

	/// Value of extension.
	public var valueQuantity: Quantity?

	/// Value of extension.
	public var valueRange: Range?

	/// Value of extension.
	public var valueRatio: Ratio?

	/// Value of extension.
	public var valueReference: Reference?

	/// Value of extension.
	public var valueSampledData: SampledData?

	/// Value of extension.
	public var valueSignature: Signature?

	/// Value of extension.
	public var valueString: String?

	/// Value of extension.
	public var valueTime: FHIRTime?

	/// Value of extension.
	public var valueTiming: Timing?

	/// Value of extension.
	public var valueUnsignedInt: Int?

	/// Value of extension.
	public var valueUri: String?

	enum ExtensionKeys: String, CodingKey {
		case url
		case valueAddress
		case valueAge
		case valueAnnotation
		case valueAttachment
		case valueBase64Binary
		case valueBoolean
		case valueCode
		case valueCodeableConcept
		case valueCoding
		case valueContactPoint
		case valueCount
		case valueDate
		case valueDateTime
		case valueDecimal
		case valueDistance
		case valueDuration
		case valueHumanName
		case valueId
		case valueIdentifier
		case valueInstant
		case valueInteger
		case valueMarkdown
		case valueMeta
		case valueMoney
		case valueOid
		case valuePeriod
		case valuePositiveInt
		case valueQuantity
		case valueRange
		case valueRatio
		case valueReference
		case valueSampledData
		case valueSignature
		case valueString
		case valueTime
		case valueTiming
		case valueUnsignedInt
		case valueUri
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(url: String) {
		self.init()
		self.url = url
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ExtensionKeys.self)
		if let item = url {
			try container.encode(item, forKey: .url)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("url")
		}
		try container.encodeIfPresent(valueAddress, forKey: .valueAddress)
		try container.encodeIfPresent(valueAge, forKey: .valueAge)
		try container.encodeIfPresent(valueAnnotation, forKey: .valueAnnotation)
		try container.encodeIfPresent(valueAttachment, forKey: .valueAttachment)
		try container.encodeIfPresent(valueBase64Binary, forKey: .valueBase64Binary)
		try container.encodeIfPresent(valueBoolean, forKey: .valueBoolean)
		try container.encodeIfPresent(valueCode, forKey: .valueCode)
		try container.encodeIfPresent(valueCodeableConcept, forKey: .valueCodeableConcept)
		try container.encodeIfPresent(valueCoding, forKey: .valueCoding)
		try container.encodeIfPresent(valueContactPoint, forKey: .valueContactPoint)
		try container.encodeIfPresent(valueCount, forKey: .valueCount)
		try container.encodeIfPresent(valueDate, forKey: .valueDate)
		try container.encodeIfPresent(valueDateTime, forKey: .valueDateTime)
		try container.encodeIfPresent(valueDecimal, forKey: .valueDecimal)
		try container.encodeIfPresent(valueDistance, forKey: .valueDistance)
		try container.encodeIfPresent(valueDuration, forKey: .valueDuration)
		try container.encodeIfPresent(valueHumanName, forKey: .valueHumanName)
		try container.encodeIfPresent(valueId, forKey: .valueId)
		try container.encodeIfPresent(valueIdentifier, forKey: .valueIdentifier)
		try container.encodeIfPresent(valueInstant, forKey: .valueInstant)
		try container.encodeIfPresent(valueInteger, forKey: .valueInteger)
		try container.encodeIfPresent(valueMarkdown, forKey: .valueMarkdown)
		try container.encodeIfPresent(valueMeta, forKey: .valueMeta)
		try container.encodeIfPresent(valueMoney, forKey: .valueMoney)
		try container.encodeIfPresent(valueOid, forKey: .valueOid)
		try container.encodeIfPresent(valuePeriod, forKey: .valuePeriod)
		try container.encodeIfPresent(valuePositiveInt, forKey: .valuePositiveInt)
		try container.encodeIfPresent(valueQuantity, forKey: .valueQuantity)
		try container.encodeIfPresent(valueRange, forKey: .valueRange)
		try container.encodeIfPresent(valueRatio, forKey: .valueRatio)
		try container.encodeIfPresent(valueReference, forKey: .valueReference)
		try container.encodeIfPresent(valueSampledData, forKey: .valueSampledData)
		try container.encodeIfPresent(valueSignature, forKey: .valueSignature)
		try container.encodeIfPresent(valueString, forKey: .valueString)
		try container.encodeIfPresent(valueTime, forKey: .valueTime)
		try container.encodeIfPresent(valueTiming, forKey: .valueTiming)
		try container.encodeIfPresent(valueUnsignedInt, forKey: .valueUnsignedInt)
		try container.encodeIfPresent(valueUri, forKey: .valueUri)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ExtensionKeys.self)
		url = try container.decode(String.self, forKey: .url)
		valueAddress = try container.decodeIfPresent(Address.self, forKey: .valueAddress)
		valueAge = try container.decodeIfPresent(Age.self, forKey: .valueAge)
		valueAnnotation = try container.decodeIfPresent(Annotation.self, forKey: .valueAnnotation)
		valueAttachment = try container.decodeIfPresent(Attachment.self, forKey: .valueAttachment)
		valueBase64Binary = try container.decodeIfPresent(String.self, forKey: .valueBase64Binary)
		valueBoolean = try container.decodeIfPresent(Bool.self, forKey: .valueBoolean)
		valueCode = try container.decodeIfPresent(String.self, forKey: .valueCode)
		valueCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .valueCodeableConcept)
		valueCoding = try container.decodeIfPresent(Coding.self, forKey: .valueCoding)
		valueContactPoint = try container.decodeIfPresent(ContactPoint.self, forKey: .valueContactPoint)
		valueCount = try container.decodeIfPresent(Count.self, forKey: .valueCount)
		valueDate = try container.decodeIfPresent(FHIRDate.self, forKey: .valueDate)
		valueDateTime = try container.decodeIfPresent(DateTime.self, forKey: .valueDateTime)
		valueDecimal = try container.decodeIfPresent(Float.self, forKey: .valueDecimal)
		valueDistance = try container.decodeIfPresent(Distance.self, forKey: .valueDistance)
		valueDuration = try container.decodeIfPresent(Duration.self, forKey: .valueDuration)
		valueHumanName = try container.decodeIfPresent(HumanName.self, forKey: .valueHumanName)
		valueId = try container.decodeIfPresent(String.self, forKey: .valueId)
		valueIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .valueIdentifier)
		valueInstant = try container.decodeIfPresent(Instant.self, forKey: .valueInstant)
		valueInteger = try container.decodeIfPresent(Int.self, forKey: .valueInteger)
		valueMarkdown = try container.decodeIfPresent(String.self, forKey: .valueMarkdown)
		valueMeta = try container.decodeIfPresent(Meta.self, forKey: .valueMeta)
		valueMoney = try container.decodeIfPresent(Money.self, forKey: .valueMoney)
		valueOid = try container.decodeIfPresent(URL.self, forKey: .valueOid)
		valuePeriod = try container.decodeIfPresent(Period.self, forKey: .valuePeriod)
		valuePositiveInt = try container.decodeIfPresent(Int.self, forKey: .valuePositiveInt)
		valueQuantity = try container.decodeIfPresent(Quantity.self, forKey: .valueQuantity)
		valueRange = try container.decodeIfPresent(Range.self, forKey: .valueRange)
		valueRatio = try container.decodeIfPresent(Ratio.self, forKey: .valueRatio)
		valueReference = try container.decodeIfPresent(Reference.self, forKey: .valueReference)
		valueSampledData = try container.decodeIfPresent(SampledData.self, forKey: .valueSampledData)
		valueSignature = try container.decodeIfPresent(Signature.self, forKey: .valueSignature)
		valueString = try container.decodeIfPresent(String.self, forKey: .valueString)
		valueTime = try container.decodeIfPresent(FHIRTime.self, forKey: .valueTime)
		valueTiming = try container.decodeIfPresent(Timing.self, forKey: .valueTiming)
		valueUnsignedInt = try container.decodeIfPresent(Int.self, forKey: .valueUnsignedInt)
		valueUri = try container.decodeIfPresent(String.self, forKey: .valueUri)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Extension else {
            return false
        }

		return	url == object.url &&
			valueAddress == object.valueAddress &&
			valueAge == object.valueAge &&
			valueAnnotation == object.valueAnnotation &&
			valueAttachment == object.valueAttachment &&
			valueBase64Binary == object.valueBase64Binary &&
			valueBoolean == object.valueBoolean &&
			valueCode == object.valueCode &&
			valueCodeableConcept == object.valueCodeableConcept &&
			valueCoding == object.valueCoding &&
			valueContactPoint == object.valueContactPoint &&
			valueCount == object.valueCount &&
			valueDate == object.valueDate &&
			valueDateTime == object.valueDateTime &&
			valueDecimal == object.valueDecimal &&
			valueDistance == object.valueDistance &&
			valueDuration == object.valueDuration &&
			valueHumanName == object.valueHumanName &&
			valueId == object.valueId &&
			valueIdentifier == object.valueIdentifier &&
			valueInstant == object.valueInstant &&
			valueInteger == object.valueInteger &&
			valueMarkdown == object.valueMarkdown &&
			valueMeta == object.valueMeta &&
			valueMoney == object.valueMoney &&
			valueOid == object.valueOid &&
			valuePeriod == object.valuePeriod &&
			valuePositiveInt == object.valuePositiveInt &&
			valueQuantity == object.valueQuantity &&
			valueRange == object.valueRange &&
			valueRatio == object.valueRatio &&
			valueReference == object.valueReference &&
			valueSampledData == object.valueSampledData &&
			valueSignature == object.valueSignature &&
			valueString == object.valueString &&
			valueTime == object.valueTime &&
			valueTiming == object.valueTiming &&
			valueUnsignedInt == object.valueUnsignedInt &&
			valueUri == object.valueUri &&
			super.equal(to: to)
	}
}

extension Extension {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Extension else {
            return self
        }

        resource.url = self.url
        resource.valueAddress = self.valueAddress?.copy(with: zone) as? Address
        resource.valueAge = self.valueAge?.copy(with: zone) as? Age
        resource.valueAnnotation = self.valueAnnotation?.copy(with: zone) as? Annotation
        resource.valueAttachment = self.valueAttachment?.copy(with: zone) as? Attachment
        resource.valueBase64Binary = self.valueBase64Binary
        resource.valueBoolean = self.valueBoolean
        resource.valueCode = self.valueCode
        resource.valueCodeableConcept = self.valueCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.valueCoding = self.valueCoding?.copy(with: zone) as? Coding
        resource.valueContactPoint = self.valueContactPoint?.copy(with: zone) as? ContactPoint
        resource.valueCount = self.valueCount?.copy(with: zone) as? Count
        resource.valueDate = self.valueDate
        resource.valueDateTime = self.valueDateTime
        resource.valueDecimal = self.valueDecimal
        resource.valueDistance = self.valueDistance?.copy(with: zone) as? Distance
        resource.valueDuration = self.valueDuration?.copy(with: zone) as? Duration
        resource.valueHumanName = self.valueHumanName?.copy(with: zone) as? HumanName
        resource.valueId = self.valueId
        resource.valueIdentifier = self.valueIdentifier?.copy(with: zone) as? Identifier
        resource.valueInstant = self.valueInstant
        resource.valueInteger = self.valueInteger
        resource.valueMarkdown = self.valueMarkdown
        resource.valueMeta = self.valueMeta?.copy(with: zone) as? Meta
        resource.valueMoney = self.valueMoney?.copy(with: zone) as? Money
        resource.valueOid = self.valueOid
        resource.valuePeriod = self.valuePeriod?.copy(with: zone) as? Period
        resource.valuePositiveInt = self.valuePositiveInt
        resource.valueQuantity = self.valueQuantity?.copy(with: zone) as? Quantity
        resource.valueRange = self.valueRange?.copy(with: zone) as? Range
        resource.valueRatio = self.valueRatio?.copy(with: zone) as? Ratio
        resource.valueReference = self.valueReference?.copy(with: zone) as? Reference
        resource.valueSampledData = self.valueSampledData?.copy(with: zone) as? SampledData
        resource.valueSignature = self.valueSignature?.copy(with: zone) as? Signature
        resource.valueString = self.valueString
        resource.valueTime = self.valueTime
        resource.valueTiming = self.valueTiming?.copy(with: zone) as? Timing
        resource.valueUnsignedInt = self.valueUnsignedInt
        resource.valueUri = self.valueUri

        return resource
    }
}
