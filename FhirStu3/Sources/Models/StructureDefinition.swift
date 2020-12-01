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
//  StructureDefinition.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/StructureDefinition)
//

import Foundation

/**
Structural Definition.

A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
FHIR, and also for describing extensions and constraints on resources and data types.
*/
open class StructureDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "StructureDefinition" }
	}

    private static var keyPaths: [String: PartialKeyPath<StructureDefinition>] = [

        "abstract" : \StructureDefinition.abstract,
        "baseDefinition" : \StructureDefinition.baseDefinition,
        "contact" : \StructureDefinition.contact,
        "context" : \StructureDefinition.context,
        "contextInvariant" : \StructureDefinition.contextInvariant,
        "contextType" : \StructureDefinition.contextType,
        "copyright" : \StructureDefinition.copyright,
        "date" : \StructureDefinition.date,
        "derivation" : \StructureDefinition.derivation,
        "description_fhir" : \StructureDefinition.description_fhir,
        "differential" : \StructureDefinition.differential,
        "experimental" : \StructureDefinition.experimental,
        "fhirVersion" : \StructureDefinition.fhirVersion,
        "identifier" : \StructureDefinition.identifier,
        "jurisdiction" : \StructureDefinition.jurisdiction,
        "keyword" : \StructureDefinition.keyword,
        "kind" : \StructureDefinition.kind,
        "mapping" : \StructureDefinition.mapping,
        "name" : \StructureDefinition.name,
        "publisher" : \StructureDefinition.publisher,
        "purpose" : \StructureDefinition.purpose,
        "snapshot" : \StructureDefinition.snapshot,
        "status" : \StructureDefinition.status,
        "title" : \StructureDefinition.title,
        "type" : \StructureDefinition.type,
        "url" : \StructureDefinition.url,
        "useContext" : \StructureDefinition.useContext,
        "version" : \StructureDefinition.version
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = StructureDefinition.keyPaths[name] as? KeyPath<StructureDefinition, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = StructureDefinition.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Whether the structure is abstract.
	public var abstract: Bool?

	/// Definition that this type is constrained/specialized from.
	public var baseDefinition: String?

	/// Contact details for the publisher.
	public var contact: [ContactDetail]?

	/// Where the extension can be used in instances.
	public var context: [String]?

	/// FHIRPath invariants - when the extension can be used.
	public var contextInvariant: [String]?

	/// If this is an extension, Identifies the context within FHIR resources where the extension can be used.
	public var contextType: ExtensionContext?

	/// Use and/or publishing restrictions.
	public var copyright: String?

	/// Date this was last changed.
	public var date: DateTime?

	/// How the type relates to the baseDefinition.
	public var derivation: TypeDerivationRule?

	/// Natural language description of the structure definition.
	public var description_fhir: String?

	/// Differential view of the structure.
	public var differential: StructureDefinitionDifferential?

	/// For testing purposes, not real usage.
	public var experimental: Bool?

	/// FHIR Version this StructureDefinition targets.
	public var fhirVersion: String?

	/// Additional identifier for the structure definition.
	public var identifier: [Identifier]?

	/// Intended jurisdiction for structure definition (if applicable).
	public var jurisdiction: [CodeableConcept]?

	/// Assist with indexing and finding.
	public var keyword: [Coding]?

	/// Defines the kind of structure that this definition is describing.
	public var kind: StructureDefinitionKind?

	/// External specification that the content is mapped to.
	public var mapping: [StructureDefinitionMapping]?

	/// Name for this structure definition (computer friendly).
	public var name: String?

	/// Name of the publisher (organization or individual).
	public var publisher: String?

	/// Why this structure definition is defined.
	public var purpose: String?

	/// Snapshot view of the structure.
	public var snapshot: StructureDefinitionSnapshot?

	/// The status of this structure definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?

	/// Name for this structure definition (human friendly).
	public var title: String?

	/// Type defined or constrained by this structure.
	public var type: String?

	/// Logical URI to reference this structure definition (globally unique).
	public var url: String?

	/// Context the content is intended to support.
	public var useContext: [UsageContext]?

	/// Business version of the structure definition.
	public var version: String?

	enum StructureDefinitionKeys: String, CodingKey {
		case abstract
		case baseDefinition
		case contact
		case context
		case contextInvariant
		case contextType
		case copyright
		case date
		case derivation
		case description_fhir = "description"
		case differential
		case experimental
		case fhirVersion
		case identifier
		case jurisdiction
		case keyword
		case kind
		case mapping
		case name
		case publisher
		case purpose
		case snapshot
		case status
		case title
		case type
		case url
		case useContext
		case version
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(abstract: Bool, kind: StructureDefinitionKind, name: String, status: PublicationStatus, type: String, url: String) {
		self.init()
		self.abstract = abstract
		self.kind = kind
		self.name = name
		self.status = status
		self.type = type
		self.url = url
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: StructureDefinitionKeys.self)
		if let item = abstract {
			try container.encode(item, forKey: .abstract)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("abstract")
		}
		if let item = kind {
			try container.encode(item, forKey: .kind)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("kind")
		}
		if let item = name {
			try container.encode(item, forKey: .name)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("name")
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
		if let item = url {
			try container.encode(item, forKey: .url)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("url")
		}
		try container.encodeIfPresent(baseDefinition, forKey: .baseDefinition)
		try container.encodeArrayIfPresent(contact, forKey: .contact)
		try container.encodeArrayIfPresent(context, forKey: .context)
		try container.encodeArrayIfPresent(contextInvariant, forKey: .contextInvariant)
		try container.encodeIfPresent(contextType, forKey: .contextType)
		try container.encodeIfPresent(copyright, forKey: .copyright)
		try container.encodeIfPresent(date, forKey: .date)
		try container.encodeIfPresent(derivation, forKey: .derivation)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeIfPresent(differential, forKey: .differential)
		try container.encodeIfPresent(experimental, forKey: .experimental)
		try container.encodeIfPresent(fhirVersion, forKey: .fhirVersion)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(jurisdiction, forKey: .jurisdiction)
		try container.encodeArrayIfPresent(keyword, forKey: .keyword)
		try container.encodeArrayIfPresent(mapping, forKey: .mapping)
		try container.encodeIfPresent(publisher, forKey: .publisher)
		try container.encodeIfPresent(purpose, forKey: .purpose)
		try container.encodeIfPresent(snapshot, forKey: .snapshot)
		try container.encodeIfPresent(title, forKey: .title)
		try container.encodeArrayIfPresent(useContext, forKey: .useContext)
		try container.encodeIfPresent(version, forKey: .version)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  StructureDefinitionKeys.self)
		abstract = try container.decode(Bool.self, forKey: .abstract)
		kind = try container.decode(StructureDefinitionKind.self, forKey: .kind)
		name = try container.decode(String.self, forKey: .name)
		status = try container.decode(PublicationStatus.self, forKey: .status)
		type = try container.decode(String.self, forKey: .type)
		url = try container.decode(String.self, forKey: .url)
		baseDefinition = try container.decodeIfPresent(String.self, forKey: .baseDefinition)
		contact = try container.decodeArrayIfPresent([ContactDetail].self, forKey: .contact)
		context = try container.decodeArrayIfPresent([String].self, forKey: .context)
		contextInvariant = try container.decodeArrayIfPresent([String].self, forKey: .contextInvariant)
		contextType = try container.decodeIfPresent(ExtensionContext.self, forKey: .contextType)
		copyright = try container.decodeIfPresent(String.self, forKey: .copyright)
		date = try container.decodeIfPresent(DateTime.self, forKey: .date)
		derivation = try container.decodeIfPresent(TypeDerivationRule.self, forKey: .derivation)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		differential = try container.decodeIfPresent(StructureDefinitionDifferential.self, forKey: .differential)
		experimental = try container.decodeIfPresent(Bool.self, forKey: .experimental)
		fhirVersion = try container.decodeIfPresent(String.self, forKey: .fhirVersion)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		jurisdiction = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .jurisdiction)
		keyword = try container.decodeArrayIfPresent([Coding].self, forKey: .keyword)
		mapping = try container.decodeArrayIfPresent([StructureDefinitionMapping].self, forKey: .mapping)
		publisher = try container.decodeIfPresent(String.self, forKey: .publisher)
		purpose = try container.decodeIfPresent(String.self, forKey: .purpose)
		snapshot = try container.decodeIfPresent(StructureDefinitionSnapshot.self, forKey: .snapshot)
		title = try container.decodeIfPresent(String.self, forKey: .title)
		useContext = try container.decodeArrayIfPresent([UsageContext].self, forKey: .useContext)
		version = try container.decodeIfPresent(String.self, forKey: .version)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? StructureDefinition else {
            return false
        }

		return	abstract == object.abstract &&
			baseDefinition == object.baseDefinition &&
			contact == object.contact &&
			context == object.context &&
			contextInvariant == object.contextInvariant &&
			contextType == object.contextType &&
			copyright == object.copyright &&
			date == object.date &&
			derivation == object.derivation &&
			description_fhir == object.description_fhir &&
			differential == object.differential &&
			experimental == object.experimental &&
			fhirVersion == object.fhirVersion &&
			identifier == object.identifier &&
			jurisdiction == object.jurisdiction &&
			keyword == object.keyword &&
			kind == object.kind &&
			mapping == object.mapping &&
			name == object.name &&
			publisher == object.publisher &&
			purpose == object.purpose &&
			snapshot == object.snapshot &&
			status == object.status &&
			title == object.title &&
			type == object.type &&
			url == object.url &&
			useContext == object.useContext &&
			version == object.version &&
			super.equal(to: to)
	}
}

