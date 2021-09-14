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
//  BackboneElement.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/BackboneElement)
//

import Foundation

/**
Base for elements defined inside a resource.

Base definition for all elements that are defined inside a resource - but not those in a data type.
*/
open class BackboneElement: Element {
	override open class var resourceType: String {
		get { return "BackboneElement" }
	}

    private static var keyPaths: [String: PartialKeyPath<BackboneElement>] = [

        "modifierExtension" : \BackboneElement.modifierExtension
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = BackboneElement.keyPaths[name] as? KeyPath<BackboneElement, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = BackboneElement.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?

	enum BackboneElementKeys: String, CodingKey {
		case modifierExtension
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: BackboneElementKeys.self)
		try container.encodeArrayIfPresent(modifierExtension, forKey: .modifierExtension)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  BackboneElementKeys.self)
		modifierExtension = try container.decodeArrayIfPresent([Extension].self, forKey: .modifierExtension)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? BackboneElement else {
            return false
        }

		return	modifierExtension == object.modifierExtension &&
			super.equal(to: to)
	}
}

extension BackboneElement {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? BackboneElement else {
            return self
        }

        resource.modifierExtension = self.modifierExtension?.compactMap { $0.copy(with: zone) as? Extension }

        return resource
    }
}
