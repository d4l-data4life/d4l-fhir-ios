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
//  DocumentReference.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/DocumentReference)
//

import Foundation

/**
A reference to a document.
*/
open class DocumentReference: DomainResource {
	override open class var resourceType: String {
		get { return "DocumentReference" }
	}

    private static var keyPaths: [String: PartialKeyPath<DocumentReference>] = [

        "`class`" : \DocumentReference.`class`,
        "authenticator" : \DocumentReference.authenticator,
        "author" : \DocumentReference.author,
        "content" : \DocumentReference.content,
        "context" : \DocumentReference.context,
        "created" : \DocumentReference.created,
        "custodian" : \DocumentReference.custodian,
        "description_fhir" : \DocumentReference.description_fhir,
        "docStatus" : \DocumentReference.docStatus,
        "identifier" : \DocumentReference.identifier,
        "indexed" : \DocumentReference.indexed,
        "masterIdentifier" : \DocumentReference.masterIdentifier,
        "relatesTo" : \DocumentReference.relatesTo,
        "securityLabel" : \DocumentReference.securityLabel,
        "status" : \DocumentReference.status,
        "subject" : \DocumentReference.subject,
        "type" : \DocumentReference.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DocumentReference.keyPaths[name] as? KeyPath<DocumentReference, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DocumentReference.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Categorization of document.
	public var `class`: CodeableConcept?

	/// Who/what authenticated the document.
	public var authenticator: Reference?

	/// Who and/or what authored the document.
	public var author: [Reference]?

	/// Document referenced.
	public var content: [DocumentReferenceContent]?

	/// Clinical context of document.
	public var context: DocumentReferenceContext?

	/// Document creation time.
	public var created: DateTime?

	/// Organization which maintains the document.
	public var custodian: Reference?

	/// Human-readable description (title).
	public var description_fhir: String?

	/// The status of the underlying document.
	public var docStatus: CompositionStatus?

	/// Other identifiers for the document.
	public var identifier: [Identifier]?

	/// When this document reference was created.
	public var indexed: Instant?

	/// Master Version Specific Identifier.
	public var masterIdentifier: Identifier?

	/// Relationships to other documents.
	public var relatesTo: [DocumentReferenceRelatesTo]?

	/// Document security-tags.
	public var securityLabel: [CodeableConcept]?

	/// The status of this document reference.
	public var status: DocumentReferenceStatus?

	/// Who/what is the subject of the document.
	public var subject: Reference?

	/// Kind of document (LOINC if possible).
	public var type: CodeableConcept?

	enum DocumentReferenceKeys: String, CodingKey {
		case `class`
		case authenticator
		case author
		case content
		case context
		case created
		case custodian
		case description_fhir = "description"
		case docStatus
		case identifier
		case indexed
		case masterIdentifier
		case relatesTo
		case securityLabel
		case status
		case subject
		case type
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(content: [DocumentReferenceContent], indexed: Instant, status: DocumentReferenceStatus, type: CodeableConcept) {
		self.init()
		self.content = content
		self.indexed = indexed
		self.status = status
		self.type = type
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DocumentReferenceKeys.self)
		if let items = content {
			try container.encodeArray(items, forKey: .content)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("content")
		}
		if let item = indexed {
			try container.encode(item, forKey: .indexed)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("indexed")
		}
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		if let item = type {
			try container.encode(item, forKey: .type)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("type")
		}
		try container.encodeIfPresent(`class`, forKey: .`class`)
		try container.encodeIfPresent(authenticator, forKey: .authenticator)
		try container.encodeArrayIfPresent(author, forKey: .author)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeIfPresent(created, forKey: .created)
		try container.encodeIfPresent(custodian, forKey: .custodian)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeIfPresent(docStatus, forKey: .docStatus)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(masterIdentifier, forKey: .masterIdentifier)
		try container.encodeArrayIfPresent(relatesTo, forKey: .relatesTo)
		try container.encodeArrayIfPresent(securityLabel, forKey: .securityLabel)
		try container.encodeIfPresent(subject, forKey: .subject)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DocumentReferenceKeys.self)
		content = try container.decodeArray([DocumentReferenceContent].self, forKey: .content)
		indexed = try container.decode(Instant.self, forKey: .indexed)
		status = try container.decode(DocumentReferenceStatus.self, forKey: .status)
		type = try container.decode(CodeableConcept.self, forKey: .type)
		`class` = try container.decodeIfPresent(CodeableConcept.self, forKey: .`class`)
		authenticator = try container.decodeIfPresent(Reference.self, forKey: .authenticator)
		author = try container.decodeArrayIfPresent([Reference].self, forKey: .author)
		context = try container.decodeIfPresent(DocumentReferenceContext.self, forKey: .context)
		created = try container.decodeIfPresent(DateTime.self, forKey: .created)
		custodian = try container.decodeIfPresent(Reference.self, forKey: .custodian)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		docStatus = try container.decodeIfPresent(CompositionStatus.self, forKey: .docStatus)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		masterIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .masterIdentifier)
		relatesTo = try container.decodeArrayIfPresent([DocumentReferenceRelatesTo].self, forKey: .relatesTo)
		securityLabel = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .securityLabel)
		subject = try container.decodeIfPresent(Reference.self, forKey: .subject)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DocumentReference else {
            return false
        }

		return	`class` == object.`class` &&
			authenticator == object.authenticator &&
			author == object.author &&
			content == object.content &&
			context == object.context &&
			created == object.created &&
			custodian == object.custodian &&
			description_fhir == object.description_fhir &&
			docStatus == object.docStatus &&
			identifier == object.identifier &&
			indexed == object.indexed &&
			masterIdentifier == object.masterIdentifier &&
			relatesTo == object.relatesTo &&
			securityLabel == object.securityLabel &&
			status == object.status &&
			subject == object.subject &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension DocumentReference {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DocumentReference else {
            return self
        }

        resource.`class` = self.`class`?.copy(with: zone) as? CodeableConcept
        resource.authenticator = self.authenticator?.copy(with: zone) as? Reference
        resource.author = self.author?.compactMap { $0.copy(with: zone) as? Reference }
        resource.content = self.content?.compactMap { $0.copy(with: zone) as? DocumentReferenceContent }
        resource.context = self.context?.copy(with: zone) as? DocumentReferenceContext
        resource.created = self.created
        resource.custodian = self.custodian?.copy(with: zone) as? Reference
        resource.description_fhir = self.description_fhir
        resource.docStatus = self.docStatus
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.indexed = self.indexed
        resource.masterIdentifier = self.masterIdentifier?.copy(with: zone) as? Identifier
        resource.relatesTo = self.relatesTo?.compactMap { $0.copy(with: zone) as? DocumentReferenceRelatesTo }
        resource.securityLabel = self.securityLabel?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.type = self.type?.copy(with: zone) as? CodeableConcept

        return resource
    }
}

