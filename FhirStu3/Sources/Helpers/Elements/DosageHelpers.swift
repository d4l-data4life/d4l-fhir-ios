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

import Data4LifeFHIR

extension Dosage {
    public static func with(value: Float, unit: String, when: String) -> Dosage {
        return with(quantity: Data4LifeFHIR.Quantity(value: value, unit: unit), when: when)
    }

    public static func with(quantity: Data4LifeFHIR.Quantity?, when: String?) -> Dosage {
        let dosage = Dosage()

        if let when = when {
            let timing = Timing()
            let repeatFhir = TimingRepeat()
            repeatFhir.when = [when]
            timing.repeat_fhir = repeatFhir
            dosage.timing = timing
        }

        if let quantity = quantity {
            dosage.doseQuantity = quantity
        }

        return dosage
    }
}

extension Dosage {
    public func getValue() -> Float? {
        return doseQuantity?.value
    }
    public func getUnit() -> String? {
        return doseQuantity?.unit
    }
    public func getWhen() -> String? {
        return self.timing?.repeat_fhir?.when?.first
    }
}
