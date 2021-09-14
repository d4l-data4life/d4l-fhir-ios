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
//  Element.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Element)
//

import Foundation

/**
Base for all elements.

Base definition for all elements in a resource.
*/
open class Element: FHIRAbstractBase {
	override open class var resourceType: String {
		get { return "Element" }
	}

    private static var keyPaths: [String: PartialKeyPath<Element>] = [

        "extension_fhir" : \Element.extension_fhir,
        "id" : \Element.id
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Element.keyPaths[name] as? KeyPath<Element, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Element.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Additional Content defined by implementations.
	public var extension_fhir: [Extension]?

	/// xml:id (or equivalent in JSON).
	public var id: String?

	enum ElementKeys: String, CodingKey {
		case extension_fhir = "extension"
		case id
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ElementKeys.self)
		try container.encodeArrayIfPresent(extension_fhir, forKey: .extension_fhir)
		try container.encodeIfPresent(id, forKey: .id)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ElementKeys.self)
		extension_fhir = try container.decodeArrayIfPresent([Extension].self, forKey: .extension_fhir)
		id = try container.decodeIfPresent(String.self, forKey: .id)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Element else {
            return false
        }

		return	extension_fhir == object.extension_fhir &&
			id == object.id &&
			super.equal(to: to)
	}
}

extension Element {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Element else {
            return self
        }

        resource.extension_fhir = self.extension_fhir?.compactMap { $0.copy(with: zone) as? Extension }
        resource.id = self.id

        return resource
    }
}
