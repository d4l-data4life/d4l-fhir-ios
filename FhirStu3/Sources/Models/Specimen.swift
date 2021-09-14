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
//  Specimen.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Specimen)
//

import Foundation

/**
Sample for analysis.

A sample to be used for analysis.
*/
open class Specimen: DomainResource {
	override open class var resourceType: String {
		get { return "Specimen" }
	}

    private static var keyPaths: [String: PartialKeyPath<Specimen>] = [

        "accessionIdentifier" : \Specimen.accessionIdentifier,
        "collection" : \Specimen.collection,
        "identifier" : \Specimen.identifier,
        "note" : \Specimen.note,
        "parent" : \Specimen.parent,
        "processing" : \Specimen.processing,
        "receivedTime" : \Specimen.receivedTime,
        "request" : \Specimen.request,
        "specimenContainer" : \Specimen.specimenContainer,
        "status" : \Specimen.status,
        "subject" : \Specimen.subject,
        "type" : \Specimen.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Specimen.keyPaths[name] as? KeyPath<Specimen, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Specimen.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Identifier assigned by the lab.
	public var accessionIdentifier: Identifier?

	/// Collection details.
	public var collection: SpecimenCollection?

	/// External Identifier.
	public var identifier: [Identifier]?

	/// Comments.
	public var note: [Annotation]?

	/// Specimen from which this specimen originated.
	public var parent: [Reference]?

	/// Processing and processing step details.
	public var processing: [SpecimenProcessing]?

	/// The time when specimen was received for processing.
	public var receivedTime: DateTime?

	/// Why the specimen was collected.
	public var request: [Reference]?

	/// Direct container of specimen (tube/slide, etc.).
	public var specimenContainer: [SpecimenContainer]?

	/// The availability of the specimen.
	public var status: SpecimenStatus?

	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device.
	public var subject: Reference?

	/// Kind of material that forms the specimen.
	public var type: CodeableConcept?

	enum SpecimenKeys: String, CodingKey {
		case accessionIdentifier
		case collection
		case identifier
		case note
		case parent
		case processing
		case receivedTime
		case request
		case specimenContainer = "container"
		case status
		case subject
		case type
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(subject: Reference) {
		self.init()
		self.subject = subject
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: SpecimenKeys.self)
		if let item = subject {
			try container.encode(item, forKey: .subject)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("subject")
		}
		try container.encodeIfPresent(accessionIdentifier, forKey: .accessionIdentifier)
		try container.encodeIfPresent(collection, forKey: .collection)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(note, forKey: .note)
		try container.encodeArrayIfPresent(parent, forKey: .parent)
		try container.encodeArrayIfPresent(processing, forKey: .processing)
		try container.encodeIfPresent(receivedTime, forKey: .receivedTime)
		try container.encodeArrayIfPresent(request, forKey: .request)
		try container.encodeArrayIfPresent(specimenContainer, forKey: .specimenContainer)
		try container.encodeIfPresent(status, forKey: .status)
		try container.encodeIfPresent(type, forKey: .type)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SpecimenKeys.self)
		subject = try container.decode(Reference.self, forKey: .subject)
		accessionIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .accessionIdentifier)
		collection = try container.decodeIfPresent(SpecimenCollection.self, forKey: .collection)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		note = try container.decodeArrayIfPresent([Annotation].self, forKey: .note)
		parent = try container.decodeArrayIfPresent([Reference].self, forKey: .parent)
		processing = try container.decodeArrayIfPresent([SpecimenProcessing].self, forKey: .processing)
		receivedTime = try container.decodeIfPresent(DateTime.self, forKey: .receivedTime)
		request = try container.decodeArrayIfPresent([Reference].self, forKey: .request)
		specimenContainer = try container.decodeArrayIfPresent([SpecimenContainer].self, forKey: .specimenContainer)
		status = try container.decodeIfPresent(SpecimenStatus.self, forKey: .status)
		type = try container.decodeIfPresent(CodeableConcept.self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Specimen else {
            return false
        }

		return	accessionIdentifier == object.accessionIdentifier &&
			collection == object.collection &&
			identifier == object.identifier &&
			note == object.note &&
			parent == object.parent &&
			processing == object.processing &&
			receivedTime == object.receivedTime &&
			request == object.request &&
			specimenContainer == object.specimenContainer &&
			status == object.status &&
			subject == object.subject &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension Specimen {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Specimen else {
            return self
        }

        resource.accessionIdentifier = self.accessionIdentifier?.copy(with: zone) as? Identifier
        resource.collection = self.collection?.copy(with: zone) as? SpecimenCollection
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.note = self.note?.compactMap { $0.copy(with: zone) as? Annotation }
        resource.parent = self.parent?.compactMap { $0.copy(with: zone) as? Reference }
        resource.processing = self.processing?.compactMap { $0.copy(with: zone) as? SpecimenProcessing }
        resource.receivedTime = self.receivedTime
        resource.request = self.request?.compactMap { $0.copy(with: zone) as? Reference }
        resource.specimenContainer = self.specimenContainer?.compactMap { $0.copy(with: zone) as? SpecimenContainer }
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference
        resource.type = self.type?.copy(with: zone) as? CodeableConcept

        return resource
    }
}

/**
Collection details.

Details concerning the specimen collection.
*/
open class SpecimenCollection: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenCollection" }
	}

    private static var keyPaths: [String: PartialKeyPath<SpecimenCollection>] = [

        "bodySite" : \SpecimenCollection.bodySite,
        "collectedDateTime" : \SpecimenCollection.collectedDateTime,
        "collectedPeriod" : \SpecimenCollection.collectedPeriod,
        "collector" : \SpecimenCollection.collector,
        "method" : \SpecimenCollection.method,
        "quantity" : \SpecimenCollection.quantity
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = SpecimenCollection.keyPaths[name] as? KeyPath<SpecimenCollection, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = SpecimenCollection.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Anatomical collection site.
	public var bodySite: CodeableConcept?

	/// Collection time.
	public var collectedDateTime: DateTime?

	/// Collection time.
	public var collectedPeriod: Period?

	/// Who collected the specimen.
	public var collector: Reference?

	/// Technique used to perform collection.
	public var method: CodeableConcept?

	/// The quantity of specimen collected.
	public var quantity: Quantity?

	enum SpecimenCollectionKeys: String, CodingKey {
		case bodySite
		case collectedDateTime
		case collectedPeriod
		case collector
		case method
		case quantity
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: SpecimenCollectionKeys.self)
		try container.encodeIfPresent(bodySite, forKey: .bodySite)
		try container.encodeIfPresent(collectedDateTime, forKey: .collectedDateTime)
		try container.encodeIfPresent(collectedPeriod, forKey: .collectedPeriod)
		try container.encodeIfPresent(collector, forKey: .collector)
		try container.encodeIfPresent(method, forKey: .method)
		try container.encodeIfPresent(quantity, forKey: .quantity)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SpecimenCollectionKeys.self)
		bodySite = try container.decodeIfPresent(CodeableConcept.self, forKey: .bodySite)
		collectedDateTime = try container.decodeIfPresent(DateTime.self, forKey: .collectedDateTime)
		collectedPeriod = try container.decodeIfPresent(Period.self, forKey: .collectedPeriod)
		collector = try container.decodeIfPresent(Reference.self, forKey: .collector)
		method = try container.decodeIfPresent(CodeableConcept.self, forKey: .method)
		quantity = try container.decodeIfPresent(Quantity.self, forKey: .quantity)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? SpecimenCollection else {
            return false
        }

		return	bodySite == object.bodySite &&
			collectedDateTime == object.collectedDateTime &&
			collectedPeriod == object.collectedPeriod &&
			collector == object.collector &&
			method == object.method &&
			quantity == object.quantity &&
			super.equal(to: to)
	}
}

