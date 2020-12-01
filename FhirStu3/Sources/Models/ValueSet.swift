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
//  ValueSet.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ValueSet)
//

import Foundation

/**
A set of codes drawn from one or more code systems.

A value set specifies a set of codes drawn from one or more code systems.
*/
open class ValueSet: DomainResource {
	override open class var resourceType: String {
		get { return "ValueSet" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSet>] = [

        "compose" : \ValueSet.compose,
        "contact" : \ValueSet.contact,
        "copyright" : \ValueSet.copyright,
        "date" : \ValueSet.date,
        "description_fhir" : \ValueSet.description_fhir,
        "expansion" : \ValueSet.expansion,
        "experimental" : \ValueSet.experimental,
        "extensible" : \ValueSet.extensible,
        "identifier" : \ValueSet.identifier,
        "immutable" : \ValueSet.immutable,
        "jurisdiction" : \ValueSet.jurisdiction,
        "name" : \ValueSet.name,
        "publisher" : \ValueSet.publisher,
        "purpose" : \ValueSet.purpose,
        "status" : \ValueSet.status,
        "title" : \ValueSet.title,
        "url" : \ValueSet.url,
        "useContext" : \ValueSet.useContext,
        "version" : \ValueSet.version
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSet.keyPaths[name] as? KeyPath<ValueSet, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSet.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Definition of the content of the value set (CLD).
	public var compose: ValueSetCompose?

	/// Contact details for the publisher.
	public var contact: [ContactDetail]?

	/// Use and/or publishing restrictions.
	public var copyright: String?

	/// Date this was last changed.
	public var date: DateTime?

	/// Natural language description of the value set.
	public var description_fhir: String?

	/// Used when the value set is "expanded".
	public var expansion: ValueSetExpansion?

	/// For testing purposes, not real usage.
	public var experimental: Bool?

	/// Whether this is intended to be used with an extensible binding.
	public var extensible: Bool?

	/// Additional identifier for the value set.
	public var identifier: [Identifier]?

	/// Indicates whether or not any change to the content logical definition may occur.
	public var immutable: Bool?

	/// Intended jurisdiction for value set (if applicable).
	public var jurisdiction: [CodeableConcept]?

	/// Name for this value set (computer friendly).
	public var name: String?

	/// Name of the publisher (organization or individual).
	public var publisher: String?

	/// Why this value set is defined.
	public var purpose: String?

	/// The status of this value set. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?

	/// Name for this value set (human friendly).
	public var title: String?

	/// Logical URI to reference this value set (globally unique).
	public var url: String?

	/// Context the content is intended to support.
	public var useContext: [UsageContext]?

	/// Business version of the value set.
	public var version: String?

	enum ValueSetKeys: String, CodingKey {
		case compose
		case contact
		case copyright
		case date
		case description_fhir = "description"
		case expansion
		case experimental
		case extensible
		case identifier
		case immutable
		case jurisdiction
		case name
		case publisher
		case purpose
		case status
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
		var container = encoder.container(keyedBy: ValueSetKeys.self)
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		try container.encodeIfPresent(compose, forKey: .compose)
		try container.encodeArrayIfPresent(contact, forKey: .contact)
		try container.encodeIfPresent(copyright, forKey: .copyright)
		try container.encodeIfPresent(date, forKey: .date)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeIfPresent(expansion, forKey: .expansion)
		try container.encodeIfPresent(experimental, forKey: .experimental)
		try container.encodeIfPresent(extensible, forKey: .extensible)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(immutable, forKey: .immutable)
		try container.encodeArrayIfPresent(jurisdiction, forKey: .jurisdiction)
		try container.encodeIfPresent(name, forKey: .name)
		try container.encodeIfPresent(publisher, forKey: .publisher)
		try container.encodeIfPresent(purpose, forKey: .purpose)
		try container.encodeIfPresent(title, forKey: .title)
		try container.encodeIfPresent(url, forKey: .url)
		try container.encodeArrayIfPresent(useContext, forKey: .useContext)
		try container.encodeIfPresent(version, forKey: .version)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetKeys.self)
		status = try container.decode(PublicationStatus.self, forKey: .status)
		compose = try container.decodeIfPresent(ValueSetCompose.self, forKey: .compose)
		contact = try container.decodeArrayIfPresent([ContactDetail].self, forKey: .contact)
		copyright = try container.decodeIfPresent(String.self, forKey: .copyright)
		date = try container.decodeIfPresent(DateTime.self, forKey: .date)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		expansion = try container.decodeIfPresent(ValueSetExpansion.self, forKey: .expansion)
		experimental = try container.decodeIfPresent(Bool.self, forKey: .experimental)
		extensible = try container.decodeIfPresent(Bool.self, forKey: .extensible)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		immutable = try container.decodeIfPresent(Bool.self, forKey: .immutable)
		jurisdiction = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .jurisdiction)
		name = try container.decodeIfPresent(String.self, forKey: .name)
		publisher = try container.decodeIfPresent(String.self, forKey: .publisher)
		purpose = try container.decodeIfPresent(String.self, forKey: .purpose)
		title = try container.decodeIfPresent(String.self, forKey: .title)
		url = try container.decodeIfPresent(String.self, forKey: .url)
		useContext = try container.decodeArrayIfPresent([UsageContext].self, forKey: .useContext)
		version = try container.decodeIfPresent(String.self, forKey: .version)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSet else {
            return false
        }

		return	compose == object.compose &&
			contact == object.contact &&
			copyright == object.copyright &&
			date == object.date &&
			description_fhir == object.description_fhir &&
			expansion == object.expansion &&
			experimental == object.experimental &&
			extensible == object.extensible &&
			identifier == object.identifier &&
			immutable == object.immutable &&
			jurisdiction == object.jurisdiction &&
			name == object.name &&
			publisher == object.publisher &&
			purpose == object.purpose &&
			status == object.status &&
			title == object.title &&
			url == object.url &&
			useContext == object.useContext &&
			version == object.version &&
			super.equal(to: to)
	}
}

