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
//  ConditionTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
@testable import Data4LifeFHIR

class ConditionTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testCondition1() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-f003-abscess.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition1(_ inst: Condition) {
		XCTAssertEqual(inst.assertedDate?.description, "2012-02-20")
		XCTAssertEqual(inst.asserter?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter?.reference, "Patient/f001")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "280193007")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire retropharyngeal area")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "439401001")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "18099001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Retropharyngeal abscess")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f003")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].code, "169068008")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].display, "CT of neck")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.onsetDateTime?.description, "2012-02-27")
		XCTAssertEqual(inst.severity?.coding?[0].code, "371923003")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Mild to moderate")
		XCTAssertEqual(inst.severity?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
	}

	func testCondition2() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-f203-sepsis.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition2(_ inst: Condition) {
		XCTAssertEqual(inst.assertedDate?.description, "2013-03-11")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "281158006")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Pulmonary vascular structure")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[1].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[1].system, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "10001005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bacterial sepsis")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.display, "Roel's encounter on March eleventh")
		XCTAssertEqual(inst.context?.reference, "Encounter/f203")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Diagnostic report for Roel's sepsis")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "DiagnosticReport/f202")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-03-08")
		XCTAssertEqual(inst.severity?.coding?[0].code, "371924009")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Moderate to severe")
		XCTAssertEqual(inst.severity?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
	}

	func testCondition3() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-stroke.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition3(_ inst: Condition) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "encounter-diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Encounter Diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "422504002")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ischemic stroke (disorder)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Stroke")
		XCTAssertEqual(inst.id, "stroke")
		XCTAssertEqual(inst.onsetDateTime?.description, "2010-07-18")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ischemic stroke, July 18, 2010</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
	}

	func testCondition4() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-family-history.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition4(_ inst: Condition) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem List Item")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "312824007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Family history of cancer of colon")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "family-history")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Family history of cancer of colon</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testCondition5() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-f002-lung.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition5(_ inst: Condition) {
		XCTAssertEqual(inst.assertedDate?.description, "2012-06-03")
		XCTAssertEqual(inst.asserter?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter?.reference, "Patient/f001")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "51185008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Thorax")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "439401001")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "254637007")
		XCTAssertEqual(inst.code?.coding?[0].display, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f002")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].code, "169069000")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].display, "CT of thorax")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.onsetDateTime?.description, "2011-05-05")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].code, "258219007")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].display, "stage II")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
	}

	func testCondition6() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-f205-infection.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition6(_ inst: Condition) {
		XCTAssertEqual(inst.assertedDate?.description, "2013-04-04")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "87628006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bacterial infectious disease")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f205")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "differential")!)
	}

	func testCondition7() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-f204-renal.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition7(_ inst: Condition) {
		XCTAssertEqual(inst.abatementDateTime?.description, "2013-03-20")
		XCTAssertEqual(inst.assertedDate?.description, "2013-03-11")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "181414000")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Kidney")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[1].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[1].system, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "36225005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Acute renal insufficiency specified as due to procedure")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.display, "Roel's encounter on March eleventh")
		XCTAssertEqual(inst.context?.reference, "Encounter/f203")
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.note?[0].text, "The patient is anuric.")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-03-11")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage?.assessment?[0].display, "Genetic analysis master panel")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].code, "14803004")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].display, "Temporary")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "differential")!)
	}

	func testCondition8() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example2.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition8(_ inst: Condition) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem List Item")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.text, "Asthma")
		XCTAssertEqual(inst.id, "example2")
		XCTAssertEqual(inst.onsetString, "approximately November 2012")
		XCTAssertEqual(inst.severity?.coding?[0].code, "255604002")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Mild")
		XCTAssertEqual(inst.severity?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Mild Asthma (Date: 12-Nov 2012)</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
	}

	func testCondition9() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-f202-malignancy.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition9(_ inst: Condition) {
		XCTAssertEqual(inst.abatementAge?.code, "a")
		XCTAssertEqual(inst.abatementAge?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.abatementAge?.unit, "years")
		XCTAssertEqual(inst.abatementAge?.value, 54)
		XCTAssertEqual(inst.assertedDate?.description, "2012-12-01")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "361355005")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire head and neck")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "encounter-diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "resolved")
		XCTAssertEqual(inst.code?.coding?[0].code, "363346000")
		XCTAssertEqual(inst.code?.coding?[0].display, "Malignant neoplastic disease")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Erasmus' diagnostic report of Roel's tumor")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "DiagnosticReport/f201")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.meta?.security?[0].code, "TBOO")
		XCTAssertEqual(inst.meta?.security?[0].display, "taboo")
		XCTAssertEqual(inst.meta?.security?[0].system, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.onsetAge?.code, "a")
		XCTAssertEqual(inst.onsetAge?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.onsetAge?.unit, "years")
		XCTAssertEqual(inst.onsetAge?.value, 52)
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
	}

	func testCondition10() {
        do {
            let data = try bundle.loadJSONData(named: "condition-example-f201-fever.json")
            let instance = try decoder.decode(Condition.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCondition10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCondition10(_ inst: Condition) {
		XCTAssertEqual(inst.abatementString, "around April 9, 2013")
		XCTAssertEqual(inst.assertedDate?.description, "2013-04-04")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "38266002")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire body as a whole")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[1].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[1].system, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "resolved")
		XCTAssertEqual(inst.code?.coding?[0].code, "386661006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Fever")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f201")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].code, "258710007")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].display, "degrees C")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Temperature")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "Observation/f202")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-04-02")
		XCTAssertEqual(inst.severity?.coding?[0].code, "255604002")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Mild")
		XCTAssertEqual(inst.severity?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
	}
}
