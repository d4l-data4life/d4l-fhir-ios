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
//  QuestionnaireTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
@testable import Data4LifeFHIR

class QuestionnaireTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testQuestionnaire1() {
        do {
            let data = try bundle.loadJSONData(named: "questionnaire-example.json")
            let instance = try decoder.decode(Questionnaire.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runQuestionnaire1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runQuestionnaire1(_ inst: Questionnaire) {
		XCTAssertEqual(inst.date?.description, "2012-01")
		XCTAssertEqual(inst.id, "3141")
		XCTAssertEqual(inst.item?[0].code?[0].code, "COMORBIDITY")
		XCTAssertEqual(inst.item?[0].code?[0].system, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item?[0].item?[0].code?[0].code, "COMORB")
		XCTAssertEqual(inst.item?[0].item?[0].code?[0].system, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].code?[0].code, "CARDIAL")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].code?[0].system, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].enableWhen?[0].answerCoding?.code, "Y")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].enableWhen?[0].answerCoding?.system, "http://hl7.org/fhir/v2/0136")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].enableWhen?[0].question, "1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].code?[0].code, "COMORBCAR")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].code?[0].system, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[0].code, "COMCAR00")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[0].display, "Angina Pectoris")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[0].system, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[1].code, "194828000")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[1].display, "Angina (disorder)")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[1].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].linkId, "1.1.1.1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].prefix, "1.1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].code?[0].code, "22298006")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].code?[0].display, "Myocardial infarction (disorder)")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].code?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].linkId, "1.1.1.1.2")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].prefix, "1.1.2")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].linkId, "1.1.1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].prefix, "1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].code?[0].code, "COMORBVAS")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].code?[0].system, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].linkId, "1.1.1.2")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].prefix, "1.2")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].linkId, "1.1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[0].item?[0].linkId, "1.1")
		XCTAssertEqual(inst.item?[0].item?[0].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].prefix, "1")
		XCTAssertEqual(inst.item?[0].item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].linkId, "1")
		XCTAssertEqual(inst.item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[1].code?[0].code, "HISTOPATHOLOGY")
		XCTAssertEqual(inst.item?[1].code?[0].system, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item?[1].item?[0].code?[0].code, "ABDOMINAL")
		XCTAssertEqual(inst.item?[1].item?[0].code?[0].system, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].code?[0].code, "STADPT")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].code?[0].display, "pT category")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].code?[0].system, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].linkId, "2.1.2")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[1].item?[0].linkId, "2.1")
		XCTAssertEqual(inst.item?[1].item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[1].linkId, "2")
		XCTAssertEqual(inst.item?[1].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subjectType?[0], "Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/Questionnaire/3141")
	}

	func testQuestionnaire2() {
        do {
            let data = try bundle.loadJSONData(named: "questionnaire-example-f201-lifelines.json")
            let instance = try decoder.decode(Questionnaire.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runQuestionnaire2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runQuestionnaire2(_ inst: Questionnaire) {
		XCTAssertEqual(inst.code?[0].code, "VL 1-1, 18-65_1.2.2")
		XCTAssertEqual(inst.code?[0].display, "Lifelines Questionnaire 1 part 1")
		XCTAssertEqual(inst.code?[0].system, "http://example.org/system/code/lifelines/nl")
		XCTAssertEqual(inst.date?.description, "2010")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.item?[0].linkId, "1")
		XCTAssertEqual(inst.item?[0].text, "Do you have allergies?")
		XCTAssertEqual(inst.item?[0].type, QuestionnaireItemType(rawValue: "boolean")!)
		XCTAssertEqual(inst.item?[1].item?[0].linkId, "2.1")
		XCTAssertEqual(inst.item?[1].item?[0].text, "What is your gender?")
		XCTAssertEqual(inst.item?[1].item?[0].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[1].item?[1].linkId, "2.2")
		XCTAssertEqual(inst.item?[1].item?[1].text, "What is your date of birth?")
		XCTAssertEqual(inst.item?[1].item?[1].type, QuestionnaireItemType(rawValue: "date")!)
		XCTAssertEqual(inst.item?[1].item?[2].linkId, "2.3")
		XCTAssertEqual(inst.item?[1].item?[2].text, "What is your country of birth?")
		XCTAssertEqual(inst.item?[1].item?[2].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[1].item?[3].linkId, "2.4")
		XCTAssertEqual(inst.item?[1].item?[3].text, "What is your marital status?")
		XCTAssertEqual(inst.item?[1].item?[3].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[1].linkId, "2")
		XCTAssertEqual(inst.item?[1].text, "General questions")
		XCTAssertEqual(inst.item?[1].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[2].item?[0].linkId, "3.1")
		XCTAssertEqual(inst.item?[2].item?[0].text, "Do you smoke?")
		XCTAssertEqual(inst.item?[2].item?[0].type, QuestionnaireItemType(rawValue: "boolean")!)
		XCTAssertEqual(inst.item?[2].item?[1].linkId, "3.2")
		XCTAssertEqual(inst.item?[2].item?[1].text, "Do you drink alchohol?")
		XCTAssertEqual(inst.item?[2].item?[1].type, QuestionnaireItemType(rawValue: "boolean")!)
		XCTAssertEqual(inst.item?[2].linkId, "3")
		XCTAssertEqual(inst.item?[2].text, "Intoxications")
		XCTAssertEqual(inst.item?[2].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subjectType?[0], "Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/Questionnaire/f201")
	}

	func testQuestionnaire3() {
        do {
            let data = try bundle.loadJSONData(named: "questionnaire-example-gcs.json")
            let instance = try decoder.decode(Questionnaire.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runQuestionnaire3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runQuestionnaire3(_ inst: Questionnaire) {
		XCTAssertEqual(inst.code?[0].code, "9269-2")
		XCTAssertEqual(inst.code?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.contained?[0].id, "motor")
		XCTAssertEqual(inst.contained?[1].id, "verbal")
		XCTAssertEqual(inst.contained?[2].id, "eye")
		XCTAssertEqual(inst.date?.description, "2015-08-03")
		XCTAssertEqual(inst.id, "gcs")
		XCTAssertEqual(inst.item?[0].code?[0].code, "9270-0")
		XCTAssertEqual(inst.item?[0].code?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.item?[0].linkId, "1.1")
		XCTAssertEqual(inst.item?[0].options?.reference, "#verbal")
		XCTAssertEqual(inst.item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[1].code?[0].code, "9268-4")
		XCTAssertEqual(inst.item?[1].code?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.item?[1].linkId, "1.2")
		XCTAssertEqual(inst.item?[1].options?.reference, "#motor")
		XCTAssertEqual(inst.item?[1].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[2].code?[0].code, "9267-6")
		XCTAssertEqual(inst.item?[2].code?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.item?[2].linkId, "1.3")
		XCTAssertEqual(inst.item?[2].options?.reference, "#eye")
		XCTAssertEqual(inst.item?[2].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.publisher, "FHIR Project team")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subjectType?[0], "Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Glasgow Coma Score")
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/Questionnaire/gcs")
	}

	func testQuestionnaire4() {
        do {
            let data = try bundle.loadJSONData(named: "questionnaire-example-bluebook.json")
            let instance = try decoder.decode(Questionnaire.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runQuestionnaire4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runQuestionnaire4(_ inst: Questionnaire) {
		XCTAssertEqual(inst.date?.description, "2013-02-19")
		XCTAssertEqual(inst.id, "bb")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].linkId, "nameOfChild")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].text, "Name of child")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].linkId, "sex")
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].option?[0].valueCoding?.code, "F")
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].option?[1].valueCoding?.code, "M")
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].text, "Sex")
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].linkId, "group")
		XCTAssertEqual(inst.item?[0].item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[0].linkId, "birthWeight")
		XCTAssertEqual(inst.item?[0].item?[1].item?[0].text, "Birth weight (kg)")
		XCTAssertEqual(inst.item?[0].item?[1].item?[0].type, QuestionnaireItemType(rawValue: "decimal")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[1].linkId, "birthLength")
		XCTAssertEqual(inst.item?[0].item?[1].item?[1].text, "Birth length (cm)")
		XCTAssertEqual(inst.item?[0].item?[1].item?[1].type, QuestionnaireItemType(rawValue: "decimal")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].enableWhen?[0].hasAnswer, true)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].enableWhen?[0].question, "vitaminKgiven")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[0].linkId, "vitaminiKDose1")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[0].text, "1st dose")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "dateTime")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[1].linkId, "vitaminiKDose2")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[1].text, "2nd dose")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[1].type, QuestionnaireItemType(rawValue: "dateTime")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].linkId, "vitaminKgivenDoses")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].linkId, "vitaminKgiven")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].option?[0].valueCoding?.code, "INJECTION")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].option?[1].valueCoding?.code, "INTRAVENOUS")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].option?[2].valueCoding?.code, "ORAL")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].text, "Vitamin K given")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].item?[0].linkId, "hepBgivenDate")
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].item?[0].text, "Date given")
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].item?[0].type, QuestionnaireItemType(rawValue: "date")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].linkId, "hepBgiven")
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].text, "Hep B given y / n")
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].type, QuestionnaireItemType(rawValue: "boolean")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[4].linkId, "abnormalitiesAtBirth")
		XCTAssertEqual(inst.item?[0].item?[1].item?[4].text, "Abnormalities noted at birth")
		XCTAssertEqual(inst.item?[0].item?[1].item?[4].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[0].item?[1].linkId, "neonatalInformation")
		XCTAssertEqual(inst.item?[0].item?[1].text, "Neonatal Information")
		XCTAssertEqual(inst.item?[0].item?[1].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[0].linkId, "birthDetails")
		XCTAssertEqual(inst.item?[0].text, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "AU")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.publisher, "New South Wales Department of Health")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subjectType?[0], "Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "NSW Government My Personal Health Record")
		XCTAssertEqual(inst.url, "http://hl7.org/fhir/Questionnaire/bb")
	}
}
