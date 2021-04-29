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
