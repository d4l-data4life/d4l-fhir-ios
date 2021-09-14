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

import XCTest
import Data4LifeFHIR

class CopyTests: XCTestCase {

    var decoder: JSONDecoder {
        return JSONDecoder()
    }

    var bundle: Bundle {
        return Bundle.test
    }

    func testCopyDocumentReference() {
        do {
            let data = try bundle.loadJSONData(named: "documentreference-example.json")
            let instance = try decoder.decode(DocumentReference.self, from: data)
            guard let copy = instance.copy() as? DocumentReference else {
                XCTFail("Could not create copy")
                return
            }

            XCTAssertEqual(instance, copy)
            instance.masterIdentifier?.system = "https://example.com"
            instance.description_fhir = UUID().uuidString
            instance.created = .now
            XCTAssertNotEqual(instance, copy)
        } catch {
            XCTFail("Should copy a resource")
        }
    }
}
