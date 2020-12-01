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
//  ReferralRequestTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
@testable import Data4LifeFHIR

class ReferralRequestTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testReferralRequest1() {
        do {
            let data = try bundle.loadJSONData(named: "referralrequest-example.json")
            let instance = try decoder.decode(ReferralRequest.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runReferralRequest1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runReferralRequest1(_ inst: ReferralRequest) {
		XCTAssertEqual(inst.authoredOn?.description, "2014-02-14")
		XCTAssertEqual(inst.basedOn?[0].display, "ProcedureRequest for Myringotomy and insertion of tympanic ventilation tube")
		XCTAssertEqual(inst.context?.display, "Beverly Waver's encounter on 2014-02-14")
		XCTAssertEqual(inst.definition?[0].display, "Protocol for insertion of tympanic ventilation tube")
		XCTAssertEqual(inst.description_fhir, "In the past 2 years Beverly has had 6 instances of r) sided Otitis media. She is     falling behind her peers at school, and displaying some learning difficulties.")
		XCTAssertEqual(inst.groupIdentifier?.value, "1234")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system, "http://orionhealth.com/fhir/apps/referralids")
		XCTAssertEqual(inst.identifier?[0].value, "ret4421")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrencePeriod?.end?.description, "2014-03-14")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reasonCode?[0].text, "For consideration of Grommets")
		XCTAssertEqual(inst.recipient?[0].display, "Dr Dave")
		XCTAssertEqual(inst.recipient?[0].reference, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/76597")
		XCTAssertEqual(inst.replaces?[0].display, "prior ReferralRequest")
		XCTAssertEqual(inst.requester?.agent?.display, "Serena Shrink")
		XCTAssertEqual(inst.requester?.agent?.reference, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/77272")
		XCTAssertEqual(inst.serviceRequested?[0].coding?[0].code, "172676009")
		XCTAssertEqual(inst.serviceRequested?[0].coding?[0].display, "Myringotomy and insertion of tympanic ventilation tube")
		XCTAssertEqual(inst.serviceRequested?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceRequested?[0].text, "Insertion of grommets")
		XCTAssertEqual(inst.specialty?.coding?[0].code, "ent")
		XCTAssertEqual(inst.specialty?.coding?[0].display, "ENT")
		XCTAssertEqual(inst.specialty?.coding?[0].system, "http://orionhealth.com/fhir/apps/specialties")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Beverly Weaver")
		XCTAssertEqual(inst.subject?.reference, "https://fhir.orionhealth.com/blaze/fhir/Patient/77662")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Referral to Dr Dave for Beverly weaver to have grommets inserted in her r) ear</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "103696004")
		XCTAssertEqual(inst.type?.coding?[0].display, "Patient referral to specialist")
		XCTAssertEqual(inst.type?.coding?[0].system, "http://snomed.info/sct")
	}
}
