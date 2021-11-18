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
//  ElementDefinition.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ElementDefinition)
//

import Foundation

/**
Definition of an element in a resource or extension.

Captures constraints on each element within the resource, profile, or extension.
*/
open class ElementDefinition: Element {
	override open class var resourceType: String {
		get { return "ElementDefinition" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinition>] = [

        "alias" : \ElementDefinition.alias,
        "base" : \ElementDefinition.base,
        "binding" : \ElementDefinition.binding,
        "code" : \ElementDefinition.code,
        "comment" : \ElementDefinition.comment,
        "condition" : \ElementDefinition.condition,
        "constraint" : \ElementDefinition.constraint,
        "contentReference" : \ElementDefinition.contentReference,
        "defaultValueAddress" : \ElementDefinition.defaultValueAddress,
        "defaultValueAge" : \ElementDefinition.defaultValueAge,
        "defaultValueAnnotation" : \ElementDefinition.defaultValueAnnotation,
        "defaultValueAttachment" : \ElementDefinition.defaultValueAttachment,
        "defaultValueBase64Binary" : \ElementDefinition.defaultValueBase64Binary,
        "defaultValueBoolean" : \ElementDefinition.defaultValueBoolean,
        "defaultValueCode" : \ElementDefinition.defaultValueCode,
        "defaultValueCodeableConcept" : \ElementDefinition.defaultValueCodeableConcept,
        "defaultValueCoding" : \ElementDefinition.defaultValueCoding,
        "defaultValueContactPoint" : \ElementDefinition.defaultValueContactPoint,
        "defaultValueCount" : \ElementDefinition.defaultValueCount,
        "defaultValueDate" : \ElementDefinition.defaultValueDate,
        "defaultValueDateTime" : \ElementDefinition.defaultValueDateTime,
        "defaultValueDecimal" : \ElementDefinition.defaultValueDecimal,
        "defaultValueDistance" : \ElementDefinition.defaultValueDistance,
        "defaultValueDuration" : \ElementDefinition.defaultValueDuration,
        "defaultValueHumanName" : \ElementDefinition.defaultValueHumanName,
        "defaultValueId" : \ElementDefinition.defaultValueId,
        "defaultValueIdentifier" : \ElementDefinition.defaultValueIdentifier,
        "defaultValueInstant" : \ElementDefinition.defaultValueInstant,
        "defaultValueInteger" : \ElementDefinition.defaultValueInteger,
        "defaultValueMarkdown" : \ElementDefinition.defaultValueMarkdown,
        "defaultValueMeta" : \ElementDefinition.defaultValueMeta,
        "defaultValueMoney" : \ElementDefinition.defaultValueMoney,
        "defaultValueOid" : \ElementDefinition.defaultValueOid,
        "defaultValuePeriod" : \ElementDefinition.defaultValuePeriod,
        "defaultValuePositiveInt" : \ElementDefinition.defaultValuePositiveInt,
        "defaultValueQuantity" : \ElementDefinition.defaultValueQuantity,
        "defaultValueRange" : \ElementDefinition.defaultValueRange,
        "defaultValueRatio" : \ElementDefinition.defaultValueRatio,
        "defaultValueReference" : \ElementDefinition.defaultValueReference,
        "defaultValueSampledData" : \ElementDefinition.defaultValueSampledData,
        "defaultValueSignature" : \ElementDefinition.defaultValueSignature,
        "defaultValueString" : \ElementDefinition.defaultValueString,
        "defaultValueTime" : \ElementDefinition.defaultValueTime,
        "defaultValueTiming" : \ElementDefinition.defaultValueTiming,
        "defaultValueUnsignedInt" : \ElementDefinition.defaultValueUnsignedInt,
        "defaultValueUri" : \ElementDefinition.defaultValueUri,
        "definition" : \ElementDefinition.definition,
        "example" : \ElementDefinition.example,
        "fixedAddress" : \ElementDefinition.fixedAddress,
        "fixedAge" : \ElementDefinition.fixedAge,
        "fixedAnnotation" : \ElementDefinition.fixedAnnotation,
        "fixedAttachment" : \ElementDefinition.fixedAttachment,
        "fixedBase64Binary" : \ElementDefinition.fixedBase64Binary,
        "fixedBoolean" : \ElementDefinition.fixedBoolean,
        "fixedCode" : \ElementDefinition.fixedCode,
        "fixedCodeableConcept" : \ElementDefinition.fixedCodeableConcept,
        "fixedCoding" : \ElementDefinition.fixedCoding,
        "fixedContactPoint" : \ElementDefinition.fixedContactPoint,
        "fixedCount" : \ElementDefinition.fixedCount,
        "fixedDate" : \ElementDefinition.fixedDate,
        "fixedDateTime" : \ElementDefinition.fixedDateTime,
        "fixedDecimal" : \ElementDefinition.fixedDecimal,
        "fixedDistance" : \ElementDefinition.fixedDistance,
        "fixedDuration" : \ElementDefinition.fixedDuration,
        "fixedHumanName" : \ElementDefinition.fixedHumanName,
        "fixedId" : \ElementDefinition.fixedId,
        "fixedIdentifier" : \ElementDefinition.fixedIdentifier,
        "fixedInstant" : \ElementDefinition.fixedInstant,
        "fixedInteger" : \ElementDefinition.fixedInteger,
        "fixedMarkdown" : \ElementDefinition.fixedMarkdown,
        "fixedMeta" : \ElementDefinition.fixedMeta,
        "fixedMoney" : \ElementDefinition.fixedMoney,
        "fixedOid" : \ElementDefinition.fixedOid,
        "fixedPeriod" : \ElementDefinition.fixedPeriod,
        "fixedPositiveInt" : \ElementDefinition.fixedPositiveInt,
        "fixedQuantity" : \ElementDefinition.fixedQuantity,
        "fixedRange" : \ElementDefinition.fixedRange,
        "fixedRatio" : \ElementDefinition.fixedRatio,
        "fixedReference" : \ElementDefinition.fixedReference,
        "fixedSampledData" : \ElementDefinition.fixedSampledData,
        "fixedSignature" : \ElementDefinition.fixedSignature,
        "fixedString" : \ElementDefinition.fixedString,
        "fixedTime" : \ElementDefinition.fixedTime,
        "fixedTiming" : \ElementDefinition.fixedTiming,
        "fixedUnsignedInt" : \ElementDefinition.fixedUnsignedInt,
        "fixedUri" : \ElementDefinition.fixedUri,
        "isModifier" : \ElementDefinition.isModifier,
        "isSummary" : \ElementDefinition.isSummary,
        "label" : \ElementDefinition.label,
        "mapping" : \ElementDefinition.mapping,
        "max" : \ElementDefinition.max,
        "maxLength" : \ElementDefinition.maxLength,
        "maxValueDate" : \ElementDefinition.maxValueDate,
        "maxValueDateTime" : \ElementDefinition.maxValueDateTime,
        "maxValueDecimal" : \ElementDefinition.maxValueDecimal,
        "maxValueInstant" : \ElementDefinition.maxValueInstant,
        "maxValueInteger" : \ElementDefinition.maxValueInteger,
        "maxValuePositiveInt" : \ElementDefinition.maxValuePositiveInt,
        "maxValueQuantity" : \ElementDefinition.maxValueQuantity,
        "maxValueTime" : \ElementDefinition.maxValueTime,
        "maxValueUnsignedInt" : \ElementDefinition.maxValueUnsignedInt,
        "meaningWhenMissing" : \ElementDefinition.meaningWhenMissing,
        "min" : \ElementDefinition.min,
        "minValueDate" : \ElementDefinition.minValueDate,
        "minValueDateTime" : \ElementDefinition.minValueDateTime,
        "minValueDecimal" : \ElementDefinition.minValueDecimal,
        "minValueInstant" : \ElementDefinition.minValueInstant,
        "minValueInteger" : \ElementDefinition.minValueInteger,
        "minValuePositiveInt" : \ElementDefinition.minValuePositiveInt,
        "minValueQuantity" : \ElementDefinition.minValueQuantity,
        "minValueTime" : \ElementDefinition.minValueTime,
        "minValueUnsignedInt" : \ElementDefinition.minValueUnsignedInt,
        "mustSupport" : \ElementDefinition.mustSupport,
        "orderMeaning" : \ElementDefinition.orderMeaning,
        "path" : \ElementDefinition.path,
        "patternAddress" : \ElementDefinition.patternAddress,
        "patternAge" : \ElementDefinition.patternAge,
        "patternAnnotation" : \ElementDefinition.patternAnnotation,
        "patternAttachment" : \ElementDefinition.patternAttachment,
        "patternBase64Binary" : \ElementDefinition.patternBase64Binary,
        "patternBoolean" : \ElementDefinition.patternBoolean,
        "patternCode" : \ElementDefinition.patternCode,
        "patternCodeableConcept" : \ElementDefinition.patternCodeableConcept,
        "patternCoding" : \ElementDefinition.patternCoding,
        "patternContactPoint" : \ElementDefinition.patternContactPoint,
        "patternCount" : \ElementDefinition.patternCount,
        "patternDate" : \ElementDefinition.patternDate,
        "patternDateTime" : \ElementDefinition.patternDateTime,
        "patternDecimal" : \ElementDefinition.patternDecimal,
        "patternDistance" : \ElementDefinition.patternDistance,
        "patternDuration" : \ElementDefinition.patternDuration,
        "patternHumanName" : \ElementDefinition.patternHumanName,
        "patternId" : \ElementDefinition.patternId,
        "patternIdentifier" : \ElementDefinition.patternIdentifier,
        "patternInstant" : \ElementDefinition.patternInstant,
        "patternInteger" : \ElementDefinition.patternInteger,
        "patternMarkdown" : \ElementDefinition.patternMarkdown,
        "patternMeta" : \ElementDefinition.patternMeta,
        "patternMoney" : \ElementDefinition.patternMoney,
        "patternOid" : \ElementDefinition.patternOid,
        "patternPeriod" : \ElementDefinition.patternPeriod,
        "patternPositiveInt" : \ElementDefinition.patternPositiveInt,
        "patternQuantity" : \ElementDefinition.patternQuantity,
        "patternRange" : \ElementDefinition.patternRange,
        "patternRatio" : \ElementDefinition.patternRatio,
        "patternReference" : \ElementDefinition.patternReference,
        "patternSampledData" : \ElementDefinition.patternSampledData,
        "patternSignature" : \ElementDefinition.patternSignature,
        "patternString" : \ElementDefinition.patternString,
        "patternTime" : \ElementDefinition.patternTime,
        "patternTiming" : \ElementDefinition.patternTiming,
        "patternUnsignedInt" : \ElementDefinition.patternUnsignedInt,
        "patternUri" : \ElementDefinition.patternUri,
        "representation" : \ElementDefinition.representation,
        "requirements" : \ElementDefinition.requirements,
        "short" : \ElementDefinition.short,
        "sliceName" : \ElementDefinition.sliceName,
        "slicing" : \ElementDefinition.slicing,
        "type" : \ElementDefinition.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinition.keyPaths[name] as? KeyPath<ElementDefinition, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinition.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Other names.
	public var alias: [String]?

	/// Base definition information for tools.
	public var base: ElementDefinitionBase?

	/// ValueSet details if this is coded.
	public var binding: ElementDefinitionBinding?

	/// Corresponding codes in terminologies.
	public var code: [Coding]?

	/// Comments about the use of this element.
	public var comment: String?

	/// Reference to invariant about presence.
	public var condition: [String]?

	/// Condition that must evaluate to true.
	public var constraint: [ElementDefinitionConstraint]?

	/// Reference to definition of content for the element.
	public var contentReference: String?

	/// Specified value if missing from instance.
	public var defaultValueAddress: Address?

	/// Specified value if missing from instance.
	public var defaultValueAge: Age?

	/// Specified value if missing from instance.
	public var defaultValueAnnotation: Annotation?

	/// Specified value if missing from instance.
	public var defaultValueAttachment: Attachment?

	/// Specified value if missing from instance.
	public var defaultValueBase64Binary: String?

	/// Specified value if missing from instance.
	public var defaultValueBoolean: Bool?

	/// Specified value if missing from instance.
	public var defaultValueCode: String?

	/// Specified value if missing from instance.
	public var defaultValueCodeableConcept: CodeableConcept?

	/// Specified value if missing from instance.
	public var defaultValueCoding: Coding?

	/// Specified value if missing from instance.
	public var defaultValueContactPoint: ContactPoint?

	/// Specified value if missing from instance.
	public var defaultValueCount: Count?

	/// Specified value if missing from instance.
	public var defaultValueDate: FHIRDate?

	/// Specified value if missing from instance.
	public var defaultValueDateTime: DateTime?

	/// Specified value if missing from instance.
	public var defaultValueDecimal: Float?

	/// Specified value if missing from instance.
	public var defaultValueDistance: Distance?

	/// Specified value if missing from instance.
	public var defaultValueDuration: Duration?

	/// Specified value if missing from instance.
	public var defaultValueHumanName: HumanName?

	/// Specified value if missing from instance.
	public var defaultValueId: String?

	/// Specified value if missing from instance.
	public var defaultValueIdentifier: Identifier?

	/// Specified value if missing from instance.
	public var defaultValueInstant: Instant?

	/// Specified value if missing from instance.
	public var defaultValueInteger: Int?

	/// Specified value if missing from instance.
	public var defaultValueMarkdown: String?

	/// Specified value if missing from instance.
	public var defaultValueMeta: Meta?

	/// Specified value if missing from instance.
	public var defaultValueMoney: Money?

	/// Specified value if missing from instance.
	public var defaultValueOid: URL?

	/// Specified value if missing from instance.
	public var defaultValuePeriod: Period?

	/// Specified value if missing from instance.
	public var defaultValuePositiveInt: Int?

	/// Specified value if missing from instance.
	public var defaultValueQuantity: Quantity?

	/// Specified value if missing from instance.
	public var defaultValueRange: Range?

	/// Specified value if missing from instance.
	public var defaultValueRatio: Ratio?

	/// Specified value if missing from instance.
	public var defaultValueReference: Reference?

	/// Specified value if missing from instance.
	public var defaultValueSampledData: SampledData?

	/// Specified value if missing from instance.
	public var defaultValueSignature: Signature?

	/// Specified value if missing from instance.
	public var defaultValueString: String?

	/// Specified value if missing from instance.
	public var defaultValueTime: FHIRTime?

	/// Specified value if missing from instance.
	public var defaultValueTiming: Timing?

	/// Specified value if missing from instance.
	public var defaultValueUnsignedInt: Int?

	/// Specified value if missing from instance.
	public var defaultValueUri: String?

	/// Full formal definition as narrative text.
	public var definition: String?

	/// Example value (as defined for type).
	public var example: [ElementDefinitionExample]?

	/// Value must be exactly this.
	public var fixedAddress: Address?

	/// Value must be exactly this.
	public var fixedAge: Age?

	/// Value must be exactly this.
	public var fixedAnnotation: Annotation?

	/// Value must be exactly this.
	public var fixedAttachment: Attachment?

	/// Value must be exactly this.
	public var fixedBase64Binary: String?

	/// Value must be exactly this.
	public var fixedBoolean: Bool?

	/// Value must be exactly this.
	public var fixedCode: String?

	/// Value must be exactly this.
	public var fixedCodeableConcept: CodeableConcept?

	/// Value must be exactly this.
	public var fixedCoding: Coding?

	/// Value must be exactly this.
	public var fixedContactPoint: ContactPoint?

	/// Value must be exactly this.
	public var fixedCount: Count?

	/// Value must be exactly this.
	public var fixedDate: FHIRDate?

	/// Value must be exactly this.
	public var fixedDateTime: DateTime?

	/// Value must be exactly this.
	public var fixedDecimal: Float?

	/// Value must be exactly this.
	public var fixedDistance: Distance?

	/// Value must be exactly this.
	public var fixedDuration: Duration?

	/// Value must be exactly this.
	public var fixedHumanName: HumanName?

	/// Value must be exactly this.
	public var fixedId: String?

	/// Value must be exactly this.
	public var fixedIdentifier: Identifier?

	/// Value must be exactly this.
	public var fixedInstant: Instant?

	/// Value must be exactly this.
	public var fixedInteger: Int?

	/// Value must be exactly this.
	public var fixedMarkdown: String?

	/// Value must be exactly this.
	public var fixedMeta: Meta?

	/// Value must be exactly this.
	public var fixedMoney: Money?

	/// Value must be exactly this.
	public var fixedOid: URL?

	/// Value must be exactly this.
	public var fixedPeriod: Period?

	/// Value must be exactly this.
	public var fixedPositiveInt: Int?

	/// Value must be exactly this.
	public var fixedQuantity: Quantity?

	/// Value must be exactly this.
	public var fixedRange: Range?

	/// Value must be exactly this.
	public var fixedRatio: Ratio?

	/// Value must be exactly this.
	public var fixedReference: Reference?

	/// Value must be exactly this.
	public var fixedSampledData: SampledData?

	/// Value must be exactly this.
	public var fixedSignature: Signature?

	/// Value must be exactly this.
	public var fixedString: String?

	/// Value must be exactly this.
	public var fixedTime: FHIRTime?

	/// Value must be exactly this.
	public var fixedTiming: Timing?

	/// Value must be exactly this.
	public var fixedUnsignedInt: Int?

	/// Value must be exactly this.
	public var fixedUri: String?

	/// If this modifies the meaning of other elements.
	public var isModifier: Bool?

	/// Include when _summary = true?.
	public var isSummary: Bool?

	/// Name for element to display with or prompt for element.
	public var label: String?

	/// Map element to another set of definitions.
	public var mapping: [ElementDefinitionMapping]?

	/// Maximum Cardinality (a number or *).
	public var max: String?

	/// Max length for strings.
	public var maxLength: Int?

	/// Maximum Allowed Value (for some types).
	public var maxValueDate: FHIRDate?

	/// Maximum Allowed Value (for some types).
	public var maxValueDateTime: DateTime?

	/// Maximum Allowed Value (for some types).
	public var maxValueDecimal: Float?

	/// Maximum Allowed Value (for some types).
	public var maxValueInstant: Instant?

	/// Maximum Allowed Value (for some types).
	public var maxValueInteger: Int?

	/// Maximum Allowed Value (for some types).
	public var maxValuePositiveInt: Int?

	/// Maximum Allowed Value (for some types).
	public var maxValueQuantity: Quantity?

	/// Maximum Allowed Value (for some types).
	public var maxValueTime: FHIRTime?

	/// Maximum Allowed Value (for some types).
	public var maxValueUnsignedInt: Int?

	/// Implicit meaning when this element is missing.
	public var meaningWhenMissing: String?

	/// Minimum Cardinality.
	public var min: Int?

	/// Minimum Allowed Value (for some types).
	public var minValueDate: FHIRDate?

	/// Minimum Allowed Value (for some types).
	public var minValueDateTime: DateTime?

	/// Minimum Allowed Value (for some types).
	public var minValueDecimal: Float?

	/// Minimum Allowed Value (for some types).
	public var minValueInstant: Instant?

	/// Minimum Allowed Value (for some types).
	public var minValueInteger: Int?

	/// Minimum Allowed Value (for some types).
	public var minValuePositiveInt: Int?

	/// Minimum Allowed Value (for some types).
	public var minValueQuantity: Quantity?

	/// Minimum Allowed Value (for some types).
	public var minValueTime: FHIRTime?

	/// Minimum Allowed Value (for some types).
	public var minValueUnsignedInt: Int?

	/// If the element must supported.
	public var mustSupport: Bool?

	/// What the order of the elements means.
	public var orderMeaning: String?

	/// Path of the element in the hierarchy of elements.
	public var path: String?

	/// Value must have at least these property values.
	public var patternAddress: Address?

	/// Value must have at least these property values.
	public var patternAge: Age?

	/// Value must have at least these property values.
	public var patternAnnotation: Annotation?

	/// Value must have at least these property values.
	public var patternAttachment: Attachment?

	/// Value must have at least these property values.
	public var patternBase64Binary: String?

	/// Value must have at least these property values.
	public var patternBoolean: Bool?

	/// Value must have at least these property values.
	public var patternCode: String?

	/// Value must have at least these property values.
	public var patternCodeableConcept: CodeableConcept?

	/// Value must have at least these property values.
	public var patternCoding: Coding?

	/// Value must have at least these property values.
	public var patternContactPoint: ContactPoint?

	/// Value must have at least these property values.
	public var patternCount: Count?

	/// Value must have at least these property values.
	public var patternDate: FHIRDate?

	/// Value must have at least these property values.
	public var patternDateTime: DateTime?

	/// Value must have at least these property values.
	public var patternDecimal: Float?

	/// Value must have at least these property values.
	public var patternDistance: Distance?

	/// Value must have at least these property values.
	public var patternDuration: Duration?

	/// Value must have at least these property values.
	public var patternHumanName: HumanName?

	/// Value must have at least these property values.
	public var patternId: String?

	/// Value must have at least these property values.
	public var patternIdentifier: Identifier?

	/// Value must have at least these property values.
	public var patternInstant: Instant?

	/// Value must have at least these property values.
	public var patternInteger: Int?

	/// Value must have at least these property values.
	public var patternMarkdown: String?

	/// Value must have at least these property values.
	public var patternMeta: Meta?

	/// Value must have at least these property values.
	public var patternMoney: Money?

	/// Value must have at least these property values.
	public var patternOid: URL?

	/// Value must have at least these property values.
	public var patternPeriod: Period?

	/// Value must have at least these property values.
	public var patternPositiveInt: Int?

	/// Value must have at least these property values.
	public var patternQuantity: Quantity?

	/// Value must have at least these property values.
	public var patternRange: Range?

	/// Value must have at least these property values.
	public var patternRatio: Ratio?

	/// Value must have at least these property values.
	public var patternReference: Reference?

	/// Value must have at least these property values.
	public var patternSampledData: SampledData?

	/// Value must have at least these property values.
	public var patternSignature: Signature?

	/// Value must have at least these property values.
	public var patternString: String?

	/// Value must have at least these property values.
	public var patternTime: FHIRTime?

	/// Value must have at least these property values.
	public var patternTiming: Timing?

	/// Value must have at least these property values.
	public var patternUnsignedInt: Int?

	/// Value must have at least these property values.
	public var patternUri: String?

	/// Codes that define how this element is represented in instances, when the deviation varies from the normal case.
	public var representation: [PropertyRepresentation]?

	/// Why this resource has been created.
	public var requirements: String?

	/// Concise definition for space-constrained presentation.
	public var short: String?

	/// Name for this particular element (in a set of slices).
	public var sliceName: String?

	/// This element is sliced - slices follow.
	public var slicing: ElementDefinitionSlicing?

	/// Data type and Profile for this element.
	public var type: [ElementDefinitionType]?

	enum ElementDefinitionKeys: String, CodingKey {
		case alias
		case base
		case binding
		case code
		case comment
		case condition
		case constraint
		case contentReference
		case defaultValueAddress
		case defaultValueAge
		case defaultValueAnnotation
		case defaultValueAttachment
		case defaultValueBase64Binary
		case defaultValueBoolean
		case defaultValueCode
		case defaultValueCodeableConcept
		case defaultValueCoding
		case defaultValueContactPoint
		case defaultValueCount
		case defaultValueDate
		case defaultValueDateTime
		case defaultValueDecimal
		case defaultValueDistance
		case defaultValueDuration
		case defaultValueHumanName
		case defaultValueId
		case defaultValueIdentifier
		case defaultValueInstant
		case defaultValueInteger
		case defaultValueMarkdown
		case defaultValueMeta
		case defaultValueMoney
		case defaultValueOid
		case defaultValuePeriod
		case defaultValuePositiveInt
		case defaultValueQuantity
		case defaultValueRange
		case defaultValueRatio
		case defaultValueReference
		case defaultValueSampledData
		case defaultValueSignature
		case defaultValueString
		case defaultValueTime
		case defaultValueTiming
		case defaultValueUnsignedInt
		case defaultValueUri
		case definition
		case example
		case fixedAddress
		case fixedAge
		case fixedAnnotation
		case fixedAttachment
		case fixedBase64Binary
		case fixedBoolean
		case fixedCode
		case fixedCodeableConcept
		case fixedCoding
		case fixedContactPoint
		case fixedCount
		case fixedDate
		case fixedDateTime
		case fixedDecimal
		case fixedDistance
		case fixedDuration
		case fixedHumanName
		case fixedId
		case fixedIdentifier
		case fixedInstant
		case fixedInteger
		case fixedMarkdown
		case fixedMeta
		case fixedMoney
		case fixedOid
		case fixedPeriod
		case fixedPositiveInt
		case fixedQuantity
		case fixedRange
		case fixedRatio
		case fixedReference
		case fixedSampledData
		case fixedSignature
		case fixedString
		case fixedTime
		case fixedTiming
		case fixedUnsignedInt
		case fixedUri
		case isModifier
		case isSummary
		case label
		case mapping
		case max
		case maxLength
		case maxValueDate
		case maxValueDateTime
		case maxValueDecimal
		case maxValueInstant
		case maxValueInteger
		case maxValuePositiveInt
		case maxValueQuantity
		case maxValueTime
		case maxValueUnsignedInt
		case meaningWhenMissing
		case min
		case minValueDate
		case minValueDateTime
		case minValueDecimal
		case minValueInstant
		case minValueInteger
		case minValuePositiveInt
		case minValueQuantity
		case minValueTime
		case minValueUnsignedInt
		case mustSupport
		case orderMeaning
		case path
		case patternAddress
		case patternAge
		case patternAnnotation
		case patternAttachment
		case patternBase64Binary
		case patternBoolean
		case patternCode
		case patternCodeableConcept
		case patternCoding
		case patternContactPoint
		case patternCount
		case patternDate
		case patternDateTime
		case patternDecimal
		case patternDistance
		case patternDuration
		case patternHumanName
		case patternId
		case patternIdentifier
		case patternInstant
		case patternInteger
		case patternMarkdown
		case patternMeta
		case patternMoney
		case patternOid
		case patternPeriod
		case patternPositiveInt
		case patternQuantity
		case patternRange
		case patternRatio
		case patternReference
		case patternSampledData
		case patternSignature
		case patternString
		case patternTime
		case patternTiming
		case patternUnsignedInt
		case patternUri
		case representation
		case requirements
		case short
		case sliceName
		case slicing
		case type
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(path: String) {
		self.init()
		self.path = path
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionKeys.self)
		if let item = path {
			try container.encode(item, forKey: .path)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("path")
		}
		try container.encodeArrayIfPresent(alias, forKey: .alias)
		try container.encodeIfPresent(base, forKey: .base)
		try container.encodeIfPresent(binding, forKey: .binding)
		try container.encodeArrayIfPresent(code, forKey: .code)
		try container.encodeIfPresent(comment, forKey: .comment)
		try container.encodeArrayIfPresent(condition, forKey: .condition)
		try container.encodeArrayIfPresent(constraint, forKey: .constraint)
		try container.encodeIfPresent(contentReference, forKey: .contentReference)
		try container.encodeIfPresent(defaultValueAddress, forKey: .defaultValueAddress)
		try container.encodeIfPresent(defaultValueAge, forKey: .defaultValueAge)
		try container.encodeIfPresent(defaultValueAnnotation, forKey: .defaultValueAnnotation)
		try container.encodeIfPresent(defaultValueAttachment, forKey: .defaultValueAttachment)
		try container.encodeIfPresent(defaultValueBase64Binary, forKey: .defaultValueBase64Binary)
		try container.encodeIfPresent(defaultValueBoolean, forKey: .defaultValueBoolean)
		try container.encodeIfPresent(defaultValueCode, forKey: .defaultValueCode)
		try container.encodeIfPresent(defaultValueCodeableConcept, forKey: .defaultValueCodeableConcept)
		try container.encodeIfPresent(defaultValueCoding, forKey: .defaultValueCoding)
		try container.encodeIfPresent(defaultValueContactPoint, forKey: .defaultValueContactPoint)
		try container.encodeIfPresent(defaultValueCount, forKey: .defaultValueCount)
		try container.encodeIfPresent(defaultValueDate, forKey: .defaultValueDate)
		try container.encodeIfPresent(defaultValueDateTime, forKey: .defaultValueDateTime)
		try container.encodeIfPresent(defaultValueDecimal, forKey: .defaultValueDecimal)
		try container.encodeIfPresent(defaultValueDistance, forKey: .defaultValueDistance)
		try container.encodeIfPresent(defaultValueDuration, forKey: .defaultValueDuration)
		try container.encodeIfPresent(defaultValueHumanName, forKey: .defaultValueHumanName)
		try container.encodeIfPresent(defaultValueId, forKey: .defaultValueId)
		try container.encodeIfPresent(defaultValueIdentifier, forKey: .defaultValueIdentifier)
		try container.encodeIfPresent(defaultValueInstant, forKey: .defaultValueInstant)
		try container.encodeIfPresent(defaultValueInteger, forKey: .defaultValueInteger)
		try container.encodeIfPresent(defaultValueMarkdown, forKey: .defaultValueMarkdown)
		try container.encodeIfPresent(defaultValueMeta, forKey: .defaultValueMeta)
		try container.encodeIfPresent(defaultValueMoney, forKey: .defaultValueMoney)
		try container.encodeIfPresent(defaultValueOid, forKey: .defaultValueOid)
		try container.encodeIfPresent(defaultValuePeriod, forKey: .defaultValuePeriod)
		try container.encodeIfPresent(defaultValuePositiveInt, forKey: .defaultValuePositiveInt)
		try container.encodeIfPresent(defaultValueQuantity, forKey: .defaultValueQuantity)
		try container.encodeIfPresent(defaultValueRange, forKey: .defaultValueRange)
		try container.encodeIfPresent(defaultValueRatio, forKey: .defaultValueRatio)
		try container.encodeIfPresent(defaultValueReference, forKey: .defaultValueReference)
		try container.encodeIfPresent(defaultValueSampledData, forKey: .defaultValueSampledData)
		try container.encodeIfPresent(defaultValueSignature, forKey: .defaultValueSignature)
		try container.encodeIfPresent(defaultValueString, forKey: .defaultValueString)
		try container.encodeIfPresent(defaultValueTime, forKey: .defaultValueTime)
		try container.encodeIfPresent(defaultValueTiming, forKey: .defaultValueTiming)
		try container.encodeIfPresent(defaultValueUnsignedInt, forKey: .defaultValueUnsignedInt)
		try container.encodeIfPresent(defaultValueUri, forKey: .defaultValueUri)
		try container.encodeIfPresent(definition, forKey: .definition)
		try container.encodeArrayIfPresent(example, forKey: .example)
		try container.encodeIfPresent(fixedAddress, forKey: .fixedAddress)
		try container.encodeIfPresent(fixedAge, forKey: .fixedAge)
		try container.encodeIfPresent(fixedAnnotation, forKey: .fixedAnnotation)
		try container.encodeIfPresent(fixedAttachment, forKey: .fixedAttachment)
		try container.encodeIfPresent(fixedBase64Binary, forKey: .fixedBase64Binary)
		try container.encodeIfPresent(fixedBoolean, forKey: .fixedBoolean)
		try container.encodeIfPresent(fixedCode, forKey: .fixedCode)
		try container.encodeIfPresent(fixedCodeableConcept, forKey: .fixedCodeableConcept)
		try container.encodeIfPresent(fixedCoding, forKey: .fixedCoding)
		try container.encodeIfPresent(fixedContactPoint, forKey: .fixedContactPoint)
		try container.encodeIfPresent(fixedCount, forKey: .fixedCount)
		try container.encodeIfPresent(fixedDate, forKey: .fixedDate)
		try container.encodeIfPresent(fixedDateTime, forKey: .fixedDateTime)
		try container.encodeIfPresent(fixedDecimal, forKey: .fixedDecimal)
		try container.encodeIfPresent(fixedDistance, forKey: .fixedDistance)
		try container.encodeIfPresent(fixedDuration, forKey: .fixedDuration)
		try container.encodeIfPresent(fixedHumanName, forKey: .fixedHumanName)
		try container.encodeIfPresent(fixedId, forKey: .fixedId)
		try container.encodeIfPresent(fixedIdentifier, forKey: .fixedIdentifier)
		try container.encodeIfPresent(fixedInstant, forKey: .fixedInstant)
		try container.encodeIfPresent(fixedInteger, forKey: .fixedInteger)
		try container.encodeIfPresent(fixedMarkdown, forKey: .fixedMarkdown)
		try container.encodeIfPresent(fixedMeta, forKey: .fixedMeta)
		try container.encodeIfPresent(fixedMoney, forKey: .fixedMoney)
		try container.encodeIfPresent(fixedOid, forKey: .fixedOid)
		try container.encodeIfPresent(fixedPeriod, forKey: .fixedPeriod)
		try container.encodeIfPresent(fixedPositiveInt, forKey: .fixedPositiveInt)
		try container.encodeIfPresent(fixedQuantity, forKey: .fixedQuantity)
		try container.encodeIfPresent(fixedRange, forKey: .fixedRange)
		try container.encodeIfPresent(fixedRatio, forKey: .fixedRatio)
		try container.encodeIfPresent(fixedReference, forKey: .fixedReference)
		try container.encodeIfPresent(fixedSampledData, forKey: .fixedSampledData)
		try container.encodeIfPresent(fixedSignature, forKey: .fixedSignature)
		try container.encodeIfPresent(fixedString, forKey: .fixedString)
		try container.encodeIfPresent(fixedTime, forKey: .fixedTime)
		try container.encodeIfPresent(fixedTiming, forKey: .fixedTiming)
		try container.encodeIfPresent(fixedUnsignedInt, forKey: .fixedUnsignedInt)
		try container.encodeIfPresent(fixedUri, forKey: .fixedUri)
		try container.encodeIfPresent(isModifier, forKey: .isModifier)
		try container.encodeIfPresent(isSummary, forKey: .isSummary)
		try container.encodeIfPresent(label, forKey: .label)
		try container.encodeArrayIfPresent(mapping, forKey: .mapping)
		try container.encodeIfPresent(max, forKey: .max)
		try container.encodeIfPresent(maxLength, forKey: .maxLength)
		try container.encodeIfPresent(maxValueDate, forKey: .maxValueDate)
		try container.encodeIfPresent(maxValueDateTime, forKey: .maxValueDateTime)
		try container.encodeIfPresent(maxValueDecimal, forKey: .maxValueDecimal)
		try container.encodeIfPresent(maxValueInstant, forKey: .maxValueInstant)
		try container.encodeIfPresent(maxValueInteger, forKey: .maxValueInteger)
		try container.encodeIfPresent(maxValuePositiveInt, forKey: .maxValuePositiveInt)
		try container.encodeIfPresent(maxValueQuantity, forKey: .maxValueQuantity)
		try container.encodeIfPresent(maxValueTime, forKey: .maxValueTime)
		try container.encodeIfPresent(maxValueUnsignedInt, forKey: .maxValueUnsignedInt)
		try container.encodeIfPresent(meaningWhenMissing, forKey: .meaningWhenMissing)
		try container.encodeIfPresent(min, forKey: .min)
		try container.encodeIfPresent(minValueDate, forKey: .minValueDate)
		try container.encodeIfPresent(minValueDateTime, forKey: .minValueDateTime)
		try container.encodeIfPresent(minValueDecimal, forKey: .minValueDecimal)
		try container.encodeIfPresent(minValueInstant, forKey: .minValueInstant)
		try container.encodeIfPresent(minValueInteger, forKey: .minValueInteger)
		try container.encodeIfPresent(minValuePositiveInt, forKey: .minValuePositiveInt)
		try container.encodeIfPresent(minValueQuantity, forKey: .minValueQuantity)
		try container.encodeIfPresent(minValueTime, forKey: .minValueTime)
		try container.encodeIfPresent(minValueUnsignedInt, forKey: .minValueUnsignedInt)
		try container.encodeIfPresent(mustSupport, forKey: .mustSupport)
		try container.encodeIfPresent(orderMeaning, forKey: .orderMeaning)
		try container.encodeIfPresent(patternAddress, forKey: .patternAddress)
		try container.encodeIfPresent(patternAge, forKey: .patternAge)
		try container.encodeIfPresent(patternAnnotation, forKey: .patternAnnotation)
		try container.encodeIfPresent(patternAttachment, forKey: .patternAttachment)
		try container.encodeIfPresent(patternBase64Binary, forKey: .patternBase64Binary)
		try container.encodeIfPresent(patternBoolean, forKey: .patternBoolean)
		try container.encodeIfPresent(patternCode, forKey: .patternCode)
		try container.encodeIfPresent(patternCodeableConcept, forKey: .patternCodeableConcept)
		try container.encodeIfPresent(patternCoding, forKey: .patternCoding)
		try container.encodeIfPresent(patternContactPoint, forKey: .patternContactPoint)
		try container.encodeIfPresent(patternCount, forKey: .patternCount)
		try container.encodeIfPresent(patternDate, forKey: .patternDate)
		try container.encodeIfPresent(patternDateTime, forKey: .patternDateTime)
		try container.encodeIfPresent(patternDecimal, forKey: .patternDecimal)
		try container.encodeIfPresent(patternDistance, forKey: .patternDistance)
		try container.encodeIfPresent(patternDuration, forKey: .patternDuration)
		try container.encodeIfPresent(patternHumanName, forKey: .patternHumanName)
		try container.encodeIfPresent(patternId, forKey: .patternId)
		try container.encodeIfPresent(patternIdentifier, forKey: .patternIdentifier)
		try container.encodeIfPresent(patternInstant, forKey: .patternInstant)
		try container.encodeIfPresent(patternInteger, forKey: .patternInteger)
		try container.encodeIfPresent(patternMarkdown, forKey: .patternMarkdown)
		try container.encodeIfPresent(patternMeta, forKey: .patternMeta)
		try container.encodeIfPresent(patternMoney, forKey: .patternMoney)
		try container.encodeIfPresent(patternOid, forKey: .patternOid)
		try container.encodeIfPresent(patternPeriod, forKey: .patternPeriod)
		try container.encodeIfPresent(patternPositiveInt, forKey: .patternPositiveInt)
		try container.encodeIfPresent(patternQuantity, forKey: .patternQuantity)
		try container.encodeIfPresent(patternRange, forKey: .patternRange)
		try container.encodeIfPresent(patternRatio, forKey: .patternRatio)
		try container.encodeIfPresent(patternReference, forKey: .patternReference)
		try container.encodeIfPresent(patternSampledData, forKey: .patternSampledData)
		try container.encodeIfPresent(patternSignature, forKey: .patternSignature)
		try container.encodeIfPresent(patternString, forKey: .patternString)
		try container.encodeIfPresent(patternTime, forKey: .patternTime)
		try container.encodeIfPresent(patternTiming, forKey: .patternTiming)
		try container.encodeIfPresent(patternUnsignedInt, forKey: .patternUnsignedInt)
		try container.encodeIfPresent(patternUri, forKey: .patternUri)
		try container.encodeArrayIfPresent(representation, forKey: .representation)
		try container.encodeIfPresent(requirements, forKey: .requirements)
		try container.encodeIfPresent(short, forKey: .short)
		try container.encodeIfPresent(sliceName, forKey: .sliceName)
		try container.encodeIfPresent(slicing, forKey: .slicing)
		try container.encodeArrayIfPresent(type, forKey: .type)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementDefinitionKeys.self)
		path = try container.decode(String.self, forKey: .path)
		alias = try container.decodeArrayIfPresent([String].self, forKey: .alias)
		base = try container.decodeIfPresent(ElementDefinitionBase.self, forKey: .base)
		binding = try container.decodeIfPresent(ElementDefinitionBinding.self, forKey: .binding)
		code = try container.decodeArrayIfPresent([Coding].self, forKey: .code)
		comment = try container.decodeIfPresent(String.self, forKey: .comment)
		condition = try container.decodeArrayIfPresent([String].self, forKey: .condition)
		constraint = try container.decodeArrayIfPresent([ElementDefinitionConstraint].self, forKey: .constraint)
		contentReference = try container.decodeIfPresent(String.self, forKey: .contentReference)
		defaultValueAddress = try container.decodeIfPresent(Address.self, forKey: .defaultValueAddress)
		defaultValueAge = try container.decodeIfPresent(Age.self, forKey: .defaultValueAge)
		defaultValueAnnotation = try container.decodeIfPresent(Annotation.self, forKey: .defaultValueAnnotation)
		defaultValueAttachment = try container.decodeIfPresent(Attachment.self, forKey: .defaultValueAttachment)
		defaultValueBase64Binary = try container.decodeIfPresent(String.self, forKey: .defaultValueBase64Binary)
		defaultValueBoolean = try container.decodeIfPresent(Bool.self, forKey: .defaultValueBoolean)
		defaultValueCode = try container.decodeIfPresent(String.self, forKey: .defaultValueCode)
		defaultValueCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .defaultValueCodeableConcept)
		defaultValueCoding = try container.decodeIfPresent(Coding.self, forKey: .defaultValueCoding)
		defaultValueContactPoint = try container.decodeIfPresent(ContactPoint.self, forKey: .defaultValueContactPoint)
		defaultValueCount = try container.decodeIfPresent(Count.self, forKey: .defaultValueCount)
		defaultValueDate = try container.decodeIfPresent(FHIRDate.self, forKey: .defaultValueDate)
		defaultValueDateTime = try container.decodeIfPresent(DateTime.self, forKey: .defaultValueDateTime)
		defaultValueDecimal = try container.decodeIfPresent(Float.self, forKey: .defaultValueDecimal)
		defaultValueDistance = try container.decodeIfPresent(Distance.self, forKey: .defaultValueDistance)
		defaultValueDuration = try container.decodeIfPresent(Duration.self, forKey: .defaultValueDuration)
		defaultValueHumanName = try container.decodeIfPresent(HumanName.self, forKey: .defaultValueHumanName)
		defaultValueId = try container.decodeIfPresent(String.self, forKey: .defaultValueId)
		defaultValueIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .defaultValueIdentifier)
		defaultValueInstant = try container.decodeIfPresent(Instant.self, forKey: .defaultValueInstant)
		defaultValueInteger = try container.decodeIfPresent(Int.self, forKey: .defaultValueInteger)
		defaultValueMarkdown = try container.decodeIfPresent(String.self, forKey: .defaultValueMarkdown)
		defaultValueMeta = try container.decodeIfPresent(Meta.self, forKey: .defaultValueMeta)
		defaultValueMoney = try container.decodeIfPresent(Money.self, forKey: .defaultValueMoney)
		defaultValueOid = try container.decodeIfPresent(URL.self, forKey: .defaultValueOid)
		defaultValuePeriod = try container.decodeIfPresent(Period.self, forKey: .defaultValuePeriod)
		defaultValuePositiveInt = try container.decodeIfPresent(Int.self, forKey: .defaultValuePositiveInt)
		defaultValueQuantity = try container.decodeIfPresent(Quantity.self, forKey: .defaultValueQuantity)
		defaultValueRange = try container.decodeIfPresent(Range.self, forKey: .defaultValueRange)
		defaultValueRatio = try container.decodeIfPresent(Ratio.self, forKey: .defaultValueRatio)
		defaultValueReference = try container.decodeIfPresent(Reference.self, forKey: .defaultValueReference)
		defaultValueSampledData = try container.decodeIfPresent(SampledData.self, forKey: .defaultValueSampledData)
		defaultValueSignature = try container.decodeIfPresent(Signature.self, forKey: .defaultValueSignature)
		defaultValueString = try container.decodeIfPresent(String.self, forKey: .defaultValueString)
		defaultValueTime = try container.decodeIfPresent(FHIRTime.self, forKey: .defaultValueTime)
		defaultValueTiming = try container.decodeIfPresent(Timing.self, forKey: .defaultValueTiming)
		defaultValueUnsignedInt = try container.decodeIfPresent(Int.self, forKey: .defaultValueUnsignedInt)
		defaultValueUri = try container.decodeIfPresent(String.self, forKey: .defaultValueUri)
		definition = try container.decodeIfPresent(String.self, forKey: .definition)
		example = try container.decodeArrayIfPresent([ElementDefinitionExample].self, forKey: .example)
		fixedAddress = try container.decodeIfPresent(Address.self, forKey: .fixedAddress)
		fixedAge = try container.decodeIfPresent(Age.self, forKey: .fixedAge)
		fixedAnnotation = try container.decodeIfPresent(Annotation.self, forKey: .fixedAnnotation)
		fixedAttachment = try container.decodeIfPresent(Attachment.self, forKey: .fixedAttachment)
		fixedBase64Binary = try container.decodeIfPresent(String.self, forKey: .fixedBase64Binary)
		fixedBoolean = try container.decodeIfPresent(Bool.self, forKey: .fixedBoolean)
		fixedCode = try container.decodeIfPresent(String.self, forKey: .fixedCode)
		fixedCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .fixedCodeableConcept)
		fixedCoding = try container.decodeIfPresent(Coding.self, forKey: .fixedCoding)
		fixedContactPoint = try container.decodeIfPresent(ContactPoint.self, forKey: .fixedContactPoint)
		fixedCount = try container.decodeIfPresent(Count.self, forKey: .fixedCount)
		fixedDate = try container.decodeIfPresent(FHIRDate.self, forKey: .fixedDate)
		fixedDateTime = try container.decodeIfPresent(DateTime.self, forKey: .fixedDateTime)
		fixedDecimal = try container.decodeIfPresent(Float.self, forKey: .fixedDecimal)
		fixedDistance = try container.decodeIfPresent(Distance.self, forKey: .fixedDistance)
		fixedDuration = try container.decodeIfPresent(Duration.self, forKey: .fixedDuration)
		fixedHumanName = try container.decodeIfPresent(HumanName.self, forKey: .fixedHumanName)
		fixedId = try container.decodeIfPresent(String.self, forKey: .fixedId)
		fixedIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .fixedIdentifier)
		fixedInstant = try container.decodeIfPresent(Instant.self, forKey: .fixedInstant)
		fixedInteger = try container.decodeIfPresent(Int.self, forKey: .fixedInteger)
		fixedMarkdown = try container.decodeIfPresent(String.self, forKey: .fixedMarkdown)
		fixedMeta = try container.decodeIfPresent(Meta.self, forKey: .fixedMeta)
		fixedMoney = try container.decodeIfPresent(Money.self, forKey: .fixedMoney)
		fixedOid = try container.decodeIfPresent(URL.self, forKey: .fixedOid)
		fixedPeriod = try container.decodeIfPresent(Period.self, forKey: .fixedPeriod)
		fixedPositiveInt = try container.decodeIfPresent(Int.self, forKey: .fixedPositiveInt)
		fixedQuantity = try container.decodeIfPresent(Quantity.self, forKey: .fixedQuantity)
		fixedRange = try container.decodeIfPresent(Range.self, forKey: .fixedRange)
		fixedRatio = try container.decodeIfPresent(Ratio.self, forKey: .fixedRatio)
		fixedReference = try container.decodeIfPresent(Reference.self, forKey: .fixedReference)
		fixedSampledData = try container.decodeIfPresent(SampledData.self, forKey: .fixedSampledData)
		fixedSignature = try container.decodeIfPresent(Signature.self, forKey: .fixedSignature)
		fixedString = try container.decodeIfPresent(String.self, forKey: .fixedString)
		fixedTime = try container.decodeIfPresent(FHIRTime.self, forKey: .fixedTime)
		fixedTiming = try container.decodeIfPresent(Timing.self, forKey: .fixedTiming)
		fixedUnsignedInt = try container.decodeIfPresent(Int.self, forKey: .fixedUnsignedInt)
		fixedUri = try container.decodeIfPresent(String.self, forKey: .fixedUri)
		isModifier = try container.decodeIfPresent(Bool.self, forKey: .isModifier)
		isSummary = try container.decodeIfPresent(Bool.self, forKey: .isSummary)
		label = try container.decodeIfPresent(String.self, forKey: .label)
		mapping = try container.decodeArrayIfPresent([ElementDefinitionMapping].self, forKey: .mapping)
		max = try container.decodeIfPresent(String.self, forKey: .max)
		maxLength = try container.decodeIfPresent(Int.self, forKey: .maxLength)
		maxValueDate = try container.decodeIfPresent(FHIRDate.self, forKey: .maxValueDate)
		maxValueDateTime = try container.decodeIfPresent(DateTime.self, forKey: .maxValueDateTime)
		maxValueDecimal = try container.decodeIfPresent(Float.self, forKey: .maxValueDecimal)
		maxValueInstant = try container.decodeIfPresent(Instant.self, forKey: .maxValueInstant)
		maxValueInteger = try container.decodeIfPresent(Int.self, forKey: .maxValueInteger)
		maxValuePositiveInt = try container.decodeIfPresent(Int.self, forKey: .maxValuePositiveInt)
		maxValueQuantity = try container.decodeIfPresent(Quantity.self, forKey: .maxValueQuantity)
		maxValueTime = try container.decodeIfPresent(FHIRTime.self, forKey: .maxValueTime)
		maxValueUnsignedInt = try container.decodeIfPresent(Int.self, forKey: .maxValueUnsignedInt)
		meaningWhenMissing = try container.decodeIfPresent(String.self, forKey: .meaningWhenMissing)
		min = try container.decodeIfPresent(Int.self, forKey: .min)
		minValueDate = try container.decodeIfPresent(FHIRDate.self, forKey: .minValueDate)
		minValueDateTime = try container.decodeIfPresent(DateTime.self, forKey: .minValueDateTime)
		minValueDecimal = try container.decodeIfPresent(Float.self, forKey: .minValueDecimal)
		minValueInstant = try container.decodeIfPresent(Instant.self, forKey: .minValueInstant)
		minValueInteger = try container.decodeIfPresent(Int.self, forKey: .minValueInteger)
		minValuePositiveInt = try container.decodeIfPresent(Int.self, forKey: .minValuePositiveInt)
		minValueQuantity = try container.decodeIfPresent(Quantity.self, forKey: .minValueQuantity)
		minValueTime = try container.decodeIfPresent(FHIRTime.self, forKey: .minValueTime)
		minValueUnsignedInt = try container.decodeIfPresent(Int.self, forKey: .minValueUnsignedInt)
		mustSupport = try container.decodeIfPresent(Bool.self, forKey: .mustSupport)
		orderMeaning = try container.decodeIfPresent(String.self, forKey: .orderMeaning)
		patternAddress = try container.decodeIfPresent(Address.self, forKey: .patternAddress)
		patternAge = try container.decodeIfPresent(Age.self, forKey: .patternAge)
		patternAnnotation = try container.decodeIfPresent(Annotation.self, forKey: .patternAnnotation)
		patternAttachment = try container.decodeIfPresent(Attachment.self, forKey: .patternAttachment)
		patternBase64Binary = try container.decodeIfPresent(String.self, forKey: .patternBase64Binary)
		patternBoolean = try container.decodeIfPresent(Bool.self, forKey: .patternBoolean)
		patternCode = try container.decodeIfPresent(String.self, forKey: .patternCode)
		patternCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .patternCodeableConcept)
		patternCoding = try container.decodeIfPresent(Coding.self, forKey: .patternCoding)
		patternContactPoint = try container.decodeIfPresent(ContactPoint.self, forKey: .patternContactPoint)
		patternCount = try container.decodeIfPresent(Count.self, forKey: .patternCount)
		patternDate = try container.decodeIfPresent(FHIRDate.self, forKey: .patternDate)
		patternDateTime = try container.decodeIfPresent(DateTime.self, forKey: .patternDateTime)
		patternDecimal = try container.decodeIfPresent(Float.self, forKey: .patternDecimal)
		patternDistance = try container.decodeIfPresent(Distance.self, forKey: .patternDistance)
		patternDuration = try container.decodeIfPresent(Duration.self, forKey: .patternDuration)
		patternHumanName = try container.decodeIfPresent(HumanName.self, forKey: .patternHumanName)
		patternId = try container.decodeIfPresent(String.self, forKey: .patternId)
		patternIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .patternIdentifier)
		patternInstant = try container.decodeIfPresent(Instant.self, forKey: .patternInstant)
		patternInteger = try container.decodeIfPresent(Int.self, forKey: .patternInteger)
		patternMarkdown = try container.decodeIfPresent(String.self, forKey: .patternMarkdown)
		patternMeta = try container.decodeIfPresent(Meta.self, forKey: .patternMeta)
		patternMoney = try container.decodeIfPresent(Money.self, forKey: .patternMoney)
		patternOid = try container.decodeIfPresent(URL.self, forKey: .patternOid)
		patternPeriod = try container.decodeIfPresent(Period.self, forKey: .patternPeriod)
		patternPositiveInt = try container.decodeIfPresent(Int.self, forKey: .patternPositiveInt)
		patternQuantity = try container.decodeIfPresent(Quantity.self, forKey: .patternQuantity)
		patternRange = try container.decodeIfPresent(Range.self, forKey: .patternRange)
		patternRatio = try container.decodeIfPresent(Ratio.self, forKey: .patternRatio)
		patternReference = try container.decodeIfPresent(Reference.self, forKey: .patternReference)
		patternSampledData = try container.decodeIfPresent(SampledData.self, forKey: .patternSampledData)
		patternSignature = try container.decodeIfPresent(Signature.self, forKey: .patternSignature)
		patternString = try container.decodeIfPresent(String.self, forKey: .patternString)
		patternTime = try container.decodeIfPresent(FHIRTime.self, forKey: .patternTime)
		patternTiming = try container.decodeIfPresent(Timing.self, forKey: .patternTiming)
		patternUnsignedInt = try container.decodeIfPresent(Int.self, forKey: .patternUnsignedInt)
		patternUri = try container.decodeIfPresent(String.self, forKey: .patternUri)
		representation = try container.decodeArrayIfPresent([PropertyRepresentation].self, forKey: .representation)
		requirements = try container.decodeIfPresent(String.self, forKey: .requirements)
		short = try container.decodeIfPresent(String.self, forKey: .short)
		sliceName = try container.decodeIfPresent(String.self, forKey: .sliceName)
		slicing = try container.decodeIfPresent(ElementDefinitionSlicing.self, forKey: .slicing)
		type = try container.decodeArrayIfPresent([ElementDefinitionType].self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ElementDefinition else {
            return false
        }

		return	alias == object.alias &&
			base == object.base &&
			binding == object.binding &&
			code == object.code &&
			comment == object.comment &&
			condition == object.condition &&
			constraint == object.constraint &&
			contentReference == object.contentReference &&
			defaultValueAddress == object.defaultValueAddress &&
			defaultValueAge == object.defaultValueAge &&
			defaultValueAnnotation == object.defaultValueAnnotation &&
			defaultValueAttachment == object.defaultValueAttachment &&
			defaultValueBase64Binary == object.defaultValueBase64Binary &&
			defaultValueBoolean == object.defaultValueBoolean &&
			defaultValueCode == object.defaultValueCode &&
			defaultValueCodeableConcept == object.defaultValueCodeableConcept &&
			defaultValueCoding == object.defaultValueCoding &&
			defaultValueContactPoint == object.defaultValueContactPoint &&
			defaultValueCount == object.defaultValueCount &&
			defaultValueDate == object.defaultValueDate &&
			defaultValueDateTime == object.defaultValueDateTime &&
			defaultValueDecimal == object.defaultValueDecimal &&
			defaultValueDistance == object.defaultValueDistance &&
			defaultValueDuration == object.defaultValueDuration &&
			defaultValueHumanName == object.defaultValueHumanName &&
			defaultValueId == object.defaultValueId &&
			defaultValueIdentifier == object.defaultValueIdentifier &&
			defaultValueInstant == object.defaultValueInstant &&
			defaultValueInteger == object.defaultValueInteger &&
			defaultValueMarkdown == object.defaultValueMarkdown &&
			defaultValueMeta == object.defaultValueMeta &&
			defaultValueMoney == object.defaultValueMoney &&
			defaultValueOid == object.defaultValueOid &&
			defaultValuePeriod == object.defaultValuePeriod &&
			defaultValuePositiveInt == object.defaultValuePositiveInt &&
			defaultValueQuantity == object.defaultValueQuantity &&
			defaultValueRange == object.defaultValueRange &&
			defaultValueRatio == object.defaultValueRatio &&
			defaultValueReference == object.defaultValueReference &&
			defaultValueSampledData == object.defaultValueSampledData &&
			defaultValueSignature == object.defaultValueSignature &&
			defaultValueString == object.defaultValueString &&
			defaultValueTime == object.defaultValueTime &&
			defaultValueTiming == object.defaultValueTiming &&
			defaultValueUnsignedInt == object.defaultValueUnsignedInt &&
			defaultValueUri == object.defaultValueUri &&
			definition == object.definition &&
			example == object.example &&
			fixedAddress == object.fixedAddress &&
			fixedAge == object.fixedAge &&
			fixedAnnotation == object.fixedAnnotation &&
			fixedAttachment == object.fixedAttachment &&
			fixedBase64Binary == object.fixedBase64Binary &&
			fixedBoolean == object.fixedBoolean &&
			fixedCode == object.fixedCode &&
			fixedCodeableConcept == object.fixedCodeableConcept &&
			fixedCoding == object.fixedCoding &&
			fixedContactPoint == object.fixedContactPoint &&
			fixedCount == object.fixedCount &&
			fixedDate == object.fixedDate &&
			fixedDateTime == object.fixedDateTime &&
			fixedDecimal == object.fixedDecimal &&
			fixedDistance == object.fixedDistance &&
			fixedDuration == object.fixedDuration &&
			fixedHumanName == object.fixedHumanName &&
			fixedId == object.fixedId &&
			fixedIdentifier == object.fixedIdentifier &&
			fixedInstant == object.fixedInstant &&
			fixedInteger == object.fixedInteger &&
			fixedMarkdown == object.fixedMarkdown &&
			fixedMeta == object.fixedMeta &&
			fixedMoney == object.fixedMoney &&
			fixedOid == object.fixedOid &&
			fixedPeriod == object.fixedPeriod &&
			fixedPositiveInt == object.fixedPositiveInt &&
			fixedQuantity == object.fixedQuantity &&
			fixedRange == object.fixedRange &&
			fixedRatio == object.fixedRatio &&
			fixedReference == object.fixedReference &&
			fixedSampledData == object.fixedSampledData &&
			fixedSignature == object.fixedSignature &&
			fixedString == object.fixedString &&
			fixedTime == object.fixedTime &&
			fixedTiming == object.fixedTiming &&
			fixedUnsignedInt == object.fixedUnsignedInt &&
			fixedUri == object.fixedUri &&
			isModifier == object.isModifier &&
			isSummary == object.isSummary &&
			label == object.label &&
			mapping == object.mapping &&
			max == object.max &&
			maxLength == object.maxLength &&
			maxValueDate == object.maxValueDate &&
			maxValueDateTime == object.maxValueDateTime &&
			maxValueDecimal == object.maxValueDecimal &&
			maxValueInstant == object.maxValueInstant &&
			maxValueInteger == object.maxValueInteger &&
			maxValuePositiveInt == object.maxValuePositiveInt &&
			maxValueQuantity == object.maxValueQuantity &&
			maxValueTime == object.maxValueTime &&
			maxValueUnsignedInt == object.maxValueUnsignedInt &&
			meaningWhenMissing == object.meaningWhenMissing &&
			min == object.min &&
			minValueDate == object.minValueDate &&
			minValueDateTime == object.minValueDateTime &&
			minValueDecimal == object.minValueDecimal &&
			minValueInstant == object.minValueInstant &&
			minValueInteger == object.minValueInteger &&
			minValuePositiveInt == object.minValuePositiveInt &&
			minValueQuantity == object.minValueQuantity &&
			minValueTime == object.minValueTime &&
			minValueUnsignedInt == object.minValueUnsignedInt &&
			mustSupport == object.mustSupport &&
			orderMeaning == object.orderMeaning &&
			path == object.path &&
			patternAddress == object.patternAddress &&
			patternAge == object.patternAge &&
			patternAnnotation == object.patternAnnotation &&
			patternAttachment == object.patternAttachment &&
			patternBase64Binary == object.patternBase64Binary &&
			patternBoolean == object.patternBoolean &&
			patternCode == object.patternCode &&
			patternCodeableConcept == object.patternCodeableConcept &&
			patternCoding == object.patternCoding &&
			patternContactPoint == object.patternContactPoint &&
			patternCount == object.patternCount &&
			patternDate == object.patternDate &&
			patternDateTime == object.patternDateTime &&
			patternDecimal == object.patternDecimal &&
			patternDistance == object.patternDistance &&
			patternDuration == object.patternDuration &&
			patternHumanName == object.patternHumanName &&
			patternId == object.patternId &&
			patternIdentifier == object.patternIdentifier &&
			patternInstant == object.patternInstant &&
			patternInteger == object.patternInteger &&
			patternMarkdown == object.patternMarkdown &&
			patternMeta == object.patternMeta &&
			patternMoney == object.patternMoney &&
			patternOid == object.patternOid &&
			patternPeriod == object.patternPeriod &&
			patternPositiveInt == object.patternPositiveInt &&
			patternQuantity == object.patternQuantity &&
			patternRange == object.patternRange &&
			patternRatio == object.patternRatio &&
			patternReference == object.patternReference &&
			patternSampledData == object.patternSampledData &&
			patternSignature == object.patternSignature &&
			patternString == object.patternString &&
			patternTime == object.patternTime &&
			patternTiming == object.patternTiming &&
			patternUnsignedInt == object.patternUnsignedInt &&
			patternUri == object.patternUri &&
			representation == object.representation &&
			requirements == object.requirements &&
			short == object.short &&
			sliceName == object.sliceName &&
			slicing == object.slicing &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension ElementDefinition {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinition else {
            return self
        }

        resource.alias = self.alias
        resource.base = self.base?.copy(with: zone) as? ElementDefinitionBase
        resource.binding = self.binding?.copy(with: zone) as? ElementDefinitionBinding
        resource.code = self.code?.compactMap { $0.copy(with: zone) as? Coding }
        resource.comment = self.comment
        resource.condition = self.condition
        resource.constraint = self.constraint?.compactMap { $0.copy(with: zone) as? ElementDefinitionConstraint }
        resource.contentReference = self.contentReference
        resource.defaultValueAddress = self.defaultValueAddress?.copy(with: zone) as? Address
        resource.defaultValueAge = self.defaultValueAge?.copy(with: zone) as? Age
        resource.defaultValueAnnotation = self.defaultValueAnnotation?.copy(with: zone) as? Annotation
        resource.defaultValueAttachment = self.defaultValueAttachment?.copy(with: zone) as? Attachment
        resource.defaultValueBase64Binary = self.defaultValueBase64Binary
        resource.defaultValueBoolean = self.defaultValueBoolean
        resource.defaultValueCode = self.defaultValueCode
        resource.defaultValueCodeableConcept = self.defaultValueCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.defaultValueCoding = self.defaultValueCoding?.copy(with: zone) as? Coding
        resource.defaultValueContactPoint = self.defaultValueContactPoint?.copy(with: zone) as? ContactPoint
        resource.defaultValueCount = self.defaultValueCount?.copy(with: zone) as? Count
        resource.defaultValueDate = self.defaultValueDate
        resource.defaultValueDateTime = self.defaultValueDateTime
        resource.defaultValueDecimal = self.defaultValueDecimal
        resource.defaultValueDistance = self.defaultValueDistance?.copy(with: zone) as? Distance
        resource.defaultValueDuration = self.defaultValueDuration?.copy(with: zone) as? Duration
        resource.defaultValueHumanName = self.defaultValueHumanName?.copy(with: zone) as? HumanName
        resource.defaultValueId = self.defaultValueId
        resource.defaultValueIdentifier = self.defaultValueIdentifier?.copy(with: zone) as? Identifier
        resource.defaultValueInstant = self.defaultValueInstant
        resource.defaultValueInteger = self.defaultValueInteger
        resource.defaultValueMarkdown = self.defaultValueMarkdown
        resource.defaultValueMeta = self.defaultValueMeta?.copy(with: zone) as? Meta
        resource.defaultValueMoney = self.defaultValueMoney?.copy(with: zone) as? Money
        resource.defaultValueOid = self.defaultValueOid
        resource.defaultValuePeriod = self.defaultValuePeriod?.copy(with: zone) as? Period
        resource.defaultValuePositiveInt = self.defaultValuePositiveInt
        resource.defaultValueQuantity = self.defaultValueQuantity?.copy(with: zone) as? Quantity
        resource.defaultValueRange = self.defaultValueRange?.copy(with: zone) as? Range
        resource.defaultValueRatio = self.defaultValueRatio?.copy(with: zone) as? Ratio
        resource.defaultValueReference = self.defaultValueReference?.copy(with: zone) as? Reference
        resource.defaultValueSampledData = self.defaultValueSampledData?.copy(with: zone) as? SampledData
        resource.defaultValueSignature = self.defaultValueSignature?.copy(with: zone) as? Signature
        resource.defaultValueString = self.defaultValueString
        resource.defaultValueTime = self.defaultValueTime
        resource.defaultValueTiming = self.defaultValueTiming?.copy(with: zone) as? Timing
        resource.defaultValueUnsignedInt = self.defaultValueUnsignedInt
        resource.defaultValueUri = self.defaultValueUri
        resource.definition = self.definition
        resource.example = self.example?.compactMap { $0.copy(with: zone) as? ElementDefinitionExample }
        resource.fixedAddress = self.fixedAddress?.copy(with: zone) as? Address
        resource.fixedAge = self.fixedAge?.copy(with: zone) as? Age
        resource.fixedAnnotation = self.fixedAnnotation?.copy(with: zone) as? Annotation
        resource.fixedAttachment = self.fixedAttachment?.copy(with: zone) as? Attachment
        resource.fixedBase64Binary = self.fixedBase64Binary
        resource.fixedBoolean = self.fixedBoolean
        resource.fixedCode = self.fixedCode
        resource.fixedCodeableConcept = self.fixedCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.fixedCoding = self.fixedCoding?.copy(with: zone) as? Coding
        resource.fixedContactPoint = self.fixedContactPoint?.copy(with: zone) as? ContactPoint
        resource.fixedCount = self.fixedCount?.copy(with: zone) as? Count
        resource.fixedDate = self.fixedDate
        resource.fixedDateTime = self.fixedDateTime
        resource.fixedDecimal = self.fixedDecimal
        resource.fixedDistance = self.fixedDistance?.copy(with: zone) as? Distance
        resource.fixedDuration = self.fixedDuration?.copy(with: zone) as? Duration
        resource.fixedHumanName = self.fixedHumanName?.copy(with: zone) as? HumanName
        resource.fixedId = self.fixedId
        resource.fixedIdentifier = self.fixedIdentifier?.copy(with: zone) as? Identifier
        resource.fixedInstant = self.fixedInstant
        resource.fixedInteger = self.fixedInteger
        resource.fixedMarkdown = self.fixedMarkdown
        resource.fixedMeta = self.fixedMeta?.copy(with: zone) as? Meta
        resource.fixedMoney = self.fixedMoney?.copy(with: zone) as? Money
        resource.fixedOid = self.fixedOid
        resource.fixedPeriod = self.fixedPeriod?.copy(with: zone) as? Period
        resource.fixedPositiveInt = self.fixedPositiveInt
        resource.fixedQuantity = self.fixedQuantity?.copy(with: zone) as? Quantity
        resource.fixedRange = self.fixedRange?.copy(with: zone) as? Range
        resource.fixedRatio = self.fixedRatio?.copy(with: zone) as? Ratio
        resource.fixedReference = self.fixedReference?.copy(with: zone) as? Reference
        resource.fixedSampledData = self.fixedSampledData?.copy(with: zone) as? SampledData
        resource.fixedSignature = self.fixedSignature?.copy(with: zone) as? Signature
        resource.fixedString = self.fixedString
        resource.fixedTime = self.fixedTime
        resource.fixedTiming = self.fixedTiming?.copy(with: zone) as? Timing
        resource.fixedUnsignedInt = self.fixedUnsignedInt
        resource.fixedUri = self.fixedUri
        resource.isModifier = self.isModifier
        resource.isSummary = self.isSummary
        resource.label = self.label
        resource.mapping = self.mapping?.compactMap { $0.copy(with: zone) as? ElementDefinitionMapping }
        resource.max = self.max
        resource.maxLength = self.maxLength
        resource.maxValueDate = self.maxValueDate
        resource.maxValueDateTime = self.maxValueDateTime
        resource.maxValueDecimal = self.maxValueDecimal
        resource.maxValueInstant = self.maxValueInstant
        resource.maxValueInteger = self.maxValueInteger
        resource.maxValuePositiveInt = self.maxValuePositiveInt
        resource.maxValueQuantity = self.maxValueQuantity?.copy(with: zone) as? Quantity
        resource.maxValueTime = self.maxValueTime
        resource.maxValueUnsignedInt = self.maxValueUnsignedInt
        resource.meaningWhenMissing = self.meaningWhenMissing
        resource.min = self.min
        resource.minValueDate = self.minValueDate
        resource.minValueDateTime = self.minValueDateTime
        resource.minValueDecimal = self.minValueDecimal
        resource.minValueInstant = self.minValueInstant
        resource.minValueInteger = self.minValueInteger
        resource.minValuePositiveInt = self.minValuePositiveInt
        resource.minValueQuantity = self.minValueQuantity?.copy(with: zone) as? Quantity
        resource.minValueTime = self.minValueTime
        resource.minValueUnsignedInt = self.minValueUnsignedInt
        resource.mustSupport = self.mustSupport
        resource.orderMeaning = self.orderMeaning
        resource.path = self.path
        resource.patternAddress = self.patternAddress?.copy(with: zone) as? Address
        resource.patternAge = self.patternAge?.copy(with: zone) as? Age
        resource.patternAnnotation = self.patternAnnotation?.copy(with: zone) as? Annotation
        resource.patternAttachment = self.patternAttachment?.copy(with: zone) as? Attachment
        resource.patternBase64Binary = self.patternBase64Binary
        resource.patternBoolean = self.patternBoolean
        resource.patternCode = self.patternCode
        resource.patternCodeableConcept = self.patternCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.patternCoding = self.patternCoding?.copy(with: zone) as? Coding
        resource.patternContactPoint = self.patternContactPoint?.copy(with: zone) as? ContactPoint
        resource.patternCount = self.patternCount?.copy(with: zone) as? Count
        resource.patternDate = self.patternDate
        resource.patternDateTime = self.patternDateTime
        resource.patternDecimal = self.patternDecimal
        resource.patternDistance = self.patternDistance?.copy(with: zone) as? Distance
        resource.patternDuration = self.patternDuration?.copy(with: zone) as? Duration
        resource.patternHumanName = self.patternHumanName?.copy(with: zone) as? HumanName
        resource.patternId = self.patternId
        resource.patternIdentifier = self.patternIdentifier?.copy(with: zone) as? Identifier
        resource.patternInstant = self.patternInstant
        resource.patternInteger = self.patternInteger
        resource.patternMarkdown = self.patternMarkdown
        resource.patternMeta = self.patternMeta?.copy(with: zone) as? Meta
        resource.patternMoney = self.patternMoney?.copy(with: zone) as? Money
        resource.patternOid = self.patternOid
        resource.patternPeriod = self.patternPeriod?.copy(with: zone) as? Period
        resource.patternPositiveInt = self.patternPositiveInt
        resource.patternQuantity = self.patternQuantity?.copy(with: zone) as? Quantity
        resource.patternRange = self.patternRange?.copy(with: zone) as? Range
        resource.patternRatio = self.patternRatio?.copy(with: zone) as? Ratio
        resource.patternReference = self.patternReference?.copy(with: zone) as? Reference
        resource.patternSampledData = self.patternSampledData?.copy(with: zone) as? SampledData
        resource.patternSignature = self.patternSignature?.copy(with: zone) as? Signature
        resource.patternString = self.patternString
        resource.patternTime = self.patternTime
        resource.patternTiming = self.patternTiming?.copy(with: zone) as? Timing
        resource.patternUnsignedInt = self.patternUnsignedInt
        resource.patternUri = self.patternUri
        resource.representation = self.representation
        resource.requirements = self.requirements
        resource.short = self.short
        resource.sliceName = self.sliceName
        resource.slicing = self.slicing?.copy(with: zone) as? ElementDefinitionSlicing
        resource.type = self.type?.compactMap { $0.copy(with: zone) as? ElementDefinitionType }

        return resource
    }
}

