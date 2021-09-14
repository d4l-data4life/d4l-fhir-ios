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
//  UsageContext.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/UsageContext)
//

import Foundation

/**
Describes the context of use for a conformance or knowledge resource.

Specifies clinical/business/etc metadata that can be used to retrieve, index and/or categorize an artifact. This
metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific context of care
(e.g., venue, care setting, provider of care).
*/
open class UsageContext: Element {
	override open class var resourceType: String {
		get { return "UsageContext" }
	}

    private static var keyPaths: [String: PartialKeyPath<UsageContext>] = [

        "code" : \UsageContext.code,
        "valueCodeableConcept" : \UsageContext.valueCodeableConcept,
        "valueQuantity" : \UsageContext.valueQuantity,
        "valueRange" : \UsageContext.valueRange
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = UsageContext.keyPaths[name] as? KeyPath<UsageContext, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = UsageContext.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Type of context being specified.
	public var code: Coding?

	/// Value that defines the context.
	public var valueCodeableConcept: CodeableConcept?

	/// Value that defines the context.
	public var valueQuantity: Quantity?

	/// Value that defines the context.
	public var valueRange: Range?

	enum UsageContextKeys: String, CodingKey {
		case code
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(code: Coding, value: Any) {
		self.init()
		self.code = code
		if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		} else if let value = value as? Quantity {
			self.valueQuantity = value
		} else if let value = value as? Range {
			self.valueRange = value
		} else {
			debugPrint("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: UsageContextKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		try container.encodeIfPresent(valueCodeableConcept, forKey: .valueCodeableConcept)
		try container.encodeIfPresent(valueQuantity, forKey: .valueQuantity)
		try container.encodeIfPresent(valueRange, forKey: .valueRange)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  UsageContextKeys.self)
		code = try container.decode(Coding.self, forKey: .code)
		valueCodeableConcept = try container.decodeIfPresent(CodeableConcept.self, forKey: .valueCodeableConcept)
		valueQuantity = try container.decodeIfPresent(Quantity.self, forKey: .valueQuantity)
		valueRange = try container.decodeIfPresent(Range.self, forKey: .valueRange)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? UsageContext else {
            return false
        }

		return	code == object.code &&
			valueCodeableConcept == object.valueCodeableConcept &&
			valueQuantity == object.valueQuantity &&
			valueRange == object.valueRange &&
			super.equal(to: to)
	}
}

extension UsageContext {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? UsageContext else {
            return self
        }

        resource.code = self.code?.copy(with: zone) as? Coding
        resource.valueCodeableConcept = self.valueCodeableConcept?.copy(with: zone) as? CodeableConcept
        resource.valueQuantity = self.valueQuantity?.copy(with: zone) as? Quantity
        resource.valueRange = self.valueRange?.copy(with: zone) as? Range

        return resource
    }
}
