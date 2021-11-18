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
//  Dosage.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Dosage)
//

import Foundation

/**
How the medication is/was taken or should be taken.

Indicates how the medication is/was taken or should be taken by the patient.
*/
open class Dosage: Element {
	override open class var resourceType: String {
		get { return "Dosage" }
	}

    private static var keyPaths: [String: PartialKeyPath<Dosage>] = [

        "additionalInstruction" : \Dosage.additionalInstruction,
        "asNeededBoolean" : \Dosage.asNeededBoolean,
        "asNeededCodeableConcept" : \Dosage.asNeededCodeableConcept,
        "doseQuantity" : \Dosage.doseQuantity,
        "doseRange" : \Dosage.doseRange,
        "maxDosePerAdministration" : \Dosage.maxDosePerAdministration,
        "maxDosePerLifetime" : \Dosage.maxDosePerLifetime,
        "maxDosePerPeriod" : \Dosage.maxDosePerPeriod,
        "method" : \Dosage.method,
        "patientInstruction" : \Dosage.patientInstruction,
        "rateQuantity" : \Dosage.rateQuantity,
        "rateRange" : \Dosage.rateRange,
        "rateRatio" : \Dosage.rateRatio,
        "route" : \Dosage.route,
        "sequence" : \Dosage.sequence,
        "site" : \Dosage.site,
        "text" : \Dosage.text,
        "timing" : \Dosage.timing
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Dosage.keyPaths[name] as? KeyPath<Dosage, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Dosage.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Supplemental instruction - e.g. "with meals".
	public var additionalInstruction: [CodeableConcept]?

	/// Take "as needed" (for x).
	public var asNeededBoolean: Bool?

	/// Take "as needed" (for x).
	public var asNeededCodeableConcept: CodeableConcept?

	/// Amount of medication per dose.
	public var doseQuantity: Quantity?

	/// Amount of medication per dose.
	public var doseRange: Range?

	/// Upper limit on medication per administration.
	public var maxDosePerAdministration: Quantity?

	/// Upper limit on medication per lifetime of the patient.
	public var maxDosePerLifetime: Quantity?

	/// Upper limit on medication per unit of time.
	public var maxDosePerPeriod: Ratio?

	/// Technique for administering medication.
	public var method: CodeableConcept?

	/// Patient or consumer oriented instructions.
	public var patientInstruction: String?

	/// Amount of medication per unit of time.
	public var rateQuantity: Quantity?

	/// Amount of medication per unit of time.
	public var rateRange: Range?

	/// Amount of medication per unit of time.
	public var rateRatio: Ratio?

	/// How drug should enter body.
	public var route: CodeableConcept?

	/// The order of the dosage instructions.
	public var sequence: Int?

	/// Body site to administer to.
	public var site: CodeableConcept?

	/// Free text dosage instructions e.g. SIG.
	public var text: String?

	/// When medication should be administered.
	public var timing: Timing?

	enum DosageKeys: String, CodingKey {
		case additionalInstruction
		case asNeededBoolean
		case asNeededCodeableConcept
		case doseQuantity
		case doseRange
		case maxDosePerAdministration
		case maxDosePerLifetime
		case maxDosePerPeriod
		case method
		case patientInstruction
		case rateQuantity
		case rateRange
		case rateRatio
		case route
		case sequence
		case site
		case text
		case timing
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DosageKeys.self)
		try container.encodeArrayIfPresent(additionalInstruction, forKey: .additionalInstruction)
		try container.encodeIfPresent(asNeededBoolean, forKey: .asNeededBoolean)
		try container.encodeIfPresent(asNeededCodeableConcept, forKey: .asNeededCodeableConcept)
		try container.encodeIfPresent(doseQuantity, forKey: .doseQuantity)
		try container.encodeIfPresent(doseRange, forKey: .doseRange)
		try container.encodeIfPresent(maxDosePerAdministration, forKey: .maxDosePerAdministration)
		try container.encodeIfPresent(maxDosePerLifetime, forKey: .maxDosePerLifetime)
		try container.encodeIfPresent(maxDosePerPeriod, forKey: .maxDosePerPeriod)
		try container.encodeIfPresent(method, forKey: .method)
		try container.encodeIfPresent(patientInstruction, forKey: .patientInstruction)
		try container.encodeIfPresent(rateQuantity, forKey: .rateQuantity)
		try container.encodeIfPresent(rateRange, forKey: .rateRange)
		try container.encodeIfPresent(rateRatio, forKey: .rateRatio)
		try container.encodeIfPresent(route, forKey: .route)
		try container.encodeIfPresent(sequence, forKey: .sequence)
		try container.encodeIfPresent(site, forKey: .site)
		try container.encodeIfPresent(text, forKey: .text)
		try container.encodeIfPresent(timing, forKey: .timing)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DosageKeys.self)
		additionalInstruction = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .additionalInstruction)
		asNeededBoolean = try container.decodeIfPresent(Bool.self, forKey: .asNeededBoolean)
		asNeededCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .asNeededCodeableConcept)
		doseQuantity = try container.decodeIfPresent(Quantity.self, forKey: .doseQuantity)
		doseRange = try container.decodeIfPresent(Range.self, forKey: .doseRange)
		maxDosePerAdministration = try container.decodeIfPresent(Quantity.self, forKey: .maxDosePerAdministration)
		maxDosePerLifetime = try container.decodeIfPresent(Quantity.self, forKey: .maxDosePerLifetime)
		maxDosePerPeriod = try container.decodeIfPresent(Ratio.self, forKey: .maxDosePerPeriod)
		method = try container.decodeIfPresent(CodeableConcept.self, forKey: .method)
		patientInstruction = try container.decodeIfPresent(String.self, forKey: .patientInstruction)
		rateQuantity = try container.decodeIfPresent(Quantity.self, forKey: .rateQuantity)
		rateRange = try container.decodeIfPresent(Range.self, forKey: .rateRange)
		rateRatio = try container.decodeIfPresent(Ratio.self, forKey: .rateRatio)
		route = try container.decodeIfPresent(CodeableConcept.self, forKey: .route)
		sequence = try container.decodeIfPresent(Int.self, forKey: .sequence)
		site = try container.decodeIfPresent(CodeableConcept.self, forKey: .site)
		text = try container.decodeIfPresent(String.self, forKey: .text)
		timing = try container.decodeIfPresent(Timing.self, forKey: .timing)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Dosage else {
            return false
        }

		return	additionalInstruction == object.additionalInstruction &&
			asNeededBoolean == object.asNeededBoolean &&
			asNeededCodeableConcept == object.asNeededCodeableConcept &&
			doseQuantity == object.doseQuantity &&
			doseRange == object.doseRange &&
			maxDosePerAdministration == object.maxDosePerAdministration &&
			maxDosePerLifetime == object.maxDosePerLifetime &&
			maxDosePerPeriod == object.maxDosePerPeriod &&
			method == object.method &&
			patientInstruction == object.patientInstruction &&
			rateQuantity == object.rateQuantity &&
			rateRange == object.rateRange &&
			rateRatio == object.rateRatio &&
			route == object.route &&
			sequence == object.sequence &&
			site == object.site &&
			text == object.text &&
			timing == object.timing &&
			super.equal(to: to)
	}
}