/**
Base definition information for tools.

Information about the base definition of the element, provided to make it unnecessary for tools to trace the deviation
of the element through the derived and related profiles. This information is provided when the element definition is not
the original definition of an element - i.g. either in a constraint on another type, or for elements from a super type
in a snap shot.
*/
open class ElementDefinitionBase: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionBase" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinitionBase>] = [

        "max" : \ElementDefinitionBase.max,
        "min" : \ElementDefinitionBase.min,
        "path" : \ElementDefinitionBase.path
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinitionBase.keyPaths[name] as? KeyPath<ElementDefinitionBase, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinitionBase.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Max cardinality of the base element.
	public var max: String?

	/// Min cardinality of the base element.
	public var min: Int?

	/// Path that identifies the base element.
	public var path: String?

	enum ElementDefinitionBaseKeys: String, CodingKey {
		case max
		case min
		case path
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(max: String, min: Int, path: String) {
		self.init()
		self.max = max
		self.min = min
		self.path = path
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionBaseKeys.self)
		if let item = max {
			try container.encode(item, forKey: .max)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("max")
		}
		if let item = min {
			try container.encode(item, forKey: .min)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("min")
		}
		if let item = path {
			try container.encode(item, forKey: .path)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("path")
		}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementDefinitionBaseKeys.self)
		max = try container.decode(String.self, forKey: .max)
		min = try container.decode(Int.self, forKey: .min)
		path = try container.decode(String.self, forKey: .path)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ElementDefinitionBase else {
            return false
        }

		return	max == object.max &&
			min == object.min &&
			path == object.path &&
			super.equal(to: to)
	}
}

