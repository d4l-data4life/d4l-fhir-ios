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
//  DocumentReferenceTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class DocumentReferenceTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testDocumentReference1() {
        do {
            let data = try bundle.loadJSONData(named: "documentreference-example.json")
            let instance = try decoder.decode(DocumentReference.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runDocumentReference1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runDocumentReference1(_ inst: DocumentReference) {
		XCTAssertEqual(inst.`class`?.coding?[0].code, "History and Physical")
		XCTAssertEqual(inst.`class`?.coding?[0].display, "History and Physical")
		XCTAssertEqual(inst.`class`?.coding?[0].system, "http://ihe.net/xds/connectathon/classCodes")
		XCTAssertEqual(inst.authenticator?.reference, "Organization/f001")
		XCTAssertEqual(inst.author?[0].reference, "Practitioner/xcda1")
		XCTAssertEqual(inst.author?[1].reference, "#a2")
		XCTAssertEqual(inst.contained?[0].id, "a2")
		XCTAssertEqual(inst.content?[0].attachment?.contentType, "application/hl7-v3+xml")
		XCTAssertEqual(inst.content?[0].attachment?.hash, "2jmj7l5rSw0yVb/vlWAYkK/YBwk=")
		XCTAssertEqual(inst.content?[0].attachment?.language, "en-US")
		XCTAssertEqual(inst.content?[0].attachment?.size, 3654)
		XCTAssertEqual(inst.content?[0].attachment?.url, "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510")
		XCTAssertEqual(inst.content?[0].format?.code, "urn:ihe:pcc:handp:2008")
		XCTAssertEqual(inst.content?[0].format?.display, "History and Physical Specification")
		XCTAssertEqual(inst.content?[0].format?.system, "urn:oid:1.3.6.1.4.1.19376.1.2.3")
		XCTAssertEqual(inst.context?.encounter?.reference, "Encounter/xcda")
		XCTAssertEqual(inst.context?.event?[0].coding?[0].code, "T-D8200")
		XCTAssertEqual(inst.context?.event?[0].coding?[0].display, "Arm")
		XCTAssertEqual(inst.context?.event?[0].coding?[0].system, "http://ihe.net/xds/connectathon/eventCodes")
		XCTAssertEqual(inst.context?.facilityType?.coding?[0].code, "Outpatient")
		XCTAssertEqual(inst.context?.facilityType?.coding?[0].display, "Outpatient")
		XCTAssertEqual(inst.context?.facilityType?.coding?[0].system, "http://www.ihe.net/xds/connectathon/healthcareFacilityTypeCodes")
		XCTAssertEqual(inst.context?.period?.end?.description, "2004-12-23T08:01:00+11:00")
		XCTAssertEqual(inst.context?.period?.start?.description, "2004-12-23T08:00:00+11:00")
		XCTAssertEqual(inst.context?.practiceSetting?.coding?[0].code, "General Medicine")
		XCTAssertEqual(inst.context?.practiceSetting?.coding?[0].display, "General Medicine")
		XCTAssertEqual(inst.context?.practiceSetting?.coding?[0].system, "http://www.ihe.net/xds/connectathon/practiceSettingCodes")
		XCTAssertEqual(inst.context?.related?[0].identifier?.system, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.context?.related?[0].identifier?.value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.2345")
		XCTAssertEqual(inst.context?.related?[0].ref?.reference, "Patient/xcda")
		XCTAssertEqual(inst.context?.sourcePatientInfo?.reference, "Patient/xcda")
		XCTAssertEqual(inst.created?.description, "2005-12-24T09:35:00+11:00")
		XCTAssertEqual(inst.custodian?.reference, "Organization/f001")
		XCTAssertEqual(inst.description_fhir, "Physical")
		XCTAssertEqual(inst.docStatus, CompositionStatus(rawValue: "preliminary")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234")
		XCTAssertEqual(inst.indexed?.description, "2005-12-24T09:43:41+11:00")
		XCTAssertEqual(inst.masterIdentifier?.system, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.masterIdentifier?.value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7")
		XCTAssertEqual(inst.relatesTo?[0].code, DocumentRelationshipType(rawValue: "appends")!)
		XCTAssertEqual(inst.relatesTo?[0].target?.reference, "DocumentReference/example")
		XCTAssertEqual(inst.securityLabel?[0].coding?[0].code, "V")
		XCTAssertEqual(inst.securityLabel?[0].coding?[0].display, "very restricted")
		XCTAssertEqual(inst.securityLabel?[0].coding?[0].system, "http://hl7.org/fhir/v3/Confidentiality")
		XCTAssertEqual(inst.status, DocumentReferenceStatus(rawValue: "current")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "34108-1")
		XCTAssertEqual(inst.type?.coding?[0].display, "Outpatient Note")
		XCTAssertEqual(inst.type?.coding?[0].system, "http://loinc.org")
	}
}
