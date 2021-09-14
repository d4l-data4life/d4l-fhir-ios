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
import ModelsR4
import UIKit

class ModelsR4Tests: XCTestCase {

    let bundle = Bundle.test
    let decoder = JSONDecoder()

    func runEncodableAndEqualityChecks<T: Codable & Equatable>(_ instance: T) throws {
        let jsonData = try JSONEncoder().encode(instance)
        let decodedObject = try JSONDecoder().decode(T.self, from: jsonData)
        XCTAssertTrue(decodedObject == instance)
    }

    func runCopyCheck<T: DomainResource>(_ instance: T) throws {
        let jsonData = try JSONEncoder().encode(instance)
        let decodedObject = try JSONDecoder().decode(T.self, from: jsonData)
        let copiedObject = decodedObject.copy() as! T
        XCTAssertEqual(decodedObject, copiedObject)
        XCTAssertFalse(decodedObject === copiedObject)
    }
}
