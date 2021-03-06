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
//  ProcedureTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class ProcedureTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testProcedure1() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-f201-tpf.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure1(_ inst: Procedure) {
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "272676008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Sphenoid bone")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "367336001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Chemotherapy")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.display, "Roel's encounter on January 28th, 2013")
		XCTAssertEqual(inst.context?.reference, "Encounter/f202")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.note?[0].text, "Eerste neo-adjuvante TPF-kuur bij groot proces in sphenoid met intracraniale uitbreiding.")
		XCTAssertEqual(inst.performedPeriod?.end?.description, "2013-01-28T14:27:00+01:00")
		XCTAssertEqual(inst.performedPeriod?.start?.description, "2013-01-28T13:31:00+01:00")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dokter Bronsig")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].code, "310512001")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].display, "Medical oncologist")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCode?[0].text, "DiagnosticReport/f201")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedure2() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-ambulation.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure2(_ inst: Procedure) {
		XCTAssertEqual(inst.basedOn?[0].display, "Maternity care plan")
		XCTAssertEqual(inst.basedOn?[0].reference, "CarePlan/preg")
		XCTAssertEqual(inst.code?.coding?[0].code, "62013009")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ambulating patient (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Ambulation")
		XCTAssertEqual(inst.definition?[0].display, "Protocol for hypertension during pregnancy")
		XCTAssertEqual(inst.id, "ambulation")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.display, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.notDone, true)
		XCTAssertEqual(inst.notDoneReason?.coding?[0].code, "398254007")
		XCTAssertEqual(inst.notDoneReason?.coding?[0].display, "  Pre-eclampsia (disorder)")
		XCTAssertEqual(inst.notDoneReason?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.notDoneReason?.text, "Pre-eclampsia")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Carla Espinosa")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f204")
		XCTAssertEqual(inst.performer?[0].onBehalfOf?.display, "University Medical Hospital")
		XCTAssertEqual(inst.performer?[0].onBehalfOf?.reference, "Organization/f001")
		XCTAssertEqual(inst.reasonReference?[0].display, "Blood Pressure")
		XCTAssertEqual(inst.reasonReference?[0].reference, "Observation/blood-pressure")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "suspended")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ambulation procedure was not done</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedure3() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-implant.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure3(_ inst: Procedure) {
		XCTAssertEqual(inst.code?.coding?[0].code, "25267002")
		XCTAssertEqual(inst.code?.coding?[0].display, "Insertion of intracardiac pacemaker (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Implant Pacemaker")
		XCTAssertEqual(inst.focalDevice?[0].action?.coding?[0].code, "implanted")
		XCTAssertEqual(inst.focalDevice?[0].action?.coding?[0].system, "http://hl7.org/fhir/device-action")
		XCTAssertEqual(inst.focalDevice?[0].manipulated?.reference, "Device/example-pacemaker")
		XCTAssertEqual(inst.followUp?[0].text, "ROS 5 days  - 2013-04-10")
		XCTAssertEqual(inst.id, "example-implant")
		XCTAssertEqual(inst.note?[0].text, "Routine Appendectomy. Appendix was inflamed and in retro-caecal position")
		XCTAssertEqual(inst.performedDateTime?.description, "2015-04-05")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.reasonCode?[0].text, "Bradycardia")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedure4() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-colon-biopsy.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure4(_ inst: Procedure) {
		XCTAssertEqual(inst.code?.coding?[0].code, "76164006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Biopsy of colon (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Biopsy of colon")
		XCTAssertEqual(inst.id, "colon-biopsy")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.display, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.notDone, false)
		XCTAssertEqual(inst.partOf?[0].display, "Colonoscopy")
		XCTAssertEqual(inst.partOf?[0].reference, "Procedure/colonoscopy")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Biopsy of colon, which was part of colonoscopy</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedure5() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-f004-tracheotomy.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure5(_ inst: Procedure) {
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "83030008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Retropharyngeal area")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "48387007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Tracheotomy")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f003")
		XCTAssertEqual(inst.followUp?[0].text, "described in care plan")
		XCTAssertEqual(inst.id, "f004")
		XCTAssertEqual(inst.outcome?.text, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst.performedPeriod?.end?.description, "2013-03-22T10:30:10+01:00")
		XCTAssertEqual(inst.performedPeriod?.start?.description, "2013-03-22T09:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].actor?.display, "A. Langeveld")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f005")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].system, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer?[0].role?.text, "Care role")
		XCTAssertEqual(inst.reasonCode?[0].text, "ensure breathing during surgery")
		XCTAssertEqual(inst.report?[0].display, "???????????")
		XCTAssertEqual(inst.report?[0].reference, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedure6() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-education.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure6(_ inst: Procedure) {
		XCTAssertEqual(inst.basedOn?[0].display, "Order for health education")
		XCTAssertEqual(inst.basedOn?[0].reference, "ProcedureRequest/education")
		XCTAssertEqual(inst.category?.coding?[0].code, "311401005")
		XCTAssertEqual(inst.category?.coding?[0].display, "Patient education (procedure)")
		XCTAssertEqual(inst.category?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.text, "Education")
		XCTAssertEqual(inst.code?.coding?[0].code, "48023004")
		XCTAssertEqual(inst.code?.coding?[0].display, "Breast self-examination technique education (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Health education - breast examination")
		XCTAssertEqual(inst.id, "education")
		XCTAssertEqual(inst.location?.display, "Southside Community Health Center")
		XCTAssertEqual(inst.performedDateTime?.description, "2014-08-16")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Pamela Educator, RN")
		XCTAssertEqual(inst.reasonCode?[0].text, "early detection of breast mass")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "Jane Doe")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Health education - breast examination for early detection of breast mass</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedure7() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-colonoscopy.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure7(_ inst: Procedure) {
		XCTAssertEqual(inst.code?.coding?[0].code, "73761001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Colonoscopy (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Colonoscopy")
		XCTAssertEqual(inst.complicationDetail?[0].display, "Perforated intestine condition")
		XCTAssertEqual(inst.id, "colonoscopy")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.display, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.notDone, false)
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Colonoscopy with complication</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.usedReference?[0].display, "Colonoscope device")
	}

	func testProcedure8() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-physical-therapy.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure8(_ inst: Procedure) {
		XCTAssertEqual(inst.basedOn?[0].display, "Order for the assessment of passive range of motion")
		XCTAssertEqual(inst.basedOn?[0].reference, "ProcedureRequest/physical-therapy")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "36701003")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Both knees (body structure)")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?[0].text, "Both knees")
		XCTAssertEqual(inst.category?.coding?[0].code, "386053000")
		XCTAssertEqual(inst.category?.coding?[0].display, "Evaluation procedure (procedure)")
		XCTAssertEqual(inst.category?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.text, "Evaluation")
		XCTAssertEqual(inst.code?.coding?[0].code, "710830005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Assessment of passive range of motion (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Assessment of passive range of motion")
		XCTAssertEqual(inst.id, "physical-therapy")
		XCTAssertEqual(inst.location?.display, "Sawbones Orthopedic Clinic")
		XCTAssertEqual(inst.performedDateTime?.description, "2016-09-27")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Paul Therapist, PT")
		XCTAssertEqual(inst.reasonCode?[0].text, "assessment of mobility limitations due to osteoarthritis")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Assessment of passive range of motion for both knees on Sept 27, 2016 due to osteoarthritis</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedure9() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example-f003-abscess.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure9(_ inst: Procedure) {
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "83030008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Retropharyngeal area")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "172960003")
		XCTAssertEqual(inst.code?.coding?[0].display, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f003")
		XCTAssertEqual(inst.followUp?[0].text, "described in care plan")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.outcome?.text, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst.performedPeriod?.end?.description, "2013-03-24T10:30:10+01:00")
		XCTAssertEqual(inst.performedPeriod?.start?.description, "2013-03-24T09:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].actor?.display, "E.M.J.M. van den broek")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f001")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].system, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer?[0].role?.text, "Care role")
		XCTAssertEqual(inst.reasonCode?[0].text, "abcess in retropharyngeal area")
		XCTAssertEqual(inst.report?[0].display, "Lab results blood test")
		XCTAssertEqual(inst.report?[0].reference, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProcedure10() {
        do {
            let data = try bundle.loadJSONData(named: "procedure-example.json")
            let instance = try decoder.decode(Procedure.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProcedure10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProcedure10(_ inst: Procedure) {
		XCTAssertEqual(inst.code?.coding?[0].code, "80146002")
		XCTAssertEqual(inst.code?.coding?[0].display, "Appendectomy (Procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Appendectomy")
		XCTAssertEqual(inst.followUp?[0].text, "ROS 5 days  - 2013-04-10")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.note?[0].text, "Routine Appendectomy. Appendix was inflamed and in retro-caecal position")
		XCTAssertEqual(inst.performedDateTime?.description, "2013-04-05")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.reasonCode?[0].text, "Generalized abdominal pain 24 hours. Localized in RIF with rebound and guarding")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Routine Appendectomy</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
