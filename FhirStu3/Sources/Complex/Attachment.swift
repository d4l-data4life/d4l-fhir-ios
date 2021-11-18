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
//  Attachment.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Attachment)
//

import Foundation

/**
Content in a format defined elsewhere.

For referring to data content defined in other formats.
*/
open class Attachment: Element {
	override open class var resourceType: String {
		get { return "Attachment" }
	}

    private static var keyPaths: [String: PartialKeyPath<Attachment>] = [

        "contentType" : \Attachment.contentType,
        "creation" : \Attachment.creation,
        "data_fhir" : \Attachment.data_fhir,
        "hash" : \Attachment.hash,
        "language" : \Attachment.language,
        "size" : \Attachment.size,
        "title" : \Attachment.title,
        "url" : \Attachment.url
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Attachment.keyPaths[name] as? KeyPath<Attachment, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Attachment.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Mime type of the content, with charset etc..
	public var contentType: String?

	/// Date attachment was first created.
	public var creation: DateTime?

	/// Data inline, base64ed.
	public var data_fhir: String?

	/// Hash of the data (sha-1, base64ed).
	public var hash: String?

	/// Human language of the content (BCP-47).
	public var language: String?

	/// Number of bytes of content (if url provided).
	public var size: Int?

	/// Label to display in place of the data.
	public var title: String?

	/// Uri where the data can be found.
	public var url: String?

	enum AttachmentKeys: String, CodingKey {
		case contentType
		case creation
		case data_fhir
		case hash
		case language
		case size
		case title
		case url
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: AttachmentKeys.self)
		try container.encodeIfPresent(contentType, forKey: .contentType)
		try container.encodeIfPresent(creation, forKey: .creation)
		try container.encodeIfPresent(data_fhir, forKey: .data_fhir)
		try container.encodeIfPresent(hash, forKey: .hash)
		try container.encodeIfPresent(language, forKey: .language)
		try container.encodeIfPresent(size, forKey: .size)
		try container.encodeIfPresent(title, forKey: .title)
		try container.encodeIfPresent(url, forKey: .url)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  AttachmentKeys.self)
		contentType = try container.decodeIfPresent(String.self, forKey: .contentType)
		creation = try container.decodeIfPresent(DateTime.self, forKey: .creation)
		data_fhir = try container.decodeIfPresent(String.self, forKey: .data_fhir)
		hash = try container.decodeIfPresent(String.self, forKey: .hash)
		language = try container.decodeIfPresent(String.self, forKey: .language)
		size = try container.decodeIfPresent(Int.self, forKey: .size)
		title = try container.decodeIfPresent(String.self, forKey: .title)
		url = try container.decodeIfPresent(String.self, forKey: .url)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Attachment else {
            return false
        }

		return	contentType == object.contentType &&
			creation == object.creation &&
			data_fhir == object.data_fhir &&
			hash == object.hash &&
			language == object.language &&
			size == object.size &&
			title == object.title &&
			url == object.url &&
			super.equal(to: to)
	}
}

extension Attachment {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Attachment else {
            return self
        }

        resource.contentType = self.contentType
        resource.creation = self.creation
        resource.data_fhir = self.data_fhir
        resource.hash = self.hash
        resource.language = self.language
        resource.size = self.size
        resource.title = self.title
        resource.url = self.url

        return resource
    }
}