extension ValueSet {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSet else {
            return self
        }

        resource.compose = self.compose?.copy(with: zone) as? ValueSetCompose
        resource.contact = self.contact?.compactMap { $0.copy(with: zone) as? ContactDetail }
        resource.copyright = self.copyright
        resource.date = self.date
        resource.description_fhir = self.description_fhir
        resource.expansion = self.expansion?.copy(with: zone) as? ValueSetExpansion
        resource.experimental = self.experimental
        resource.extensible = self.extensible
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.immutable = self.immutable
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.name = self.name
        resource.publisher = self.publisher
        resource.purpose = self.purpose
        resource.status = self.status
        resource.title = self.title
        resource.url = self.url
        resource.useContext = self.useContext?.compactMap { $0.copy(with: zone) as? UsageContext }
        resource.version = self.version

        return resource
    }
}

/**
Definition of the content of the value set (CLD).

A set of criteria that define the content logical definition of the value set by including or excluding codes from
outside this value set. This I also known as the "Content Logical Definition" (CLD).
*/
open class ValueSetCompose: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetCompose" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSetCompose>] = [

        "exclude" : \ValueSetCompose.exclude,
        "inactive" : \ValueSetCompose.inactive,
        "include" : \ValueSetCompose.include,
        "lockedDate" : \ValueSetCompose.lockedDate
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSetCompose.keyPaths[name] as? KeyPath<ValueSetCompose, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSetCompose.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Explicitly exclude codes from a code system or other value sets.
	public var exclude: [ValueSetComposeInclude]?

	/// Whether inactive codes are in the value set.
	public var inactive: Bool?

	/// Include one or more codes from a code system or other value set(s).
	public var include: [ValueSetComposeInclude]?

	/// Fixed date for version-less references (transitive).
	public var lockedDate: FHIRDate?

	enum ValueSetComposeKeys: String, CodingKey {
		case exclude
		case inactive
		case include
		case lockedDate
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(include: [ValueSetComposeInclude]) {
		self.init()
		self.include = include
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ValueSetComposeKeys.self)
		if let items = include {
			try container.encodeArray(items, forKey: .include)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("include")
		}
		try container.encodeArrayIfPresent(exclude, forKey: .exclude)
		try container.encodeIfPresent(inactive, forKey: .inactive)
		try container.encodeIfPresent(lockedDate, forKey: .lockedDate)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetComposeKeys.self)
		include = try container.decodeArray([ValueSetComposeInclude].self, forKey: .include)
		exclude = try container.decodeArrayIfPresent([ValueSetComposeInclude].self, forKey: .exclude)
		inactive = try container.decodeIfPresent(Bool.self, forKey: .inactive)
		lockedDate = try container.decodeIfPresent(FHIRDate.self, forKey: .lockedDate)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSetCompose else {
            return false
        }

		return	exclude == object.exclude &&
			inactive == object.inactive &&
			include == object.include &&
			lockedDate == object.lockedDate &&
			super.equal(to: to)
	}
}