extension ElementDefinitionBase {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinitionBase else {
            return self
        }

        resource.max = self.max
        resource.min = self.min
        resource.path = self.path

        return resource
    }
}

/**
ValueSet details if this is coded.

Binds to a value set if this element is coded (code, Coding, CodeableConcept, Quantity), or the data types (string,
uri).
*/
open class ElementDefinitionBinding: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionBinding" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinitionBinding>] = [

        "description_fhir" : \ElementDefinitionBinding.description_fhir,
        "strength" : \ElementDefinitionBinding.strength,
        "valueSetReference" : \ElementDefinitionBinding.valueSetReference,
        "valueSetUri" : \ElementDefinitionBinding.valueSetUri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinitionBinding.keyPaths[name] as? KeyPath<ElementDefinitionBinding, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinitionBinding.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Human explanation of the value set.
	public var description_fhir: String?

	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	public var strength: BindingStrength?

	/// Source of value set.
	public var valueSetReference: Reference?

	/// Source of value set.
	public var valueSetUri: String?

	enum ElementDefinitionBindingKeys: String, CodingKey {
		case description_fhir = "description"
		case strength
		case valueSetReference
		case valueSetUri
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(strength: BindingStrength) {
		self.init()
		self.strength = strength
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionBindingKeys.self)
		if let item = strength {
			try container.encode(item, forKey: .strength)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("strength")
		}
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeIfPresent(valueSetReference, forKey: .valueSetReference)
		try container.encodeIfPresent(valueSetUri, forKey: .valueSetUri)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementDefinitionBindingKeys.self)
		strength = try container.decode(BindingStrength.self, forKey: .strength)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		valueSetReference = try container.decodeIfPresent(Reference.self, forKey: .valueSetReference)
		valueSetUri = try container.decodeIfPresent(String.self, forKey: .valueSetUri)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ElementDefinitionBinding else {
            return false
        }

		return	description_fhir == object.description_fhir &&
			strength == object.strength &&
			valueSetReference == object.valueSetReference &&
			valueSetUri == object.valueSetUri &&
			super.equal(to: to)
	}
}

