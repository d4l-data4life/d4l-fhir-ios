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
//  Meta.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Meta)
//

import Foundation

/**
Metadata about a resource.

The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the
content may not always be associated with version changes to the resource.
*/
open class Meta: Element {
	override open class var resourceType: String {
		get { return "Meta" }
	}

    private static var keyPaths: [String: PartialKeyPath<Meta>] = [

        "lastUpdated" : \Meta.lastUpdated,
        "profile" : \Meta.profile,
        "security" : \Meta.security,
        "tag" : \Meta.tag,
        "versionId" : \Meta.versionId
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Meta.keyPaths[name] as? KeyPath<Meta, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Meta.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// When the resource version last changed.
	public var lastUpdated: Instant?

	/// Profiles this resource claims to conform to.
	public var profile: [String]?

	/// Security Labels applied to this resource.
	public var security: [Coding]?

	/// Tags applied to this resource.
	public var tag: [Coding]?

	/// Version specific identifier.
	public var versionId: String?

	enum MetaKeys: String, CodingKey {
		case lastUpdated
		case profile
		case security
		case tag
		case versionId
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: MetaKeys.self)
		try container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
		try container.encodeArrayIfPresent(profile, forKey: .profile)
		try container.encodeArrayIfPresent(security, forKey: .security)
		try container.encodeArrayIfPresent(tag, forKey: .tag)
		try container.encodeIfPresent(versionId, forKey: .versionId)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  MetaKeys.self)
		lastUpdated = try container.decodeIfPresent(Instant.self, forKey: .lastUpdated)
		profile = try container.decodeArrayIfPresent([String].self, forKey: .profile)
		security = try container.decodeArrayIfPresent([Coding].self, forKey: .security)
		tag = try container.decodeArrayIfPresent([Coding].self, forKey: .tag)
		versionId = try container.decodeIfPresent(String.self, forKey: .versionId)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Meta else {
            return false
        }

		return	lastUpdated == object.lastUpdated &&
			profile == object.profile &&
			security == object.security &&
			tag == object.tag &&
			versionId == object.versionId &&
			super.equal(to: to)
	}
}

extension Meta {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Meta else {
            return self
        }

        resource.lastUpdated = self.lastUpdated
        resource.profile = self.profile
        resource.security = self.security?.compactMap { $0.copy(with: zone) as? Coding }
        resource.tag = self.tag?.compactMap { $0.copy(with: zone) as? Coding }
        resource.versionId = self.versionId

        return resource
    }
}
