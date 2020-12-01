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
//  Medication.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Medication)
//

import Foundation

/**
Definition of a Medication.

This resource is primarily used for the identification and definition of a medication. It covers the ingredients and the
packaging for a medication.
*/
open class Medication: DomainResource {
	override open class var resourceType: String {
		get { return "Medication" }
	}

    private static var keyPaths: [String: PartialKeyPath<Medication>] = [

        "code" : \Medication.code,
        "form" : \Medication.form,
        "image" : \Medication.image,
        "ingredient" : \Medication.ingredient,
        "isBrand" : \Medication.isBrand,
        "isOverTheCounter" : \Medication.isOverTheCounter,
        "manufacturer" : \Medication.manufacturer,
        "package" : \Medication.package,
        "status" : \Medication.status
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Medication.keyPaths[name] as? KeyPath<Medication, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Medication.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Codes that identify this medication.
	public var code: CodeableConcept?

	/// powder | tablets | capsule +.
	public var form: CodeableConcept?

	/// Picture of the medication.
	public var image: [Attachment]?

	/// Active or inactive ingredient.
	public var ingredient: [MedicationIngredient]?

	/// True if a brand.
	public var isBrand: Bool?

	/// True if medication does not require a prescription.
	public var isOverTheCounter: Bool?

	/// Manufacturer of the item.
	public var manufacturer: Reference?

	/// Details about packaged medications.
	public var package: MedicationPackage?

	/// A code to indicate if the medication is in active use.
	public var status: MedicationStatus?

	enum MedicationKeys: String, CodingKey {
		case code
		case form
		case image
		case ingredient
		case isBrand
		case isOverTheCounter
		case manufacturer
		case package
		case status
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MedicationKeys.self)
		try container.encodeIfPresent(code, forKey: .code)
		try container.encodeIfPresent(form, forKey: .form)
		try container.encodeArrayIfPresent(image, forKey: .image)
		try container.encodeArrayIfPresent(ingredient, forKey: .ingredient)
		try container.encodeIfPresent(isBrand, forKey: .isBrand)
		try container.encodeIfPresent(isOverTheCounter, forKey: .isOverTheCounter)
		try container.encodeIfPresent(manufacturer, forKey: .manufacturer)
		try container.encodeIfPresent(package, forKey: .package)
		try container.encodeIfPresent(status, forKey: .status)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationKeys.self)
		code = try container.decodeIfPresent(CodeableConcept.self, forKey: .code)
		form = try container.decodeIfPresent(CodeableConcept.self, forKey: .form)
		image = try container.decodeArrayIfPresent([Attachment].self, forKey: .image)
		ingredient = try container.decodeArrayIfPresent([MedicationIngredient].self, forKey: .ingredient)
		isBrand = try container.decodeIfPresent(Bool.self, forKey: .isBrand)
		isOverTheCounter = try container.decodeIfPresent(Bool.self, forKey: .isOverTheCounter)
		manufacturer = try container.decodeIfPresent(Reference.self, forKey: .manufacturer)
		package = try container.decodeIfPresent(MedicationPackage.self, forKey: .package)
		status = try container.decodeIfPresent(MedicationStatus.self, forKey: .status)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Medication else {
            return false
        }

		return	code == object.code &&
			form == object.form &&
			image == object.image &&
			ingredient == object.ingredient &&
			isBrand == object.isBrand &&
			isOverTheCounter == object.isOverTheCounter &&
			manufacturer == object.manufacturer &&
			package == object.package &&
			status == object.status &&
			super.equal(to: to)
	}
}

extension Medication {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Medication else {
            return self
        }

        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.form = self.form?.copy(with: zone) as? CodeableConcept
        resource.image = self.image?.compactMap { $0.copy(with: zone) as? Attachment }
        resource.ingredient = self.ingredient?.compactMap { $0.copy(with: zone) as? MedicationIngredient }
        resource.isBrand = self.isBrand
        resource.isOverTheCounter = self.isOverTheCounter
        resource.manufacturer = self.manufacturer?.copy(with: zone) as? Reference
        resource.package = self.package?.copy(with: zone) as? MedicationPackage
        resource.status = self.status