extension ElementDefinitionBinding {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinitionBinding else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.strength = self.strength
        resource.valueSetReference = self.valueSetReference?.copy(with: zone) as? Reference
        resource.valueSetUri = self.valueSetUri

        return resource
    }
}

/**
Condition that must evaluate to true.

Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within the context
of the instance.
*/
open class ElementDefinitionConstraint: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionConstraint" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinitionConstraint>] = [

        "expression" : \ElementDefinitionConstraint.expression,
        "human" : \ElementDefinitionConstraint.human,
        "key" : \ElementDefinitionConstraint.key,
        "requirements" : \ElementDefinitionConstraint.requirements,
        "severity" : \ElementDefinitionConstraint.severity,
        "source" : \ElementDefinitionConstraint.source,
        "xpath" : \ElementDefinitionConstraint.xpath
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinitionConstraint.keyPaths[name] as? KeyPath<ElementDefinitionConstraint, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinitionConstraint.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// FHIRPath expression of constraint.
	public var expression: String?

	/// Human description of constraint.
	public var human: String?

	/// Target of 'condition' reference above.
	public var key: String?

	/// Why this constraint is necessary or appropriate.
	public var requirements: String?

	/// Identifies the impact constraint violation has on the conformance of the instance.
	public var severity: ConstraintSeverity?

	/// Reference to original source of constraint.
	public var source: String?

	/// XPath expression of constraint.
	public var xpath: String?

	enum ElementDefinitionConstraintKeys: String, CodingKey {
		case expression
		case human
		case key
		case requirements
		case severity
		case source
		case xpath
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(expression: String, human: String, key: String, severity: ConstraintSeverity) {
		self.init()
		self.expression = expression
		self.human = human
		self.key = key
		self.severity = severity
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionConstraintKeys.self)
		if let item = expression {
			try container.encode(item, forKey: .expression)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("expression")
		}
		if let item = human {
			try container.encode(item, forKey: .human)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("human")
		}
		if let item = key {
			try container.encode(item, forKey: .key)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("key")
		}
		if let item = severity {
			try container.encode(item, forKey: .severity)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("severity")
		}
		try container.encodeIfPresent(requirements, forKey: .requirements)
		try container.encodeIfPresent(source, forKey: .source)
		try container.encodeIfPresent(xpath, forKey: .xpath)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementDefinitionConstraintKeys.self)
		expression = try container.decode(String.self, forKey: .expression)
		human = try container.decode(String.self, forKey: .human)
		key = try container.decode(String.self, forKey: .key)
		severity = try container.decode(ConstraintSeverity.self, forKey: .severity)
		requirements = try container.decodeIfPresent(String.self, forKey: .requirements)
		source = try container.decodeIfPresent(String.self, forKey: .source)
		xpath = try container.decodeIfPresent(String.self, forKey: .xpath)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ElementDefinitionConstraint else {
            return false
        }

		return	expression == object.expression &&
			human == object.human &&
			key == object.key &&
			requirements == object.requirements &&
			severity == object.severity &&
			source == object.source &&
			xpath == object.xpath &&
			super.equal(to: to)
	}
}

