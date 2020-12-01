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
//  Narrative.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Narrative)
//

import Foundation

/**
A human-readable formatted text, including images.
*/
open class Narrative: Element {
	override open class var resourceType: String {
		get { return "Narrative" }
	}

    private static var keyPaths: [String: PartialKeyPath<Narrative>] = [

        "div" : \Narrative.div,
        "status" : \Narrative.status
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Narrative.keyPaths[name] as? KeyPath<Narrative, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Narrative.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Limited xhtml content.
	public var div: String?

	/// The status of the narrative - whether it's entirely generated (from just the defined data or the extensions
	/// too), or whether a human authored it and it may contain additional data.
	public var status: NarrativeStatus?

	enum NarrativeKeys: String, CodingKey {
		case div
		case status
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(div: String, status: NarrativeStatus) {
		self.init()
		self.div = div
		self.status = status
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: NarrativeKeys.self)
		if let item = div {
			try container.encode(item, forKey: .div)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("div")
		}
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  NarrativeKeys.self)
		div = try container.decode(String.self, forKey: .div)
		status = try container.decode(NarrativeStatus.self, forKey: .status)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Narrative else {
            return false
        }

		return	div == object.div &&
			status == object.status &&
			super.equal(to: to)
	}
}

extension Narrative {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Narrative else {
            return self
        }

        resource.div = self.div
        resource.status = self.status

        return resource
    }
}
