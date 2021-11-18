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
//  QuestionnaireResponse.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse)
//

import Foundation

/**
A structured set of questions and their answers.

A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
corresponding to the structure of the grouping of the questionnaire being responded to.
*/
open class QuestionnaireResponse: DomainResource {
	override open class var resourceType: String {
		get { return "QuestionnaireResponse" }
	}

    private static var keyPaths: [String: PartialKeyPath<QuestionnaireResponse>] = [

        "author" : \QuestionnaireResponse.author,
        "authored" : \QuestionnaireResponse.authored,
        "basedOn" : \QuestionnaireResponse.basedOn,
        "context" : \QuestionnaireResponse.context,
        "identifier" : \QuestionnaireResponse.identifier,
        "item" : \QuestionnaireResponse.item,
        "parent" : \QuestionnaireResponse.parent,
        "questionnaire" : \QuestionnaireResponse.questionnaire,
        "source" : \QuestionnaireResponse.source,
        "status" : \QuestionnaireResponse.status,
        "subject" : \QuestionnaireResponse.subject
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = QuestionnaireResponse.keyPaths[name] as? KeyPath<QuestionnaireResponse, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = QuestionnaireResponse.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Person who received and recorded the answers.
	public var author: Reference?

	/// Date the answers were gathered.
	public var authored: DateTime?

	/// Request fulfilled by this QuestionnaireResponse.
	public var basedOn: [Reference]?

	/// Encounter or Episode during which questionnaire was completed.
	public var context: Reference?

	/// Unique id for this set of answers.
	public var identifier: Identifier?

	/// Groups and questions.
	public var item: [QuestionnaireResponseItem]?

	/// Part of this action.
	public var parent: [Reference]?

	/// Form being answered.
	public var questionnaire: Reference?

	/// The person who answered the questions.
	public var source: Reference?

	/// The position of the questionnaire response within its overall lifecycle.
	public var status: QuestionnaireResponseStatus?

	/// The subject of the questions.
	public var subject: Reference?

	enum QuestionnaireResponseKeys: String, CodingKey {
		case author
		case authored
		case basedOn
		case context
		case identifier
		case item
		case parent
		case questionnaire
		case source
		case status
		case subject
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(status: QuestionnaireResponseStatus) {
		self.init()
		self.status = status
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: QuestionnaireResponseKeys.self)
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		try container.encodeIfPresent(author, forKey: .author)
		try container.encodeIfPresent(authored, forKey: .authored)
		try container.encodeArrayIfPresent(basedOn, forKey: .basedOn)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(item, forKey: .item)
		try container.encodeArrayIfPresent(parent, forKey: .parent)
		try container.encodeIfPresent(questionnaire, forKey: .questionnaire)
		try container.encodeIfPresent(source, forKey: .source)
		try container.encodeIfPresent(subject, forKey: .subject)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  QuestionnaireResponseKeys.self)
		status = try container.decode(QuestionnaireResponseStatus.self, forKey: .status)
		author = try container.decodeIfPresent(Reference.self, forKey: .author)
		authored = try container.decodeIfPresent(DateTime.self, forKey: .authored)
		basedOn = try container.decodeArrayIfPresent([Reference].self, forKey: .basedOn)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		identifier = try container.decodeIfPresent(Identifier.self, forKey: .identifier)
		item = try container.decodeArrayIfPresent([QuestionnaireResponseItem].self, forKey: .item)
		parent = try container.decodeArrayIfPresent([Reference].self, forKey: .parent)
		questionnaire = try container.decodeIfPresent(Reference.self, forKey: .questionnaire)
		source = try container.decodeIfPresent(Reference.self, forKey: .source)
		subject = try container.decodeIfPresent(Reference.self, forKey: .subject)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? QuestionnaireResponse else {
            return false
        }

		return	author == object.author &&
			authored == object.authored &&
			basedOn == object.basedOn &&
			context == object.context &&
			identifier == object.identifier &&
			item == object.item &&
			parent == object.parent &&
			questionnaire == object.questionnaire &&
			source == object.source &&
			status == object.status &&
			subject == object.subject &&
			super.equal(to: to)
	}
}

extension QuestionnaireResponse {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? QuestionnaireResponse else {
            return self
        }

        resource.author = self.author?.copy(with: zone) as? Reference
        resource.authored = self.authored
        resource.basedOn = self.basedOn?.compactMap { $0.copy(with: zone) as? Reference }
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.identifier = self.identifier?.copy(with: zone) as? Identifier
        resource.item = self.item?.compactMap { $0.copy(with: zone) as? QuestionnaireResponseItem }
        resource.parent = self.parent?.compactMap { $0.copy(with: zone) as? Reference }
        resource.questionnaire = self.questionnaire?.copy(with: zone) as? Reference
        resource.source = self.source?.copy(with: zone) as? Reference
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference

        return resource
    }
}