extension ElementDefinitionConstraint {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinitionConstraint else {
            return self
        }

        resource.expression = self.expression
        resource.human = self.human
        resource.key = self.key
        resource.requirements = self.requirements
        resource.severity = self.severity
        resource.source = self.source
        resource.xpath = self.xpath

        return resource
    }
}

/**
Example value (as defined for type).

A sample value for this element demonstrating the type of information that would typically be found in the element.
*/
open class ElementDefinitionExample: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionExample" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinitionExample>] = [

        "label" : \ElementDefinitionExample.label,
        "valueAddress" : \ElementDefinitionExample.valueAddress,
        "valueAge" : \ElementDefinitionExample.valueAge,
        "valueAnnotation" : \ElementDefinitionExample.valueAnnotation,
        "valueAttachment" : \ElementDefinitionExample.valueAttachment,
        "valueBase64Binary" : \ElementDefinitionExample.valueBase64Binary,
        "valueBoolean" : \ElementDefinitionExample.valueBoolean,
        "valueCode" : \ElementDefinitionExample.valueCode,
        "valueCodeableConcept" : \ElementDefinitionExample.valueCodeableConcept,
        "valueCoding" : \ElementDefinitionExample.valueCoding,
        "valueContactPoint" : \ElementDefinitionExample.valueContactPoint,
        "valueCount" : \ElementDefinitionExample.valueCount,
        "valueDate" : \ElementDefinitionExample.valueDate,
        "valueDateTime" : \ElementDefinitionExample.valueDateTime,
        "valueDecimal" : \ElementDefinitionExample.valueDecimal,
        "valueDistance" : \ElementDefinitionExample.valueDistance,
        "valueDuration" : \ElementDefinitionExample.valueDuration,
        "valueHumanName" : \ElementDefinitionExample.valueHumanName,
        "valueId" : \ElementDefinitionExample.valueId,
        "valueIdentifier" : \ElementDefinitionExample.valueIdentifier,
        "valueInstant" : \ElementDefinitionExample.valueInstant,
        "valueInteger" : \ElementDefinitionExample.valueInteger,
        "valueMarkdown" : \ElementDefinitionExample.valueMarkdown,
        "valueMeta" : \ElementDefinitionExample.valueMeta,
        "valueMoney" : \ElementDefinitionExample.valueMoney,
        "valueOid" : \ElementDefinitionExample.valueOid,
        "valuePeriod" : \ElementDefinitionExample.valuePeriod,
        "valuePositiveInt" : \ElementDefinitionExample.valuePositiveInt,
        "valueQuantity" : \ElementDefinitionExample.valueQuantity,
        "valueRange" : \ElementDefinitionExample.valueRange,
        "valueRatio" : \ElementDefinitionExample.valueRatio,
        "valueReference" : \ElementDefinitionExample.valueReference,
        "valueSampledData" : \ElementDefinitionExample.valueSampledData,
        "valueSignature" : \ElementDefinitionExample.valueSignature,
        "valueString" : \ElementDefinitionExample.valueString,
        "valueTime" : \ElementDefinitionExample.valueTime,
        "valueTiming" : \ElementDefinitionExample.valueTiming,
        "valueUnsignedInt" : \ElementDefinitionExample.valueUnsignedInt,
        "valueUri" : \ElementDefinitionExample.valueUri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinitionExample.keyPaths[name] as? KeyPath<ElementDefinitionExample, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinitionExample.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Describes the purpose of this example.
	public var label: String?

	/// Value of Example (one of allowed types).
	public var valueAddress: Address?

	/// Value of Example (one of allowed types).
	public var valueAge: Age?

	/// Value of Example (one of allowed types).
	public var valueAnnotation: Annotation?

	/// Value of Example (one of allowed types).
	public var valueAttachment: Attachment?

	/// Value of Example (one of allowed types).
	public var valueBase64Binary: String?

	/// Value of Example (one of allowed types).
	public var valueBoolean: Bool?

	/// Value of Example (one of allowed types).
	public var valueCode: String?

	/// Value of Example (one of allowed types).
	public var valueCodeableConcept: CodeableConcept?

	/// Value of Example (one of allowed types).
	public var valueCoding: Coding?

	/// Value of Example (one of allowed types).
	public var valueContactPoint: ContactPoint?

	/// Value of Example (one of allowed types).
	public var valueCount: Count?

	/// Value of Example (one of allowed types).
	public var valueDate: FHIRDate?

	/// Value of Example (one of allowed types).
	public var valueDateTime: DateTime?

	/// Value of Example (one of allowed types).
	public var valueDecimal: Float?

	/// Value of Example (one of allowed types).
	public var valueDistance: Distance?

	/// Value of Example (one of allowed types).
	public var valueDuration: Duration?

	/// Value of Example (one of allowed types).
	public var valueHumanName: HumanName?

	/// Value of Example (one of allowed types).
	public var valueId: String?

	/// Value of Example (one of allowed types).
	public var valueIdentifier: Identifier?

	/// Value of Example (one of allowed types).
	public var valueInstant: Instant?

	/// Value of Example (one of allowed types).
	public var valueInteger: Int?

	/// Value of Example (one of allowed types).
	public var valueMarkdown: String?

	/// Value of Example (one of allowed types).
	public var valueMeta: Meta?

	/// Value of Example (one of allowed types).
	public var valueMoney: Money?

	/// Value of Example (one of allowed types).
	public var valueOid: URL?

	/// Value of Example (one of allowed types).
	public var valuePeriod: Period?

	/// Value of Example (one of allowed types).
	public var valuePositiveInt: Int?

	/// Value of Example (one of allowed types).
	public var valueQuantity: Quantity?

	/// Value of Example (one of allowed types).
	public var valueRange: Range?

	/// Value of Example (one of allowed types).
	public var valueRatio: Ratio?

	/// Value of Example (one of allowed types).
	public var valueReference: Reference?

	/// Value of Example (one of allowed types).
	public var valueSampledData: SampledData?

	/// Value of Example (one of allowed types).
	public var valueSignature: Signature?

	/// Value of Example (one of allowed types).
	public var valueString: String?

	/// Value of Example (one of allowed types).
	public var valueTime: FHIRTime?

	/// Value of Example (one of allowed types).
	public var valueTiming: Timing?

	/// Value of Example (one of allowed types).
	public var valueUnsignedInt: Int?

	/// Value of Example (one of allowed types).
	public var valueUri: String?

	enum ElementDefinitionExampleKeys: String, CodingKey {
		case label
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
	convenience public init(label: String, value: Any) {
		self.init()
		self.label = label
		if let value = value as? String {
			self.valueBase64Binary = value
		} else if let value = value as? Bool {
			self.valueBoolean = value
		} else if let value = value as? String {
			self.valueCode = value
		} else if let value = value as? FHIRDate {
			self.valueDate = value
		} else if let value = value as? DateTime {
			self.valueDateTime = value
		} else if let value = value as? Float {
			self.valueDecimal = value
		} else if let value = value as? String {
			self.valueId = value
		} else if let value = value as? Instant {
			self.valueInstant = value
		} else if let value = value as? Int {
			self.valueInteger = value
		} else if let value = value as? String {
			self.valueMarkdown = value
		} else if let value = value as? URL {
			self.valueOid = value
		} else if let value = value as? Int {
			self.valuePositiveInt = value
		} else if let value = value as? String {
			self.valueString = value
		} else if let value = value as? FHIRTime {
			self.valueTime = value
		} else if let value = value as? Int {
			self.valueUnsignedInt = value
		} else if let value = value as? String {
			self.valueUri = value
		} else if let value = value as? Address {
			self.valueAddress = value
		} else if let value = value as? Age {
			self.valueAge = value
		} else if let value = value as? Annotation {
			self.valueAnnotation = value
		} else if let value = value as? Attachment {
			self.valueAttachment = value
		} else if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		} else if let value = value as? Coding {
			self.valueCoding = value
		} else if let value = value as? ContactPoint {
			self.valueContactPoint = value
		} else if let value = value as? Count {
			self.valueCount = value
		} else if let value = value as? Distance {
			self.valueDistance = value
		} else if let value = value as? Duration {
			self.valueDuration = value
		} else if let value = value as? HumanName {
			self.valueHumanName = value
		} else if let value = value as? Identifier {
			self.valueIdentifier = value
		} else if let value = value as? Money {
			self.valueMoney = value
		} else if let value = value as? Period {
			self.valuePeriod = value
		} else if let value = value as? Quantity {
			self.valueQuantity = value
		} else if let value = value as? Range {
			self.valueRange = value
		} else if let value = value as? Ratio {
			self.valueRatio = value
		} else if let value = value as? Reference {
			self.valueReference = value
		} else if let value = value as? SampledData {
			self.valueSampledData = value
		} else if let value = value as? Signature {
			self.valueSignature = value
		} else if let value = value as? Timing {
			self.valueTiming = value
		} else if let value = value as? Meta {
			self.valueMeta = value
		} else {
			debugPrint("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionExampleKeys.self)
		if let item = label {
			try container.encode(item, forKey: .label)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("label")
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
		let container = try decoder.container(keyedBy:  ElementDefinitionExampleKeys.self)
		label = try container.decode(String.self, forKey: .label)
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
        guard let object = to as? ElementDefinitionExample else {
            return false
        }

		return	label == object.label &&
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

extension ElementDefinitionExample {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinitionExample else {
            return self
        }

        resource.label = self.label
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

/**
Map element to another set of definitions.

Identifies a concept from an external specification that roughly corresponds to this element.
*/
open class ElementDefinitionMapping: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionMapping" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinitionMapping>] = [

        "comment" : \ElementDefinitionMapping.comment,
        "identity" : \ElementDefinitionMapping.identity,
        "language" : \ElementDefinitionMapping.language,
        "map" : \ElementDefinitionMapping.map
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinitionMapping.keyPaths[name] as? KeyPath<ElementDefinitionMapping, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinitionMapping.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Comments about the mapping or its use.
	public var comment: String?

	/// Reference to mapping declaration.
	public var identity: String?

	/// Computable language of mapping.
	public var language: String?

	/// Details of the mapping.
	public var map: String?

	enum ElementDefinitionMappingKeys: String, CodingKey {
		case comment
		case identity
		case language
		case map
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(identity: String, map: String) {
		self.init()
		self.identity = identity
		self.map = map
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionMappingKeys.self)
		if let item = identity {
			try container.encode(item, forKey: .identity)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("identity")
		}
		if let item = map {
			try container.encode(item, forKey: .map)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("map")
		}
		try container.encodeIfPresent(comment, forKey: .comment)
		try container.encodeIfPresent(language, forKey: .language)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementDefinitionMappingKeys.self)
		identity = try container.decode(String.self, forKey: .identity)
		map = try container.decode(String.self, forKey: .map)
		comment = try container.decodeIfPresent(String.self, forKey: .comment)
		language = try container.decodeIfPresent(String.self, forKey: .language)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ElementDefinitionMapping else {
            return false
        }

		return	comment == object.comment &&
			identity == object.identity &&
			language == object.language &&
			map == object.map &&
			super.equal(to: to)
	}
}

extension ElementDefinitionMapping {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinitionMapping else {
            return self
        }

        resource.comment = self.comment
        resource.identity = self.identity
        resource.language = self.language
        resource.map = self.map

        return resource
    }
}

/**
This element is sliced - slices follow.

Indicates that the element is sliced into a set of alternative definitions (i.e. in a structure definition, there are
multiple different constraints on a single element in the base resource). Slicing can be used in any resource that has
cardinality ..* on the base resource, or any resource with a choice of types. The set of slices is any elements that
come after this in the element sequence that have the same path, until a shorter path occurs (the shorter path
terminates the set).
*/
open class ElementDefinitionSlicing: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionSlicing" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinitionSlicing>] = [

        "description_fhir" : \ElementDefinitionSlicing.description_fhir,
        "discriminator" : \ElementDefinitionSlicing.discriminator,
        "ordered" : \ElementDefinitionSlicing.ordered,
        "rules" : \ElementDefinitionSlicing.rules
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinitionSlicing.keyPaths[name] as? KeyPath<ElementDefinitionSlicing, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinitionSlicing.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Text description of how slicing works (or not).
	public var description_fhir: String?

	/// Element values that are used to distinguish the slices.
	public var discriminator: [ElementDefinitionSlicingDiscriminator]?

	/// If elements must be in same order as slices.
	public var ordered: Bool?

	/// Whether additional slices are allowed or not. When the slices are ordered, profile authors can also say that
	/// additional slices are only allowed at the end.
	public var rules: SlicingRules?

	enum ElementDefinitionSlicingKeys: String, CodingKey {
		case description_fhir = "description"
		case discriminator
		case ordered
		case rules
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(rules: SlicingRules) {
		self.init()
		self.rules = rules
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionSlicingKeys.self)
		if let item = rules {
			try container.encode(item, forKey: .rules)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("rules")
		}
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeArrayIfPresent(discriminator, forKey: .discriminator)
		try container.encodeIfPresent(ordered, forKey: .ordered)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementDefinitionSlicingKeys.self)
		rules = try container.decode(SlicingRules.self, forKey: .rules)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		discriminator = try container.decodeArrayIfPresent([ElementDefinitionSlicingDiscriminator].self, forKey: .discriminator)
		ordered = try container.decodeIfPresent(Bool.self, forKey: .ordered)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ElementDefinitionSlicing else {
            return false
        }

		return	description_fhir == object.description_fhir &&
			discriminator == object.discriminator &&
			ordered == object.ordered &&
			rules == object.rules &&
			super.equal(to: to)
	}
}

