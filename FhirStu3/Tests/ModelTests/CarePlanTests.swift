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
//  CarePlanTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class CarePlanTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testCarePlan1() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-f002-lung.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan1(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].code, "procedure")
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].code, "359615001")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].display, "Partial lobectomy of lung")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].display, "M.I.M. Versteegh")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].reference, "Practitioner/f003")
		XCTAssertEqual(inst.activity?[0].detail?.prohibited, true)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledString, "2011-07-07T09:30:10+01:00")
		XCTAssertEqual(inst.activity?[0].detail?.status, CarePlanActivityStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.addresses?[0].display, "?????")
		XCTAssertEqual(inst.addresses?[0].reference, "Condition/f201")
		XCTAssertEqual(inst.careTeam?[0].reference, "#careteam")
		XCTAssertEqual(inst.contained?[0].id, "careteam")
		XCTAssertEqual(inst.contained?[1].id, "goal")
		XCTAssertEqual(inst.goal?[0].reference, "#goal")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "CP2934")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.period?.end?.description, "2013-07-07")
		XCTAssertEqual(inst.period?.start?.description, "2011-07-06")
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testCarePlan2() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-f202-malignancy.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan2(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].code, "procedure")
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].code, "367336001")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].display, "Chemotherapy")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[0].detail?.productReference?.reference, "#tpf")
		XCTAssertEqual(inst.activity?[0].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[0].detail?.status, CarePlanActivityStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.activity?[0].outcomeReference?[0].display, "Roel's Chemotherapy")
		XCTAssertEqual(inst.activity?[0].outcomeReference?[0].reference, "Procedure/f201")
		XCTAssertEqual(inst.addresses?[0].display, "Roel's head-neck tumor")
		XCTAssertEqual(inst.addresses?[0].reference, "Condition/f202")
		XCTAssertEqual(inst.careTeam?[0].reference, "#careteam")
		XCTAssertEqual(inst.contained?[0].id, "doce")
		XCTAssertEqual(inst.contained?[1].id, "cisp")
		XCTAssertEqual(inst.contained?[2].id, "fluo")
		XCTAssertEqual(inst.contained?[3].id, "tpf")
		XCTAssertEqual(inst.contained?[4].id, "careteam")
		XCTAssertEqual(inst.contained?[5].id, "goal")
		XCTAssertEqual(inst.goal?[0].reference, "#goal")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testCarePlan3() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-obesity-narrative.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan3(_ inst: CarePlan) {
		XCTAssertEqual(inst.id, "obesity-narrative")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
	}

	func testCarePlan4() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan4(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].code, "observation")
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].code, "3141-9")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].display, "Weight Measured")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[1].code, "27113001")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[1].display, "Body weight")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[1].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[0].detail?.location?.display, "Patient's home")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].display, "Peter James Chalmers")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].reference, "Patient/example")
		XCTAssertEqual(inst.activity?[0].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledTiming?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledTiming?.repeat_fhir?.period, 1)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledTiming?.repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.activity?[0].detail?.status, CarePlanActivityStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.activity?[0].detail?.statusReason, "Achieved weight loss to mitigate diabetes risk.")
		XCTAssertEqual(inst.activity?[0].outcomeCodeableConcept?[0].coding?[0].code, "161832001")
		XCTAssertEqual(inst.activity?[0].outcomeCodeableConcept?[0].coding?[0].display, "Progressive weight loss")
		XCTAssertEqual(inst.activity?[0].outcomeCodeableConcept?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[0].outcomeReference?[0].display, "Weight Measured")
		XCTAssertEqual(inst.activity?[0].outcomeReference?[0].reference, "Observation/example")
		XCTAssertEqual(inst.addresses?[0].display, "obesity")
		XCTAssertEqual(inst.addresses?[0].reference, "#p1")
		XCTAssertEqual(inst.author?[0].display, "Dr Adam Careful")
		XCTAssertEqual(inst.author?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.basedOn?[0].display, "Management of Type 2 Diabetes")
		XCTAssertEqual(inst.careTeam?[0].reference, "CareTeam/example")
		XCTAssertEqual(inst.category?[0].text, "Weight management plan")
		XCTAssertEqual(inst.contained?[0].id, "p1")
		XCTAssertEqual(inst.context?.reference, "Encounter/home")
		XCTAssertEqual(inst.definition?[0].display, "A PlanDefinition protocol for obesity")
		XCTAssertEqual(inst.description_fhir, "Manage obesity and weight loss")
		XCTAssertEqual(inst.goal?[0].reference, "Goal/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.partOf?[0].display, "Overall wellness plan")
		XCTAssertEqual(inst.period?.end?.description, "2017-06-01")
		XCTAssertEqual(inst.replaces?[0].display, "Plan from urgent care clinic")
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
	}

	func testCarePlan5() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-f201-renal.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan5(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].code, "diet")
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].code, "284093001")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].display, "Potassium supplementation")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[0].detail?.dailyAmount?.code, "258718000")
		XCTAssertEqual(inst.activity?[0].detail?.dailyAmount?.system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[0].detail?.dailyAmount?.unit, "mmol")
		XCTAssertEqual(inst.activity?[0].detail?.dailyAmount?.value, 80)
		XCTAssertEqual(inst.activity?[0].detail?.productReference?.display, "Potassium")
		XCTAssertEqual(inst.activity?[0].detail?.productReference?.reference, "Substance/f203")
		XCTAssertEqual(inst.activity?[0].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledString, "daily")
		XCTAssertEqual(inst.activity?[0].detail?.status, CarePlanActivityStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.activity?[1].detail?.category?.coding?[0].code, "observation")
		XCTAssertEqual(inst.activity?[1].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[1].detail?.code?.coding?[0].code, "306005")
		XCTAssertEqual(inst.activity?[1].detail?.code?.coding?[0].display, "Echography of kidney")
		XCTAssertEqual(inst.activity?[1].detail?.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[1].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[1].detail?.status, CarePlanActivityStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.addresses?[0].display, "Roel's renal insufficiency")
		XCTAssertEqual(inst.addresses?[0].reference, "Condition/f204")
		XCTAssertEqual(inst.careTeam?[0].reference, "#careteam")
		XCTAssertEqual(inst.contained?[0].id, "careteam")
		XCTAssertEqual(inst.contained?[1].id, "goal")
		XCTAssertEqual(inst.goal?[0].reference, "#goal")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "proposal")!)
		XCTAssertEqual(inst.period?.end?.description, "2013-03-13")
		XCTAssertEqual(inst.period?.start?.description, "2013-03-11")
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testCarePlan6() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-GPVisit.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan6(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].code, "encounter")
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].code, "nursecon")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].system, "http://example.org/local")
		XCTAssertEqual(inst.activity?[0].detail?.code?.text, "Nurse Consultation")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].display, "Nurse Nancy")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].reference, "Practitioner/13")
		XCTAssertEqual(inst.activity?[0].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledPeriod?.end?.description, "2013-01-01T10:50:00+00:00")
		XCTAssertEqual(inst.activity?[0].detail?.scheduledPeriod?.start?.description, "2013-01-01T10:38:00+00:00")
		XCTAssertEqual(inst.activity?[0].detail?.status, CarePlanActivityStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.activity?[0].outcomeReference?[0].reference, "Encounter/example")
		XCTAssertEqual(inst.activity?[1].detail?.category?.coding?[0].code, "encounter")
		XCTAssertEqual(inst.activity?[1].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[1].detail?.code?.coding?[0].code, "doccon")
		XCTAssertEqual(inst.activity?[1].detail?.code?.coding?[0].system, "http://example.org/local")
		XCTAssertEqual(inst.activity?[1].detail?.code?.text, "Doctor Consultation")
		XCTAssertEqual(inst.activity?[1].detail?.performer?[0].display, "Doctor Dave")
		XCTAssertEqual(inst.activity?[1].detail?.performer?[0].reference, "Practitioner/14")
		XCTAssertEqual(inst.activity?[1].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[1].detail?.status, CarePlanActivityStatus(rawValue: "scheduled")!)
		XCTAssertEqual(inst.addresses?[0].display, "obesity")
		XCTAssertEqual(inst.addresses?[0].reference, "#p1")
		XCTAssertEqual(inst.careTeam?[0].reference, "#careteam")
		XCTAssertEqual(inst.contained?[0].id, "p1")
		XCTAssertEqual(inst.contained?[1].id, "careteam")
		XCTAssertEqual(inst.contained?[2].id, "goal")
		XCTAssertEqual(inst.goal?[0].reference, "#goal")
		XCTAssertEqual(inst.id, "gpvisit")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.period?.start?.description, "2013-01-01T10:30:00+00:00")
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/100")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
	}

	func testCarePlan7() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-integrated.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan7(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[0].detail?.description_fhir, "Eve will review photos of high and low density foods and share with her parents")
		XCTAssertEqual(inst.activity?[0].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[0].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[0].detail?.goal?[0].reference, "#g1")
		XCTAssertEqual(inst.activity?[0].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledPeriod?.start?.description, "2012-09-10")
		XCTAssertEqual(inst.activity?[0].detail?.status, CarePlanActivityStatus(rawValue: "not-started")!)
		XCTAssertEqual(inst.activity?[0].progress?[0].text, "Eve eats one meal a day with her parents")
		XCTAssertEqual(inst.activity?[0].progress?[0].time?.description, "2012-09-10")
		XCTAssertEqual(inst.activity?[1].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[1].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[1].detail?.description_fhir, "Eve will ask her dad to asist her to put the head of her bed on blocks")
		XCTAssertEqual(inst.activity?[1].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[1].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[1].detail?.goal?[0].reference, "#g1")
		XCTAssertEqual(inst.activity?[1].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[1].detail?.scheduledPeriod?.start?.description, "2012-09-10")
		XCTAssertEqual(inst.activity?[1].detail?.status, CarePlanActivityStatus(rawValue: "not-started")!)
		XCTAssertEqual(inst.activity?[1].progress?[0].text, "Eve will sleep in her bed more often than the couch")
		XCTAssertEqual(inst.activity?[1].progress?[0].time?.description, "2012-09-10")
		XCTAssertEqual(inst.activity?[2].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[2].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[2].detail?.description_fhir, "Eve will reduce her intake of coffee and chocolate")
		XCTAssertEqual(inst.activity?[2].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[2].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[2].detail?.goal?[0].reference, "#g2")
		XCTAssertEqual(inst.activity?[2].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[2].detail?.scheduledPeriod?.start?.description, "2012-09-10")
		XCTAssertEqual(inst.activity?[2].detail?.status, CarePlanActivityStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.activity?[3].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[3].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[3].detail?.description_fhir, "Eve will walk her friend's dog up and down a big hill 15-30 minutes 3 days a week")
		XCTAssertEqual(inst.activity?[3].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[3].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[3].detail?.goal?[0].reference, "#g3")
		XCTAssertEqual(inst.activity?[3].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[3].detail?.scheduledPeriod?.start?.description, "2012-08-27")
		XCTAssertEqual(inst.activity?[3].detail?.status, CarePlanActivityStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.activity?[3].progress?[0].text, "Eve would like to try for 5 days a week.")
		XCTAssertEqual(inst.activity?[3].progress?[0].time?.description, "2012-08-27")
		XCTAssertEqual(inst.activity?[3].progress?[1].text, "Eve is still walking the dogs.")
		XCTAssertEqual(inst.activity?[3].progress?[1].time?.description, "2012-09-10")
		XCTAssertEqual(inst.activity?[4].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[4].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[4].detail?.description_fhir, "Eve will walk 3 blocks to her parents house twice a week")
		XCTAssertEqual(inst.activity?[4].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[4].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[4].detail?.goal?[0].reference, "#g3")
		XCTAssertEqual(inst.activity?[4].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[4].detail?.scheduledPeriod?.start?.description, "2012-07-23")
		XCTAssertEqual(inst.activity?[4].detail?.status, CarePlanActivityStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.activity?[4].progress?[0].text, "Eve walked 4 times the last week.")
		XCTAssertEqual(inst.activity?[4].progress?[0].time?.description, "2012-08-13")
		XCTAssertEqual(inst.activity?[4].progress?[1].text, "Eve did not walk to her parents the last week, but has plans to start again")
		XCTAssertEqual(inst.activity?[4].progress?[1].time?.description, "2012-09-10")
		XCTAssertEqual(inst.activity?[5].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[5].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[5].detail?.description_fhir, "Eve will us a calendar to check off after medications are taken")
		XCTAssertEqual(inst.activity?[5].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[5].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[5].detail?.goal?[0].reference, "#g4")
		XCTAssertEqual(inst.activity?[5].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[5].detail?.scheduledPeriod?.start?.description, "2012-07-23")
		XCTAssertEqual(inst.activity?[5].detail?.status, CarePlanActivityStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.activity?[6].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[6].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[6].detail?.description_fhir, "Eve will use her lights MWF after her shower for 3 minutes")
		XCTAssertEqual(inst.activity?[6].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[6].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[6].detail?.goal?[0].reference, "#g5")
		XCTAssertEqual(inst.activity?[6].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[6].detail?.scheduledPeriod?.start?.description, "2012-07-23")
		XCTAssertEqual(inst.activity?[6].detail?.status, CarePlanActivityStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.activity?[6].progress?[0].text, "After restarting the vinegar soaks the psoriasis is improved and Eve plans to treat the remainder with light treatments.  She plans to start this week.")
		XCTAssertEqual(inst.activity?[6].progress?[0].time?.description, "2012-08-13")
		XCTAssertEqual(inst.activity?[6].progress?[1].text, "Since her skin is improved Eve has not been using the light treatment as often, maybe once a week.  She would like to increase to 3 times a week again")
		XCTAssertEqual(inst.activity?[6].progress?[1].time?.description, "2012-08-27")
		XCTAssertEqual(inst.activity?[7].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[7].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[7].detail?.description_fhir, "Eve will use a calendar of a chart to help her remember when to take her medications")
		XCTAssertEqual(inst.activity?[7].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[7].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[7].detail?.goal?[0].reference, "#g4")
		XCTAssertEqual(inst.activity?[7].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[7].detail?.scheduledPeriod?.start?.description, "2012-07-10")
		XCTAssertEqual(inst.activity?[7].detail?.status, CarePlanActivityStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.activity?[7].progress?[0].text, "Eve created a chart as a reminer to take the medications that do not fit in her pill box")
		XCTAssertEqual(inst.activity?[7].progress?[0].time?.description, "2012-07-23")
		XCTAssertEqual(inst.activity?[8].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[8].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[8].detail?.description_fhir, "Eve will start using stretch bands and one step 2 days a week Mon/Wed 6-7am and maybe Friday afternoon")
		XCTAssertEqual(inst.activity?[8].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[8].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[8].detail?.goal?[0].reference, "#g3")
		XCTAssertEqual(inst.activity?[8].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[8].detail?.scheduledPeriod?.start?.description, "2012-07-23")
		XCTAssertEqual(inst.activity?[8].detail?.status, CarePlanActivityStatus(rawValue: "on-hold")!)
		XCTAssertEqual(inst.activity?[8].progress?[0].text, "Will be able to esume exercise.")
		XCTAssertEqual(inst.activity?[8].progress?[0].time?.description, "2012-07-30")
		XCTAssertEqual(inst.activity?[8].progress?[1].text, "Eve prefers to focus on walking at this time")
		XCTAssertEqual(inst.activity?[8].progress?[1].time?.description, "2012-08-13")
		XCTAssertEqual(inst.activity?[9].detail?.category?.coding?[0].code, "other")
		XCTAssertEqual(inst.activity?[9].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[9].detail?.description_fhir, "Eve will match a printed medication worksheet with the medication bottles at home")
		XCTAssertEqual(inst.activity?[9].detail?.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/RevisionDate")
		// Don't know how to create unit test for "activity?[9].detail?.extension_fhir?[0].valueDate", which is a FHIRDate
		XCTAssertEqual(inst.activity?[9].detail?.goal?[0].reference, "#g4")
		XCTAssertEqual(inst.activity?[9].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[9].detail?.scheduledPeriod?.start?.description, "2012-07-10")
		XCTAssertEqual(inst.activity?[9].detail?.status, CarePlanActivityStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.addresses?[0].display, "GERDS")
		XCTAssertEqual(inst.addresses?[0].reference, "#p1")
		XCTAssertEqual(inst.addresses?[1].display, "Obesity")
		XCTAssertEqual(inst.addresses?[1].reference, "#p2")
		XCTAssertEqual(inst.addresses?[2].display, "Psoriasis")
		XCTAssertEqual(inst.addresses?[2].reference, "#p3")
		XCTAssertEqual(inst.contained?[0].id, "p1")
		XCTAssertEqual(inst.contained?[1].id, "p2")
		XCTAssertEqual(inst.contained?[2].id, "p3")
		XCTAssertEqual(inst.contained?[3].id, "g1")
		XCTAssertEqual(inst.contained?[4].id, "g2")
		XCTAssertEqual(inst.contained?[5].id, "g3")
		XCTAssertEqual(inst.contained?[6].id, "g4")
		XCTAssertEqual(inst.contained?[7].id, "g5")
		XCTAssertEqual(inst.goal?[0].reference, "#g1")
		XCTAssertEqual(inst.goal?[1].reference, "#g2")
		XCTAssertEqual(inst.goal?[2].reference, "#g3")
		XCTAssertEqual(inst.goal?[3].reference, "#g4")
		XCTAssertEqual(inst.goal?[4].reference, "#g5")
		XCTAssertEqual(inst.id, "integrate")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.note?[0].text, "Patient family is not ready to commit to goal setting at this time.  Goal setting will be addressed in the future")
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Eve Everywoman")
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testCarePlan8() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-f003-pharynx.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan8(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].code, "procedure")
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].code, "172960003")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].display, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].display, "E.M. van den broek")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].reference, "Practitioner/f001")
		XCTAssertEqual(inst.activity?[0].detail?.prohibited, true)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledString, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity?[0].detail?.status, CarePlanActivityStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.addresses?[0].display, "?????")
		XCTAssertEqual(inst.addresses?[0].reference, "Condition/f201")
		XCTAssertEqual(inst.careTeam?[0].reference, "#careteam")
		XCTAssertEqual(inst.contained?[0].id, "careteam")
		XCTAssertEqual(inst.contained?[1].id, "goal")
		XCTAssertEqual(inst.goal?[0].reference, "#goal")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "CP3953")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.period?.end?.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst.period?.start?.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testCarePlan9() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-f001-heart.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan9(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].code, "procedure")
		XCTAssertEqual(inst.activity?[0].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].code, "64915003")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].display, "Operation on heart")
		XCTAssertEqual(inst.activity?[0].detail?.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].display, "P. Voigt")
		XCTAssertEqual(inst.activity?[0].detail?.performer?[0].reference, "Practitioner/f002")
		XCTAssertEqual(inst.activity?[0].detail?.prohibited, true)
		XCTAssertEqual(inst.activity?[0].detail?.scheduledString, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity?[0].detail?.status, CarePlanActivityStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.addresses?[0].display, "?????")
		XCTAssertEqual(inst.addresses?[0].reference, "Condition/f201")
		XCTAssertEqual(inst.careTeam?[0].reference, "#careteam")
		XCTAssertEqual(inst.contained?[0].id, "careteam")
		XCTAssertEqual(inst.contained?[1].id, "goal")
		XCTAssertEqual(inst.goal?[0].reference, "#goal")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "CP2903")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.period?.end?.description, "2011-06-27")
		XCTAssertEqual(inst.period?.start?.description, "2011-06-26")
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testCarePlan10() {
        do {
            let data = try bundle.loadJSONData(named: "careplan-example-pregnancy.json")
            let instance = try decoder.decode(CarePlan.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runCarePlan10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runCarePlan10(_ inst: CarePlan) {
		XCTAssertEqual(inst.activity?[0].reference?.display, "Prenatal vitamin MedicationRequest")
		XCTAssertEqual(inst.activity?[1].detail?.category?.coding?[0].code, "encounter")
		XCTAssertEqual(inst.activity?[1].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[1].detail?.code?.coding?[0].code, "1an")
		XCTAssertEqual(inst.activity?[1].detail?.code?.coding?[0].system, "http://example.org/mySystem")
		XCTAssertEqual(inst.activity?[1].detail?.code?.text, "First Antenatal encounter")
		XCTAssertEqual(inst.activity?[1].detail?.description_fhir, "The first antenatal encounter. This is where a detailed physical examination is performed.             and the pregnanacy discussed with the mother-to-be.")
		XCTAssertEqual(inst.activity?[1].detail?.performer?[0].display, "Mavis Midwife")
		XCTAssertEqual(inst.activity?[1].detail?.performer?[0].reference, "#pr1")
		XCTAssertEqual(inst.activity?[1].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[1].detail?.scheduledTiming?.repeat_fhir?.boundsPeriod?.end?.description, "2013-02-28")
		XCTAssertEqual(inst.activity?[1].detail?.scheduledTiming?.repeat_fhir?.boundsPeriod?.start?.description, "2013-02-14")
		XCTAssertEqual(inst.activity?[1].detail?.status, CarePlanActivityStatus(rawValue: "scheduled")!)
		XCTAssertEqual(inst.activity?[1].extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/careplan#andetails")
		XCTAssertEqual(inst.activity?[1].extension_fhir?[0].valueUri, "http://orionhealth.com/fhir/careplan/1andetails")
		XCTAssertEqual(inst.activity?[2].detail?.category?.coding?[0].code, "encounter")
		XCTAssertEqual(inst.activity?[2].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[2].detail?.code?.coding?[0].code, "an")
		XCTAssertEqual(inst.activity?[2].detail?.code?.coding?[0].system, "http://example.org/mySystem")
		XCTAssertEqual(inst.activity?[2].detail?.code?.text, "Follow-up Antenatal encounter")
		XCTAssertEqual(inst.activity?[2].detail?.description_fhir, "The second antenatal encounter. Discuss any issues that arose from the first antenatal encounter")
		XCTAssertEqual(inst.activity?[2].detail?.performer?[0].display, "Mavis Midwife")
		XCTAssertEqual(inst.activity?[2].detail?.performer?[0].reference, "#pr1")
		XCTAssertEqual(inst.activity?[2].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[2].detail?.scheduledTiming?.repeat_fhir?.boundsPeriod?.end?.description, "2013-03-14")
		XCTAssertEqual(inst.activity?[2].detail?.scheduledTiming?.repeat_fhir?.boundsPeriod?.start?.description, "2013-03-01")
		XCTAssertEqual(inst.activity?[2].detail?.status, CarePlanActivityStatus(rawValue: "not-started")!)
		XCTAssertEqual(inst.activity?[3].detail?.category?.coding?[0].code, "encounter")
		XCTAssertEqual(inst.activity?[3].detail?.category?.coding?[0].system, "http://hl7.org/fhir/care-plan-activity-category")
		XCTAssertEqual(inst.activity?[3].detail?.code?.coding?[0].code, "del")
		XCTAssertEqual(inst.activity?[3].detail?.code?.coding?[0].system, "http://example.org/mySystem")
		XCTAssertEqual(inst.activity?[3].detail?.code?.text, "Delivery")
		XCTAssertEqual(inst.activity?[3].detail?.description_fhir, "The delivery.")
		XCTAssertEqual(inst.activity?[3].detail?.performer?[0].display, "Mavis Midwife")
		XCTAssertEqual(inst.activity?[3].detail?.performer?[0].reference, "#pr1")
		XCTAssertEqual(inst.activity?[3].detail?.prohibited, false)
		XCTAssertEqual(inst.activity?[3].detail?.scheduledTiming?.repeat_fhir?.boundsPeriod?.end?.description, "2013-09-14")
		XCTAssertEqual(inst.activity?[3].detail?.scheduledTiming?.repeat_fhir?.boundsPeriod?.start?.description, "2013-09-01")
		XCTAssertEqual(inst.activity?[3].detail?.status, CarePlanActivityStatus(rawValue: "not-started")!)
		XCTAssertEqual(inst.addresses?[0].display, "pregnancy")
		XCTAssertEqual(inst.addresses?[0].reference, "#p1")
		XCTAssertEqual(inst.careTeam?[0].reference, "#careteam")
		XCTAssertEqual(inst.contained?[0].id, "p1")
		XCTAssertEqual(inst.contained?[1].id, "pr1")
		XCTAssertEqual(inst.contained?[2].id, "pr2")
		XCTAssertEqual(inst.contained?[3].id, "careteam")
		XCTAssertEqual(inst.contained?[4].id, "goal")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/careplan#lmp")
		XCTAssertEqual(inst.extension_fhir?[0].valueDateTime?.description, "2013-01-01")
		XCTAssertEqual(inst.goal?[0].reference, "#goal")
		XCTAssertEqual(inst.id, "preg")
		XCTAssertEqual(inst.intent, CarePlanIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.period?.end?.description, "2013-10-01")
		XCTAssertEqual(inst.period?.start?.description, "2013-01-01")
		XCTAssertEqual(inst.status, CarePlanStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Eve Everywoman")
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
	}
}
