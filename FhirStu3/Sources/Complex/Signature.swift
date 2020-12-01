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
//  Signature.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Signature)
//

import Foundation

/**
A digital Signature - XML DigSig, JWT, Graphical image of signature, etc..

A digital signature along with supporting context. The signature may be electronic/cryptographic in nature, or a
graphical image representing a hand-written signature, or a signature process. Different signature approaches have
different utilities.
*/
open class Signature: Element {
	override open class var resourceType: String {
		get { return "Signature" }
	}

    private static var keyPaths: [String: PartialKeyPath<Signature>] = [

        "blob" : \Signature.blob,
        "contentType" : \Signature.contentType,
        "onBehalfOfReference" : \Signature.onBehalfOfReference,
        "onBehalfOfUri" : \Signature.onBehalfOfUri,
        "type" : \Signature.type,
        "when" : \Signature.when,
        "whoReference" : \Signature.whoReference,
        "whoUri" : \Signature.whoUri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Signature.keyPaths[name] as? KeyPath<Signature, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Signature.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// The actual signature content (XML DigSig. JWT, picture, etc.).
	public var blob: String?

	/// The technical format of the signature.
	public var contentType: String?

	/// The party represented.
	public var onBehalfOfReference: Reference?

	/// The party represented.
	public var onBehalfOfUri: String?

	/// Indication of the reason the entity signed the object(s).
	public var type: [Coding]?

	/// When the signature was created.
	public var when: Instant?

	/// Who signed.
	public var whoReference: Reference?

	/// Who signed.
	public var whoUri: String?

	enum SignatureKeys: String, CodingKey {
		case blob
		case contentType
		case onBehalfOfReference
		case onBehalfOfUri
		case type
		case when
		case whoReference
		case whoUri
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(type: [Coding], when: Instant, who: Any) {
		self.init()
		self.type = type
		self.when = when
		if let value = who as? String {
			self.whoUri = value
		} else if let value = who as? Reference {
			self.whoReference = value
		} else {
			debugPrint("Type “\(Swift.type(of: who))” for property “\(who)” is invalid, ignoring")
		}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: SignatureKeys.self)
		if let items = type {
			try container.encodeArray(items, forKey: .type)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("type")
		}
		if let item = when {
			try container.encode(item, forKey: .when)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("when")
		}
		try container.encodeIfPresent(whoReference, forKey: .whoReference)
		try container.encodeIfPresent(whoUri, forKey: .whoUri)
		try container.encodeIfPresent(blob, forKey: .blob)
		try container.encodeIfPresent(contentType, forKey: .contentType)
		try container.encodeIfPresent(onBehalfOfReference, forKey: .onBehalfOfReference)
		try container.encodeIfPresent(onBehalfOfUri, forKey: .onBehalfOfUri)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  SignatureKeys.self)
		type = try container.decodeArray([Coding].self, forKey: .type)
		when = try container.decode(Instant.self, forKey: .when)
		whoReference = try container.decodeIfPresent(Reference.self, forKey: .whoReference)
		whoUri = try container.decodeIfPresent(String.self, forKey: .whoUri)
		blob = try container.decodeIfPresent(String.self, forKey: .blob)
		contentType = try container.decodeIfPresent(String.self, forKey: .contentType)
		onBehalfOfReference = try container.decodeIfPresent(Reference.self, forKey: .onBehalfOfReference)
		onBehalfOfUri = try container.decodeIfPresent(String.self, forKey: .onBehalfOfUri)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Signature else {
            return false
        }

		return	blob == object.blob &&
			contentType == object.contentType &&
			onBehalfOfReference == object.onBehalfOfReference &&
			onBehalfOfUri == object.onBehalfOfUri &&
			type == object.type &&
			when == object.when &&
			whoReference == object.whoReference &&
			whoUri == object.whoUri &&
			super.equal(to: to)
	}
}

extension Signature {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Signature else {
            return self
        }

        resource.blob = self.blob
        resource.contentType = self.contentType
        resource.onBehalfOfReference = self.onBehalfOfReference?.copy(with: zone) as? Reference
        resource.onBehalfOfUri = self.onBehalfOfUri
        resource.type = self.type?.compactMap { $0.copy(with: zone) as? Coding }
        resource.when = self.when
        resource.whoReference = self.whoReference?.copy(with: zone) as? Reference
        resource.whoUri = self.whoUri

        return resource
    }
}
