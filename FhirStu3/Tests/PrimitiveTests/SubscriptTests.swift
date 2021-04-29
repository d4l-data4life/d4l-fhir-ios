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

import XCTest
import Data4LifeFHIR

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
