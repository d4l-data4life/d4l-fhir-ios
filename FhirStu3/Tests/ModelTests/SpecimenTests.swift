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
//  SpecimenTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class SpecimenTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testSpecimen1() {
        do {
            let data = try bundle.loadJSONData(named: "specimen-example-isolate.json")
            let instance = try decoder.decode(Specimen.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSpecimen1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSpecimen1(_ inst: Specimen) {
		XCTAssertEqual(inst.accessionIdentifier?.system, "http://lab.acme.org/specimens/2011")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356-ISO1")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2015-08-16T07:03:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.collection?.method?.coding?[0].code, "BAP")
		XCTAssertEqual(inst.collection?.method?.coding?[0].system, "http://hl7.org/fhir/v2/0488")
		XCTAssertEqual(inst.contained?[0].id, "stool")
		XCTAssertEqual(inst.id, "isolate")
		XCTAssertEqual(inst.note?[0].text, "Patient dropped off specimen")
		XCTAssertEqual(inst.parent?[0].reference, "#stool")
		XCTAssertEqual(inst.receivedTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.status, SpecimenStatus(rawValue: "available")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "429951000124103")
		XCTAssertEqual(inst.type?.coding?[0].display, "Bacterial isolate specimen")
		XCTAssertEqual(inst.type?.coding?[0].system, "http://snomed.info/sct")
	}

	func testSpecimen2() {
        do {
            let data = try bundle.loadJSONData(named: "specimen-example-urine.json")
            let instance = try decoder.decode(Specimen.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSpecimen2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSpecimen2(_ inst: Specimen) {
		XCTAssertEqual(inst.accessionIdentifier?.system, "http://lab.acme.org/specimens/2015")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.id, "vma-urine")
		XCTAssertEqual(inst.processing?[0].additive?[0].display, "6 N HCl")
		XCTAssertEqual(inst.processing?[0].description_fhir, "Acidify to pH < 3.0 with 6 N HCl.")
		XCTAssertEqual(inst.processing?[0].procedure?.coding?[0].code, "ACID")
		XCTAssertEqual(inst.processing?[0].procedure?.coding?[0].system, "http://hl7.org/fhir/v2/0373")
		XCTAssertEqual(inst.processing?[0].timeDateTime?.description, "2015-08-18T08:10:00Z")
		XCTAssertEqual(inst.receivedTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.specimenContainer?[0].capacity?.unit, "mls")
		XCTAssertEqual(inst.specimenContainer?[0].capacity?.value, 50)
		XCTAssertEqual(inst.specimenContainer?[0].specimenQuantity?.unit, "mls")
		XCTAssertEqual(inst.specimenContainer?[0].specimenQuantity?.value, 10)
		XCTAssertEqual(inst.specimenContainer?[0].type?.text, "Non-sterile specimen container")
		XCTAssertEqual(inst.status, SpecimenStatus(rawValue: "available")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "RANDU")
		XCTAssertEqual(inst.type?.coding?[0].display, "Urine, Random")
		XCTAssertEqual(inst.type?.coding?[0].system, "http://hl7.org/fhir/v2/0487")
	}

	func testSpecimen3() {
        do {
            let data = try bundle.loadJSONData(named: "specimen-example-serum.json")
            let instance = try decoder.decode(Specimen.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSpecimen3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSpecimen3(_ inst: Specimen) {
		XCTAssertEqual(inst.accessionIdentifier?.system, "http://acme.com/labs/accession-ids")
		XCTAssertEqual(inst.accessionIdentifier?.value, "20150816-00124")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2015-08-16T06:40:17Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.id, "sst")
		XCTAssertEqual(inst.request?[0].reference, "ProcedureRequest/ft4")
		XCTAssertEqual(inst.specimenContainer?[0].type?.coding?[0].code, "SST")
		XCTAssertEqual(inst.specimenContainer?[0].type?.coding?[0].display, "Serum Separator Tube")
		XCTAssertEqual(inst.specimenContainer?[0].type?.coding?[0].system, "http://acme.com/labs")
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "119364003")
		XCTAssertEqual(inst.type?.coding?[0].display, "Serum sample")
		XCTAssertEqual(inst.type?.coding?[0].system, "http://snomed.info/sct")
	}

	func testSpecimen4() {
        do {
            let data = try bundle.loadJSONData(named: "specimen-example.json")
            let instance = try decoder.decode(Specimen.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runSpecimen4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runSpecimen4(_ inst: Specimen) {
		XCTAssertEqual(inst.accessionIdentifier?.system, "http://lab.acme.org/specimens/2011")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356")
		XCTAssertEqual(inst.collection?.bodySite?.coding?[0].code, "49852007")
		XCTAssertEqual(inst.collection?.bodySite?.coding?[0].display, "Structure of median cubital vein (body structure)")
		XCTAssertEqual(inst.collection?.bodySite?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.collection?.bodySite?.text, "Right median cubital vein")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2011-05-30T06:15:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/example")
		XCTAssertEqual(inst.collection?.method?.coding?[0].code, "LNV")
		XCTAssertEqual(inst.collection?.method?.coding?[0].system, "http://hl7.org/fhir/v2/0488")
		XCTAssertEqual(inst.collection?.quantity?.unit, "mL")
		XCTAssertEqual(inst.collection?.quantity?.value, 6)
		XCTAssertEqual(inst.contained?[0].id, "hep")
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.identifier?[0].system, "http://ehr.acme.org/identifiers/collections")
		XCTAssertEqual(inst.identifier?[0].value, "23234352356")
		XCTAssertEqual(inst.note?[0].text, "Specimen is grossly lipemic")
		XCTAssertEqual(inst.receivedTime?.description, "2011-03-04T07:03:00Z")
		XCTAssertEqual(inst.request?[0].reference, "ProcedureRequest/example")
		XCTAssertEqual(inst.specimenContainer?[0].additiveReference?.reference, "#hep")
		XCTAssertEqual(inst.specimenContainer?[0].capacity?.unit, "mL")
		XCTAssertEqual(inst.specimenContainer?[0].capacity?.value, 10)
		XCTAssertEqual(inst.specimenContainer?[0].description_fhir, "Green Gel tube")
		XCTAssertEqual(inst.specimenContainer?[0].identifier?[0].value, "48736-15394-75465")
		XCTAssertEqual(inst.specimenContainer?[0].specimenQuantity?.unit, "mL")
		XCTAssertEqual(inst.specimenContainer?[0].specimenQuantity?.value, 6)
		XCTAssertEqual(inst.specimenContainer?[0].type?.text, "Vacutainer")
		XCTAssertEqual(inst.status, SpecimenStatus(rawValue: "available")!)
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "122555007")
		XCTAssertEqual(inst.type?.coding?[0].display, "Venous blood specimen")
		XCTAssertEqual(inst.type?.coding?[0].system, "http://snomed.info/sct")
	}
}
