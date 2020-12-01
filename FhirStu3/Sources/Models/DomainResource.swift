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
//  DomainResource.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/DomainResource)
//

import Foundation

/**
A resource with narrative, extensions, and contained resources.

A resource that includes narrative, extensions, and contained resources.
*/
open class DomainResource: Resource {
	override open class var resourceType: String {
		get { return "DomainResource" }
	}

    private static var keyPaths: [String: PartialKeyPath<DomainResource>] = [

        "contained" : \DomainResource.contained,
        "extension_fhir" : \DomainResource.extension_fhir,
        "modifierExtension" : \DomainResource.modifierExtension,
        "text" : \DomainResource.text
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DomainResource.keyPaths[name] as? KeyPath<DomainResource, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DomainResource.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Contained, inline Resources.
	public var contained: [Resource]?

	/// Additional Content defined by implementations.
	public var extension_fhir: [Extension]?

	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?

	/// Text summary of the resource, for human interpretation.
	public var text: Narrative?

	enum DomainResourceKeys: String, CodingKey {
		case contained
		case extension_fhir = "extension"
		case modifierExtension
		case text
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DomainResourceKeys.self)
		try container.encodeArrayIfPresent(contained, forKey: .contained)
		try container.encodeArrayIfPresent(extension_fhir, forKey: .extension_fhir)
		try container.encodeArrayIfPresent(modifierExtension, forKey: .modifierExtension)
		try container.encodeIfPresent(text, forKey: .text)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DomainResourceKeys.self)
        if let resources = try container.decodeIfPresent([AnyResource].self, forKey: .contained) {
            contained = resources.map { $0.resource }
        }
		extension_fhir = try container.decodeArrayIfPresent([Extension].self, forKey: .extension_fhir)
		modifierExtension = try container.decodeArrayIfPresent([Extension].self, forKey: .modifierExtension)
		text = try container.decodeIfPresent(Narrative.self, forKey: .text)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DomainResource else {
            return false
        }

		return	contained == object.contained &&
			extension_fhir == object.extension_fhir &&
			modifierExtension == object.modifierExtension &&
			text == object.text &&
			super.equal(to: to)
	}
}

extension DomainResource {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DomainResource else {
            return self
        }

        resource.contained = self.contained?.compactMap { $0.copy(with: zone) as? Resource }
        resource.extension_fhir = self.extension_fhir?.compactMap { $0.copy(with: zone) as? Extension }
        resource.modifierExtension = self.modifierExtension?.compactMap { $0.copy(with: zone) as? Extension }
        resource.text = self.text?.copy(with: zone) as? Narrative

        return resource
    }
}
