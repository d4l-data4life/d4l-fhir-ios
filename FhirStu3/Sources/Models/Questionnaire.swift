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
//  Questionnaire.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Questionnaire)
//

import Foundation

/**
A structured set of questions.

A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide
detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
*/
open class Questionnaire: DomainResource {
	override open class var resourceType: String {
		get { return "Questionnaire" }
	}

    private static var keyPaths: [String: PartialKeyPath<Questionnaire>] = [

        "approvalDate" : \Questionnaire.approvalDate,
        "code" : \Questionnaire.code,
        "contact" : \Questionnaire.contact,
        "copyright" : \Questionnaire.copyright,
        "date" : \Questionnaire.date,
        "description_fhir" : \Questionnaire.description_fhir,
        "effectivePeriod" : \Questionnaire.effectivePeriod,
        "experimental" : \Questionnaire.experimental,
        "identifier" : \Questionnaire.identifier,
        "item" : \Questionnaire.item,
        "jurisdiction" : \Questionnaire.jurisdiction,
        "lastReviewDate" : \Questionnaire.lastReviewDate,
        "name" : \Questionnaire.name,
        "publisher" : \Questionnaire.publisher,
        "purpose" : \Questionnaire.purpose,
        "status" : \Questionnaire.status,
        "subjectType" : \Questionnaire.subjectType,
        "title" : \Questionnaire.title,
        "url" : \Questionnaire.url,
        "useContext" : \Questionnaire.useContext,
        "version" : \Questionnaire.version
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Questionnaire.keyPaths[name] as? KeyPath<Questionnaire, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Questionnaire.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// When the questionnaire was approved by publisher.
	public var approvalDate: FHIRDate?

	/// Concept that represents the overall questionnaire.
	public var code: [Coding]?

	/// Contact details for the publisher.
	public var contact: [ContactDetail]?

	/// Use and/or publishing restrictions.
	public var copyright: String?

	/// Date this was last changed.
	public var date: DateTime?

	/// Natural language description of the questionnaire.
	public var description_fhir: String?

	/// When the questionnaire is expected to be used.
	public var effectivePeriod: Period?

	/// For testing purposes, not real usage.
	public var experimental: Bool?

	/// Additional identifier for the questionnaire.
	public var identifier: [Identifier]?

	/// Questions and sections within the Questionnaire.
	public var item: [QuestionnaireItem]?

	/// Intended jurisdiction for questionnaire (if applicable).
	public var jurisdiction: [CodeableConcept]?

	/// When the questionnaire was last reviewed.
	public var lastReviewDate: FHIRDate?

	/// Name for this questionnaire (computer friendly).
	public var name: String?

	/// Name of the publisher (organization or individual).
	public var publisher: String?

	/// Why this questionnaire is defined.
	public var purpose: String?

	/// The status of this questionnaire. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?

	/// Resource that can be subject of QuestionnaireResponse.
	public var subjectType: [String]?

	/// Name for this questionnaire (human friendly).
	public var title: String?

	/// Logical URI to reference this questionnaire (globally unique).
	public var url: String?

	/// Context the content is intended to support.
	public var useContext: [UsageContext]?

	/// Business version of the questionnaire.
	public var version: String?

	enum QuestionnaireKeys: String, CodingKey {
		case approvalDate
		case code
		case contact
		case copyright
		case date
		case description_fhir = "description"
		case effectivePeriod
		case experimental
		case identifier
		case item
		case jurisdiction
		case lastReviewDate
		case name
		case publisher
		case purpose
		case status
		case subjectType
		case title
		case url
		case useContext
		case version
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(status: PublicationStatus) {
		self.init()
		self.status = status
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: QuestionnaireKeys.self)
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		try container.encodeIfPresent(approvalDate, forKey: .approvalDate)
		try container.encodeArrayIfPresent(code, forKey: .code)
		try container.encodeArrayIfPresent(contact, forKey: .contact)
		try container.encodeIfPresent(copyright, forKey: .copyright)
		try container.encodeIfPresent(date, forKey: .date)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeIfPresent(effectivePeriod, forKey: .effectivePeriod)
		try container.encodeIfPresent(experimental, forKey: .experimental)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(item, forKey: .item)
		try container.encodeArrayIfPresent(jurisdiction, forKey: .jurisdiction)
		try container.encodeIfPresent(lastReviewDate, forKey: .lastReviewDate)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeIfPresent(publisher, forKey: .publisher)
		try container.encodeIfPresent(purpose, forKey: .purpose)
		try container.encodeArrayIfPresent(subjectType, forKey: .subjectType)
		try container.encodeIfPresent(title, forKey: .title)
		try container.encodeIfPresent(url, forKey: .url)
		try container.encodeArrayIfPresent(useContext, forKey: .useContext)
		try container.encodeIfPresent(version, forKey: .version)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  QuestionnaireKeys.self)
		status = try container.decode(PublicationStatus.self, forKey: .status)
		approvalDate = try container.decodeIfPresent(FHIRDate.self, forKey: .approvalDate)
		code = try container.decodeArrayIfPresent([Coding].self, forKey: .code)
		contact = try container.decodeArrayIfPresent([ContactDetail].self, forKey: .contact)
		copyright = try container.decodeIfPresent(String.self, forKey: .copyright)
		date = try container.decodeIfPresent(DateTime.self, forKey: .date)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		effectivePeriod = try container.decodeIfPresent(Period.self, forKey: .effectivePeriod)
		experimental = try container.decodeIfPresent(Bool.self, forKey: .experimental)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		item = try container.decodeArrayIfPresent([QuestionnaireItem].self, forKey: .item)
		jurisdiction = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .jurisdiction)
		lastReviewDate = try container.decodeIfPresent(FHIRDate.self, forKey: .lastReviewDate)
		name = try container.decodeIfPresent(String.self, forKey: .name)
		publisher = try container.decodeIfPresent(String.self, forKey: .publisher)
		purpose = try container.decodeIfPresent(String.self, forKey: .purpose)
		subjectType = try container.decodeArrayIfPresent([String].self, forKey: .subjectType)
		title = try container.decodeIfPresent(String.self, forKey: .title)
		url = try container.decodeIfPresent(String.self, forKey: .url)
		useContext = try container.decodeArrayIfPresent([UsageContext].self, forKey: .useContext)
		version = try container.decodeIfPresent(String.self, forKey: .version)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Questionnaire else {
            return false
        }

