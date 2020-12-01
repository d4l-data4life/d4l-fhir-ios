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
//  CodeableConcept.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/CodeableConcept)
//

import Foundation

/**
Concept - reference to a terminology or just  text.

A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
*/
open class CodeableConcept: Element {
	override open class var resourceType: String {
		get { return "CodeableConcept" }
	}

    private static var keyPaths: [String: PartialKeyPath<CodeableConcept>] = [

        "coding" : \CodeableConcept.coding,
        "text" : \CodeableConcept.text
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = CodeableConcept.keyPaths[name] as? KeyPath<CodeableConcept, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = CodeableConcept.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Code defined by a terminology system.
	public var coding: [Coding]?

	/// Plain text representation of the concept.
	public var text: String?

	enum CodeableConceptKeys: String, CodingKey {
		case coding
		case text
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: CodeableConceptKeys.self)
		try container.encodeArrayIfPresent(coding, forKey: .coding)
		try container.encodeIfPresent(text, forKey: .text)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  CodeableConceptKeys.self)
		coding = try container.decodeArrayIfPresent([Coding].self, forKey: .coding)
		text = try container.decodeIfPresent(String.self, forKey: .text)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? CodeableConcept else {
            return false
        }

		return	coding == object.coding &&
			text == object.text &&
			super.equal(to: to)
	}
}

extension CodeableConcept {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? CodeableConcept else {
            return self
        }

        resource.coding = self.coding?.compactMap { $0.copy(with: zone) as? Coding }
        resource.text = self.text

        return resource
    }
}
