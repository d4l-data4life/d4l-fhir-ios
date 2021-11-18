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

extension ObservationReferenceRange {
    public static func with(type: CodeableConcept,
                            lowValue: Float?,
                            highValue: Float?,
                            unit: String)
        -> Data4LifeFHIR.ObservationReferenceRange {
            var low: Data4LifeFHIR.Quantity? {
                guard let value = lowValue else { return nil }
                return Data4LifeFHIR.Quantity(value: value, unit: unit)
            }

            var high: Data4LifeFHIR.Quantity? {
                guard let value = highValue else { return nil }
                return Data4LifeFHIR.Quantity(value: value, unit: unit)
            }

            return with(type: type, lowQuantity: low, highQuantity: high)
    }

    public static func with(type: CodeableConcept,
                            lowQuantity: Data4LifeFHIR.Quantity?,
                            highQuantity: Data4LifeFHIR.Quantity?)
        -> Data4LifeFHIR.ObservationReferenceRange {
            let range = ObservationReferenceRange()
            range.type = type
            range.low = lowQuantity
            range.high = highQuantity
            return range
    }
}

extension Data4LifeFHIR.ObservationReferenceRange {
    public func getType() -> CodeableConcept? {
        return type
    }
    public func getLowValue() -> Float? {
        return low?.value
    }
    public func getHighValue() -> Float? {
        return high?.value
    }
    public func getUnit() -> String? {
        return low?.unit ?? high?.unit
    }
    public func getHighQuantity() -> Quantity? {
        return high
    }
    public func getLowQuantity() -> Quantity? {
        return low
    }
}
