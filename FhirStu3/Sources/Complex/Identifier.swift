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
//  Identifier.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Identifier)
//

import Foundation

/**
An identifier intended for computation.

A technical identifier - identifies some entity uniquely and unambiguously.
*/
open class Identifier: Element {
	override open class var resourceType: String {
		get { return "Identifier" }
	}

    private static var keyPaths: [String: PartialKeyPath<Identifier>] = [

        "assigner" : \Identifier.assigner,
        "period" : \Identifier.period,
        "system" : \Identifier.system,
        "type" : \Identifier.type,
        "use" : \Identifier.use,
        "value" : \Identifier.value
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Identifier.keyPaths[name] as? KeyPath<Identifier, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Identifier.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Organization that issued id (may be just text).
	public var assigner: Reference?

	/// Time period when id is/was valid for use.
	public var period: Period?

	/// The namespace for the identifier value.
	public var system: String?

	/// Description of identifier.
	public var type: CodeableConcept?

	/// The purpose of this identifier.
	public var use: IdentifierUse?

	/// The value that is unique.
	public var value: String?

	enum IdentifierKeys: String, CodingKey {
		case assigner
		case period
		case system
		case type
		case use
		case value
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: IdentifierKeys.self)
		try container.encodeIfPresent(assigner, forKey: .assigner)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeIfPresent(system, forKey: .system)
		try container.encodeIfPresent(type, forKey: .type)
		try container.encodeIfPresent(use, forKey: .use)
		try container.encodeIfPresent(value, forKey: .value)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  IdentifierKeys.self)
		assigner = try container.decodeIfPresent(Reference.self, forKey: .assigner)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		system = try container.decodeIfPresent(String.self, forKey: .system)
		type = try container.decodeIfPresent(CodeableConcept.self, forKey: .type)
		use = try container.decodeIfPresent(IdentifierUse.self, forKey: .use)
		value = try container.decodeIfPresent(String.self, forKey: .value)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Identifier else {
            return false
        }

		return	assigner == object.assigner &&
			period == object.period &&
			system == object.system &&
			type == object.type &&
			use == object.use &&
			value == object.value &&
			super.equal(to: to)
	}
}

extension Identifier {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Identifier else {
            return self
        }

        resource.assigner = self.assigner?.copy(with: zone) as? Reference
        resource.period = self.period?.copy(with: zone) as? Period
        resource.system = self.system
        resource.type = self.type?.copy(with: zone) as? CodeableConcept
        resource.use = self.use
        resource.value = self.value

        return resource
    }
}
