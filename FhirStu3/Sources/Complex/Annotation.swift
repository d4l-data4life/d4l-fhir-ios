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
//  Annotation.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Annotation)
//

import Foundation

/**
Text node with attribution.

A  text note which also  contains information about who made the statement and when.
*/
open class Annotation: Element {
	override open class var resourceType: String {
		get { return "Annotation" }
	}

    private static var keyPaths: [String: PartialKeyPath<Annotation>] = [

        "authorReference" : \Annotation.authorReference,
        "authorString" : \Annotation.authorString,
        "text" : \Annotation.text,
        "time" : \Annotation.time
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Annotation.keyPaths[name] as? KeyPath<Annotation, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Annotation.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Individual responsible for the annotation.
	public var authorReference: Reference?

	/// Individual responsible for the annotation.
	public var authorString: String?

	/// The annotation  - text content.
	public var text: String?

	/// When the annotation was made.
	public var time: DateTime?

	enum AnnotationKeys: String, CodingKey {
		case authorReference
		case authorString
		case text
		case time
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(text: String) {
		self.init()
		self.text = text
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: AnnotationKeys.self)
		if let item = text {
			try container.encode(item, forKey: .text)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("text")
		}
		try container.encodeIfPresent(authorReference, forKey: .authorReference)
		try container.encodeIfPresent(authorString, forKey: .authorString)
		try container.encodeIfPresent(time, forKey: .time)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  AnnotationKeys.self)
		text = try container.decode(String.self, forKey: .text)
		authorReference = try container.decodeIfPresent(Reference.self, forKey: .authorReference)
		authorString = try container.decodeIfPresent(String.self, forKey: .authorString)
		time = try container.decodeIfPresent(DateTime.self, forKey: .time)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Annotation else {
            return false
        }

		return	authorReference == object.authorReference &&
			authorString == object.authorString &&
			text == object.text &&
			time == object.time &&
			super.equal(to: to)
	}
}

extension Annotation {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Annotation else {
            return self
        }

        resource.authorReference = self.authorReference?.copy(with: zone) as? Reference
        resource.authorString = self.authorString
        resource.text = self.text
        resource.time = self.time

        return resource
    }
}
