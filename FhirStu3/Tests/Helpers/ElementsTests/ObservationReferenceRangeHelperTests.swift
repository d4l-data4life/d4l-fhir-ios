//  BSD 3-Clause License
//  
//  Copyright (c) 2019, HPS Gesundheitscloud gGmbH
//  All rights reserved.
//  
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//  
//  * Redistributions of source code must retain the above copyright notice, this
//  list of conditions and the following disclaimer.
//  
//  * Redistributions in binary form must reproduce the above copyright notice,
//  this list of conditions and the following disclaimer in the documentation
//  and/or other materials provided with the distribution.
//  
//  * Neither the name of the copyright holder nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
//  
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import XCTest
@testable import Data4LifeFHIR

class ObservationReferenceRangeHelperTests: XCTestCase {

    func testObservationReferenceRangeFactory() throws {

        let range = ObservationReferenceRange.with(type: CodeableConcept("code"),
                                                   lowValue: 1,
                                                   highValue: 5,
                                                   unit: "pill")
        XCTAssertEqual(range.getType(), CodeableConcept("code"), "Type has different values")
        XCTAssertEqual(range.getUnit(), "pill", "Unit has different values")
        XCTAssertEqual(range.getLowValue(), 1, "LowValue has different values")
        XCTAssertEqual(range.getHighValue(), 5, "HighValue has different values")
        XCTAssertEqual(range.getLowQuantity(), Quantity(value: 1, unit: "pill"), "LowQuantity has different values")
        XCTAssertEqual(range.getHighQuantity(), Quantity(value: 5, unit: "pill"), "HighQuantity has different values")
    }

    func testObservationReferenceRangeWithQuantitiesFactory() throws {

        let range = ObservationReferenceRange.with(type: CodeableConcept("code"),
                                                   lowQuantity: Quantity(value: 1.5, unit: "pill"),
                                                   highQuantity: Quantity(value: 5.5, unit: "pill"))
        XCTAssertEqual(range.getType(), CodeableConcept("code"), "Type has different values")
        XCTAssertEqual(range.getUnit(), "pill", "Unit has different values")
        XCTAssertEqual(range.getLowValue()!, 1.5, accuracy: Float.ulpOfOne, "LowValue has different values")
        XCTAssertEqual(range.getHighValue()!, 5.5, accuracy: Float.ulpOfOne, "HighValue has different values")
        XCTAssertEqual(range.getLowQuantity(), Quantity(value: 1.5, unit: "pill"), "LowQuantity has different values")
        XCTAssertEqual(range.getHighQuantity(), Quantity(value: 5.5, unit: "pill"), "HighQuantity has different values")
    }
}
