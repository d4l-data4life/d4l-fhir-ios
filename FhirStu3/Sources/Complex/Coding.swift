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
//  Coding.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Coding)
//

import Foundation

/**
A reference to a code defined by a terminology system.
*/
open class Coding: Element {
	override open class var resourceType: String {
		get { return "Coding" }
	}

    private static var keyPaths: [String: PartialKeyPath<Coding>] = [

        "code" : \Coding.code,
        "display" : \Coding.display,
        "system" : \Coding.system,
        "userSelected" : \Coding.userSelected,
        "version" : \Coding.version
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Coding.keyPaths[name] as? KeyPath<Coding, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Coding.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Symbol in syntax defined by the system.
	public var code: String?

	/// Representation defined by the system.
	public var display: String?

	/// Identity of the terminology system.
	public var system: String?

	/// If this coding was chosen directly by the user.
	public var userSelected: Bool?

	/// Version of the system - if relevant.
	public var version: String?

	enum CodingKeys: String, CodingKey {
		case code
		case display
		case system
		case userSelected
		case version
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encodeIfPresent(code, forKey: .code)
		try container.encodeIfPresent(display, forKey: .display)
		try container.encodeIfPresent(system, forKey: .system)
		try container.encodeIfPresent(userSelected, forKey: .userSelected)
		try container.encodeIfPresent(version, forKey: .version)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  CodingKeys.self)
		code = try container.decodeIfPresent(String.self, forKey: .code)
		display = try container.decodeIfPresent(String.self, forKey: .display)
		system = try container.decodeIfPresent(String.self, forKey: .system)
		userSelected = try container.decodeIfPresent(Bool.self, forKey: .userSelected)
		version = try container.decodeIfPresent(String.self, forKey: .version)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Coding else {
            return false
        }

		return	code == object.code &&
			display == object.display &&
			system == object.system &&
			userSelected == object.userSelected &&
			version == object.version &&
			super.equal(to: to)
	}
}

extension Coding {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Coding else {
            return self
        }

        resource.code = self.code
        resource.display = self.display
        resource.system = self.system
        resource.userSelected = self.userSelected
        resource.version = self.version

        return resource
    }
}