/**
Document referenced.

The document and format referenced. There may be multiple content element repetitions, each with a different format.
*/
open class DocumentReferenceContent: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentReferenceContent" }
	}

    private static var keyPaths: [String: PartialKeyPath<DocumentReferenceContent>] = [

        "attachment" : \DocumentReferenceContent.attachment,
        "format" : \DocumentReferenceContent.format
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DocumentReferenceContent.keyPaths[name] as? KeyPath<DocumentReferenceContent, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DocumentReferenceContent.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Where to access the document.
	public var attachment: Attachment?

	/// Format/content rules for the document.
	public var format: Coding?

	enum DocumentReferenceContentKeys: String, CodingKey {
		case attachment
		case format
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(attachment: Attachment) {
		self.init()
		self.attachment = attachment
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DocumentReferenceContentKeys.self)
		if let item = attachment {
			try container.encode(item, forKey: .attachment)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("attachment")
		}
		try container.encodeIfPresent(format, forKey: .format)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DocumentReferenceContentKeys.self)
		attachment = try container.decode(Attachment.self, forKey: .attachment)
		format = try container.decodeIfPresent(Coding.self, forKey: .format)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DocumentReferenceContent else {
            return false
        }

		return	attachment == object.attachment &&
			format == object.format &&
			super.equal(to: to)
	}
}

extension DocumentReferenceContent {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DocumentReferenceContent else {
            return self
        }

        resource.attachment = self.attachment?.copy(with: zone) as? Attachment
        resource.format = self.format?.copy(with: zone) as? Coding

        return resource
    }
}

/**
Clinical context of document.

The clinical context in which the document was prepared.
*/
open class DocumentReferenceContext: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentReferenceContext" }
	}

    private static var keyPaths: [String: PartialKeyPath<DocumentReferenceContext>] = [

        "encounter" : \DocumentReferenceContext.encounter,
        "event" : \DocumentReferenceContext.event,
        "facilityType" : \DocumentReferenceContext.facilityType,
        "period" : \DocumentReferenceContext.period,
        "practiceSetting" : \DocumentReferenceContext.practiceSetting,
        "related" : \DocumentReferenceContext.related,
        "sourcePatientInfo" : \DocumentReferenceContext.sourcePatientInfo
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DocumentReferenceContext.keyPaths[name] as? KeyPath<DocumentReferenceContext, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DocumentReferenceContext.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Context of the document  content.
	public var encounter: Reference?

	/// Main clinical acts documented.
	public var event: [CodeableConcept]?

	/// Kind of facility where patient was seen.
	public var facilityType: CodeableConcept?

	/// Time of service that is being documented.
	public var period: Period?

	/// Additional details about where the content was created (e.g. clinical specialty).
	public var practiceSetting: CodeableConcept?

	/// Related identifiers or resources.
	public var related: [DocumentReferenceContextRelated]?

	/// Patient demographics from source.
	public var sourcePatientInfo: Reference?

	enum DocumentReferenceContextKeys: String, CodingKey {
		case encounter
		case event
		case facilityType
		case period
		case practiceSetting
		case related
		case sourcePatientInfo
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DocumentReferenceContextKeys.self)
		try container.encodeIfPresent(encounter, forKey: .encounter)
		try container.encodeArrayIfPresent(event, forKey: .event)
		try container.encodeIfPresent(facilityType, forKey: .facilityType)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeIfPresent(practiceSetting, forKey: .practiceSetting)
		try container.encodeArrayIfPresent(related, forKey: .related)
		try container.encodeIfPresent(sourcePatientInfo, forKey: .sourcePatientInfo)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DocumentReferenceContextKeys.self)
		encounter = try container.decodeIfPresent(Reference.self, forKey: .encounter)
		event = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .event)
		facilityType = try container.decodeIfPresent(CodeableConcept.self, forKey: .facilityType)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		practiceSetting = try container.decodeIfPresent(CodeableConcept.self, forKey: .practiceSetting)
		related = try container.decodeArrayIfPresent([DocumentReferenceContextRelated].self, forKey: .related)
		sourcePatientInfo = try container.decodeIfPresent(Reference.self, forKey: .sourcePatientInfo)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DocumentReferenceContext else {
            return false
        }

		return	encounter == object.encounter &&
			event == object.event &&
			facilityType == object.facilityType &&
			period == object.period &&
			practiceSetting == object.practiceSetting &&
			related == object.related &&
			sourcePatientInfo == object.sourcePatientInfo &&
			super.equal(to: to)
	}
}

