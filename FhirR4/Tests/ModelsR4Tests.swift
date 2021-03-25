//
//  ModelsR4Tests.swift
//  ModelsR4Tests
//
//  Created by Alessio Borraccino on 17.12.20.
//  Copyright © 2020 HPS Gesundheitscloud gGmbH. All rights reserved.
//

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