extension ElementDefinitionSlicing {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinitionSlicing else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.discriminator = self.discriminator?.compactMap { $0.copy(with: zone) as? ElementDefinitionSlicingDiscriminator }
        resource.ordered = self.ordered
        resource.rules = self.rules

        return resource
    }
}

/**
Element values that are used to distinguish the slices.

Designates which child elements are used to discriminate between the slices when processing an instance. If one or more
discriminators are provided, the value of the child elements in the instance data SHALL completely distinguish which
slice the element in the resource matches based on the allowed values for those elements in each of the slices.
*/
open class ElementDefinitionSlicingDiscriminator: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionSlicingDiscriminator" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinitionSlicingDiscriminator>] = [

        "path" : \ElementDefinitionSlicingDiscriminator.path,
        "type" : \ElementDefinitionSlicingDiscriminator.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinitionSlicingDiscriminator.keyPaths[name] as? KeyPath<ElementDefinitionSlicingDiscriminator, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinitionSlicingDiscriminator.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Path to element value.
	public var path: String?

	/// How the element value is interpreted when discrimination is evaluated.
	public var type: DiscriminatorType?

	enum ElementDefinitionSlicingDiscriminatorKeys: String, CodingKey {
		case path
		case type
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(path: String, type: DiscriminatorType) {
		self.init()
		self.path = path
		self.type = type
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionSlicingDiscriminatorKeys.self)
		if let item = path {
			try container.encode(item, forKey: .path)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("path")
		}
		if let item = type {
			try container.encode(item, forKey: .type)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("type")
		}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementDefinitionSlicingDiscriminatorKeys.self)
		path = try container.decode(String.self, forKey: .path)
		type = try container.decode(DiscriminatorType.self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ElementDefinitionSlicingDiscriminator else {
            return false
        }

		return	path == object.path &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension ElementDefinitionSlicingDiscriminator {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinitionSlicingDiscriminator else {
            return self
        }

        resource.path = self.path
        resource.type = self.type

        return resource
    }
}