extension SpecimenCollection {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? SpecimenCollection else {
            return self
        }

        resource.bodySite = self.bodySite?.copy(with: zone) as? CodeableConcept
        resource.collectedDateTime = self.collectedDateTime
        resource.collectedPeriod = self.collectedPeriod?.copy(with: zone) as? Period
        resource.collector = self.collector?.copy(with: zone) as? Reference
        resource.method = self.method?.copy(with: zone) as? CodeableConcept
        resource.quantity = self.quantity?.copy(with: zone) as? Quantity

        return resource
    }
}

/**
Direct container of specimen (tube/slide, etc.).

The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
addressed here.
*/
open class SpecimenContainer: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenContainer" }
	}

    private static var keyPaths: [String: PartialKeyPath<SpecimenContainer>] = [

        "additiveCodeableConcept" : \SpecimenContainer.additiveCodeableConcept,
        "additiveReference" : \SpecimenContainer.additiveReference,
        "capacity" : \SpecimenContainer.capacity,
        "description_fhir" : \SpecimenContainer.description_fhir,
        "identifier" : \SpecimenContainer.identifier,
        "specimenQuantity" : \SpecimenContainer.specimenQuantity,
        "type" : \SpecimenContainer.type
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = SpecimenContainer.keyPaths[name] as? KeyPath<SpecimenContainer, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = SpecimenContainer.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Additive associated with container.
	public var additiveCodeableConcept: CodeableConcept?

	/// Additive associated with container.
	public var additiveReference: Reference?

	/// Container volume or size.
	public var capacity: Quantity?

	/// Textual description of the container.
	public var description_fhir: String?

	/// Id for the container.
	public var identifier: [Identifier]?

	/// Quantity of specimen within container.
	public var specimenQuantity: Quantity?

	/// Kind of container directly associated with specimen.
	public var type: CodeableConcept?

	enum SpecimenContainerKeys: String, CodingKey {
		case additiveCodeableConcept
		case additiveReference
		case capacity
		case description_fhir = "description"
		case identifier
		case specimenQuantity
		case type
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: SpecimenContainerKeys.self)
		try container.encodeIfPresent(additiveCodeableConcept, forKey: .additiveCodeableConcept)
		try container.encodeIfPresent(additiveReference, forKey: .additiveReference)
		try container.encodeIfPresent(capacity, forKey: .capacity)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(specimenQuantity, forKey: .specimenQuantity)
		try container.encodeIfPresent(type, forKey: .type)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SpecimenContainerKeys.self)
		additiveCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .additiveCodeableConcept)
		additiveReference = try container.decodeIfPresent(Reference.self, forKey: .additiveReference)
		capacity = try container.decodeIfPresent(Quantity.self, forKey: .capacity)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		specimenQuantity = try container.decodeIfPresent(Quantity.self, forKey: .specimenQuantity)
		type = try container.decodeIfPresent(CodeableConcept.self, forKey: .type)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? SpecimenContainer else {
            return false
        }

		return	additiveCodeableConcept == object.additiveCodeableConcept &&
			additiveReference == object.additiveReference &&
			capacity == object.capacity &&
			description_fhir == object.description_fhir &&
			identifier == object.identifier &&
			specimenQuantity == object.specimenQuantity &&
			type == object.type &&
			super.equal(to: to)
	}
}

