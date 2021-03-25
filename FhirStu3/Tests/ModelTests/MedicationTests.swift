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
//  MedicationTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class MedicationTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testMedication1() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample0307.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication1(_ inst: Medication) {
		XCTAssertEqual(inst.code?.coding?[0].code, "0169-7501-11")
		XCTAssertEqual(inst.code?.coding?[0].display, "Novolog 100u/ml")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://hl7.org/fhir/sid/ndc")
		XCTAssertEqual(inst.contained?[0].id, "org3")
		XCTAssertEqual(inst.form?.coding?[0].code, "385219001")
		XCTAssertEqual(inst.form?.coding?[0].display, "Injection solution (qualifier value)")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "med0307")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.code, "mL")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.value, 1)
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.code, "U")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.value, 100)
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].code, "325072002")
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].display, "Insulin Aspart (substance)")
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.isBrand, true)
		XCTAssertEqual(inst.manufacturer?.reference, "#org3")
		XCTAssertEqual(inst.package?.batch?[0].expirationDate?.description, "2019-10-31")
		XCTAssertEqual(inst.package?.batch?[0].lotNumber, "12345")
		XCTAssertEqual(inst.package?.content?[0].amount?.code, "mL")
		XCTAssertEqual(inst.package?.content?[0].amount?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.package?.content?[0].amount?.value, 10)
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].code, "325072002")
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].display, "Insulin Aspart (substance)")
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].code, "415818006")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].display, "Vial")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication2() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample0311.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication2(_ inst: Medication) {
		XCTAssertEqual(inst.code?.coding?[0].code, "373994007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Prednisone 5mg tablet (Product)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "sub03")
		XCTAssertEqual(inst.form?.coding?[0].code, "385055001")
		XCTAssertEqual(inst.form?.coding?[0].display, "Tablet dose form (qualifier value)")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "med0311")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.code, "TAB")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.system, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.value, 1)
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.value, 5)
		XCTAssertEqual(inst.ingredient?[0].itemReference?.reference, "#sub03")
		XCTAssertEqual(inst.isBrand, false)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication3() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample0310.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication3(_ inst: Medication) {
		XCTAssertEqual(inst.code?.coding?[0].code, "430127000")
		XCTAssertEqual(inst.code?.coding?[0].display, "Oral Form Oxycodone (product)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "sub03")
		XCTAssertEqual(inst.form?.coding?[0].code, "385055001")
		XCTAssertEqual(inst.form?.coding?[0].display, "Tablet dose form (qualifier value)")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "med0310")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.code, "TAB")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.system, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.value, 1)
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.value, 5)
		XCTAssertEqual(inst.ingredient?[0].itemReference?.reference, "#sub03")
		XCTAssertEqual(inst.isBrand, false)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication4() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample0306.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication4(_ inst: Medication) {
		XCTAssertEqual(inst.code?.coding?[0].code, "51144-050-01")
		XCTAssertEqual(inst.code?.coding?[0].display, "Adcetris")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://hl7.org/fhir/sid/ndc")
		XCTAssertEqual(inst.contained?[0].id, "org3")
		XCTAssertEqual(inst.form?.coding?[0].code, "421637006")
		XCTAssertEqual(inst.form?.coding?[0].display, "Lyophilized powder for injectable solution (qualifier value) ")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "med0306")
		XCTAssertEqual(inst.isBrand, true)
		XCTAssertEqual(inst.manufacturer?.reference, "#org3")
		XCTAssertEqual(inst.package?.batch?[0].expirationDate?.description, "2019-10-31")
		XCTAssertEqual(inst.package?.batch?[0].lotNumber, "12345")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication5() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample0301.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication5(_ inst: Medication) {
		XCTAssertEqual(inst.code?.coding?[0].code, "0069-2587-10")
		XCTAssertEqual(inst.code?.coding?[0].display, "Vancomycin Hydrochloride (VANCOMYCIN HYDROCHLORIDE)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://hl7.org/fhir/sid/ndc")
		XCTAssertEqual(inst.contained?[0].id, "org4")
		XCTAssertEqual(inst.form?.coding?[0].code, "385219001")
		XCTAssertEqual(inst.form?.coding?[0].display, "Injection Solution (qualifier value)")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "med0301")
		XCTAssertEqual(inst.image?[0].contentType, "application/pdf")
		XCTAssertEqual(inst.image?[0].title, "Vancomycin Image")
		XCTAssertEqual(inst.image?[0].url, "https://www.drugs.com/images/pills/fio/AKN07410.JPG")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.code, "mL")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.value, 10)
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.value, 500)
		XCTAssertEqual(inst.ingredient?[0].isActive, true)
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].code, "66955")
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].display, "Vancomycin Hydrochloride")
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].system, "http://www.nlm.nih.gov/research/umls/rxnorm")
		XCTAssertEqual(inst.isBrand, true)
		XCTAssertEqual(inst.isOverTheCounter, false)
		XCTAssertEqual(inst.manufacturer?.reference, "#org4")
		XCTAssertEqual(inst.package?.batch?[0].expirationDate?.description, "2017-05-22")
		XCTAssertEqual(inst.package?.batch?[0].lotNumber, "9494788")
		XCTAssertEqual(inst.package?.content?[0].amount?.code, "mL")
		XCTAssertEqual(inst.package?.content?[0].amount?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.package?.content?[0].amount?.value, 10)
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].code, "324337001")
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].display, "Vancomycin 500mg powder for infusion solution vial (product)")
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].code, "415818006")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].display, "Vial")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, MedicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication6() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample0317.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication6(_ inst: Medication) {
		XCTAssertEqual(inst.form?.coding?[0].code, "385219001")
		XCTAssertEqual(inst.form?.coding?[0].display, "Injection Solution (qualifier value)")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.form?.text, "Injection Solution (qualifier value)")
		XCTAssertEqual(inst.id, "med0317")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.code, "mL")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.value, 1)
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.code, "mEq")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.value, 2)
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].code, "204520")
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].display, "Potassium Chloride")
		XCTAssertEqual(inst.ingredient?[0].itemCodeableConcept?.coding?[0].system, "http://www.nlm.nih.gov/research/umls/rxnorm")
		XCTAssertEqual(inst.ingredient?[1].amount?.denominator?.code, "mL")
		XCTAssertEqual(inst.ingredient?[1].amount?.denominator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[1].amount?.denominator?.value, 100)
		XCTAssertEqual(inst.ingredient?[1].amount?.numerator?.code, "g")
		XCTAssertEqual(inst.ingredient?[1].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[1].amount?.numerator?.value, 0.9)
		XCTAssertEqual(inst.ingredient?[1].itemCodeableConcept?.coding?[0].code, "313002")
		XCTAssertEqual(inst.ingredient?[1].itemCodeableConcept?.coding?[0].display, "Sodium Chloride 0.9% injectable solution")
		XCTAssertEqual(inst.ingredient?[1].itemCodeableConcept?.coding?[0].system, "http://www.nlm.nih.gov/research/umls/rxnorm")
		XCTAssertEqual(inst.isBrand, false)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication7() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample1.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication7(_ inst: Medication) {
		XCTAssertEqual(inst.code?.text, "Amoxicillin 250mg/5ml Suspension")
		XCTAssertEqual(inst.id, "medicationexample1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Amoxicillin 250mg/5ml Suspension</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication8() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample15.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication8(_ inst: Medication) {
		XCTAssertEqual(inst.code?.coding?[0].code, "213293")
		XCTAssertEqual(inst.code?.coding?[0].display, "Capecitabine 500mg oral tablet (Xeloda)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://www.nlm.nih.gov/research/umls/rxnorm")
		XCTAssertEqual(inst.contained?[0].id, "org2")
		XCTAssertEqual(inst.contained?[1].id, "sub04")
		XCTAssertEqual(inst.form?.coding?[0].code, "385055001")
		XCTAssertEqual(inst.form?.coding?[0].display, "Tablet dose form (qualifier value)")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "medexample015")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.code, "TAB")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.system, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.value, 1)
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.value, 500)
		XCTAssertEqual(inst.ingredient?[0].itemReference?.reference, "#sub04")
		XCTAssertEqual(inst.isBrand, true)
		XCTAssertEqual(inst.manufacturer?.reference, "#org2")
		XCTAssertEqual(inst.package?.batch?[0].expirationDate?.description, "2017-05-22")
		XCTAssertEqual(inst.package?.batch?[0].lotNumber, "9494788")
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].code, "134622004")
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].display, "Capecitabine 500mg tablets (product)")
		XCTAssertEqual(inst.package?.content?[0].itemCodeableConcept?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].code, "419672006")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].display, "Bottle - unit of produce usage (qualifier value)")
		XCTAssertEqual(inst.package?.specimenContainer?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication9() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample0321.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication9(_ inst: Medication) {
		XCTAssertEqual(inst.code?.coding?[0].code, "108761006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Capecitabine (product)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "sub03")
		XCTAssertEqual(inst.form?.coding?[0].code, "385055001")
		XCTAssertEqual(inst.form?.coding?[0].display, "Tablet dose form (qualifier value)")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "med0321")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.code, "Tablet dose form (qualifier value)")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.system, "http://snomed.info/sct")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.value, 1)
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.value, 500)
		XCTAssertEqual(inst.ingredient?[0].itemReference?.reference, "#sub03")
		XCTAssertEqual(inst.isBrand, false)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedication10() {
        do {
            let data = try bundle.loadJSONData(named: "medicationexample0320.json")
            let instance = try decoder.decode(Medication.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedication10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedication10(_ inst: Medication) {
		XCTAssertEqual(inst.code?.coding?[0].code, "324252006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Azithromycin 250mg capsule (product)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "sub03")
		XCTAssertEqual(inst.form?.coding?[0].code, "385055001")
		XCTAssertEqual(inst.form?.coding?[0].display, "Tablet dose form (qualifier value)")
		XCTAssertEqual(inst.form?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "med0320")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.code, "TAB")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.system, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.ingredient?[0].amount?.denominator?.value, 1)
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].amount?.numerator?.value, 250)
		XCTAssertEqual(inst.ingredient?[0].itemReference?.reference, "#sub03")
		XCTAssertEqual(inst.isBrand, false)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