		return	approvalDate == object.approvalDate &&
			code == object.code &&
			contact == object.contact &&
			copyright == object.copyright &&
			date == object.date &&
			description_fhir == object.description_fhir &&
			effectivePeriod == object.effectivePeriod &&
			experimental == object.experimental &&
			identifier == object.identifier &&
			item == object.item &&
			jurisdiction == object.jurisdiction &&
			lastReviewDate == object.lastReviewDate &&
			name == object.name &&
			publisher == object.publisher &&
			purpose == object.purpose &&
			status == object.status &&
			subjectType == object.subjectType &&
			title == object.title &&
			url == object.url &&
			useContext == object.useContext &&
			version == object.version &&
			super.equal(to: to)
	}
}

extension Questionnaire {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Questionnaire else {
            return self
        }

        resource.approvalDate = self.approvalDate
        resource.code = self.code?.compactMap { $0.copy(with: zone) as? Coding }
        resource.contact = self.contact?.compactMap { $0.copy(with: zone) as? ContactDetail }
        resource.copyright = self.copyright
        resource.date = self.date
        resource.description_fhir = self.description_fhir
        resource.effectivePeriod = self.effectivePeriod?.copy(with: zone) as? Period
        resource.experimental = self.experimental
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.item = self.item?.compactMap { $0.copy(with: zone) as? QuestionnaireItem }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.lastReviewDate = self.lastReviewDate
        resource.name = self.name
        resource.publisher = self.publisher
        resource.purpose = self.purpose
        resource.status = self.status
        resource.subjectType = self.subjectType
        resource.title = self.title
        resource.url = self.url
        resource.useContext = self.useContext?.compactMap { $0.copy(with: zone) as? UsageContext }
        resource.version = self.version

        return resource
    }
}

