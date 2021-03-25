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
//  ObservationTests.swift
//
//  Generated from FHIR 3.0.1.11917
//

import XCTest
import Data4LifeFHIR

class ObservationTests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

	func testObservation1() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-genetics-1.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation1(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation1(_ inst: Observation) {
		XCTAssertEqual(inst.code?.coding?[0].code, "55233-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "Genetic analysis master panel-- This is the parent OBR for the panel holding all of the associated observations that can be reported with a molecular genetics analysis result.")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsDNASequenceVariantName")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.text, "NG_007726.3:g.146252T>G")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsGene")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].code, "3236")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].display, "EGFR")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].system, "http://www.genenames.org")
		XCTAssertEqual(inst.extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsDNARegionName")
		XCTAssertEqual(inst.extension_fhir?[2].valueString, "Exon 21")
		XCTAssertEqual(inst.extension_fhir?[3].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsGenomicSourceClass")
		XCTAssertEqual(inst.extension_fhir?[3].valueCodeableConcept?.coding?[0].code, "LA6684-0")
		XCTAssertEqual(inst.extension_fhir?[3].valueCodeableConcept?.coding?[0].display, "somatic")
		XCTAssertEqual(inst.extension_fhir?[3].valueCodeableConcept?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.id, "example-genetics-1")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].display, "Molecular Diagnostics Laboratory")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.specimen?.display, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen?.reference, "Specimen/genetics-example1-somatic")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Molecular Lab Patient ID: HOSP-23456")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].code, "10828004")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].display, "Positive")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].system, "http://snomed.info/sct")
	}

	func testObservation2() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-bmd.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation2(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation2(_ inst: Observation) {
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "71341001:272741003=7771000")
		XCTAssertEqual(inst.bodySite?.coding?[0].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?.text, "Left Femur")
		XCTAssertEqual(inst.code?.coding?[0].code, "24701-5")
		XCTAssertEqual(inst.code?.coding?[0].display, "Femur DXA Bone density")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "BMD - Left Femur")
		XCTAssertEqual(inst.id, "bmd")
		XCTAssertEqual(inst.performer?[0].display, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "g/cm-2")
		XCTAssertEqual(inst.valueQuantity?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "g/cm²")
		XCTAssertEqual(inst.valueQuantity?.value, 0.887)
	}

	func testObservation3() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-respiratory-rate.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation3(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation3(_ inst: Observation) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "9279-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "Respiratory rate")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Respiratory rate")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "respiratory-rate")
		XCTAssertEqual(inst.meta?.profile?[0], "http://hl7.org/fhir/StructureDefinition/vitalsigns")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "/min")
		XCTAssertEqual(inst.valueQuantity?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "breaths/minute")
		XCTAssertEqual(inst.valueQuantity?.value, 26)
	}

	func testObservation4() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation4(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation4(_ inst: Observation) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "29463-7")
		XCTAssertEqual(inst.code?.coding?[0].display, "Body Weight")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "3141-9")
		XCTAssertEqual(inst.code?.coding?[1].display, "Body weight Measured")
		XCTAssertEqual(inst.code?.coding?[1].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[2].code, "27113001")
		XCTAssertEqual(inst.code?.coding?[2].display, "Body weight")
		XCTAssertEqual(inst.code?.coding?[2].system, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[3].code, "body-weight")
		XCTAssertEqual(inst.code?.coding?[3].display, "Body Weight")
		XCTAssertEqual(inst.code?.coding?[3].system, "http://acme.org/devices/clinical-codes")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-03-28")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "[lb_av]")
		XCTAssertEqual(inst.valueQuantity?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "lbs")
		XCTAssertEqual(inst.valueQuantity?.value, 185)
	}

	func testObservation5() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-haplotype2.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation5(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation5(_ inst: Observation) {
		XCTAssertEqual(inst.code?.coding?[0].code, "55233-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "Genetic analysis master panel-- This is the parent OBR for the panel holding all of the associated observations that can be reported with a molecular genetics analysis result.")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsGene")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "2623")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].display, "CYP2C9")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].system, "http://www.genenames.org")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsSequence")
		XCTAssertEqual(inst.extension_fhir?[1].valueReference?.reference, "Sequence/example-sequence1")
		XCTAssertEqual(inst.extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsSequence")
		XCTAssertEqual(inst.extension_fhir?[2].valueReference?.reference, "Sequence/example-sequence2")
		XCTAssertEqual(inst.id, "example-haplotype2")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.related?[0].target?.reference, "Sequence/example-pgx-1")
		XCTAssertEqual(inst.related?[0].type, ObservationRelationshipType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.related?[1].target?.reference, "Sequence/example-pgx-2")
		XCTAssertEqual(inst.related?[1].type, ObservationRelationshipType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.specimen?.display, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen?.reference, "Specimen/genetics-example1-somatic")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "unknown")!)
		XCTAssertEqual(inst.subject?.display, "J*********** C***********")
		XCTAssertEqual(inst.subject?.reference, "Patient/727127")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].code, "PA16581679")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].display, "*4")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].system, "http://pharmakb.org")
	}

	func testObservation6() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-mbp.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation6(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation6(_ inst: Observation) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "8478-0")
		XCTAssertEqual(inst.code?.coding?[0].display, "Mean blood pressure")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Mean blood pressure")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "mbp")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "mm[Hg]")
		XCTAssertEqual(inst.valueQuantity?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "mm[Hg]")
		XCTAssertEqual(inst.valueQuantity?.value, 80)
	}

	func testObservation7() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-bmi.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation7(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation7(_ inst: Observation) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "39156-5")
		XCTAssertEqual(inst.code?.coding?[0].display, "Body mass index (BMI) [Ratio]")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "BMI")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "bmi")
		XCTAssertEqual(inst.meta?.profile?[0], "http://hl7.org/fhir/StructureDefinition/vitalsigns")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "kg/m2")
		XCTAssertEqual(inst.valueQuantity?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "kg/m2")
		XCTAssertEqual(inst.valueQuantity?.value, 16.2)
	}

	func testObservation8() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-body-height.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation8(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation8(_ inst: Observation) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "8302-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "Body height")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Body height")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "body-height")
		XCTAssertEqual(inst.meta?.profile?[0], "http://hl7.org/fhir/StructureDefinition/vitalsigns")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "[in_i]")
		XCTAssertEqual(inst.valueQuantity?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "in")
		XCTAssertEqual(inst.valueQuantity?.value, 66.89999999999999)
	}

	func testObservation9() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-eye-color.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation9(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation9(_ inst: Observation) {
		XCTAssertEqual(inst.code?.text, "eye color")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-05-18")
		XCTAssertEqual(inst.id, "eye-color")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueString, "blue")
	}

	func testObservation10() {
        do {
            let data = try bundle.loadJSONData(named: "observation-example-body-temperature.json")
            let instance = try decoder.decode(Observation.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			runObservation10(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func runObservation10(_ inst: Observation) {
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "8310-5")
		XCTAssertEqual(inst.code?.coding?[0].display, "Body temperature")
		XCTAssertEqual(inst.code?.coding?[0].system, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Body temperature")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "body-temperature")
		XCTAssertEqual(inst.meta?.profile?[0], "http://hl7.org/fhir/StructureDefinition/vitalsigns")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "Cel")
		XCTAssertEqual(inst.valueQuantity?.system, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "C")
		XCTAssertEqual(inst.valueQuantity?.value, 36.5)
	}
}