extension ValueSetCompose {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSetCompose else {
            return self
        }

        resource.exclude = self.exclude?.compactMap { $0.copy(with: zone) as? ValueSetComposeInclude }
        resource.inactive = self.inactive
        resource.include = self.include?.compactMap { $0.copy(with: zone) as? ValueSetComposeInclude }
        resource.lockedDate = self.lockedDate

        return resource
    }
}

/**
Include one or more codes from a code system or other value set(s).
*/
open class ValueSetComposeInclude: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeInclude" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSetComposeInclude>] = [

        "concept" : \ValueSetComposeInclude.concept,
        "filter" : \ValueSetComposeInclude.filter,
        "system" : \ValueSetComposeInclude.system,
        "valueSet" : \ValueSetComposeInclude.valueSet,
        "version" : \ValueSetComposeInclude.version
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSetComposeInclude.keyPaths[name] as? KeyPath<ValueSetComposeInclude, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSetComposeInclude.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// A concept defined in the system.
	public var concept: [ValueSetComposeIncludeConcept]?

	/// Select codes/concepts by their properties (including relationships).
	public var filter: [ValueSetComposeIncludeFilter]?

	/// The system the codes come from.
	public var system: String?

	/// Select only contents included in this value set.
	public var valueSet: [String]?

	/// Specific version of the code system referred to.
	public var version: String?

	enum ValueSetComposeIncludeKeys: String, CodingKey {
		case concept
		case filter
		case system
		case valueSet
		case version
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ValueSetComposeIncludeKeys.self)
		try container.encodeArrayIfPresent(concept, forKey: .concept)
		try container.encodeArrayIfPresent(filter, forKey: .filter)
		try container.encodeIfPresent(system, forKey: .system)
		try container.encodeArrayIfPresent(valueSet, forKey: .valueSet)
		try container.encodeIfPresent(version, forKey: .version)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetComposeIncludeKeys.self)
		concept = try container.decodeArrayIfPresent([ValueSetComposeIncludeConcept].self, forKey: .concept)
		filter = try container.decodeArrayIfPresent([ValueSetComposeIncludeFilter].self, forKey: .filter)
		system = try container.decodeIfPresent(String.self, forKey: .system)
		valueSet = try container.decodeArrayIfPresent([String].self, forKey: .valueSet)
		version = try container.decodeIfPresent(String.self, forKey: .version)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSetComposeInclude else {
            return false
        }

		return	concept == object.concept &&
			filter == object.filter &&
			system == object.system &&
			valueSet == object.valueSet &&
			version == object.version &&
			super.equal(to: to)
	}
}

extension ValueSetComposeInclude {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSetComposeInclude else {
            return self
        }

        resource.concept = self.concept?.compactMap { $0.copy(with: zone) as? ValueSetComposeIncludeConcept }
        resource.filter = self.filter?.compactMap { $0.copy(with: zone) as? ValueSetComposeIncludeFilter }
        resource.system = self.system
        resource.valueSet = self.valueSet
        resource.version = self.version