/**
Questions and sections within the Questionnaire.

A particular question, question grouping or display text that is part of the questionnaire.
*/
open class QuestionnaireItem: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItem" }
	}

    private static var keyPaths: [String: PartialKeyPath<QuestionnaireItem>] = [

        "code" : \QuestionnaireItem.code,
        "definition" : \QuestionnaireItem.definition,
        "enableWhen" : \QuestionnaireItem.enableWhen,
        "initialAttachment" : \QuestionnaireItem.initialAttachment,
        "initialBoolean" : \QuestionnaireItem.initialBoolean,
        "initialCoding" : \QuestionnaireItem.initialCoding,
        "initialDate" : \QuestionnaireItem.initialDate,
        "initialDateTime" : \QuestionnaireItem.initialDateTime,
        "initialDecimal" : \QuestionnaireItem.initialDecimal,
        "initialInteger" : \QuestionnaireItem.initialInteger,
        "initialQuantity" : \QuestionnaireItem.initialQuantity,
        "initialReference" : \QuestionnaireItem.initialReference,
        "initialString" : \QuestionnaireItem.initialString,
        "initialTime" : \QuestionnaireItem.initialTime,
        "initialUri" : \QuestionnaireItem.initialUri,
        "item" : \QuestionnaireItem.item,
        "linkId" : \QuestionnaireItem.linkId,
        "maxLength" : \QuestionnaireItem.maxLength,
        "option" : \QuestionnaireItem.option,
        "options" : \QuestionnaireItem.options,
        "prefix" : \QuestionnaireItem.prefix,
        "readOnly" : \QuestionnaireItem.readOnly,
        "repeats" : \QuestionnaireItem.repeats,
        "required" : \QuestionnaireItem.required,
        "text" : \QuestionnaireItem.text,
        "type" : \QuestionnaireItem.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = QuestionnaireItem.keyPaths[name] as? KeyPath<QuestionnaireItem, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = QuestionnaireItem.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Corresponding concept for this item in a terminology.
	public var code: [Coding]?

	/// ElementDefinition - details for the item.
	public var definition: String?

	/// Only allow data when.
	public var enableWhen: [QuestionnaireItemEnableWhen]?

	/// Default value when item is first rendered.
	public var initialAttachment: Attachment?

	/// Default value when item is first rendered.
	public var initialBoolean: Bool?

	/// Default value when item is first rendered.
	public var initialCoding: Coding?

	/// Default value when item is first rendered.
	public var initialDate: FHIRDate?

	/// Default value when item is first rendered.
	public var initialDateTime: DateTime?

	/// Default value when item is first rendered.
	public var initialDecimal: Float?

	/// Default value when item is first rendered.
	public var initialInteger: Int?

	/// Default value when item is first rendered.
	public var initialQuantity: Quantity?

	/// Default value when item is first rendered.
	public var initialReference: Reference?

	/// Default value when item is first rendered.
	public var initialString: String?

	/// Default value when item is first rendered.
	public var initialTime: FHIRTime?

	/// Default value when item is first rendered.
	public var initialUri: String?

	/// Nested questionnaire items.
	public var item: [QuestionnaireItem]?

	/// Unique id for item in questionnaire.
	public var linkId: String?

	/// No more than this many characters.
	public var maxLength: Int?

	/// Permitted answer.
	public var option: [QuestionnaireItemOption]?

	/// Valueset containing permitted answers.
	public var options: Reference?

	/// E.g. "1(a)", "2.5.3".
	public var prefix: String?

	/// Don't allow human editing.
	public var readOnly: Bool?

	/// Whether the item may repeat.
	public var repeats: Bool?

	/// Whether the item must be included in data results.
	public var required: Bool?

	/// Primary text for the item.
	public var text: String?

	/// The type of questionnaire item this is - whether text for display, a grouping of other items or a particular
	/// type of data to be captured (string, integer, coded choice, etc.).
	public var type: QuestionnaireItemType?

	enum QuestionnaireItemKeys: String, CodingKey {
		case code
		case definition
		case enableWhen
		case initialAttachment
		case initialBoolean
		case initialCoding
		case initialDate
		case initialDateTime
		case initialDecimal
		case initialInteger
		case initialQuantity
		case initialReference
		case initialString
		case initialTime
		case initialUri
		case item
		case linkId
		case maxLength
		case option
		case options
		case prefix
		case readOnly
		case repeats
		case required
		case text
		case type
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(linkId: String, type: QuestionnaireItemType) {
		self.init()
		self.linkId = linkId
		self.type = type
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: QuestionnaireItemKeys.self)
		if let item = linkId {
			try container.encode(item, forKey: .linkId)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("linkId")
		}
		if let item = type {
			try container.encode(item, forKey: .type)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("type")
		}
		try container.encodeArrayIfPresent(code, forKey: .code)
		try container.encodeIfPresent(definition, forKey: .definition)
		try container.encodeArrayIfPresent(enableWhen, forKey: .enableWhen)
		try container.encodeIfPresent(initialAttachment, forKey: .initialAttachment)
		try container.encodeIfPresent(initialBoolean, forKey: .initialBoolean)
		try container.encodeIfPresent(initialCoding, forKey: .initialCoding)
		try container.encodeIfPresent(initialDate, forKey: .initialDate)
		try container.encodeIfPresent(initialDateTime, forKey: .initialDateTime)
		try container.encodeIfPresent(initialDecimal, forKey: .initialDecimal)
		try container.encodeIfPresent(initialInteger, forKey: .initialInteger)
		try container.encodeIfPresent(initialQuantity, forKey: .initialQuantity)
		try container.encodeIfPresent(initialReference, forKey: .initialReference)
		try container.encodeIfPresent(initialString, forKey: .initialString)
		try container.encodeIfPresent(initialTime, forKey: .initialTime)
		try container.encodeIfPresent(initialUri, forKey: .initialUri)
		try container.encodeArrayIfPresent(item, forKey: .item)
		try container.encodeIfPresent(maxLength, forKey: .maxLength)
		try container.encodeArrayIfPresent(option, forKey: .option)
		try container.encodeIfPresent(options, forKey: .options)
		try container.encodeIfPresent(prefix, forKey: .prefix)
		try container.encodeIfPresent(readOnly, forKey: .readOnly)
		try container.encodeIfPresent(repeats, forKey: .repeats)
		try container.encodeIfPresent(required, forKey: .required)
		try container.encodeIfPresent(text, forKey: .text)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  QuestionnaireItemKeys.self)
		linkId = try container.decode(String.self, forKey: .linkId)
		type = try container.decode(QuestionnaireItemType.self, forKey: .type)
		code = try container.decodeArrayIfPresent([Coding].self, forKey: .code)
		definition = try container.decodeIfPresent(String.self, forKey: .definition)
		enableWhen = try container.decodeArrayIfPresent([QuestionnaireItemEnableWhen].self, forKey: .enableWhen)
		initialAttachment = try container.decodeIfPresent(Attachment.self, forKey: .initialAttachment)
		initialBoolean = try container.decodeIfPresent(Bool.self, forKey: .initialBoolean)
		initialCoding = try container.decodeIfPresent(Coding.self, forKey: .initialCoding)
		initialDate = try container.decodeIfPresent(FHIRDate.self, forKey: .initialDate)
		initialDateTime = try container.decodeIfPresent(DateTime.self, forKey: .initialDateTime)
		initialDecimal = try container.decodeIfPresent(Float.self, forKey: .initialDecimal)
		initialInteger = try container.decodeIfPresent(Int.self, forKey: .initialInteger)
		initialQuantity = try container.decodeIfPresent(Quantity.self, forKey: .initialQuantity)
		initialReference = try container.decodeIfPresent(Reference.self, forKey: .initialReference)
		initialString = try container.decodeIfPresent(String.self, forKey: .initialString)
		initialTime = try container.decodeIfPresent(FHIRTime.self, forKey: .initialTime)
		initialUri = try container.decodeIfPresent(String.self, forKey: .initialUri)
		item = try container.decodeArrayIfPresent([QuestionnaireItem].self, forKey: .item)
		maxLength = try container.decodeIfPresent(Int.self, forKey: .maxLength)
		option = try container.decodeArrayIfPresent([QuestionnaireItemOption].self, forKey: .option)
		options = try container.decodeIfPresent(Reference.self, forKey: .options)
		prefix = try container.decodeIfPresent(String.self, forKey: .prefix)
		readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		repeats = try container.decodeIfPresent(Bool.self, forKey: .repeats)
		required = try container.decodeIfPresent(Bool.self, forKey: .required)
		text = try container.decodeIfPresent(String.self, forKey: .text)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? QuestionnaireItem else {
            return false
        }

		return	code == object.code &&
			definition == object.definition &&
			enableWhen == object.enableWhen &&
			initialAttachment == object.initialAttachment &&
			initialBoolean == object.initialBoolean &&
			initialCoding == object.initialCoding &&
			initialDate == object.initialDate &&
			initialDateTime == object.initialDateTime &&
			initialDecimal == object.initialDecimal &&
			initialInteger == object.initialInteger &&
			initialQuantity == object.initialQuantity &&
			initialReference == object.initialReference &&
			initialString == object.initialString &&
			initialTime == object.initialTime &&
			initialUri == object.initialUri &&
			item == object.item &&
			linkId == object.linkId &&
			maxLength == object.maxLength &&
			option == object.option &&
			options == object.options &&
			prefix == object.prefix &&
			readOnly == object.readOnly &&
			repeats == object.repeats &&
			required == object.required &&
			text == object.text &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension QuestionnaireItem {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? QuestionnaireItem else {
            return self
        }

        resource.code = self.code?.compactMap { $0.copy(with: zone) as? Coding }
        resource.definition = self.definition
        resource.enableWhen = self.enableWhen?.compactMap { $0.copy(with: zone) as? QuestionnaireItemEnableWhen }
        resource.initialAttachment = self.initialAttachment?.copy(with: zone) as? Attachment
        resource.initialBoolean = self.initialBoolean
        resource.initialCoding = self.initialCoding?.copy(with: zone) as? Coding
        resource.initialDate = self.initialDate
        resource.initialDateTime = self.initialDateTime
        resource.initialDecimal = self.initialDecimal
        resource.initialInteger = self.initialInteger
        resource.initialQuantity = self.initialQuantity?.copy(with: zone) as? Quantity
        resource.initialReference = self.initialReference?.copy(with: zone) as? Reference
        resource.initialString = self.initialString
        resource.initialTime = self.initialTime
        resource.initialUri = self.initialUri
        resource.item = self.item?.compactMap { $0.copy(with: zone) as? QuestionnaireItem }
        resource.linkId = self.linkId
        resource.maxLength = self.maxLength
        resource.option = self.option?.compactMap { $0.copy(with: zone) as? QuestionnaireItemOption }
        resource.options = self.options?.copy(with: zone) as? Reference
        resource.prefix = self.prefix
        resource.readOnly = self.readOnly
        resource.repeats = self.repeats
        resource.required = self.required
        resource.text = self.text
        resource.type = self.type

        return resource
    }
}