extension Dosage {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Dosage else {
            return self
        }

        resource.additionalInstruction = self.additionalInstruction?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.asNeededBoolean = self.asNeededBoolean
        resource.asNeededCodeableConcept = self.asNeededCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.doseQuantity = self.doseQuantity?.copy(with: zone) as? Quantity
        resource.doseRange = self.doseRange?.copy(with: zone) as? Range
        resource.maxDosePerAdministration = self.maxDosePerAdministration?.copy(with: zone) as? Quantity
        resource.maxDosePerLifetime = self.maxDosePerLifetime?.copy(with: zone) as? Quantity
        resource.maxDosePerPeriod = self.maxDosePerPeriod?.copy(with: zone) as? Ratio
        resource.method = self.method?.copy(with: zone) as? CodeableConcept
        resource.patientInstruction = self.patientInstruction
        resource.rateQuantity = self.rateQuantity?.copy(with: zone) as? Quantity
        resource.rateRange = self.rateRange?.copy(with: zone) as? Range
        resource.rateRatio = self.rateRatio?.copy(with: zone) as? Ratio
        resource.route = self.route?.copy(with: zone) as? CodeableConcept
        resource.sequence = self.sequence
        resource.site = self.site?.copy(with: zone) as? CodeableConcept
        resource.text = self.text
        resource.timing = self.timing?.copy(with: zone) as? Timing

        return resource
    }
}
