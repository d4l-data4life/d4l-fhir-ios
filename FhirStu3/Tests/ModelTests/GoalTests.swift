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
//  GoalTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class GoalTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testGoal1() {
        do {
            let data = try bundle.loadJSONData(named: "goal-example.json")
            let instance = try decoder.decode(Goal.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runGoal1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runGoal1(_ inst: Goal) {
		XCTAssertEqual(inst.addresses?[0].display, "obesity condition")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "dietary")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/goal-category")
		XCTAssertEqual(inst.description_fhir?.text, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.expressedBy?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.expressedBy?.reference, "Patient/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.outcomeReference?[0].display, "Body Weight Measured")
		XCTAssertEqual(inst.outcomeReference?[0].reference, "Observation/example")
		XCTAssertEqual(inst.priority?.coding?[0].code, "high-priority")
		XCTAssertEqual(inst.priority?.coding?[0].display, "High Priority")
		XCTAssertEqual(inst.priority?.coding?[0].system, "http://hl7.org/fhir/goal-priority")
		XCTAssertEqual(inst.priority?.text, "high")
		// Don't know how to create unit test for "startDate", which is a FHIRDate
		XCTAssertEqual(inst.status, GoalStatus(rawValue: "on-hold")!)
		// Don't know how to create unit test for "statusDate", which is a FHIRDate
		XCTAssertEqual(inst.statusReason, "Patient wants to defer weight loss until after honeymoon.")
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.target?.detailRange?.high?.code, "[lb_av]")
		XCTAssertEqual(inst.target?.detailRange?.high?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.target?.detailRange?.high?.unit, "lbs")
		XCTAssertEqual(inst.target?.detailRange?.high?.value, 180)
		XCTAssertEqual(inst.target?.detailRange?.low?.code, "[lb_av]")
		XCTAssertEqual(inst.target?.detailRange?.low?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.target?.detailRange?.low?.unit, "lbs")
		XCTAssertEqual(inst.target?.detailRange?.low?.value, 160)
		// Don't know how to create unit test for "target?.dueDate", which is a FHIRDate
		XCTAssertEqual(inst.target?.measure?.coding?[0].code, "3141-9")
		XCTAssertEqual(inst.target?.measure?.coding?[0].display, "Weight Measured")
		XCTAssertEqual(inst.target?.measure?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
	}

	func testGoal2() {
        do {
            let data = try bundle.loadJSONData(named: "goal-example-stop-smoking.json")
            let instance = try decoder.decode(Goal.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runGoal2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runGoal2(_ inst: Goal) {
		XCTAssertEqual(inst.description_fhir?.text, "Stop smoking")
		XCTAssertEqual(inst.id, "stop-smoking")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.outcomeCode?[0].coding?[0].code, "8517006")
		XCTAssertEqual(inst.outcomeCode?[0].coding?[0].display, "Ex-smoker (finding)")
		XCTAssertEqual(inst.outcomeCode?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.outcomeCode?[0].text, "Former smoker")
		// Don't know how to create unit test for "startDate", which is a FHIRDate
		XCTAssertEqual(inst.status, GoalStatus(rawValue: "achieved")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
	}
}
