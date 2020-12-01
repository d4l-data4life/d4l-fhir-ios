//
//  CopyTests.swift
//  Data4LifeFHIRTests
//
//  Created by Zoran Tepša on 13/11/2018.
//  Copyright © 2018 HPS Gesundheitscloud gGmbH. All rights reserved.
//

import XCTest
@testable import Data4LifeFHIR

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
