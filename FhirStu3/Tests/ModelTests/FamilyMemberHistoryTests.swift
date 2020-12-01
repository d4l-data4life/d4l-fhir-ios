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
//  FamilyMemberHistoryTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
@testable import Data4LifeFHIR

class FamilyMemberHistoryTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testFamilyMemberHistory1() {
        do {
            let data = try bundle.loadJSONData(named: "familymemberhistory-example.json")
            let instance = try decoder.decode(FamilyMemberHistory.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runFamilyMemberHistory1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runFamilyMemberHistory1(_ inst: FamilyMemberHistory) {
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].code, "315619001")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].display, "Myocardial Infarction")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition?[0].code?.text, "Heart Attack")
		XCTAssertEqual(inst.condition?[0].note?[0].text, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.condition?[0].onsetAge?.code, "a")
		XCTAssertEqual(inst.condition?[0].onsetAge?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition?[0].onsetAge?.unit, "yr")
		XCTAssertEqual(inst.condition?[0].onsetAge?.value, 74)
		XCTAssertEqual(inst.date?.description, "2011-03-18")
		XCTAssertEqual(inst.definition?[0].display, "Family Member History Questionnaire")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "father")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.notDone, false)
		XCTAssertEqual(inst.patient?.display, "Peter Patient")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "FTH")
		XCTAssertEqual(inst.relationship?.coding?[0].display, "father")
		XCTAssertEqual(inst.relationship?.coding?[0].system, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.status, FamilyHistoryStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testFamilyMemberHistory2() {
        do {
            let data = try bundle.loadJSONData(named: "familymemberhistory-example-mother.json")
            let instance = try decoder.decode(FamilyMemberHistory.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runFamilyMemberHistory2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runFamilyMemberHistory2(_ inst: FamilyMemberHistory) {
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].code, "371041009")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].display, "Embolic Stroke")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition?[0].code?.text, "Stroke")
		XCTAssertEqual(inst.condition?[0].onsetAge?.code, "a")
		XCTAssertEqual(inst.condition?[0].onsetAge?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition?[0].onsetAge?.unit, "yr")
		XCTAssertEqual(inst.condition?[0].onsetAge?.value, 56)
		XCTAssertEqual(inst.id, "mother")
		XCTAssertEqual(inst.patient?.display, "Peter Patient")
		XCTAssertEqual(inst.patient?.reference, "Patient/100")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "MTH")
		XCTAssertEqual(inst.relationship?.coding?[0].display, "mother")
		XCTAssertEqual(inst.relationship?.coding?[0].system, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.status, FamilyHistoryStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Mother died of a stroke aged 56</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
