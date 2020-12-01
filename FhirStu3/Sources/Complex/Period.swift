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
//  Period.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Period)
//

import Foundation

/**
Time range defined by start and end date/time.

A time period defined by a start and end date and optionally time.
*/
open class Period: Element {
	override open class var resourceType: String {
		get { return "Period" }
	}

    private static var keyPaths: [String: PartialKeyPath<Period>] = [

        "end" : \Period.end,
        "start" : \Period.start
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Period.keyPaths[name] as? KeyPath<Period, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Period.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// End time with inclusive boundary, if not ongoing.
	public var end: DateTime?

	/// Starting time with inclusive boundary.
	public var start: DateTime?

	enum PeriodKeys: String, CodingKey {
		case end
		case start
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: PeriodKeys.self)
		try container.encodeIfPresent(end, forKey: .end)
		try container.encodeIfPresent(start, forKey: .start)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  PeriodKeys.self)
		end = try container.decodeIfPresent(DateTime.self, forKey: .end)
		start = try container.decodeIfPresent(DateTime.self, forKey: .start)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Period else {
            return false
        }

		return	end == object.end &&
			start == object.start &&
			super.equal(to: to)
	}
}

extension Period {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Period else {
            return self
        }

        resource.end = self.end
        resource.start = self.start

        return resource
    }
}
