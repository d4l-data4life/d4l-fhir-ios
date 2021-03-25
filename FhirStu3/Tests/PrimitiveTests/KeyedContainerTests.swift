//
//  KeyedContainerTests.swift
//  Data4LifeFHIRTests
//
//  Created by Zoran Tepša on 04/04/2018.
//  Copyright © 2018 Zoran Tepša. All rights reserved.
//

import Foundation
import Data4LifeFHIR
import XCTest

class KeyedContainerTests: XCTestCase {
    func testEncodingAndDecodingArrayOfDateTimes() {
        let original = Timing()
        let dates = [DateTime.now, DateTime.now, DateTime.now, DateTime.now]
        original.event = dates

        do {
            let data: Data = try JSONEncoder().encode(original)
            let loaded = try JSONDecoder().decode(Timing.self, from: data)
            XCTAssertEqual(original.event?.count, loaded.event?.count)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