extension StructureDefinition {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? StructureDefinition else {
            return self
        }

        resource.abstract = self.abstract
        resource.baseDefinition = self.baseDefinition
        resource.contact = self.contact?.compactMap { $0.copy(with: zone) as? ContactDetail }
        resource.context = self.context
        resource.contextInvariant = self.contextInvariant
        resource.contextType = self.contextType
        resource.copyright = self.copyright
        resource.date = self.date
        resource.derivation = self.derivation
        resource.description_fhir = self.description_fhir
        resource.differential = self.differential?.copy(with: zone) as? StructureDefinitionDifferential
        resource.experimental = self.experimental
        resource.fhirVersion = self.fhirVersion
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.keyword = self.keyword?.compactMap { $0.copy(with: zone) as? Coding }
        resource.kind = self.kind
        resource.mapping = self.mapping?.compactMap { $0.copy(with: zone) as? StructureDefinitionMapping }
        resource.name = self.name
        resource.publisher = self.publisher
        resource.purpose = self.purpose
        resource.snapshot = self.snapshot?.copy(with: zone) as? StructureDefinitionSnapshot
        resource.status = self.status
        resource.title = self.title
        resource.type = self.type
        resource.url = self.url
        resource.useContext = self.useContext?.compactMap { $0.copy(with: zone) as? UsageContext }
        resource.version = self.version

