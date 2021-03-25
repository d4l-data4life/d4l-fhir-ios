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
//  ProvenanceTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class ProvenanceTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testProvenance1() {
        do {
            let data = try bundle.loadJSONData(named: "provenance-example-sig.json")
            let instance = try decoder.decode(Provenance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProvenance1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProvenance1(_ inst: Provenance) {
		XCTAssertEqual(inst.activity?.code, "AU")
		XCTAssertEqual(inst.activity?.display, "authenticated")
		XCTAssertEqual(inst.activity?.system, "http://hl7.org/fhir/v3/DocumentCompletion")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].code, "VERF")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].system, "http://www.hl7.org/fhir/contractsignertypecodes")
		XCTAssertEqual(inst.agent?[0].whoUri, "mailto://hhd@ssa.gov")
		XCTAssertEqual(inst.id, "signature")
		XCTAssertEqual(inst.reason?[0].code, "TREAT")
		XCTAssertEqual(inst.reason?[0].display, "treatment")
		XCTAssertEqual(inst.reason?[0].system, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.recorded?.description, "2015-08-27T08:39:24+10:00")
		XCTAssertEqual(inst.signature?[0].blob, "Li4u")
		XCTAssertEqual(inst.signature?[0].contentType, "application/signature+xml")
		XCTAssertEqual(inst.signature?[0].type?[0].code, "1.2.840.10065.1.12.1.5")
		XCTAssertEqual(inst.signature?[0].type?[0].display, "Verification Signature")
		XCTAssertEqual(inst.signature?[0].type?[0].system, "urn:iso-astm:E1762-95:2013")
		XCTAssertEqual(inst.signature?[0].when?.description, "2015-08-27T08:39:24+10:00")
		XCTAssertEqual(inst.signature?[0].whoReference?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.target?[0].reference, "DocumentReference/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">procedure record authored on 27-June 2015 by Harold Hippocrates, MD Content extracted from Referral received 26-June</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProvenance2() {
        do {
            let data = try bundle.loadJSONData(named: "provenance-example-cwl.json")
            let instance = try decoder.decode(Provenance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProvenance2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProvenance2(_ inst: Provenance) {
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].code, "AUT")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].system, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.agent?[0].whoReference?.reference, "Patient/example")
		XCTAssertEqual(inst.entity?[0].role, ProvenanceEntityRole(rawValue: "source")!)
		XCTAssertEqual(inst.entity?[0].whatIdentifier?.type?.coding?[0].code, "CWL")
		XCTAssertEqual(inst.entity?[0].whatIdentifier?.type?.coding?[0].display, "lobSTR")
		XCTAssertEqual(inst.entity?[0].whatIdentifier?.type?.coding?[0].system, "https://github.com/common-workflow-language/workflows")
		XCTAssertEqual(inst.entity?[0].whatIdentifier?.value, "https://github.com/common-workflow-language/workflows/blob/master/workflows/lobSTR/lobSTR-workflow.cwl")
		XCTAssertEqual(inst.id, "example-cwl")
		XCTAssertEqual(inst.period?.start?.description, "2016-11-30")
		XCTAssertEqual(inst.reason?[0].display, "profiling Short Tandem Repeats (STRs) from high throughput sequencing data.")
		XCTAssertEqual(inst.recorded?.description, "2016-12-01T08:12:14+10:00")
		XCTAssertEqual(inst.target?[0].reference, "Sequence/example-pgx-1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProvenance3() {
        do {
            let data = try bundle.loadJSONData(named: "provenance-example-biocompute-object.json")
            let instance = try decoder.decode(Provenance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProvenance3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProvenance3(_ inst: Provenance) {
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].code, "AUT")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].system, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.agent?[0].whoReference?.reference, "Practitioner/example")
		XCTAssertEqual(inst.entity?[0].role, ProvenanceEntityRole(rawValue: "source")!)
		XCTAssertEqual(inst.entity?[0].whatIdentifier?.type?.coding?[0].code, "biocompute")
		XCTAssertEqual(inst.entity?[0].whatIdentifier?.type?.coding?[0].display, "obj.1001")
		XCTAssertEqual(inst.entity?[0].whatIdentifier?.type?.coding?[0].system, "https://hive.biochemistry.gwu.edu")
		XCTAssertEqual(inst.entity?[0].whatIdentifier?.value, "https://hive.biochemistry.gwu.edu/cgi-bin/prd/htscsrs/servlet.cgi?pageid=bcoexample_1")
		XCTAssertEqual(inst.id, "example-biocompute-object")
		XCTAssertEqual(inst.period?.start?.description, "2017-06-06")
		XCTAssertEqual(inst.reason?[0].display, "antiviral resistance detection")
		XCTAssertEqual(inst.recorded?.description, "2016-06-09T08:12:14+10:00")
		XCTAssertEqual(inst.target?[0].reference, "Sequence/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testProvenance4() {
        do {
            let data = try bundle.loadJSONData(named: "provenance-example.json")
            let instance = try decoder.decode(Provenance.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runProvenance4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runProvenance4(_ inst: Provenance) {
		XCTAssertEqual(inst.agent?[0].onBehalfOfUri, "#a1")
		XCTAssertEqual(inst.agent?[0].relatedAgentType?.text, "used")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].code, "AUT")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].system, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.agent?[0].whoReference?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.agent?[1].id, "a1")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].code, "DEV")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].system, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.agent?[1].whoReference?.reference, "Device/software")
		XCTAssertEqual(inst.entity?[0].role, ProvenanceEntityRole(rawValue: "source")!)
		XCTAssertEqual(inst.entity?[0].whatReference?.display, "CDA Document in XDS repository")
		XCTAssertEqual(inst.entity?[0].whatReference?.reference, "DocumentReference/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.period?.end?.description, "2015-06-28")
		XCTAssertEqual(inst.period?.start?.description, "2015-06-27")
		XCTAssertEqual(inst.policy?[0], "http://acme.com/fhir/Consent/25")
		XCTAssertEqual(inst.reason?[0].code, "3457005")
		XCTAssertEqual(inst.reason?[0].display, "Referral")
		XCTAssertEqual(inst.reason?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.recorded?.description, "2015-06-27T08:39:24+10:00")
		XCTAssertEqual(inst.target?[0].reference, "Procedure/example/_history/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">procedure record authored on 27-June 2015 by Harold Hippocrates, MD Content extracted from XDS managed CDA Referral received 26-June</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