/**
Only allow data when.

A constraint indicating that this item should only be enabled (displayed/allow answers to be captured) when the
specified condition is true.
*/
open class QuestionnaireItemEnableWhen: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemEnableWhen" }
	}

    private static var keyPaths: [String: PartialKeyPath<QuestionnaireItemEnableWhen>] = [

        "answerAttachment" : \QuestionnaireItemEnableWhen.answerAttachment,
        "answerBoolean" : \QuestionnaireItemEnableWhen.answerBoolean,
        "answerCoding" : \QuestionnaireItemEnableWhen.answerCoding,
        "answerDate" : \QuestionnaireItemEnableWhen.answerDate,
        "answerDateTime" : \QuestionnaireItemEnableWhen.answerDateTime,
        "answerDecimal" : \QuestionnaireItemEnableWhen.answerDecimal,
        "answerInteger" : \QuestionnaireItemEnableWhen.answerInteger,
        "answerQuantity" : \QuestionnaireItemEnableWhen.answerQuantity,
        "answerReference" : \QuestionnaireItemEnableWhen.answerReference,
        "answerString" : \QuestionnaireItemEnableWhen.answerString,
        "answerTime" : \QuestionnaireItemEnableWhen.answerTime,
        "answerUri" : \QuestionnaireItemEnableWhen.answerUri,
        "hasAnswer" : \QuestionnaireItemEnableWhen.hasAnswer,
        "question" : \QuestionnaireItemEnableWhen.question
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = QuestionnaireItemEnableWhen.keyPaths[name] as? KeyPath<QuestionnaireItemEnableWhen, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = QuestionnaireItemEnableWhen.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Value question must have.
	public var answerAttachment: Attachment?

	/// Value question must have.
	public var answerBoolean: Bool?

	/// Value question must have.
	public var answerCoding: Coding?

	/// Value question must have.
	public var answerDate: FHIRDate?

	/// Value question must have.
	public var answerDateTime: DateTime?

	/// Value question must have.
	public var answerDecimal: Float?

	/// Value question must have.
	public var answerInteger: Int?

	/// Value question must have.
	public var answerQuantity: Quantity?

	/// Value question must have.
	public var answerReference: Reference?

	/// Value question must have.
	public var answerString: String?

	/// Value question must have.
	public var answerTime: FHIRTime?

	/// Value question must have.
	public var answerUri: String?

	/// Enable when answered or not.
	public var hasAnswer: Bool?

	/// Question that determines whether item is enabled.
	public var question: String?

	enum QuestionnaireItemEnableWhenKeys: String, CodingKey {
		case answerAttachment
		case answerBoolean
		case answerCoding
		case answerDate
		case answerDateTime
		case answerDecimal
		case answerInteger
		case answerQuantity
		case answerReference
		case answerString
		case answerTime
		case answerUri
		case hasAnswer
		case question
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(question: String) {
		self.init()
		self.question = question
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: QuestionnaireItemEnableWhenKeys.self)
		if let item = question {
			try container.encode(item, forKey: .question)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("question")
		}
		try container.encodeIfPresent(answerAttachment, forKey: .answerAttachment)
		try container.encodeIfPresent(answerBoolean, forKey: .answerBoolean)
		try container.encodeIfPresent(answerCoding, forKey: .answerCoding)
		try container.encodeIfPresent(answerDate, forKey: .answerDate)
		try container.encodeIfPresent(answerDateTime, forKey: .answerDateTime)
		try container.encodeIfPresent(answerDecimal, forKey: .answerDecimal)
		try container.encodeIfPresent(answerInteger, forKey: .answerInteger)
		try container.encodeIfPresent(answerQuantity, forKey: .answerQuantity)
		try container.encodeIfPresent(answerReference, forKey: .answerReference)
		try container.encodeIfPresent(answerString, forKey: .answerString)
		try container.encodeIfPresent(answerTime, forKey: .answerTime)
		try container.encodeIfPresent(answerUri, forKey: .answerUri)
		try container.encodeIfPresent(hasAnswer, forKey: .hasAnswer)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  QuestionnaireItemEnableWhenKeys.self)
		question = try container.decode(String.self, forKey: .question)
		answerAttachment = try container.decodeIfPresent(Attachment.self, forKey: .answerAttachment)
		answerBoolean = try container.decodeIfPresent(Bool.self, forKey: .answerBoolean)
		answerCoding = try container.decodeIfPresent(Coding.self, forKey: .answerCoding)
		answerDate = try container.decodeIfPresent(FHIRDate.self, forKey: .answerDate)
		answerDateTime = try container.decodeIfPresent(DateTime.self, forKey: .answerDateTime)
		answerDecimal = try container.decodeIfPresent(Float.self, forKey: .answerDecimal)
		answerInteger = try container.decodeIfPresent(Int.self, forKey: .answerInteger)
		answerQuantity = try container.decodeIfPresent(Quantity.self, forKey: .answerQuantity)
		answerReference = try container.decodeIfPresent(Reference.self, forKey: .answerReference)
		answerString = try container.decodeIfPresent(String.self, forKey: .answerString)
		answerTime = try container.decodeIfPresent(FHIRTime.self, forKey: .answerTime)
		answerUri = try container.decodeIfPresent(String.self, forKey: .answerUri)
		hasAnswer = try container.decodeIfPresent(Bool.self, forKey: .hasAnswer)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? QuestionnaireItemEnableWhen else {
            return false
        }

		return	answerAttachment == object.answerAttachment &&
			answerBoolean == object.answerBoolean &&
			answerCoding == object.answerCoding &&
			answerDate == object.answerDate &&
			answerDateTime == object.answerDateTime &&
			answerDecimal == object.answerDecimal &&
			answerInteger == object.answerInteger &&
			answerQuantity == object.answerQuantity &&
			answerReference == object.answerReference &&
			answerString == object.answerString &&
			answerTime == object.answerTime &&
			answerUri == object.answerUri &&
			hasAnswer == object.hasAnswer &&
			question == object.question &&
			super.equal(to: to)
	}
}

