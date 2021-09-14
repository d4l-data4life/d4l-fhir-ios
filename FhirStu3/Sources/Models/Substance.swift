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
//  Substance.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Substance)
//

import Foundation

/**
A homogeneous material with a definite composition.
*/
open class Substance: DomainResource {
	override open class var resourceType: String {
		get { return "Substance" }
	}

    private static var keyPaths: [String: PartialKeyPath<Substance>] = [

        "category" : \Substance.category,
        "code" : \Substance.code,
        "description_fhir" : \Substance.description_fhir,
        "identifier" : \Substance.identifier,
        "ingredient" : \Substance.ingredient,
        "instance" : \Substance.instance,
        "status" : \Substance.status
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Substance.keyPaths[name] as? KeyPath<Substance, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Substance.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// What class/type of substance this is.
	public var category: [CodeableConcept]?

	/// What substance this is.
	public var code: CodeableConcept?

	/// Textual description of the substance, comments.
	public var description_fhir: String?

	/// Unique identifier.
	public var identifier: [Identifier]?

	/// Composition information about the substance.
	public var ingredient: [SubstanceIngredient]?

	/// If this describes a specific package/container of the substance.
	public var instance: [SubstanceInstance]?

	/// A code to indicate if the substance is actively used.
	public var status: FHIRSubstanceStatus?

	enum SubstanceKeys: String, CodingKey {
		case category
		case code
		case description_fhir = "description"
		case identifier
		case ingredient
		case instance
		case status
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
		var container = encoder.container(keyedBy: SubstanceKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		try container.encodeArrayIfPresent(category, forKey: .category)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(ingredient, forKey: .ingredient)
		try container.encodeArrayIfPresent(instance, forKey: .instance)
		try container.encodeIfPresent(status, forKey: .status)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SubstanceKeys.self)
		code = try container.decode(CodeableConcept.self, forKey: .code)
		category = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .category)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		ingredient = try container.decodeArrayIfPresent([SubstanceIngredient].self, forKey: .ingredient)
		instance = try container.decodeArrayIfPresent([SubstanceInstance].self, forKey: .instance)
		status = try container.decodeIfPresent(FHIRSubstanceStatus.self, forKey: .status)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Substance else {
            return false
        }

		return	category == object.category &&
			code == object.code &&
			description_fhir == object.description_fhir &&
			identifier == object.identifier &&
			ingredient == object.ingredient &&
			instance == object.instance &&
			status == object.status &&
			super.equal(to: to)
	}
}

extension Substance {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Substance else {
            return self
        }

        resource.category = self.category?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.ingredient = self.ingredient?.compactMap { $0.copy(with: zone) as? SubstanceIngredient }
        resource.instance = self.instance?.compactMap { $0.copy(with: zone) as? SubstanceInstance }
        resource.status = self.status

        return resource
    }
}

/**
Composition information about the substance.

A substance can be composed of other substances.
*/
open class SubstanceIngredient: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceIngredient" }
	}

    private static var keyPaths: [String: PartialKeyPath<SubstanceIngredient>] = [

        "quantity" : \SubstanceIngredient.quantity,
        "substanceCodeableConcept" : \SubstanceIngredient.substanceCodeableConcept,
        "substanceReference" : \SubstanceIngredient.substanceReference
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = SubstanceIngredient.keyPaths[name] as? KeyPath<SubstanceIngredient, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = SubstanceIngredient.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Optional amount (concentration).
	public var quantity: Ratio?

	/// A component of the substance.
	public var substanceCodeableConcept: CodeableConcept?

	/// A component of the substance.
	public var substanceReference: Reference?

	enum SubstanceIngredientKeys: String, CodingKey {
		case quantity
		case substanceCodeableConcept
		case substanceReference
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(substance: Any) {
		self.init()
		if let value = substance as? CodeableConcept {
			self.substanceCodeableConcept = value
		} else if let value = substance as? Reference {
			self.substanceReference = value
		} else {
			debugPrint("Type “\(Swift.type(of: substance))” for property “\(substance)” is invalid, ignoring")
		}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: SubstanceIngredientKeys.self)
		try container.encodeIfPresent(substanceCodeableConcept, forKey: .substanceCodeableConcept)
		try container.encodeIfPresent(substanceReference, forKey: .substanceReference)
		try container.encodeIfPresent(quantity, forKey: .quantity)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SubstanceIngredientKeys.self)
		substanceCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .substanceCodeableConcept)
		substanceReference = try container.decodeIfPresent(Reference.self, forKey: .substanceReference)
		quantity = try container.decodeIfPresent(Ratio.self, forKey: .quantity)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? SubstanceIngredient else {
            return false
        }

		return	quantity == object.quantity &&
			substanceCodeableConcept == object.substanceCodeableConcept &&
			substanceReference == object.substanceReference &&
			super.equal(to: to)
	}
}

extension SubstanceIngredient {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? SubstanceIngredient else {
            return self
        }

        resource.quantity = self.quantity?.copy(with: zone) as? Ratio
        resource.substanceCodeableConcept = self.substanceCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.substanceReference = self.substanceReference?.copy(with: zone) as? Reference

        return resource
    }
}

/**
If this describes a specific package/container of the substance.

Substance may be used to describe a kind of substance, or a specific package/container of the substance: an instance.
*/
open class SubstanceInstance: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceInstance" }
	}

    private static var keyPaths: [String: PartialKeyPath<SubstanceInstance>] = [

        "expiry" : \SubstanceInstance.expiry,
        "identifier" : \SubstanceInstance.identifier,
        "quantity" : \SubstanceInstance.quantity
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = SubstanceInstance.keyPaths[name] as? KeyPath<SubstanceInstance, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = SubstanceInstance.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// When no longer valid to use.
	public var expiry: DateTime?

	/// Identifier of the package/container.
	public var identifier: Identifier?

	/// Amount of substance in the package.
	public var quantity: Quantity?

	enum SubstanceInstanceKeys: String, CodingKey {
		case expiry
		case identifier
		case quantity
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: SubstanceInstanceKeys.self)
		try container.encodeIfPresent(expiry, forKey: .expiry)
		try container.encodeIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(quantity, forKey: .quantity)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SubstanceInstanceKeys.self)
		expiry = try container.decodeIfPresent(DateTime.self, forKey: .expiry)
		identifier = try container.decodeIfPresent(Identifier.self, forKey: .identifier)
		quantity = try container.decodeIfPresent(Quantity.self, forKey: .quantity)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? SubstanceInstance else {
            return false
        }

		return	expiry == object.expiry &&
			identifier == object.identifier &&
			quantity == object.quantity &&
			super.equal(to: to)
	}
}

extension SubstanceInstance {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? SubstanceInstance else {
            return self
        }

        resource.expiry = self.expiry
        resource.identifier = self.identifier?.copy(with: zone) as? Identifier
        resource.quantity = self.quantity?.copy(with: zone) as? Quantity

        return resource
    }
}