        return resource
    }
}

/**
A concept defined in the system.

Specifies a concept to be included or excluded.
*/
open class ValueSetComposeIncludeConcept: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeConcept" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSetComposeIncludeConcept>] = [

        "code" : \ValueSetComposeIncludeConcept.code,
        "designation" : \ValueSetComposeIncludeConcept.designation,
        "display" : \ValueSetComposeIncludeConcept.display
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSetComposeIncludeConcept.keyPaths[name] as? KeyPath<ValueSetComposeIncludeConcept, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSetComposeIncludeConcept.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Code or expression from system.
	public var code: String?

	/// Additional representations for this concept.
	public var designation: [ValueSetComposeIncludeConceptDesignation]?

	/// Text to display for this code for this value set in this valueset.
	public var display: String?

	enum ValueSetComposeIncludeConceptKeys: String, CodingKey {
		case code
		case designation
		case display
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
		var container = encoder.container(keyedBy: ValueSetComposeIncludeConceptKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		try container.encodeArrayIfPresent(designation, forKey: .designation)
		try container.encodeIfPresent(display, forKey: .display)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetComposeIncludeConceptKeys.self)
		code = try container.decode(String.self, forKey: .code)
		designation = try container.decodeArrayIfPresent([ValueSetComposeIncludeConceptDesignation].self, forKey: .designation)
		display = try container.decodeIfPresent(String.self, forKey: .display)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSetComposeIncludeConcept else {
            return false
        }

		return	code == object.code &&
			designation == object.designation &&
			display == object.display &&
			super.equal(to: to)
	}
}

extension ValueSetComposeIncludeConcept {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSetComposeIncludeConcept else {
            return self
        }

        resource.code = self.code
        resource.designation = self.designation?.compactMap { $0.copy(with: zone) as? ValueSetComposeIncludeConceptDesignation }
        resource.display = self.display

        return resource
    }
}

/**
Additional representations for this concept.

Additional representations for this concept when used in this value set - other languages, aliases, specialized
purposes, used for particular purposes, etc.
*/
open class ValueSetComposeIncludeConceptDesignation: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeConceptDesignation" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSetComposeIncludeConceptDesignation>] = [

        "language" : \ValueSetComposeIncludeConceptDesignation.language,
        "use" : \ValueSetComposeIncludeConceptDesignation.use,
        "value" : \ValueSetComposeIncludeConceptDesignation.value
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSetComposeIncludeConceptDesignation.keyPaths[name] as? KeyPath<ValueSetComposeIncludeConceptDesignation, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSetComposeIncludeConceptDesignation.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Human language of the designation.
	public var language: String?

	/// Details how this designation would be used.
	public var use: Coding?

	/// The text value for this designation.
	public var value: String?

	enum ValueSetComposeIncludeConceptDesignationKeys: String, CodingKey {
		case language
		case use
		case value
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(value: String) {
		self.init()
		self.value = value
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ValueSetComposeIncludeConceptDesignationKeys.self)
		if let item = value {
			try container.encode(item, forKey: .value)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("value")
		}
		try container.encodeIfPresent(language, forKey: .language)
		try container.encodeIfPresent(use, forKey: .use)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetComposeIncludeConceptDesignationKeys.self)
		value = try container.decode(String.self, forKey: .value)
		language = try container.decodeIfPresent(String.self, forKey: .language)
		use = try container.decodeIfPresent(Coding.self, forKey: .use)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSetComposeIncludeConceptDesignation else {
            return false
        }

		return	language == object.language &&
			use == object.use &&
			value == object.value &&
			super.equal(to: to)
	}
}

extension ValueSetComposeIncludeConceptDesignation {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSetComposeIncludeConceptDesignation else {
            return self
        }

        resource.language = self.language
        resource.use = self.use?.copy(with: zone) as? Coding
        resource.value = self.value

        return resource
    }
}