/**
Data type and Profile for this element.

The data type or resource that the value of this element is permitted to be.
*/
open class ElementDefinitionType: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionType" }
	}

    private static var keyPaths: [String: PartialKeyPath<ElementDefinitionType>] = [

        "aggregation" : \ElementDefinitionType.aggregation,
        "code" : \ElementDefinitionType.code,
        "profile" : \ElementDefinitionType.profile,
        "targetProfile" : \ElementDefinitionType.targetProfile,
        "versioning" : \ElementDefinitionType.versioning
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ElementDefinitionType.keyPaths[name] as? KeyPath<ElementDefinitionType, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ElementDefinitionType.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// If the type is a reference to another resource, how the resource is or can be aggregated - is it a contained
	/// resource, or a reference, and if the context is a bundle, is it included in the bundle.
	public var aggregation: [AggregationMode]?

	/// Data type or Resource (reference to definition).
	public var code: String?

	/// Profile (StructureDefinition) to apply (or IG).
	public var profile: String?

	/// Profile (StructureDefinition) to apply to reference target (or IG).
	public var targetProfile: String?

	/// Whether this reference needs to be version specific or version independent, or whether either can be used.
	public var versioning: ReferenceVersionRules?

	enum ElementDefinitionTypeKeys: String, CodingKey {
		case aggregation
		case code
		case profile
		case targetProfile
		case versioning
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(code: String) {
		self.init()
		self.code = code
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementDefinitionTypeKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		try container.encodeArrayIfPresent(aggregation, forKey: .aggregation)
		try container.encodeIfPresent(profile, forKey: .profile)
		try container.encodeIfPresent(targetProfile, forKey: .targetProfile)
		try container.encodeIfPresent(versioning, forKey: .versioning)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementDefinitionTypeKeys.self)
		code = try container.decode(String.self, forKey: .code)
		aggregation = try container.decodeArrayIfPresent([AggregationMode].self, forKey: .aggregation)
		profile = try container.decodeIfPresent(String.self, forKey: .profile)
		targetProfile = try container.decodeIfPresent(String.self, forKey: .targetProfile)
		versioning = try container.decodeIfPresent(ReferenceVersionRules.self, forKey: .versioning)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ElementDefinitionType else {
            return false
        }

		return	aggregation == object.aggregation &&
			code == object.code &&
			profile == object.profile &&
			targetProfile == object.targetProfile &&
			versioning == object.versioning &&
			super.equal(to: to)
	}
}

extension ElementDefinitionType {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ElementDefinitionType else {
            return self
        }

        resource.aggregation = self.aggregation
        resource.code = self.code
        resource.profile = self.profile
        resource.targetProfile = self.targetProfile
        resource.versioning = self.versioning

        return resource
    }
}
