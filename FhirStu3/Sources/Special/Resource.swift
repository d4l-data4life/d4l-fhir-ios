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
//  Resource.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Resource)
//

import Foundation

/**
Base Resource.

This is the base resource type for everything.
*/
open class Resource: FHIRAbstractResource {
	override open class var resourceType: String {
		get { return "Resource" }
	}

    private static var keyPaths: [String: PartialKeyPath<Resource>] = [

        "id" : \Resource.id,
        "implicitRules" : \Resource.implicitRules,
        "language" : \Resource.language,
        "meta" : \Resource.meta
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Resource.keyPaths[name] as? KeyPath<Resource, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Resource.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Logical id of this artifact.
	public var id: String?

	/// A set of rules under which this content was created.
	public var implicitRules: String?

	/// Language of the resource content.
	public var language: String?

	/// Metadata about the resource.
	public var meta: Meta?

	enum ResourceKeys: String, CodingKey {
		case id
		case implicitRules
		case language
		case meta
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ResourceKeys.self)
		try container.encodeIfPresent(id, forKey: .id)
		try container.encodeIfPresent(implicitRules, forKey: .implicitRules)
		try container.encodeIfPresent(language, forKey: .language)
		try container.encodeIfPresent(meta, forKey: .meta)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ResourceKeys.self)
		id = try container.decodeIfPresent(String.self, forKey: .id)
		implicitRules = try container.decodeIfPresent(String.self, forKey: .implicitRules)
		language = try container.decodeIfPresent(String.self, forKey: .language)
		meta = try container.decodeIfPresent(Meta.self, forKey: .meta)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Resource else {
            return false
        }

		return	id == object.id &&
			implicitRules == object.implicitRules &&
			language == object.language &&
			meta == object.meta &&
			super.equal(to: to)
	}
}

extension Resource {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Resource else {
            return self
        }

        resource.id = self.id
        resource.implicitRules = self.implicitRules
        resource.language = self.language
        resource.meta = self.meta?.copy(with: zone) as? Meta

        return resource
    }
}