/**
Select codes/concepts by their properties (including relationships).

Select concepts by specify a matching criteria based on the properties (including relationships) defined by the system.
If multiple filters are specified, they SHALL all be true.
*/
open class ValueSetComposeIncludeFilter: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetComposeIncludeFilter" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSetComposeIncludeFilter>] = [

        "op" : \ValueSetComposeIncludeFilter.op,
        "property" : \ValueSetComposeIncludeFilter.property,
        "value" : \ValueSetComposeIncludeFilter.value
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSetComposeIncludeFilter.keyPaths[name] as? KeyPath<ValueSetComposeIncludeFilter, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSetComposeIncludeFilter.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// The kind of operation to perform as a part of the filter criteria.
	public var op: FilterOperator?

	/// A property defined by the code system.
	public var property: String?

	/// Code from the system, or regex criteria, or boolean value for exists.
	public var value: String?

	enum ValueSetComposeIncludeFilterKeys: String, CodingKey {
		case op
		case property
		case value
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(op: FilterOperator, property: String, value: String) {
		self.init()
		self.op = op
		self.property = property
		self.value = value
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ValueSetComposeIncludeFilterKeys.self)
		if let item = op {
			try container.encode(item, forKey: .op)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("op")
		}
		if let item = property {
			try container.encode(item, forKey: .property)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("property")
		}
		if let item = value {
			try container.encode(item, forKey: .value)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("value")
		}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetComposeIncludeFilterKeys.self)
		op = try container.decode(FilterOperator.self, forKey: .op)
		property = try container.decode(String.self, forKey: .property)
		value = try container.decode(String.self, forKey: .value)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSetComposeIncludeFilter else {
            return false
        }

		return	op == object.op &&
			property == object.property &&
			value == object.value &&
			super.equal(to: to)
	}
}

extension ValueSetComposeIncludeFilter {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSetComposeIncludeFilter else {
            return self
        }

        resource.op = self.op
        resource.property = self.property
        resource.value = self.value

        return resource
    }
}

/**
Used when the value set is "expanded".

A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
element holds the expansion, if it has been performed.
*/
open class ValueSetExpansion: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansion" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSetExpansion>] = [

        "contains" : \ValueSetExpansion.contains,
        "identifier" : \ValueSetExpansion.identifier,
        "offset" : \ValueSetExpansion.offset,
        "parameter" : \ValueSetExpansion.parameter,
        "timestamp" : \ValueSetExpansion.timestamp,
        "total" : \ValueSetExpansion.total
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSetExpansion.keyPaths[name] as? KeyPath<ValueSetExpansion, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSetExpansion.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Codes in the value set.
	public var contains: [ValueSetExpansionContains]?

	/// Uniquely identifies this expansion.
	public var identifier: String?

	/// Offset at which this resource starts.
	public var offset: Int?

	/// Parameter that controlled the expansion process.
	public var parameter: [ValueSetExpansionParameter]?

	/// Time ValueSet expansion happened.
	public var timestamp: DateTime?

	/// Total number of codes in the expansion.
	public var total: Int?

	enum ValueSetExpansionKeys: String, CodingKey {
		case contains
		case identifier
		case offset
		case parameter
		case timestamp
		case total
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(identifier: String, timestamp: DateTime) {
		self.init()
		self.identifier = identifier
		self.timestamp = timestamp
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ValueSetExpansionKeys.self)
		if let item = identifier {
			try container.encode(item, forKey: .identifier)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("identifier")
		}
		if let item = timestamp {
			try container.encode(item, forKey: .timestamp)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("timestamp")
		}
		try container.encodeArrayIfPresent(contains, forKey: .contains)
		try container.encodeIfPresent(offset, forKey: .offset)
		try container.encodeArrayIfPresent(parameter, forKey: .parameter)
		try container.encodeIfPresent(total, forKey: .total)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetExpansionKeys.self)
		identifier = try container.decode(String.self, forKey: .identifier)
		timestamp = try container.decode(DateTime.self, forKey: .timestamp)
		contains = try container.decodeArrayIfPresent([ValueSetExpansionContains].self, forKey: .contains)
		offset = try container.decodeIfPresent(Int.self, forKey: .offset)
		parameter = try container.decodeArrayIfPresent([ValueSetExpansionParameter].self, forKey: .parameter)
		total = try container.decodeIfPresent(Int.self, forKey: .total)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSetExpansion else {
            return false
        }

		return	contains == object.contains &&
			identifier == object.identifier &&
			offset == object.offset &&
			parameter == object.parameter &&
			timestamp == object.timestamp &&
			total == object.total &&
			super.equal(to: to)
	}
}

