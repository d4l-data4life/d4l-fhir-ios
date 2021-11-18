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
//  Reference.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Reference)
//

import Foundation

/**
A reference from one resource to another.
*/
open class Reference: Element {
	override open class var resourceType: String {
		get { return "Reference" }
	}

    private static var keyPaths: [String: PartialKeyPath<Reference>] = [

        "display" : \Reference.display,
        "identifier" : \Reference.identifier,
        "reference" : \Reference.reference
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Reference.keyPaths[name] as? KeyPath<Reference, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Reference.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Text alternative for the resource.
	public var display: String?

	/// Logical reference, when literal reference is not known.
	public var identifier: Identifier?

	/// Literal reference, Relative, internal or absolute URL.
	public var reference: String?

	enum ReferenceKeys: String, CodingKey {
		case display
		case identifier
		case reference
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ReferenceKeys.self)
		try container.encodeIfPresent(display, forKey: .display)
		try container.encodeIfPresent(identifier, forKey: .identifier)
		try container.encodeIfPresent(reference, forKey: .reference)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ReferenceKeys.self)
		display = try container.decodeIfPresent(String.self, forKey: .display)
		identifier = try container.decodeIfPresent(Identifier.self, forKey: .identifier)
		reference = try container.decodeIfPresent(String.self, forKey: .reference)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Reference else {
            return false
        }

		return	display == object.display &&
			identifier == object.identifier &&
			reference == object.reference &&
			super.equal(to: to)
	}
}

extension Reference {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Reference else {
            return self
        }

        resource.display = self.display
        resource.identifier = self.identifier?.copy(with: zone) as? Identifier
        resource.reference = self.reference

        return resource
    }
}
