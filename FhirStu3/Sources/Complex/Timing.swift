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
//  Timing.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Timing)
//

import Foundation

/**
A timing schedule that specifies an event that may occur multiple times.

Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned, expected
or requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning
care of various kinds, and may be used for reporting the schedule to which past regular activities were carried out.
*/
open class Timing: Element {
	override open class var resourceType: String {
		get { return "Timing" }
	}

    private static var keyPaths: [String: PartialKeyPath<Timing>] = [

        "code" : \Timing.code,
        "event" : \Timing.event,
        "repeat_fhir" : \Timing.repeat_fhir
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Timing.keyPaths[name] as? KeyPath<Timing, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Timing.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// BID | TID | QID | AM | PM | QD | QOD | Q4H | Q6H +.
	public var code: CodeableConcept?

	/// When the event occurs.
	public var event: [DateTime]?

	/// When the event is to occur.
	public var repeat_fhir: TimingRepeat?

	enum TimingKeys: String, CodingKey {
		case code
		case event
		case repeat_fhir = "repeat"
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: TimingKeys.self)
		try container.encodeIfPresent(code, forKey: .code)
		try container.encodeArrayIfPresent(event, forKey: .event)
		try container.encodeIfPresent(repeat_fhir, forKey: .repeat_fhir)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  TimingKeys.self)
		code = try container.decodeIfPresent(CodeableConcept.self, forKey: .code)
		event = try container.decodeArrayIfPresent([DateTime].self, forKey: .event)
		repeat_fhir = try container.decodeIfPresent(TimingRepeat.self, forKey: .repeat_fhir)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Timing else {
            return false
        }

		return	code == object.code &&
			event == object.event &&
			repeat_fhir == object.repeat_fhir &&
			super.equal(to: to)
	}
}

extension Timing {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Timing else {
            return self
        }

        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.event = self.event
        resource.repeat_fhir = self.repeat_fhir?.copy(with: zone) as? TimingRepeat

        return resource
    }
}

/**
When the event is to occur.

A set of rules that describe when the event is scheduled.
*/
open class TimingRepeat: Element {
	override open class var resourceType: String {
		get { return "TimingRepeat" }
	}

