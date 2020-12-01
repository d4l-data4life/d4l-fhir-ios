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
//  OrganizationTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
@testable import Data4LifeFHIR

class OrganizationTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testOrganization1() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization1(_ inst: Organization) {
		XCTAssertEqual(inst.address?[0].city, "Ann Arbor")
		XCTAssertEqual(inst.address?[0].country, "USA")
		XCTAssertEqual(inst.address?[0].line?[0], "3300 Washtenaw Avenue, Suite 227")
		XCTAssertEqual(inst.address?[0].postalCode, "48104")
		XCTAssertEqual(inst.address?[0].state, "MI")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/organization-alias")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "HL7 International")
		XCTAssertEqual(inst.id, "hl7")
		XCTAssertEqual(inst.name, "Health Level Seven International")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].value, "(+1) 734-677-7777")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[1].value, "(+1) 734-677-6622")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[2].value, "hq@HL7.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testOrganization2() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-mmanu.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization2(_ inst: Organization) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].country, "Swizterland")
		XCTAssertEqual(inst.id, "mmanu")
		XCTAssertEqual(inst.name, "Acme Corporation")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testOrganization3() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-gastro.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization3(_ inst: Organization) {
		XCTAssertEqual(inst.id, "1")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.acme.org.au/units")
		XCTAssertEqual(inst.identifier?[0].value, "Gastro")
		XCTAssertEqual(inst.name, "Gastroenterology")
		XCTAssertEqual(inst.partOf?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.partOf?.reference, "Organization/1")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.telecom?[0].value, "+1 555 234 3523")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "gastro@acme.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testOrganization4() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-lab.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization4(_ inst: Organization) {
		XCTAssertEqual(inst.id, "1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.acme.org.au/units")
		XCTAssertEqual(inst.identifier?[0].value, "ClinLab")
		XCTAssertEqual(inst.name, "Clinical Lab")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+1 555 234 1234")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "contact@labs.acme.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testOrganization5() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-f002-burgers-card.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization5(_ inst: Organization) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].line?[0], "South Wing, floor 2")
		XCTAssertEqual(inst.contact?[0].address?.line?[0], "South Wing, floor 2")
		XCTAssertEqual(inst.contact?[0].name?.text, "mevr. D. de Haan")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].code, "ADMIN")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].system, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "022-655 2321")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "cardio@burgersumc.nl")
		XCTAssertEqual(inst.contact?[0].telecom?[2].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.contact?[0].telecom?[2].value, "022-655 2322")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.name, "Burgers UMC Cardiology unit")
		XCTAssertEqual(inst.partOf?.reference, "Organization/f001")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].value, "022-655 2320")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "dept")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Hospital Department")
		XCTAssertEqual(inst.type?[0].coding?[0].system, "http://hl7.org/fhir/organization-type")
	}

	func testOrganization6() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-f201-aumc.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization6(_ inst: Organization) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Den Helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].address?.city, "Den helder")
		XCTAssertEqual(inst.contact?[0].address?.country, "NLD")
		XCTAssertEqual(inst.contact?[0].address?.line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.contact?[0].address?.line?[1], "Gebouw 2")
		XCTAssertEqual(inst.contact?[0].address?.postalCode, "2333ZA")
		XCTAssertEqual(inst.contact?[0].name?.family, "Brand")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Ronald")
		XCTAssertEqual(inst.contact?[0].name?.prefix?[0], "Prof.Dr.")
		XCTAssertEqual(inst.contact?[0].name?.text, "Professor Brand")
		XCTAssertEqual(inst.contact?[0].name?.use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+31715269702")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "Artis University Medical Center")
		XCTAssertEqual(inst.name, "Artis University Medical Center (AUMC)")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "405608006")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Academic Medical Center")
		XCTAssertEqual(inst.type?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.type?[0].coding?[1].code, "V6")
		XCTAssertEqual(inst.type?[0].coding?[1].display, "University Medical Hospital")
		XCTAssertEqual(inst.type?[0].coding?[1].system, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst.type?[0].coding?[2].code, "prov")
		XCTAssertEqual(inst.type?[0].coding?[2].display, "Healthcare Provider")
		XCTAssertEqual(inst.type?[0].coding?[2].system, "http://hl7.org/fhir/organization-type")
	}

	func testOrganization7() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-good-health-care.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization7(_ inst: Organization) {
		XCTAssertEqual(inst.id, "2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.identifier?[0].system, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.name, "Good Health Clinic")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testOrganization8() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-f001-burgers.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization8(_ inst: Organization) {
		XCTAssertEqual(inst.address?[0].city, "Den Burg")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.address?[1].city, "Den Burg")
		XCTAssertEqual(inst.address?[1].country, "NLD")
		XCTAssertEqual(inst.address?[1].line?[0], "PO Box 2311")
		XCTAssertEqual(inst.address?[1].postalCode, "9100 AA")
		XCTAssertEqual(inst.address?[1].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].code, "PRESS")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].system, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "022-655 2334")
		XCTAssertEqual(inst.contact?[1].purpose?.coding?[0].code, "PATINF")
		XCTAssertEqual(inst.contact?[1].purpose?.coding?[0].system, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact?[1].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[1].telecom?[0].value, "022-655 2335")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.528.1")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "91654")
		XCTAssertEqual(inst.identifier?[1].system, "urn:oid:2.16.840.1.113883.2.4.6.1")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[1].value, "17-0112278")
		XCTAssertEqual(inst.name, "Burgers University Medical Center")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "022-655 2300")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "V6")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "University Medical Hospital")
		XCTAssertEqual(inst.type?[0].coding?[0].system, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst.type?[0].coding?[1].code, "prov")
		XCTAssertEqual(inst.type?[0].coding?[1].display, "Healthcare Provider")
		XCTAssertEqual(inst.type?[0].coding?[1].system, "http://hl7.org/fhir/organization-type")
	}

	func testOrganization9() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-insurer.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization9(_ inst: Organization) {
		XCTAssertEqual(inst.alias?[0], "ABC Insurance")
		XCTAssertEqual(inst.id, "2")
		XCTAssertEqual(inst.identifier?[0].system, "urn:oid:2.16.840.1.113883.3.19.2.3")
		XCTAssertEqual(inst.identifier?[0].value, "666666")
		XCTAssertEqual(inst.name, "XYZ Insurance")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
	}

	func testOrganization10() {
        do {
            let data = try bundle.loadJSONData(named: "organization-example-f203-bumc.json")
            let instance = try decoder.decode(Organization.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runOrganization10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runOrganization10(_ inst: Organization) {
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Blijdorp")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "apenrots 230")
		XCTAssertEqual(inst.address?[0].postalCode, "3056BE")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].system, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Zorginstelling naam")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "Blijdorp MC")
		XCTAssertEqual(inst.name, "Blijdorp Medisch Centrum (BUMC)")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31107040704")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "405608006")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Academic Medical Center")
		XCTAssertEqual(inst.type?[0].coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.type?[0].coding?[1].code, "prov")
		XCTAssertEqual(inst.type?[0].coding?[1].system, "http://hl7.org/fhir/organization-type")
	}
}
