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
//  PractitionerTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
@testable import Data4LifeFHIR

class PractitionerTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testPractitioner1() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-f203-jvg.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner1(_ inst: Practitioner) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345678903")
		XCTAssertEqual(inst.identifier?[1].system, "https://www.bigregister.nl/")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BIG-nummer")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "12345678903")
		XCTAssertEqual(inst.name?[0].text, "Juri van Gelder")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner2() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-f201-ab.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner2(_ inst: Practitioner) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].line?[1], "C4 - Automatisering")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345678901")
		XCTAssertEqual(inst.name?[0].family, "Bronsig")
		XCTAssertEqual(inst.name?[0].given?[0], "Arend")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Dr.")
		XCTAssertEqual(inst.name?[0].text, "Dokter Bronsig")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].code, "41672002")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].display, "Pulmonologist")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner3() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-f202-lm.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner3(_ inst: Practitioner) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].line?[1], "C4 - Automatisering")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345678902")
		XCTAssertEqual(inst.identifier?[1].system, "https://www.bigregister.nl/")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BIG-nummer")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "12345678902")
		XCTAssertEqual(inst.name?[0].family, "Maas")
		XCTAssertEqual(inst.name?[0].given?[0], "Luigi")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Dr.")
		XCTAssertEqual(inst.name?[0].text, "Luigi Maas")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner4() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-xcda-author.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner4(_ inst: Practitioner) {
		XCTAssertEqual(inst.id, "xcda-author")
		XCTAssertEqual(inst.name?[0].family, "Hippocrates")
		XCTAssertEqual(inst.name?[0].given?[0], "Harold")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MD")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner5() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-f003-mv.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner5(_ inst: Practitioner) {
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "1105 AZ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.communication?[0].coding?[0].code, "nl")
		XCTAssertEqual(inst.communication?[0].coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].coding?[0].system, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "846100293")
		XCTAssertEqual(inst.identifier?[1].system, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[1].value, "243HID3RT938")
		XCTAssertEqual(inst.name?[0].family, "Versteegh")
		XCTAssertEqual(inst.name?[0].given?[0], "Marc")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MD")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "0205562431")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "m.versteegh@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[2].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[2].value, "0205662948")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner6() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-f002-pv.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner6(_ inst: Practitioner) {
		XCTAssertEqual(inst.address?[0].city, "Den Burg")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "730291637")
		XCTAssertEqual(inst.identifier?[1].system, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[1].value, "174BIP3JH438")
		XCTAssertEqual(inst.name?[0].family, "Voigt")
		XCTAssertEqual(inst.name?[0].given?[0], "Pieter")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MD")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "0205569336")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "p.voigt@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[2].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[2].value, "0205669382")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner7() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner7(_ inst: Practitioner) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "PleasantVille")
		XCTAssertEqual(inst.address?[0].line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.address?[0].postalCode, "3999")
		XCTAssertEqual(inst.address?[0].state, "Vic")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.acme.org/practitioners")
		XCTAssertEqual(inst.identifier?[0].value, "23")
		XCTAssertEqual(inst.name?[0].family, "Careful")
		XCTAssertEqual(inst.name?[0].given?[0], "Adam")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Dr")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].code, "BS")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].display, "Bachelor of Science")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].system, "http://hl7.org/fhir/v2/0360/2.7")
		XCTAssertEqual(inst.qualification?[0].code?.text, "Bachelor of Science")
		XCTAssertEqual(inst.qualification?[0].identifier?[0].system, "http://example.org/UniversityIdentifier")
		XCTAssertEqual(inst.qualification?[0].identifier?[0].value, "12345")
		XCTAssertEqual(inst.qualification?[0].issuer?.display, "Example University")
		XCTAssertEqual(inst.qualification?[0].period?.start?.description, "1995")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner8() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-f007-sh.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner8(_ inst: Practitioner) {
		XCTAssertEqual(inst.address?[0].city, "Den Burg")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "f007")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "874635264")
		XCTAssertEqual(inst.identifier?[1].system, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[1].value, "567IUI51C154")
		XCTAssertEqual(inst.name?[0].family, "Heps")
		XCTAssertEqual(inst.name?[0].given?[0], "Simone")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MD")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "020556936")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "S.M.Heps@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[2].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[2].value, "0205669283")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner9() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-f204-ce.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner9(_ inst: Practitioner) {
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345678904")
		XCTAssertEqual(inst.name?[0].text, "Carla Espinosa")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715262169")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPractitioner10() {
        do {
            let data = try bundle.loadJSONData(named: "practitioner-example-xcda1.json")
            let instance = try decoder.decode(Practitioner.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPractitioner10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPractitioner10(_ inst: Practitioner) {
		XCTAssertEqual(inst.id, "xcda1")
		XCTAssertEqual(inst.identifier?[0].system, "http://healthcare.example.org/identifiers/staff")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "D234123")
		XCTAssertEqual(inst.name?[0].family, "Dopplemeyer")
		XCTAssertEqual(inst.name?[0].given?[0], "Sherry")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[0].value, "john.doe@healthcare.example.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