        return resource
    }
}

/**
Differential view of the structure.

A differential view is expressed relative to the base StructureDefinition - a statement of differences that it applies.
*/
open class StructureDefinitionDifferential: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionDifferential" }
	}

    private static var keyPaths: [String: PartialKeyPath<StructureDefinitionDifferential>] = [

        "element" : \StructureDefinitionDifferential.element
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = StructureDefinitionDifferential.keyPaths[name] as? KeyPath<StructureDefinitionDifferential, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = StructureDefinitionDifferential.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Definition of elements in the resource (if no StructureDefinition).
	public var element: [ElementDefinition]?

	enum StructureDefinitionDifferentialKeys: String, CodingKey {
		case element
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(element: [ElementDefinition]) {
		self.init()
		self.element = element
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: StructureDefinitionDifferentialKeys.self)
		if let items = element {
			try container.encodeArray(items, forKey: .element)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("element")
		}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  StructureDefinitionDifferentialKeys.self)
		element = try container.decodeArray([ElementDefinition].self, forKey: .element)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? StructureDefinitionDifferential else {
            return false
        }

		return	element == object.element &&
			super.equal(to: to)
	}
}

extension StructureDefinitionDifferential {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? StructureDefinitionDifferential else {
            return self
        }

        resource.element = self.element?.compactMap { $0.copy(with: zone) as? ElementDefinition }