extension SpecimenContainer {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? SpecimenContainer else {
            return self
        }

        resource.additiveCodeableConcept = self.additiveCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.additiveReference = self.additiveReference?.copy(with: zone) as? Reference
        resource.capacity = self.capacity?.copy(with: zone) as? Quantity
        resource.description_fhir = self.description_fhir
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.specimenQuantity = self.specimenQuantity?.copy(with: zone) as? Quantity
        resource.type = self.type?.copy(with: zone) as? CodeableConcept

        return resource
    }
}

/**
Processing and processing step details.

Details concerning processing and processing steps for the specimen.
*/
open class SpecimenProcessing: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenProcessing" }
	}

    private static var keyPaths: [String: PartialKeyPath<SpecimenProcessing>] = [

        "additive" : \SpecimenProcessing.additive,
        "description_fhir" : \SpecimenProcessing.description_fhir,
        "procedure" : \SpecimenProcessing.procedure,
        "timeDateTime" : \SpecimenProcessing.timeDateTime,
        "timePeriod" : \SpecimenProcessing.timePeriod
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = SpecimenProcessing.keyPaths[name] as? KeyPath<SpecimenProcessing, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = SpecimenProcessing.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Material used in the processing step.
	public var additive: [Reference]?

	/// Textual description of procedure.
	public var description_fhir: String?

	/// Indicates the treatment step  applied to the specimen.
	public var procedure: CodeableConcept?

	/// Date and time of specimen processing.
	public var timeDateTime: DateTime?

	/// Date and time of specimen processing.
	public var timePeriod: Period?

	enum SpecimenProcessingKeys: String, CodingKey {
		case additive
		case description_fhir = "description"
		case procedure
		case timeDateTime
		case timePeriod
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: SpecimenProcessingKeys.self)
		try container.encodeArrayIfPresent(additive, forKey: .additive)
		try container.encodeIfPresent(description_fhir, forKey: .description_fhir)
		try container.encodeIfPresent(procedure, forKey: .procedure)
		try container.encodeIfPresent(timeDateTime, forKey: .timeDateTime)
		try container.encodeIfPresent(timePeriod, forKey: .timePeriod)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SpecimenProcessingKeys.self)
		additive = try container.decodeArrayIfPresent([Reference].self, forKey: .additive)
		description_fhir = try container.decodeIfPresent(String.self, forKey: .description_fhir)
		procedure = try container.decodeIfPresent(CodeableConcept.self, forKey: .procedure)
		timeDateTime = try container.decodeIfPresent(DateTime.self, forKey: .timeDateTime)
		timePeriod = try container.decodeIfPresent(Period.self, forKey: .timePeriod)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? SpecimenProcessing else {
            return false
        }

		return	additive == object.additive &&
			description_fhir == object.description_fhir &&
			procedure == object.procedure &&
			timeDateTime == object.timeDateTime &&
			timePeriod == object.timePeriod &&
			super.equal(to: to)
	}
}

extension SpecimenProcessing {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? SpecimenProcessing else {
            return self
        }

        resource.additive = self.additive?.compactMap { $0.copy(with: zone) as? Reference }
        resource.description_fhir = self.description_fhir
        resource.procedure = self.procedure?.copy(with: zone) as? CodeableConcept
        resource.timeDateTime = self.timeDateTime
        resource.timePeriod = self.timePeriod?.copy(with: zone) as? Period

        return resource
    }
}