        return resource
    }
}

/**
Active or inactive ingredient.

Identifies a particular constituent of interest in the product.
*/
open class MedicationIngredient: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationIngredient" }
	}

    private static var keyPaths: [String: PartialKeyPath<MedicationIngredient>] = [

        "amount" : \MedicationIngredient.amount,
        "isActive" : \MedicationIngredient.isActive,
        "itemCodeableConcept" : \MedicationIngredient.itemCodeableConcept,
        "itemReference" : \MedicationIngredient.itemReference
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = MedicationIngredient.keyPaths[name] as? KeyPath<MedicationIngredient, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = MedicationIngredient.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Quantity of ingredient present.
	public var amount: Ratio?

	/// Active ingredient indicator.
	public var isActive: Bool?

	/// The product contained.
	public var itemCodeableConcept: CodeableConcept?

	/// The product contained.
	public var itemReference: Reference?

	enum MedicationIngredientKeys: String, CodingKey {
		case amount
		case isActive
		case itemCodeableConcept
		case itemReference
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(item: Any) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		} else if let value = item as? Reference {
			self.itemReference = value
		} else {
			debugPrint("Type “\(Swift.type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MedicationIngredientKeys.self)
		try container.encodeIfPresent(itemCodeableConcept, forKey: .itemCodeableConcept)
		try container.encodeIfPresent(itemReference, forKey: .itemReference)
		try container.encodeIfPresent(amount, forKey: .amount)
		try container.encodeIfPresent(isActive, forKey: .isActive)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationIngredientKeys.self)
		itemCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .itemCodeableConcept)
		itemReference = try container.decodeIfPresent(Reference.self, forKey: .itemReference)
		amount = try container.decodeIfPresent(Ratio.self, forKey: .amount)
		isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? MedicationIngredient else {
            return false
        }

		return	amount == object.amount &&
			isActive == object.isActive &&
			itemCodeableConcept == object.itemCodeableConcept &&
			itemReference == object.itemReference &&
			super.equal(to: to)
	}
}

extension MedicationIngredient {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? MedicationIngredient else {
            return self
        }

        resource.amount = self.amount?.copy(with: zone) as? Ratio
        resource.isActive = self.isActive
        resource.itemCodeableConcept = self.itemCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.itemReference = self.itemReference?.copy(with: zone) as? Reference

        return resource
    }
}

/**
Details about packaged medications.

Information that only applies to packages (not products).
*/
open class MedicationPackage: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationPackage" }
	}

    private static var keyPaths: [String: PartialKeyPath<MedicationPackage>] = [

        "batch" : \MedicationPackage.batch,
        "content" : \MedicationPackage.content,
        "specimenContainer" : \MedicationPackage.specimenContainer
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = MedicationPackage.keyPaths[name] as? KeyPath<MedicationPackage, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = MedicationPackage.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Identifies a single production run.
	public var batch: [MedicationPackageBatch]?

	/// What is  in the package.
	public var content: [MedicationPackageContent]?

	/// E.g. box, vial, blister-pack.
	public var specimenContainer: CodeableConcept?

	enum MedicationPackageKeys: String, CodingKey {
		case batch
		case content
		case specimenContainer = "container"
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MedicationPackageKeys.self)
		try container.encodeArrayIfPresent(batch, forKey: .batch)
		try container.encodeArrayIfPresent(content, forKey: .content)
		try container.encodeIfPresent(specimenContainer, forKey: .specimenContainer)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationPackageKeys.self)
		batch = try container.decodeArrayIfPresent([MedicationPackageBatch].self, forKey: .batch)
		content = try container.decodeArrayIfPresent([MedicationPackageContent].self, forKey: .content)
		specimenContainer = try container.decodeIfPresent(CodeableConcept.self, forKey: .specimenContainer)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? MedicationPackage else {
            return false
        }

		return	batch == object.batch &&
			content == object.content &&
			specimenContainer == object.specimenContainer &&
			super.equal(to: to)
	}
}

