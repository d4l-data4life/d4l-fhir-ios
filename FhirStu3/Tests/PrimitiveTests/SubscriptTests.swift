//
//  SubscriptTests.swift
//  Data4LifeFHIRTests
//
//  Created by Alessio Borraccino on 06.04.20.
//  Copyright © 2020 HPS Gesundheitscloud gGmbH. All rights reserved.
//

import XCTest
@testable import Data4LifeFHIR

class SubscriptTests: XCTestCase {

    var decoder: JSONDecoder { return JSONDecoder() }
    var bundle: Bundle { Bundle.test }

    func testDocumentReferenceSubscript() {
        do {
            let data = try bundle.loadJSONData(named: "documentreference-example.json")
            let documentReference = try decoder.decode(DocumentReference.self, from: data)

            XCTAssertEqual(documentReference.identifier, documentReference["identifier"])
            XCTAssertEqual(documentReference.id, documentReference["id"])
            XCTAssertEqual(documentReference.type, documentReference["type"])
            XCTAssertEqual(documentReference.subject, documentReference["subject"])
            XCTAssertEqual(documentReference.status, documentReference["status"])
            XCTAssertEqual(documentReference.contained, documentReference["contained"])
            XCTAssertEqual(documentReference.text, documentReference["text"])
            XCTAssertEqual(documentReference.language, documentReference["language"])
            XCTAssertEqual(documentReference.meta, documentReference["meta"])
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func testDocumentReferenceAnySubscript() {
        do {
            let data = try bundle.loadJSONData(named: "documentreference-example.json")
            let documentReference = try decoder.decode(DocumentReference.self, from: data)
            let value = documentReference[untyped: "id"]
            if let identifier = value as? String {
                XCTAssertEqual(documentReference.id, identifier)
            } else {
                XCTFail("Could not cast value")
            }
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