        return resource
    }
}

/**
External specification that the content is mapped to.

An external specification that the content is mapped to.
*/
open class StructureDefinitionMapping: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionMapping" }
	}

    private static var keyPaths: [String: PartialKeyPath<StructureDefinitionMapping>] = [

        "comment" : \StructureDefinitionMapping.comment,
        "identity" : \StructureDefinitionMapping.identity,
        "name" : \StructureDefinitionMapping.name,
        "uri" : \StructureDefinitionMapping.uri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = StructureDefinitionMapping.keyPaths[name] as? KeyPath<StructureDefinitionMapping, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = StructureDefinitionMapping.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Versions, Issues, Scope limitations etc..
	public var comment: String?

	/// Internal id when this mapping is used.
	public var identity: String?

	/// Names what this mapping refers to.
	public var name: String?

	/// Identifies what this mapping refers to.
	public var uri: String?

	enum StructureDefinitionMappingKeys: String, CodingKey {
		case comment
		case identity
		case name
		case uri
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(identity: String) {
		self.init()
		self.identity = identity
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: StructureDefinitionMappingKeys.self)
		if let item = identity {
			try container.encode(item, forKey: .identity)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("identity")
		}
		try container.encodeIfPresent(comment, forKey: .comment)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeIfPresent(uri, forKey: .uri)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  StructureDefinitionMappingKeys.self)
		identity = try container.decode(String.self, forKey: .identity)
		comment = try container.decodeIfPresent(String.self, forKey: .comment)
		name = try container.decodeIfPresent(String.self, forKey: .name)
		uri = try container.decodeIfPresent(String.self, forKey: .uri)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? StructureDefinitionMapping else {
            return false
        }

		return	comment == object.comment &&
			identity == object.identity &&
			name == object.name &&
			uri == object.uri &&
			super.equal(to: to)
	}
}

extension StructureDefinitionMapping {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? StructureDefinitionMapping else {
            return self
        }

        resource.comment = self.comment
        resource.identity = self.identity
        resource.name = self.name
        resource.uri = self.uri

        return resource
    }
}

/**
Snapshot view of the structure.

A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
StructureDefinition.
*/
open class StructureDefinitionSnapshot: BackboneElement {
	override open class var resourceType: String {
		get { return "StructureDefinitionSnapshot" }
	}

    private static var keyPaths: [String: PartialKeyPath<StructureDefinitionSnapshot>] = [

        "element" : \StructureDefinitionSnapshot.element
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = StructureDefinitionSnapshot.keyPaths[name] as? KeyPath<StructureDefinitionSnapshot, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = StructureDefinitionSnapshot.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Definition of elements in the resource (if no StructureDefinition).
	public var element: [ElementDefinition]?

	enum StructureDefinitionSnapshotKeys: String, CodingKey {
		case element
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(element: [ElementDefinition]) {
		self.init()
		self.element = element
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: StructureDefinitionSnapshotKeys.self)
		if let items = element {
			try container.encodeArray(items, forKey: .element)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("element")
		}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  StructureDefinitionSnapshotKeys.self)
		element = try container.decodeArray([ElementDefinition].self, forKey: .element)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? StructureDefinitionSnapshot else {
            return false
        }

		return	element == object.element &&
			super.equal(to: to)
	}
}

extension StructureDefinitionSnapshot {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? StructureDefinitionSnapshot else {
            return self
        }

        resource.element = self.element?.compactMap { $0.copy(with: zone) as? ElementDefinition }

        return resource
    }
}
