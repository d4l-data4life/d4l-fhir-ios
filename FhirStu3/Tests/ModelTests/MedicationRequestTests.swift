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
//  MedicationRequestTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class MedicationRequestTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testMedicationRequest1() {
        do {
            let data = try bundle.loadJSONData(named: "medicationrequestexample1.json")
            let instance = try decoder.decode(MedicationRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedicationRequest1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedicationRequest1(_ inst: MedicationRequest) {
		XCTAssertEqual(inst.authoredOn?.description, "2015-01-15")
		XCTAssertEqual(inst.contained?[0].id, "med0316")
		XCTAssertEqual(inst.context?.display, "encounter who leads to this prescription")
		XCTAssertEqual(inst.context?.reference, "Encounter/f001")
		XCTAssertEqual(inst.dispenseRequest?.expectedSupplyDuration?.code, "d")
		XCTAssertEqual(inst.dispenseRequest?.expectedSupplyDuration?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dispenseRequest?.expectedSupplyDuration?.unit, "days")
		XCTAssertEqual(inst.dispenseRequest?.expectedSupplyDuration?.value, 30)
		XCTAssertEqual(inst.dispenseRequest?.numberOfRepeatsAllowed, 1)
		XCTAssertEqual(inst.dispenseRequest?.quantity?.code, "TAB")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.system, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.unit, "TAB")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.value, 30)
		XCTAssertEqual(inst.dispenseRequest?.validityPeriod?.end?.description, "2016-01-15")
		XCTAssertEqual(inst.dispenseRequest?.validityPeriod?.start?.description, "2015-01-15")
		XCTAssertEqual(inst.dosageInstruction?[0].additionalInstruction?[0].coding?[0].code, "311504000")
		XCTAssertEqual(inst.dosageInstruction?[0].additionalInstruction?[0].coding?[0].display, "With or after food")
		XCTAssertEqual(inst.dosageInstruction?[0].additionalInstruction?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.code, "TAB")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.system, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.unit, "TAB")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.value, 1)
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].code, "421521009")
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].display, "Swallow - dosing instruction imperative (qualifier value)")
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].code, "26643006")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].display, "Oral Route")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].sequence, 1)
		XCTAssertEqual(inst.dosageInstruction?[0].text, "One tablet daily")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.code?.coding?[0].code, "QD")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.code?.coding?[0].display, "QD")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.code?.coding?[0].system, "http://hl7.org/fhir/v3/GTSAbbreviation")
		XCTAssertEqual(inst.id, "medrx0311")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345689")
		XCTAssertEqual(inst.intent, MedicationRequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.medicationReference?.reference, "#med0316")
		XCTAssertEqual(inst.note?[0].text, "Chlorthalidone increases urniation so take it in the morning")
		XCTAssertEqual(inst.reasonReference?[0].display, "condition for prescribing this medication")
		XCTAssertEqual(inst.reasonReference?[0].reference, "Condition/f201")
		XCTAssertEqual(inst.requester?.agent?.display, "Patrick Pump")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/f007")
		XCTAssertEqual(inst.requester?.onBehalfOf?.reference, "Organization/f002")
		XCTAssertEqual(inst.status, MedicationRequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Donald Duck")
		XCTAssertEqual(inst.subject?.reference, "Patient/pat1")
		XCTAssertEqual(inst.substitution?.allowed, true)
		XCTAssertEqual(inst.substitution?.reason?.coding?[0].code, "CT")
		XCTAssertEqual(inst.substitution?.reason?.coding?[0].display, "continuing therapy")
		XCTAssertEqual(inst.substitution?.reason?.coding?[0].system, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testMedicationRequest2() {
        do {
            let data = try bundle.loadJSONData(named: "medicationrequestexample2.json")
            let instance = try decoder.decode(MedicationRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runMedicationRequest2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runMedicationRequest2(_ inst: MedicationRequest) {
		XCTAssertEqual(inst.authoredOn?.description, "2015-03-01")
		XCTAssertEqual(inst.context?.display, "encounter that leads to this prescription")
		XCTAssertEqual(inst.context?.reference, "Encounter/f001")
		XCTAssertEqual(inst.dosageInstruction?[0].sequence, 1)
		XCTAssertEqual(inst.dosageInstruction?[0].text, "Take one tablet daily as directed")
		XCTAssertEqual(inst.id, "medrx002")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.intent, MedicationRequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.medicationReference?.display, "prescribed medication")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/med0316")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "59621000")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Essential hypertension (disorder)")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.requester?.agent?.display, "Patrick Pump")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/f007")
		XCTAssertEqual(inst.requester?.onBehalfOf?.reference, "Organization/f002")
		XCTAssertEqual(inst.status, MedicationRequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Donald Duck")
		XCTAssertEqual(inst.subject?.reference, "Patient/pat1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