extension MedicationPackage {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? MedicationPackage else {
            return self
        }

        resource.batch = self.batch?.compactMap { $0.copy(with: zone) as? MedicationPackageBatch }
        resource.content = self.content?.compactMap { $0.copy(with: zone) as? MedicationPackageContent }
        resource.specimenContainer = self.specimenContainer?.copy(with: zone) as? CodeableConcept

        return resource
    }
}

/**
Identifies a single production run.

Information about a group of medication produced or packaged from one production run.
*/
open class MedicationPackageBatch: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationPackageBatch" }
	}

    private static var keyPaths: [String: PartialKeyPath<MedicationPackageBatch>] = [

        "expirationDate" : \MedicationPackageBatch.expirationDate,
        "lotNumber" : \MedicationPackageBatch.lotNumber
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = MedicationPackageBatch.keyPaths[name] as? KeyPath<MedicationPackageBatch, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = MedicationPackageBatch.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// When batch will expire.
	public var expirationDate: DateTime?

	/// Identifier assigned to batch.
	public var lotNumber: String?

	enum MedicationPackageBatchKeys: String, CodingKey {
		case expirationDate
		case lotNumber
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MedicationPackageBatchKeys.self)
		try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
		try container.encodeIfPresent(lotNumber, forKey: .lotNumber)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationPackageBatchKeys.self)
		expirationDate = try container.decodeIfPresent(DateTime.self, forKey: .expirationDate)
		lotNumber = try container.decodeIfPresent(String.self, forKey: .lotNumber)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? MedicationPackageBatch else {
            return false
        }

		return	expirationDate == object.expirationDate &&
			lotNumber == object.lotNumber &&
			super.equal(to: to)
	}
}

extension MedicationPackageBatch {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? MedicationPackageBatch else {
            return self
        }

        resource.expirationDate = self.expirationDate
        resource.lotNumber = self.lotNumber

        return resource
    }
}

/**
What is  in the package.

A set of components that go to make up the described item.
*/
open class MedicationPackageContent: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationPackageContent" }
	}

    private static var keyPaths: [String: PartialKeyPath<MedicationPackageContent>] = [

        "amount" : \MedicationPackageContent.amount,
        "itemCodeableConcept" : \MedicationPackageContent.itemCodeableConcept,
        "itemReference" : \MedicationPackageContent.itemReference
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = MedicationPackageContent.keyPaths[name] as? KeyPath<MedicationPackageContent, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = MedicationPackageContent.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Quantity present in the package.
	public var amount: Quantity?

	/// The item in the package.
	public var itemCodeableConcept: CodeableConcept?

	/// The item in the package.
	public var itemReference: Reference?

	enum MedicationPackageContentKeys: String, CodingKey {
		case amount
		case itemCodeableConcept
		case itemReference
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(item: Any) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		} else if let value = item as? Reference {
			self.itemReference = value
		} else {
			debugPrint("Type “\(Swift.type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MedicationPackageContentKeys.self)
		try container.encodeIfPresent(itemCodeableConcept, forKey: .itemCodeableConcept)
		try container.encodeIfPresent(itemReference, forKey: .itemReference)
		try container.encodeIfPresent(amount, forKey: .amount)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MedicationPackageContentKeys.self)
		itemCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .itemCodeableConcept)
		itemReference = try container.decodeIfPresent(Reference.self, forKey: .itemReference)
		amount = try container.decodeIfPresent(Quantity.self, forKey: .amount)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? MedicationPackageContent else {
            return false
        }

		return	amount == object.amount &&
			itemCodeableConcept == object.itemCodeableConcept &&
			itemReference == object.itemReference &&
			super.equal(to: to)
	}
}

extension MedicationPackageContent {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? MedicationPackageContent else {
            return self
        }

        resource.amount = self.amount?.copy(with: zone) as? Quantity
        resource.itemCodeableConcept = self.itemCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.itemReference = self.itemReference?.copy(with: zone) as? Reference

        return resource
    }
}