extension ValueSetExpansion {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSetExpansion else {
            return self
        }

        resource.contains = self.contains?.compactMap { $0.copy(with: zone) as? ValueSetExpansionContains }
        resource.identifier = self.identifier
        resource.offset = self.offset
        resource.parameter = self.parameter?.compactMap { $0.copy(with: zone) as? ValueSetExpansionParameter }
        resource.timestamp = self.timestamp
        resource.total = self.total

        return resource
    }
}

/**
Codes in the value set.

The codes that are contained in the value set expansion.
*/
open class ValueSetExpansionContains: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansionContains" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSetExpansionContains>] = [

        "abstract" : \ValueSetExpansionContains.abstract,
        "code" : \ValueSetExpansionContains.code,
        "contains" : \ValueSetExpansionContains.contains,
        "designation" : \ValueSetExpansionContains.designation,
        "display" : \ValueSetExpansionContains.display,
        "inactive" : \ValueSetExpansionContains.inactive,
        "system" : \ValueSetExpansionContains.system,
        "version" : \ValueSetExpansionContains.version
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSetExpansionContains.keyPaths[name] as? KeyPath<ValueSetExpansionContains, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSetExpansionContains.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// If user cannot select this entry.
	public var abstract: Bool?

	/// Code - if blank, this is not a selectable code.
	public var code: String?

	/// Codes contained under this entry.
	public var contains: [ValueSetExpansionContains]?

	/// Additional representations for this item.
	public var designation: [ValueSetComposeIncludeConceptDesignation]?

	/// User display for the concept.
	public var display: String?

	/// If concept is inactive in the code system.
	public var inactive: Bool?

	/// System value for the code.
	public var system: String?

	/// Version in which this code/display is defined.
	public var version: String?

	enum ValueSetExpansionContainsKeys: String, CodingKey {
		case abstract
		case code
		case contains
		case designation
		case display
		case inactive
		case system
		case version
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ValueSetExpansionContainsKeys.self)
		try container.encodeIfPresent(abstract, forKey: .abstract)
		try container.encodeIfPresent(code, forKey: .code)
		try container.encodeArrayIfPresent(contains, forKey: .contains)
		try container.encodeArrayIfPresent(designation, forKey: .designation)
		try container.encodeIfPresent(display, forKey: .display)
		try container.encodeIfPresent(inactive, forKey: .inactive)
		try container.encodeIfPresent(system, forKey: .system)
		try container.encodeIfPresent(version, forKey: .version)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetExpansionContainsKeys.self)
		abstract = try container.decodeIfPresent(Bool.self, forKey: .abstract)
		code = try container.decodeIfPresent(String.self, forKey: .code)
		contains = try container.decodeArrayIfPresent([ValueSetExpansionContains].self, forKey: .contains)
		designation = try container.decodeArrayIfPresent([ValueSetComposeIncludeConceptDesignation].self, forKey: .designation)
		display = try container.decodeIfPresent(String.self, forKey: .display)
		inactive = try container.decodeIfPresent(Bool.self, forKey: .inactive)
		system = try container.decodeIfPresent(String.self, forKey: .system)
		version = try container.decodeIfPresent(String.self, forKey: .version)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSetExpansionContains else {
            return false
        }

		return	abstract == object.abstract &&
			code == object.code &&
			contains == object.contains &&
			designation == object.designation &&
			display == object.display &&
			inactive == object.inactive &&
			system == object.system &&
			version == object.version &&
			super.equal(to: to)
	}
}

extension ValueSetExpansionContains {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSetExpansionContains else {
            return self
        }

