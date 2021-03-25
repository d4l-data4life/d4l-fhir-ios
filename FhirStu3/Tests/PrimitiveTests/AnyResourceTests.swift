//
//  AnyResourceTests.swift
//  Data4LifeFHIRTests
//
//  Created by Zoran Tepša on 14/03/2019.
//  Copyright © 2019 HPS Gesundheitscloud gGmbH. All rights reserved.
//

import XCTest
import Data4LifeFHIR

class AnyResourceTests: XCTestCase {

    var decoder: JSONDecoder { return JSONDecoder() }
    var bundle: Bundle { Bundle.test }

    func testAnyResource() {
        do {
            let data = try bundle.loadJSONData(named: "documentreference-example.json")
            let genericResource = try decoder.decode(AnyResource.self, from: data)
            let specializedResource = try decoder.decode(AnyResource<DocumentReference>.self, from: data)
            XCTAssertEqual(genericResource.resource, specializedResource.resource)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