extension DocumentReferenceContext {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DocumentReferenceContext else {
            return self
        }

        resource.encounter = self.encounter?.copy(with: zone) as? Reference
        resource.event = self.event?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.facilityType = self.facilityType?.copy(with: zone) as? CodeableConcept
        resource.period = self.period?.copy(with: zone) as? Period
        resource.practiceSetting = self.practiceSetting?.copy(with: zone) as? CodeableConcept
        resource.related = self.related?.compactMap { $0.copy(with: zone) as? DocumentReferenceContextRelated }
        resource.sourcePatientInfo = self.sourcePatientInfo?.copy(with: zone) as? Reference

        return resource
    }
}

/**
Related identifiers or resources.

Related identifiers or resources associated with the DocumentReference.
*/
open class DocumentReferenceContextRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentReferenceContextRelated" }
	}

    private static var keyPaths: [String: PartialKeyPath<DocumentReferenceContextRelated>] = [

        "identifier" : \DocumentReferenceContextRelated.identifier,
        "ref" : \DocumentReferenceContextRelated.ref
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DocumentReferenceContextRelated.keyPaths[name] as? KeyPath<DocumentReferenceContextRelated, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DocumentReferenceContextRelated.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Identifier of related objects or events.
	public var identifier: Identifier?

	/// Related Resource.
	public var ref: Reference?

	enum DocumentReferenceContextRelatedKeys: String, CodingKey {
		case identifier
		case ref
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DocumentReferenceContextRelatedKeys.self)
		try container.encodeIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(ref, forKey: .ref)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DocumentReferenceContextRelatedKeys.self)
		identifier = try container.decodeIfPresent(Identifier.self, forKey: .identifier)
		ref = try container.decodeIfPresent(Reference.self, forKey: .ref)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DocumentReferenceContextRelated else {
            return false
        }

		return	identifier == object.identifier &&
			ref == object.ref &&
			super.equal(to: to)
	}
}

extension DocumentReferenceContextRelated {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DocumentReferenceContextRelated else {
            return self
        }

        resource.identifier = self.identifier?.copy(with: zone) as? Identifier
        resource.ref = self.ref?.copy(with: zone) as? Reference

        return resource
    }
}

/**
Relationships to other documents.

Relationships that this document has with other document references that already exist.
*/
open class DocumentReferenceRelatesTo: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentReferenceRelatesTo" }
	}

    private static var keyPaths: [String: PartialKeyPath<DocumentReferenceRelatesTo>] = [

        "code" : \DocumentReferenceRelatesTo.code,
        "target" : \DocumentReferenceRelatesTo.target
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DocumentReferenceRelatesTo.keyPaths[name] as? KeyPath<DocumentReferenceRelatesTo, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DocumentReferenceRelatesTo.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// The type of relationship that this document has with anther document.
	public var code: DocumentRelationshipType?

	/// Target of the relationship.
	public var target: Reference?

	enum DocumentReferenceRelatesToKeys: String, CodingKey {
		case code
		case target
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(code: DocumentRelationshipType, target: Reference) {
		self.init()
		self.code = code
		self.target = target
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DocumentReferenceRelatesToKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		if let item = target {
			try container.encode(item, forKey: .target)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("target")
		}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DocumentReferenceRelatesToKeys.self)
		code = try container.decode(DocumentRelationshipType.self, forKey: .code)
		target = try container.decode(Reference.self, forKey: .target)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DocumentReferenceRelatesTo else {
            return false
        }

		return	code == object.code &&
			target == object.target &&
			super.equal(to: to)
	}
}

extension DocumentReferenceRelatesTo {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DocumentReferenceRelatesTo else {
            return self
        }

        resource.code = self.code
        resource.target = self.target?.copy(with: zone) as? Reference

        return resource
    }
}