/**
Groups and questions.

A group or question item from the original questionnaire for which answers are provided.
*/
open class QuestionnaireResponseItem: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireResponseItem" }
	}

    private static var keyPaths: [String: PartialKeyPath<QuestionnaireResponseItem>] = [

        "answer" : \QuestionnaireResponseItem.answer,
        "definition" : \QuestionnaireResponseItem.definition,
        "item" : \QuestionnaireResponseItem.item,
        "linkId" : \QuestionnaireResponseItem.linkId,
        "subject" : \QuestionnaireResponseItem.subject,
        "text" : \QuestionnaireResponseItem.text
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = QuestionnaireResponseItem.keyPaths[name] as? KeyPath<QuestionnaireResponseItem, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = QuestionnaireResponseItem.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// The response(s) to the question.
	public var answer: [QuestionnaireResponseItemAnswer]?

	/// ElementDefinition - details for the item.
	public var definition: String?

	/// Nested questionnaire response items.
	public var item: [QuestionnaireResponseItem]?

	/// Pointer to specific item from Questionnaire.
	public var linkId: String?

	/// The subject this group's answers are about.
	public var subject: Reference?

	/// Name for group or question text.
	public var text: String?

	enum QuestionnaireResponseItemKeys: String, CodingKey {
		case answer
		case definition
		case item
		case linkId
		case subject
		case text
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(linkId: String) {
		self.init()
		self.linkId = linkId
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: QuestionnaireResponseItemKeys.self)
		if let item = linkId {
			try container.encode(item, forKey: .linkId)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("linkId")
		}
		try container.encodeArrayIfPresent(answer, forKey: .answer)
		try container.encodeIfPresent(definition, forKey: .definition)
		try container.encodeArrayIfPresent(item, forKey: .item)
		try container.encodeIfPresent(subject, forKey: .subject)
		try container.encodeIfPresent(text, forKey: .text)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  QuestionnaireResponseItemKeys.self)
		linkId = try container.decode(String.self, forKey: .linkId)
		answer = try container.decodeArrayIfPresent([QuestionnaireResponseItemAnswer].self, forKey: .answer)
		definition = try container.decodeIfPresent(String.self, forKey: .definition)
		item = try container.decodeArrayIfPresent([QuestionnaireResponseItem].self, forKey: .item)
		subject = try container.decodeIfPresent(Reference.self, forKey: .subject)
		text = try container.decodeIfPresent(String.self, forKey: .text)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? QuestionnaireResponseItem else {
            return false
        }

		return	answer == object.answer &&
			definition == object.definition &&
			item == object.item &&
			linkId == object.linkId &&
			subject == object.subject &&
			text == object.text &&
			super.equal(to: to)
	}
}

extension QuestionnaireResponseItem {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? QuestionnaireResponseItem else {
            return self
        }

        resource.answer = self.answer?.compactMap { $0.copy(with: zone) as? QuestionnaireResponseItemAnswer }
        resource.definition = self.definition
        resource.item = self.item?.compactMap { $0.copy(with: zone) as? QuestionnaireResponseItem }
        resource.linkId = self.linkId
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.text = self.text

        return resource
    }
}

