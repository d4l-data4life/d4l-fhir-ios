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

import Foundation

extension MedicationIngredient {
    public static func with(name: String, value: Float, unit: String) -> (MedicationIngredient, Substance) {
        return with(name: name, quantity: Data4LifeFHIR.Quantity(value: value, unit: unit))
    }

    public static func with(name: String, quantity: Data4LifeFHIR.Quantity) -> (MedicationIngredient, Substance) {
        let substance = Substance(code: CodeableConcept(display: name))
        let substanceId = UUID().uuidString
        substance.id = substanceId
        let ingredient = MedicationIngredient(item: Reference("#" + substanceId))

        let ratio = Ratio()
        ratio.numerator = quantity
        ingredient.amount = ratio

        return (ingredient, substance)
    }
}