extension QuestionnaireItemEnableWhen {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? QuestionnaireItemEnableWhen else {
            return self
        }

        resource.answerAttachment = self.answerAttachment?.copy(with: zone) as? Attachment
        resource.answerBoolean = self.answerBoolean
        resource.answerCoding = self.answerCoding?.copy(with: zone) as? Coding
        resource.answerDate = self.answerDate
        resource.answerDateTime = self.answerDateTime
        resource.answerDecimal = self.answerDecimal
        resource.answerInteger = self.answerInteger
        resource.answerQuantity = self.answerQuantity?.copy(with: zone) as? Quantity
        resource.answerReference = self.answerReference?.copy(with: zone) as? Reference
        resource.answerString = self.answerString
        resource.answerTime = self.answerTime
        resource.answerUri = self.answerUri
        resource.hasAnswer = self.hasAnswer
        resource.question = self.question

        return resource
    }
}

/**
Permitted answer.

One of the permitted answers for a "choice" or "open-choice" question.
*/
open class QuestionnaireItemOption: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemOption" }
	}

    private static var keyPaths: [String: PartialKeyPath<QuestionnaireItemOption>] = [

        "valueCoding" : \QuestionnaireItemOption.valueCoding,
        "valueDate" : \QuestionnaireItemOption.valueDate,
        "valueInteger" : \QuestionnaireItemOption.valueInteger,
        "valueString" : \QuestionnaireItemOption.valueString,
        "valueTime" : \QuestionnaireItemOption.valueTime
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = QuestionnaireItemOption.keyPaths[name] as? KeyPath<QuestionnaireItemOption, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = QuestionnaireItemOption.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Answer value.
	public var valueCoding: Coding?

	/// Answer value.
	public var valueDate: FHIRDate?

	/// Answer value.
	public var valueInteger: Int?

	/// Answer value.
	public var valueString: String?

	/// Answer value.
	public var valueTime: FHIRTime?

	enum QuestionnaireItemOptionKeys: String, CodingKey {
		case valueCoding
		case valueDate
		case valueInteger
		case valueString
		case valueTime
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(value: Any) {
		self.init()
		if let value = value as? Int {
			self.valueInteger = value
		} else if let value = value as? FHIRDate {
			self.valueDate = value
		} else if let value = value as? FHIRTime {
			self.valueTime = value
		} else if let value = value as? String {
			self.valueString = value
		} else if let value = value as? Coding {
			self.valueCoding = value
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
		var container = encoder.container(keyedBy: QuestionnaireItemOptionKeys.self)
		try container.encodeIfPresent(valueCoding, forKey: .valueCoding)
		try container.encodeIfPresent(valueDate, forKey: .valueDate)
		try container.encodeIfPresent(valueInteger, forKey: .valueInteger)
		try container.encodeIfPresent(valueString, forKey: .valueString)
		try container.encodeIfPresent(valueTime, forKey: .valueTime)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  QuestionnaireItemOptionKeys.self)
		valueCoding = try container.decodeIfPresent(Coding.self, forKey: .valueCoding)
		valueDate = try container.decodeIfPresent(FHIRDate.self, forKey: .valueDate)
		valueInteger = try container.decodeIfPresent(Int.self, forKey: .valueInteger)
		valueString = try container.decodeIfPresent(String.self, forKey: .valueString)
		valueTime = try container.decodeIfPresent(FHIRTime.self, forKey: .valueTime)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? QuestionnaireItemOption else {
            return false
        }

		return	valueCoding == object.valueCoding &&
			valueDate == object.valueDate &&
			valueInteger == object.valueInteger &&
			valueString == object.valueString &&
			valueTime == object.valueTime &&
			super.equal(to: to)
	}
}

extension QuestionnaireItemOption {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? QuestionnaireItemOption else {
            return self
        }

        resource.valueCoding = self.valueCoding?.copy(with: zone) as? Coding
        resource.valueDate = self.valueDate
        resource.valueInteger = self.valueInteger
        resource.valueString = self.valueString
        resource.valueTime = self.valueTime

        return resource
    }
}
