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
//  ValueSetTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class ValueSetTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testValueSet1() {
        do {
            let data = try bundle.loadJSONData(named: "valueset-example.json")
            let instance = try decoder.decode(ValueSet.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runValueSet1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runValueSet1(_ inst: ValueSet) {
		XCTAssertEqual(inst.compose?.inactive, true)
		XCTAssertEqual(inst.compose?.include?[0].concept?[0].code, "14647-2")
		XCTAssertEqual(inst.compose?.include?[0].concept?[0].display, "Cholesterol [Moles/Volume]")
		XCTAssertEqual(inst.compose?.include?[0].concept?[1].code, "2093-3")
		XCTAssertEqual(inst.compose?.include?[0].concept?[1].display, "Cholesterol [Mass/Volume]")
		XCTAssertEqual(inst.compose?.include?[0].concept?[2].code, "35200-5")
		XCTAssertEqual(inst.compose?.include?[0].concept?[2].display, "Cholesterol [Mass Or Moles/Volume]")
		XCTAssertEqual(inst.compose?.include?[0].concept?[3].code, "9342-7")
		XCTAssertEqual(inst.compose?.include?[0].concept?[3].display, "Cholesterol [Percentile]")
		XCTAssertEqual(inst.compose?.include?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.compose?.include?[0].version, "2.36")
		// Don't know how to create unit test for "compose?.lockedDate", which is a FHIRDate
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINC ® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use.")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-extensional")
		XCTAssertEqual(inst.identifier?[0].system, "http://acme.com/identifiers/valuesets")
		XCTAssertEqual(inst.identifier?[0].value, "loinc-cholesterol-int")
		XCTAssertEqual(inst.meta?.profile?[0], "http://hl7.org/fhir/StructureDefinition/shareablevalueset")
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/ValueSet/example-extensional")
		XCTAssertEqual(inst.version, "20150622")
	}

	func testValueSet2() {
        do {
            let data = try bundle.loadJSONData(named: "valueset-example-expansion.json")
            let instance = try decoder.decode(ValueSet.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runValueSet2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runValueSet2(_ inst: ValueSet) {
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, FilterOperator(rawValue: "=")!)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "parent")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "LP43571-6")
		XCTAssertEqual(inst.compose?.include?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use.")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertEqual(inst.expansion?.contains?[0].code, "14647-2")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "Cholesterol [Moles/volume] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[0].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[1].abstract, true)
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].code, "2093-3")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].display, "Cholesterol [Mass/volume] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].code, "48620-9")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].display, "Cholesterol [Mass/volume] in Serum or Plasma ultracentrifugate")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].system, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[2].code, "9342-7")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[2].display, "Cholesterol [Percentile]")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[2].system, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[2].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[1].display, "Cholesterol codes")
		XCTAssertEqual(inst.expansion?.contains?[2].abstract, true)
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].code, "2096-6")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].display, "Cholesterol/Triglyceride [Mass Ratio] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].code, "35200-5")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].display, "Cholesterol/Triglyceride [Mass Ratio] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].system, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].code, "48089-7")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].display, "Cholesterol/Apolipoprotein B [Molar ratio] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].system, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[3].code, "55838-7")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[3].display, "Cholesterol/Phospholipid [Molar ratio] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[3].system, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[3].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[2].display, "Cholesterol Ratios")
		XCTAssertEqual(inst.expansion?.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/valueset-expansionSource")
		XCTAssertEqual(inst.expansion?.extension_fhir?[0].valueUri, "http://hl7.org/fhir/ValueSet/example-extensional")
		XCTAssertEqual(inst.expansion?.identifier, "urn:uuid:42316ff8-2714-4680-9980-f37a6d1a71bc")
		XCTAssertEqual(inst.expansion?.offset, 0)
		XCTAssertEqual(inst.expansion?.parameter?[0].name, "version")
		XCTAssertEqual(inst.expansion?.parameter?[0].valueString, "2.50")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2015-06-22T13:56:07Z")
		XCTAssertEqual(inst.expansion?.total, 8)
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-expansion")
		XCTAssertEqual(inst.meta?.profile?[0], "http://hl7.org/fhir/StructureDefinition/shareablevalueset")
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "FHIR Project team")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/ValueSet/example-expansion")
		XCTAssertEqual(inst.version, "20150622")
	}

	func testValueSet3() {
        do {
            let data = try bundle.loadJSONData(named: "valueset-example-inactive.json")
            let instance = try decoder.decode(ValueSet.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runValueSet3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runValueSet3(_ inst: ValueSet) {
		XCTAssertEqual(inst.compose?.inactive, true)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, FilterOperator(rawValue: "descendent-of")!)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "concept")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "_ActMoodPredicate")
		XCTAssertEqual(inst.compose?.include?[0].system, "http://hl7.org/fhir/v3/ActMood")
		XCTAssertEqual(inst.description_fhir, "HL7 v3 ActMood Prdicate codes, including inactive codes")
		XCTAssertEqual(inst.expansion?.contains?[0].code, "CRT")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "criterion")
		XCTAssertEqual(inst.expansion?.contains?[0].inactive, true)
		XCTAssertEqual(inst.expansion?.contains?[0].system, "http://hl7.org/fhir/v3/ActMood")
		XCTAssertEqual(inst.expansion?.contains?[1].code, "EXPEC")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].code, "GOL")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].display, "goal")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].system, "http://hl7.org/fhir/v3/ActMood")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].code, "RSK")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].display, "risk")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].system, "http://hl7.org/fhir/v3/ActMood")
		XCTAssertEqual(inst.expansion?.contains?[1].display, "expectation")
		XCTAssertEqual(inst.expansion?.contains?[1].system, "http://hl7.org/fhir/v3/ActMood")
		XCTAssertEqual(inst.expansion?.contains?[2].code, "OPT")
		XCTAssertEqual(inst.expansion?.contains?[2].display, "option")
		XCTAssertEqual(inst.expansion?.contains?[2].system, "http://hl7.org/fhir/v3/ActMood")
		XCTAssertEqual(inst.expansion?.identifier, "urn:uuid:46c00b3f-003a-4f31-9d4b-ea2de58b2a99")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2017-02-26T10:00:00Z")
		XCTAssertEqual(inst.id, "inactive")
		XCTAssertEqual(inst.name, "Example-inactive")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Example with inactive codes")
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/ValueSet/inactive")
	}

	func testValueSet4() {
        do {
            let data = try bundle.loadJSONData(named: "valueset-example-yesnodontknow.json")
            let instance = try decoder.decode(ValueSet.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runValueSet4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runValueSet4(_ inst: ValueSet) {
		XCTAssertEqual(inst.compose?.include?[0].valueSet?[0], "http://hl7.org/fhir/ValueSet/v2-0136")
		XCTAssertEqual(inst.compose?.include?[1].concept?[0].code, "asked")
		XCTAssertEqual(inst.compose?.include?[1].concept?[0].display, "Don't know")
		XCTAssertEqual(inst.compose?.include?[1].system, "http://hl7.org/fhir/data-absent-reason")
		XCTAssertEqual(inst.description_fhir, "For Capturing simple yes-no-don't know answers")
		XCTAssertEqual(inst.expansion?.contains?[0].code, "Y")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "Yes")
		XCTAssertEqual(inst.expansion?.contains?[0].system, "http://hl7.org/fhir/v2/0136")
		XCTAssertEqual(inst.expansion?.contains?[1].code, "N")
		XCTAssertEqual(inst.expansion?.contains?[1].display, "No")
		XCTAssertEqual(inst.expansion?.contains?[1].system, "http://hl7.org/fhir/v2/0136")
		XCTAssertEqual(inst.expansion?.contains?[2].code, "asked")
		XCTAssertEqual(inst.expansion?.contains?[2].display, "Don't know")
		XCTAssertEqual(inst.expansion?.contains?[2].system, "http://hl7.org/fhir/data-absent-reason")
		XCTAssertEqual(inst.expansion?.identifier, "urn:uuid:bf99fe50-2c2b-41ad-bd63-bee6919810b4")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2015-07-14T10:00:00Z")
		XCTAssertEqual(inst.id, "yesnodontknow")
		XCTAssertEqual(inst.name, "Yes/No/Don't Know")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/ValueSet/yesnodontknow")
	}

	func testValueSet5() {
        do {
            let data = try bundle.loadJSONData(named: "valueset-list-example-codes.json")
            let instance = try decoder.decode(ValueSet.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runValueSet5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runValueSet5(_ inst: ValueSet) {
		XCTAssertEqual(inst.compose?.include?[0].system, "http://hl7.org/fhir/list-example-use-codes")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2017-04-19T07:44:43+10:00")
		XCTAssertEqual(inst.description_fhir, "Example use codes for the List resource - typical kinds of use.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-ballot-status")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "Informative")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm")
		XCTAssertEqual(inst.extension_fhir?[1].valueInteger, 1)
		XCTAssertEqual(inst.extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg")
		XCTAssertEqual(inst.extension_fhir?[2].valueCode, "fhir")
		XCTAssertEqual(inst.id, "list-example-codes")
		XCTAssertEqual(inst.identifier?[0].system, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:2.16.840.1.113883.4.642.3.307")
		XCTAssertEqual(inst.immutable, true)
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2017-04-19T07:44:43.294+10:00")
		XCTAssertEqual(inst.meta?.profile?[0], "http://hl7.org/fhir/StructureDefinition/shareablevalueset")
		XCTAssertEqual(inst.name, "Example Use Codes for List")
		XCTAssertEqual(inst.publisher, "FHIR Project")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/ValueSet/list-example-codes")
		XCTAssertEqual(inst.version, "3.0.1")
	}

	func testValueSet6() {
        do {
            let data = try bundle.loadJSONData(named: "valueset-example-intensional.json")
            let instance = try decoder.decode(ValueSet.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runValueSet6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runValueSet6(_ inst: ValueSet) {
		XCTAssertEqual(inst.compose?.exclude?[0].concept?[0].code, "5932-9")
		XCTAssertEqual(inst.compose?.exclude?[0].concept?[0].display, "Cholesterol [Presence] in Blood by Test strip")
		XCTAssertEqual(inst.compose?.exclude?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, FilterOperator(rawValue: "=")!)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "parent")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "LP43571-6")
		XCTAssertEqual(inst.compose?.include?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINCÂ® is copyright Â© 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-intensional")
		XCTAssertEqual(inst.identifier?[0].system, "http://acme.com/identifiers/valuesets")
		XCTAssertEqual(inst.identifier?[0].value, "loinc-cholesterol-ext")
		XCTAssertEqual(inst.meta?.profile?[0], "http://hl7.org/fhir/StructureDefinition/shareablevalueset")
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/ValueSet/example-intensional")
		XCTAssertEqual(inst.version, "20150622")
	}
}
