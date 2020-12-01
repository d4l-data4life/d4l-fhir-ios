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
//  SubstanceTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
@testable import Data4LifeFHIR

class SubstanceTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testSubstance1() {
        do {
            let data = try bundle.loadJSONData(named: "substance-example-silver-nitrate-product.json")
            let instance = try decoder.decode(Substance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSubstance1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSubstance1(_ inst: Substance) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "chemical")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Chemical")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org.fhir/substance-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "333346007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Silver nitrate 20% solution (product)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.description_fhir, "Solution for silver nitrate stain")
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.identifier?[0].system, "http://acme.org/identifiers/substances")
		XCTAssertEqual(inst.identifier?[0].value, "15970")
		XCTAssertEqual(inst.instance?[0].expiry?.description, "2018-01-01")
		XCTAssertEqual(inst.instance?[0].identifier?.system, "http://acme.org/identifiers/substances/lot")
		XCTAssertEqual(inst.instance?[0].identifier?.value, "AB94687")
		XCTAssertEqual(inst.instance?[0].quantity?.code, "mL")
		XCTAssertEqual(inst.instance?[0].quantity?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.instance?[0].quantity?.unit, "mL")
		XCTAssertEqual(inst.instance?[0].quantity?.value, 100)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testSubstance2() {
        do {
            let data = try bundle.loadJSONData(named: "substance-example-amoxicillin-clavulanate.json")
            let instance = try decoder.decode(Substance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSubstance2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSubstance2(_ inst: Substance) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "drug")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Drug or Medicament")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org.fhir/substance-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "392259005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Amoxicillin + clavulanate potassium 875mg/125mg tablet (product)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "ingr1")
		XCTAssertEqual(inst.contained?[1].id, "ingr2")
		XCTAssertEqual(inst.description_fhir, "Augmentin 875")
		XCTAssertEqual(inst.id, "f205")
		XCTAssertEqual(inst.ingredient?[0].quantity?.denominator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].quantity?.denominator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].quantity?.denominator?.unit, "mg")
		XCTAssertEqual(inst.ingredient?[0].quantity?.denominator?.value, 1000)
		XCTAssertEqual(inst.ingredient?[0].quantity?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].quantity?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].quantity?.numerator?.unit, "mg")
		XCTAssertEqual(inst.ingredient?[0].quantity?.numerator?.value, 875)
		XCTAssertEqual(inst.ingredient?[0].substanceReference?.reference, "#ingr1")
		XCTAssertEqual(inst.ingredient?[1].quantity?.denominator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[1].quantity?.denominator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[1].quantity?.denominator?.unit, "mg")
		XCTAssertEqual(inst.ingredient?[1].quantity?.denominator?.value, 1000)
		XCTAssertEqual(inst.ingredient?[1].quantity?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[1].quantity?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[1].quantity?.numerator?.unit, "mg")
		XCTAssertEqual(inst.ingredient?[1].quantity?.numerator?.value, 125)
		XCTAssertEqual(inst.ingredient?[1].substanceReference?.reference, "#ingr2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testSubstance3() {
        do {
            let data = try bundle.loadJSONData(named: "substance-example-f203-potassium.json")
            let instance = try decoder.decode(Substance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSubstance3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSubstance3(_ inst: Substance) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "chemical")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Chemical")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org.fhir/substance-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "88480006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Potassium")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].system, "http://acme.org/identifiers/substances")
		XCTAssertEqual(inst.identifier?[0].value, "1234")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testSubstance4() {
        do {
            let data = try bundle.loadJSONData(named: "substance-example-f201-dust.json")
            let instance = try decoder.decode(Substance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSubstance4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSubstance4(_ inst: Substance) {
		XCTAssertEqual(inst.code?.coding?[0].code, "406466009")
		XCTAssertEqual(inst.code?.coding?[0].display, "House dust allergen")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testSubstance5() {
        do {
            let data = try bundle.loadJSONData(named: "substance-example.json")
            let instance = try decoder.decode(Substance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSubstance5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSubstance5(_ inst: Substance) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "allergen")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Allergen")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org.fhir/substance-category")
		XCTAssertEqual(inst.code?.text, "apitoxin (Honey Bee Venom)")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system, "http://acme.org/identifiers/substances")
		XCTAssertEqual(inst.identifier?[0].value, "1463")
		XCTAssertEqual(inst.status, FHIRSubstanceStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testSubstance6() {
        do {
            let data = try bundle.loadJSONData(named: "substance-example-f202-staphylococcus.json")
            let instance = try decoder.decode(Substance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSubstance6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSubstance6(_ inst: Substance) {
		XCTAssertEqual(inst.code?.coding?[0].code, "3092008")
		XCTAssertEqual(inst.code?.coding?[0].display, "Staphylococcus Aureus")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