        resource.abstract = self.abstract
        resource.code = self.code
        resource.contains = self.contains?.compactMap { $0.copy(with: zone) as? ValueSetExpansionContains }
        resource.designation = self.designation?.compactMap { $0.copy(with: zone) as? ValueSetComposeIncludeConceptDesignation }
        resource.display = self.display
        resource.inactive = self.inactive
        resource.system = self.system
        resource.version = self.version

        return resource
    }
}

/**
Parameter that controlled the expansion process.

A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to check
whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
*/
open class ValueSetExpansionParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "ValueSetExpansionParameter" }
	}

    private static var keyPaths: [String: PartialKeyPath<ValueSetExpansionParameter>] = [

        "name" : \ValueSetExpansionParameter.name,
        "valueBoolean" : \ValueSetExpansionParameter.valueBoolean,
        "valueCode" : \ValueSetExpansionParameter.valueCode,
        "valueDecimal" : \ValueSetExpansionParameter.valueDecimal,
        "valueInteger" : \ValueSetExpansionParameter.valueInteger,
        "valueString" : \ValueSetExpansionParameter.valueString,
        "valueUri" : \ValueSetExpansionParameter.valueUri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ValueSetExpansionParameter.keyPaths[name] as? KeyPath<ValueSetExpansionParameter, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ValueSetExpansionParameter.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Name as assigned by the server.
	public var name: String?

	/// Value of the named parameter.
	public var valueBoolean: Bool?

	/// Value of the named parameter.
	public var valueCode: String?

	/// Value of the named parameter.
	public var valueDecimal: Float?

	/// Value of the named parameter.
	public var valueInteger: Int?

	/// Value of the named parameter.
	public var valueString: String?

	/// Value of the named parameter.
	public var valueUri: String?

	enum ValueSetExpansionParameterKeys: String, CodingKey {
		case name
		case valueBoolean
		case valueCode
		case valueDecimal
		case valueInteger
		case valueString
		case valueUri
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(name: String) {
		self.init()
		self.name = name
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ValueSetExpansionParameterKeys.self)
		if let item = name {
			try container.encode(item, forKey: .name)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("name")
		}
		try container.encodeIfPresent(valueBoolean, forKey: .valueBoolean)
		try container.encodeIfPresent(valueCode, forKey: .valueCode)
		try container.encodeIfPresent(valueDecimal, forKey: .valueDecimal)
		try container.encodeIfPresent(valueInteger, forKey: .valueInteger)
		try container.encodeIfPresent(valueString, forKey: .valueString)
		try container.encodeIfPresent(valueUri, forKey: .valueUri)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ValueSetExpansionParameterKeys.self)
		name = try container.decode(String.self, forKey: .name)
		valueBoolean = try container.decodeIfPresent(Bool.self, forKey: .valueBoolean)
		valueCode = try container.decodeIfPresent(String.self, forKey: .valueCode)
		valueDecimal = try container.decodeIfPresent(Float.self, forKey: .valueDecimal)
		valueInteger = try container.decodeIfPresent(Int.self, forKey: .valueInteger)
		valueString = try container.decodeIfPresent(String.self, forKey: .valueString)
		valueUri = try container.decodeIfPresent(String.self, forKey: .valueUri)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ValueSetExpansionParameter else {
            return false
        }

		return	name == object.name &&
			valueBoolean == object.valueBoolean &&
			valueCode == object.valueCode &&
			valueDecimal == object.valueDecimal &&
			valueInteger == object.valueInteger &&
			valueString == object.valueString &&
			valueUri == object.valueUri &&
			super.equal(to: to)
	}
}

extension ValueSetExpansionParameter {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ValueSetExpansionParameter else {
            return self
        }

        resource.name = self.name
        resource.valueBoolean = self.valueBoolean
        resource.valueCode = self.valueCode
        resource.valueDecimal = self.valueDecimal
        resource.valueInteger = self.valueInteger
        resource.valueString = self.valueString
        resource.valueUri = self.valueUri

        return resource
    }
}
