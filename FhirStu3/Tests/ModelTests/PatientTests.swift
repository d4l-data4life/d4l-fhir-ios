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
//  PatientTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class PatientTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testPatient1() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example-xds.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient1(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Metropolis")
		XCTAssertEqual(inst.address?[0].country, "USA")
		XCTAssertEqual(inst.address?[0].line?[0], "100 Main St")
		XCTAssertEqual(inst.address?[0].postalCode, "44130")
		XCTAssertEqual(inst.address?[0].state, "Il")
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "xds")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:1.2.3.4.5")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "89765a87b")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/2")
		XCTAssertEqual(inst.name?[0].family, "Doe")
		XCTAssertEqual(inst.name?[0].given?[0], "John")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient2() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example-f001-pieter.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient2(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Van Egmondkade 23")
		XCTAssertEqual(inst.address?[0].postalCode, "1024 RJ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].code, "nl")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].system, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.communication?[0].language?.text, "Nederlands")
		XCTAssertEqual(inst.communication?[0].preferred, true)
		XCTAssertEqual(inst.contact?[0].name?.family, "Abels")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Sarah")
		XCTAssertEqual(inst.contact?[0].name?.use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "C")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system, "http://hl7.org/fhir/v2/0131")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "0690383372")
		XCTAssertEqual(inst.deceasedBoolean, false)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "738472983")
		XCTAssertEqual(inst.identifier?[1].system, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.managingOrganization?.display, "Burgers University Medical Centre")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].code, "M")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].display, "Married")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].system, "http://hl7.org/fhir/v3/MaritalStatus")
		XCTAssertEqual(inst.maritalStatus?.text, "Getrouwd")
		XCTAssertEqual(inst.multipleBirthBoolean, true)
		XCTAssertEqual(inst.name?[0].family, "van de Heuvel")
		XCTAssertEqual(inst.name?[0].given?[0], "Pieter")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MSc")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.telecom?[0].value, "0648352638")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[1].value, "p.heuvel@gmail.com")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient3() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example-d.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient3(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.deceasedBoolean, true)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "pat4")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123458")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "Notsowell")
		XCTAssertEqual(inst.name?[0].given?[0], "Sandy")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient4() {
        do {
            let data = try bundle.loadJSONData(named: "patient-genetics-example1.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient4(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].line?[0], "2222 Home Street")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "genetics-example1")
		XCTAssertEqual(inst.identifier?[0].system, "http://hl7.org/fhir/sid/us-ssn")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "SS")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].value, "444222222")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/hl7")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.name?[0].family, "Everywoman")
		XCTAssertEqual(inst.name?[0].given?[0], "Eve")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "555-555-2003")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient5() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example-b.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient5(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "other")!)
		XCTAssertEqual(inst.id, "pat2")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123456")
		XCTAssertEqual(inst.link?[0].other?.reference, "Patient/pat1")
		XCTAssertEqual(inst.link?[0].type, LinkType(rawValue: "seealso")!)
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "Donald")
		XCTAssertEqual(inst.name?[0].given?[0], "Duck")
		XCTAssertEqual(inst.name?[0].given?[1], "D")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.photo?[0].contentType, "image/gif")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient6() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example-c.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient6(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.deceasedDateTime?.description, "2015-02-14T13:42:00+10:00")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "pat3")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123457")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "Notsowell")
		XCTAssertEqual(inst.name?[0].given?[0], "Simon")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient7() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example-ihe-pcd.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient7(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.id, "ihe-pcd")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Internal Identifier")
		XCTAssertEqual(inst.identifier?[0].value, "AB60001")
		XCTAssertEqual(inst.name?[0].family, "BROOKS")
		XCTAssertEqual(inst.name?[0].given?[0], "ALBERT")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Albert Brooks, Id: AB60001</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient8() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient8(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "PleasantVille")
		XCTAssertEqual(inst.address?[0].district, "Rainbow")
		XCTAssertEqual(inst.address?[0].line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.address?[0].period?.start?.description, "1974-12-25")
		XCTAssertEqual(inst.address?[0].postalCode, "3999")
		XCTAssertEqual(inst.address?[0].state, "Vic")
		XCTAssertEqual(inst.address?[0].text, "534 Erewhon St PeasantVille, Rainbow, Vic  3999")
		XCTAssertEqual(inst.address?[0].type, AddressType(rawValue: "both")!)
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.contact?[0].address?.city, "PleasantVille")
		XCTAssertEqual(inst.contact?[0].address?.district, "Rainbow")
		XCTAssertEqual(inst.contact?[0].address?.line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.contact?[0].address?.period?.start?.description, "1974-12-25")
		XCTAssertEqual(inst.contact?[0].address?.postalCode, "3999")
		XCTAssertEqual(inst.contact?[0].address?.state, "Vic")
		XCTAssertEqual(inst.contact?[0].address?.type, AddressType(rawValue: "both")!)
		XCTAssertEqual(inst.contact?[0].address?.use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.contact?[0].gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.contact?[0].name?.family, "du Marché")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Bénédicte")
		XCTAssertEqual(inst.contact?[0].period?.start?.description, "2012")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "N")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system, "http://hl7.org/fhir/v2/0131")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+33 (237) 998327")
		XCTAssertEqual(inst.deceasedBoolean, false)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Acme Healthcare")
		XCTAssertEqual(inst.identifier?[0].period?.start?.description, "2001-05-06")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:1.2.36.146.595.217.0.1")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "Chalmers")
		XCTAssertEqual(inst.name?[0].given?[0], "Peter")
		XCTAssertEqual(inst.name?[0].given?[1], "James")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.name?[1].given?[0], "Jim")
		XCTAssertEqual(inst.name?[1].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.name?[2].family, "Windsor")
		XCTAssertEqual(inst.name?[2].given?[0], "Peter")
		XCTAssertEqual(inst.name?[2].given?[1], "James")
		XCTAssertEqual(inst.name?[2].period?.end?.description, "2002")
		XCTAssertEqual(inst.name?[2].use, NameUse(rawValue: "maiden")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[1].rank, 1)
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "(03) 5555 6473")
		XCTAssertEqual(inst.telecom?[2].rank, 2)
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[2].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.telecom?[2].value, "(03) 3410 5613")
		XCTAssertEqual(inst.telecom?[3].period?.end?.description, "2014")
		XCTAssertEqual(inst.telecom?[3].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[3].use, ContactPointUse(rawValue: "old")!)
		XCTAssertEqual(inst.telecom?[3].value, "(03) 5555 8834")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient9() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example-proband.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient9(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.deceasedBoolean, false)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "proband")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Boston Massachesetts General Hospital")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.840.1.113883.6.117")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Computer-Stored Abulatory Records (COSTAR)")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "999999999")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testPatient10() {
        do {
            let data = try bundle.loadJSONData(named: "patient-example-f201-roel.json")
            let instance = try decoder.decode(Patient.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runPatient10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runPatient10(_ inst: Patient) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Bos en Lommerplein 280")
		XCTAssertEqual(inst.address?[0].postalCode, "1055RW")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		// Don't know how to create unit test for "birthDate", which is a FHIRDate
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].code, "nl-NL")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].system, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.communication?[0].preferred, true)
		XCTAssertEqual(inst.contact?[0].name?.text, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.contact?[0].name?.use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "127850001")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].display, "Wife")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].code, "N")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].system, "http://hl7.org/fhir/v2/0131")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[2].code, "WIFE")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[2].system, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+31201234567")
		XCTAssertEqual(inst.deceasedBoolean, false)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[0].type?.text, "BSN")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "123456789")
		XCTAssertEqual(inst.identifier?[1].system, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BSN")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "123456789")
		XCTAssertEqual(inst.managingOrganization?.display, "AUMC")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f201")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].code, "36629006")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].display, "Legally married")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.maritalStatus?.coding?[1].code, "M")
		XCTAssertEqual(inst.maritalStatus?.coding?[1].system, "http://hl7.org/fhir/v3/MaritalStatus")
		XCTAssertEqual(inst.multipleBirthBoolean, false)
		XCTAssertEqual(inst.name?[0].family, "Bor")
		XCTAssertEqual(inst.name?[0].given?[0], "Roelof Olaf")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Drs.")
		XCTAssertEqual(inst.name?[0].suffix?[0], "PDEng.")
		XCTAssertEqual(inst.name?[0].text, "Roel")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.photo?[0].url, "Binary/f006")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31612345678")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[1].value, "+31201234567")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}
}