    private static var keyPaths: [String: PartialKeyPath<TimingRepeat>] = [

        "boundsDuration" : \TimingRepeat.boundsDuration,
        "boundsPeriod" : \TimingRepeat.boundsPeriod,
        "boundsRange" : \TimingRepeat.boundsRange,
        "count" : \TimingRepeat.count,
        "countMax" : \TimingRepeat.countMax,
        "dayOfWeek" : \TimingRepeat.dayOfWeek,
        "duration" : \TimingRepeat.duration,
        "durationMax" : \TimingRepeat.durationMax,
        "durationUnit" : \TimingRepeat.durationUnit,
        "frequency" : \TimingRepeat.frequency,
        "frequencyMax" : \TimingRepeat.frequencyMax,
        "offset" : \TimingRepeat.offset,
        "period" : \TimingRepeat.period,
        "periodMax" : \TimingRepeat.periodMax,
        "periodUnit" : \TimingRepeat.periodUnit,
        "timeOfDay" : \TimingRepeat.timeOfDay,
        "when" : \TimingRepeat.when
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = TimingRepeat.keyPaths[name] as? KeyPath<TimingRepeat, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = TimingRepeat.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Length/Range of lengths, or (Start and/or end) limits.
	public var boundsDuration: Duration?

	/// Length/Range of lengths, or (Start and/or end) limits.
	public var boundsPeriod: Period?

	/// Length/Range of lengths, or (Start and/or end) limits.
	public var boundsRange: Range?

	/// Number of times to repeat.
	public var count: Int?

	/// Maximum number of times to repeat.
	public var countMax: Int?

	/// If one or more days of week is provided, then the action happens only on the specified day(s).
	public var dayOfWeek: [DaysOfWeek]?

	/// How long when it happens.
	public var duration: Float?

	/// How long when it happens (Max).
	public var durationMax: Float?

	/// s | min | h | d | wk | mo | a - unit of time (UCUM).
	public var durationUnit: String?

	/// Event occurs frequency times per period.
	public var frequency: Int?

	/// Event occurs up to frequencyMax times per period.
	public var frequencyMax: Int?

	/// Minutes from event (before or after).
	public var offset: Int?

	/// Event occurs frequency times per period.
	public var period: Float?

	/// Upper limit of period (3-4 hours).
	public var periodMax: Float?

	/// s | min | h | d | wk | mo | a - unit of time (UCUM).
	public var periodUnit: String?

	/// Time of day for action.
	public var timeOfDay: [FHIRTime]?

	/// Regular life events the event is tied to.
	public var when: [String]?

	enum TimingRepeatKeys: String, CodingKey {
		case boundsDuration
		case boundsPeriod
		case boundsRange
		case count
		case countMax
		case dayOfWeek
		case duration
		case durationMax
		case durationUnit
		case frequency
		case frequencyMax
		case offset
		case period
		case periodMax
		case periodUnit
		case timeOfDay
		case when
	}

	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: TimingRepeatKeys.self)
		try container.encodeIfPresent(boundsDuration, forKey: .boundsDuration)
		try container.encodeIfPresent(boundsPeriod, forKey: .boundsPeriod)
		try container.encodeIfPresent(boundsRange, forKey: .boundsRange)
		try container.encodeIfPresent(count, forKey: .count)
		try container.encodeIfPresent(countMax, forKey: .countMax)
		try container.encodeArrayIfPresent(dayOfWeek, forKey: .dayOfWeek)
		try container.encodeIfPresent(duration, forKey: .duration)
		try container.encodeIfPresent(durationMax, forKey: .durationMax)
		try container.encodeIfPresent(durationUnit, forKey: .durationUnit)
		try container.encodeIfPresent(frequency, forKey: .frequency)
		try container.encodeIfPresent(frequencyMax, forKey: .frequencyMax)
		try container.encodeIfPresent(offset, forKey: .offset)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeIfPresent(periodMax, forKey: .periodMax)
		try container.encodeIfPresent(periodUnit, forKey: .periodUnit)
		try container.encodeArrayIfPresent(timeOfDay, forKey: .timeOfDay)
		try container.encodeArrayIfPresent(when, forKey: .when)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  TimingRepeatKeys.self)
		boundsDuration = try container.decodeIfPresent(Duration.self, forKey: .boundsDuration)
		boundsPeriod = try container.decodeIfPresent(Period.self, forKey: .boundsPeriod)
		boundsRange = try container.decodeIfPresent(Range.self, forKey: .boundsRange)
		count = try container.decodeIfPresent(Int.self, forKey: .count)
		countMax = try container.decodeIfPresent(Int.self, forKey: .countMax)
		dayOfWeek = try container.decodeArrayIfPresent([DaysOfWeek].self, forKey: .dayOfWeek)
		duration = try container.decodeIfPresent(Float.self, forKey: .duration)
		durationMax = try container.decodeIfPresent(Float.self, forKey: .durationMax)
		durationUnit = try container.decodeIfPresent(String.self, forKey: .durationUnit)
		frequency = try container.decodeIfPresent(Int.self, forKey: .frequency)
		frequencyMax = try container.decodeIfPresent(Int.self, forKey: .frequencyMax)
		offset = try container.decodeIfPresent(Int.self, forKey: .offset)
		period = try container.decodeIfPresent(Float.self, forKey: .period)
		periodMax = try container.decodeIfPresent(Float.self, forKey: .periodMax)
		periodUnit = try container.decodeIfPresent(String.self, forKey: .periodUnit)
		timeOfDay = try container.decodeArrayIfPresent([FHIRTime].self, forKey: .timeOfDay)
		when = try container.decodeArrayIfPresent([String].self, forKey: .when)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? TimingRepeat else {
            return false
        }

		return	boundsDuration == object.boundsDuration &&
			boundsPeriod == object.boundsPeriod &&
			boundsRange == object.boundsRange &&
			count == object.count &&
			countMax == object.countMax &&
			dayOfWeek == object.dayOfWeek &&
			duration == object.duration &&
			durationMax == object.durationMax &&
			durationUnit == object.durationUnit &&
			frequency == object.frequency &&
			frequencyMax == object.frequencyMax &&
			offset == object.offset &&
			period == object.period &&
			periodMax == object.periodMax &&
			periodUnit == object.periodUnit &&
			timeOfDay == object.timeOfDay &&
			when == object.when &&
			super.equal(to: to)
	}
}

extension TimingRepeat {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? TimingRepeat else {
            return self
        }

        resource.boundsDuration = self.boundsDuration?.copy(with: zone) as? Duration
        resource.boundsPeriod = self.boundsPeriod?.copy(with: zone) as? Period
        resource.boundsRange = self.boundsRange?.copy(with: zone) as? Range
        resource.count = self.count
        resource.countMax = self.countMax
        resource.dayOfWeek = self.dayOfWeek
        resource.duration = self.duration
        resource.durationMax = self.durationMax
        resource.durationUnit = self.durationUnit
        resource.frequency = self.frequency
        resource.frequencyMax = self.frequencyMax
        resource.offset = self.offset
        resource.period = self.period
        resource.periodMax = self.periodMax
        resource.periodUnit = self.periodUnit
        resource.timeOfDay = self.timeOfDay
        resource.when = self.when

        return resource
    }
}
