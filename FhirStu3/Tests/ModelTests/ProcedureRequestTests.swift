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
//  ProcedureRequestTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
@testable import Data4LifeFHIR

class ProcedureRequestTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testProcedureRequest1() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example-lipid.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest1(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.code?.coding?[0].code, "LIPID")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://acme.org/tests")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.contained?[0].id, "fasting")
		XCTAssertEqual(inst.contained?[1].id, "serum")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "lipid")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "PLAC")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Placer")
		XCTAssertEqual(inst.identifier?[0].value, "2345234234234")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.note?[0].text, "patient is afraid of needles")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "V173")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Fam hx-ischem heart dis")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.onBehalfOf?.reference, "Organization/f001")
		XCTAssertEqual(inst.specimen?[0].display, "Serum specimen")
		XCTAssertEqual(inst.specimen?[0].reference, "#serum")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.supportingInfo?[0].display, "Fasting status")
		XCTAssertEqual(inst.supportingInfo?[0].reference, "#fasting")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest2() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example4.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest2(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.code?.coding?[0].code, "229115003")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bench Press (regime/therapy) ")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "benchpress")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.note?[0].text, "Start with 30kg and increase in increments of 5kg when you feel ready")
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.count, 20)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.countMax, 30)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.period, 1)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.periodUnit, "wk")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest3() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example-edu.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest3(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.authoredOn?.description, "2016-08-16")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "311401005")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Patient education (procedure)")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].text, "Education")
		XCTAssertEqual(inst.code?.coding?[0].code, "48023004")
		XCTAssertEqual(inst.code?.coding?[0].display, "Breast self-examination technique education (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Health education - breast examination")
		XCTAssertEqual(inst.id, "education")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2014-08-16")
		XCTAssertEqual(inst.performer?.display, "Pamela Educator, RN")
		XCTAssertEqual(inst.reasonCode?[0].text, "early detection of breast mass")
		XCTAssertEqual(inst.requester?.agent?.display, "Angela Care, MD")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "Jane Doe")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest4() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example-pt.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest4(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.authoredOn?.description, "2016-09-20")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "36701003")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Both knees (body structure)")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?[0].text, "Both knees")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "386053000")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Evaluation procedure (procedure)")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].text, "Evaluation")
		XCTAssertEqual(inst.code?.coding?[0].code, "710830005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Assessment of passive range of motion (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Assessment of passive range of motion")
		XCTAssertEqual(inst.id, "physical-therapy")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2016-09-27")
		XCTAssertEqual(inst.performer?.display, "Paul Therapist, PT")
		XCTAssertEqual(inst.reasonCode?[0].text, "assessment of mobility limitations due to osteoarthritis")
		XCTAssertEqual(inst.requester?.agent?.display, "Ollie Ortho, MD")
		XCTAssertEqual(inst.requester?.onBehalfOf?.display, "Sawbones Orthopedic Clinic")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest5() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-genetics-example-1.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest5(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.code?.coding?[0].code, "49874-1")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "ABCB4 gene mutation analysis")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "og-example1")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2014-05-12T16:16:00-07:00")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest6() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example-di.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest6(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.code?.coding?[0].code, "24627-2")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Chest CT")
		XCTAssertEqual(inst.id, "di")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.reasonCode?[0].text, "Check for metastatic disease")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/dicom")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest7() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example-subrequest.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest7(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.basedOn?[0].display, "Original Request")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Right arm")
		XCTAssertEqual(inst.bodySite?[0].text, "Right arm")
		XCTAssertEqual(inst.code?.coding?[0].code, "35542-0")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Peanut IgG")
		XCTAssertEqual(inst.definition?[0].display, "Protocol for alergies")
		XCTAssertEqual(inst.id, "subrequest")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "instance-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.performerType?.coding?[0].display, "Qualified nurse")
		XCTAssertEqual(inst.performerType?.text, "Nurse")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reasonCode?[0].text, "Check for Peanut Allergy")
		XCTAssertEqual(inst.replaces?[0].display, "Previous allergy test")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requisition?.value, "A13848392")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/dicom")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest8() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example2.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest8(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.asNeededCodeableConcept?.text, "as needed to clear mucus")
		XCTAssertEqual(inst.authoredOn?.description, "2017-02-01T17:23:07Z")
		XCTAssertEqual(inst.basedOn?[0].reference, "CarePlan/gpvisit")
		XCTAssertEqual(inst.code?.coding?[0].code, "34431008")
		XCTAssertEqual(inst.code?.coding?[0].display, "Physiotherapy of chest (regime/therapy) ")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "signature")
		XCTAssertEqual(inst.contained?[1].id, "cystic-fibrosis")
		XCTAssertEqual(inst.id, "physiotherapy")
		XCTAssertEqual(inst.identifier?[0].system, "http://goodhealth.org/placer-ids")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "PLAC")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].display, "Placer Identifier")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Placer")
		XCTAssertEqual(inst.identifier?[0].value, "20170201-0001")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.duration, 15)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.durationMax, 25)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.durationUnit, "min")
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.frequencyMax, 4)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.period, 1)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.reasonReference?[0].reference, "#cystic-fibrosis")
		XCTAssertEqual(inst.relevantHistory?[0].display, "Author's Signature")
		XCTAssertEqual(inst.relevantHistory?[0].reference, "#signature")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.onBehalfOf?.display, "Good Health Clinic")
		XCTAssertEqual(inst.requester?.onBehalfOf?.reference, "Organization/2")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest9() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example3.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest9(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.authoredOn?.description, "2017-02-01T17:23:07Z")
		XCTAssertEqual(inst.code?.coding?[0].code, "359962006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Turning patient in bed (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.doNotPerform, true)
		XCTAssertEqual(inst.id, "do-not-turn")
		XCTAssertEqual(inst.identifier?[0].system, "http://goodhealth.org/placer-ids")
		XCTAssertEqual(inst.identifier?[0].value, "20170201-0002")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "stat")!)
		XCTAssertEqual(inst.reasonReference?[0].display, "Patient has a spinal fracture")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedureRequest10() {
        do {
            let data = try bundle.loadJSONData(named: "procedurerequest-example-ambulation.json")
            let instance = try decoder.decode(ProcedureRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedureRequest10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedureRequest10(_ inst: ProcedureRequest) {
		XCTAssertEqual(inst.authoredOn?.description, "2017-03-05")
		XCTAssertEqual(inst.basedOn?[0].display, "Maternity care plan")
		XCTAssertEqual(inst.basedOn?[0].reference, "CarePlan/preg")
		XCTAssertEqual(inst.code?.coding?[0].code, "62013009")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ambulating patient (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Ambulation")
		XCTAssertEqual(inst.definition?[0].display, "Protocol for hypertension during pregnancy")
		XCTAssertEqual(inst.id, "ambulation")
		XCTAssertEqual(inst.identifier?[0].value, "45678")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.reasonReference?[0].display, "Blood Pressure")
		XCTAssertEqual(inst.reasonReference?[0].reference, "Observation/blood-pressure")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