/**
The response(s) to the question.

The respondent's answer(s) to the question.
*/
open class QuestionnaireResponseItemAnswer: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireResponseItemAnswer" }
	}

    private static var keyPaths: [String: PartialKeyPath<QuestionnaireResponseItemAnswer>] = [

        "item" : \QuestionnaireResponseItemAnswer.item,
        "valueAttachment" : \QuestionnaireResponseItemAnswer.valueAttachment,
        "valueBoolean" : \QuestionnaireResponseItemAnswer.valueBoolean,
        "valueCoding" : \QuestionnaireResponseItemAnswer.valueCoding,
        "valueDate" : \QuestionnaireResponseItemAnswer.valueDate,
        "valueDateTime" : \QuestionnaireResponseItemAnswer.valueDateTime,
        "valueDecimal" : \QuestionnaireResponseItemAnswer.valueDecimal,
        "valueInteger" : \QuestionnaireResponseItemAnswer.valueInteger,
        "valueQuantity" : \QuestionnaireResponseItemAnswer.valueQuantity,
        "valueReference" : \QuestionnaireResponseItemAnswer.valueReference,
        "valueString" : \QuestionnaireResponseItemAnswer.valueString,
        "valueTime" : \QuestionnaireResponseItemAnswer.valueTime,
        "valueUri" : \QuestionnaireResponseItemAnswer.valueUri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = QuestionnaireResponseItemAnswer.keyPaths[name] as? KeyPath<QuestionnaireResponseItemAnswer, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = QuestionnaireResponseItemAnswer.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Nested groups and questions.
	public var item: [QuestionnaireResponseItem]?

	/// Single-valued answer to the question.
	public var valueAttachment: Attachment?

	/// Single-valued answer to the question.
	public var valueBoolean: Bool?

	/// Single-valued answer to the question.
	public var valueCoding: Coding?

	/// Single-valued answer to the question.
	public var valueDate: FHIRDate?

	/// Single-valued answer to the question.
	public var valueDateTime: DateTime?

	/// Single-valued answer to the question.
	public var valueDecimal: Float?

	/// Single-valued answer to the question.
	public var valueInteger: Int?

	/// Single-valued answer to the question.
	public var valueQuantity: Quantity?

	/// Single-valued answer to the question.
	public var valueReference: Reference?

	/// Single-valued answer to the question.
	public var valueString: String?

	/// Single-valued answer to the question.
	public var valueTime: FHIRTime?

	/// Single-valued answer to the question.
	public var valueUri: String?

	enum QuestionnaireResponseItemAnswerKeys: String, CodingKey {
		case item
		case valueAttachment
		case valueBoolean
		case valueCoding
		case valueDate
		case valueDateTime
		case valueDecimal
		case valueInteger
		case valueQuantity
		case valueReference
		case valueString
		case valueTime
		case valueUri
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: QuestionnaireResponseItemAnswerKeys.self)
		try container.encodeArrayIfPresent(item, forKey: .item)
		try container.encodeIfPresent(valueAttachment, forKey: .valueAttachment)
		try container.encodeIfPresent(valueBoolean, forKey: .valueBoolean)
		try container.encodeIfPresent(valueCoding, forKey: .valueCoding)
		try container.encodeIfPresent(valueDate, forKey: .valueDate)
		try container.encodeIfPresent(valueDateTime, forKey: .valueDateTime)
		try container.encodeIfPresent(valueDecimal, forKey: .valueDecimal)
		try container.encodeIfPresent(valueInteger, forKey: .valueInteger)
		try container.encodeIfPresent(valueQuantity, forKey: .valueQuantity)
		try container.encodeIfPresent(valueReference, forKey: .valueReference)
		try container.encodeIfPresent(valueString, forKey: .valueString)
		try container.encodeIfPresent(valueTime, forKey: .valueTime)
		try container.encodeIfPresent(valueUri, forKey: .valueUri)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  QuestionnaireResponseItemAnswerKeys.self)
		item = try container.decodeArrayIfPresent([QuestionnaireResponseItem].self, forKey: .item)
		valueAttachment = try container.decodeIfPresent(Attachment.self, forKey: .valueAttachment)
		valueBoolean = try container.decodeIfPresent(Bool.self, forKey: .valueBoolean)
		valueCoding = try container.decodeIfPresent(Coding.self, forKey: .valueCoding)
		valueDate = try container.decodeIfPresent(FHIRDate.self, forKey: .valueDate)
		valueDateTime = try container.decodeIfPresent(DateTime.self, forKey: .valueDateTime)
		valueDecimal = try container.decodeIfPresent(Float.self, forKey: .valueDecimal)
		valueInteger = try container.decodeIfPresent(Int.self, forKey: .valueInteger)
		valueQuantity = try container.decodeIfPresent(Quantity.self, forKey: .valueQuantity)
		valueReference = try container.decodeIfPresent(Reference.self, forKey: .valueReference)
		valueString = try container.decodeIfPresent(String.self, forKey: .valueString)
		valueTime = try container.decodeIfPresent(FHIRTime.self, forKey: .valueTime)
		valueUri = try container.decodeIfPresent(String.self, forKey: .valueUri)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? QuestionnaireResponseItemAnswer else {
            return false
        }

		return	item == object.item &&
			valueAttachment == object.valueAttachment &&
			valueBoolean == object.valueBoolean &&
			valueCoding == object.valueCoding &&
			valueDate == object.valueDate &&
			valueDateTime == object.valueDateTime &&
			valueDecimal == object.valueDecimal &&
			valueInteger == object.valueInteger &&
			valueQuantity == object.valueQuantity &&
			valueReference == object.valueReference &&
			valueString == object.valueString &&
			valueTime == object.valueTime &&
			valueUri == object.valueUri &&
			super.equal(to: to)
	}
}

extension QuestionnaireResponseItemAnswer {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? QuestionnaireResponseItemAnswer else {
            return self
        }

        resource.item = self.item?.compactMap { $0.copy(with: zone) as? QuestionnaireResponseItem }
        resource.valueAttachment = self.valueAttachment?.copy(with: zone) as? Attachment
        resource.valueBoolean = self.valueBoolean
        resource.valueCoding = self.valueCoding?.copy(with: zone) as? Coding
        resource.valueDate = self.valueDate
        resource.valueDateTime = self.valueDateTime
        resource.valueDecimal = self.valueDecimal
        resource.valueInteger = self.valueInteger
        resource.valueQuantity = self.valueQuantity?.copy(with: zone) as? Quantity
        resource.valueReference = self.valueReference?.copy(with: zone) as? Reference
        resource.valueString = self.valueString
        resource.valueTime = self.valueTime
        resource.valueUri = self.valueUri

        return resource
    }
}
