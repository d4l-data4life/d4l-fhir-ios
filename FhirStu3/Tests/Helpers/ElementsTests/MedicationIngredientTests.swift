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
import Data4LifeFHIR

class MedicationIngredientTests: XCTestCase {

    func testMedicationIngredientFactory() {
        let medicationIngredientAndSubstance = MedicationIngredient.with(name: "fake name", value: 1, unit: "fake unit")
        let ingredient = medicationIngredientAndSubstance.0
        let substance = medicationIngredientAndSubstance.1
        XCTAssertEqual(ingredient.amount?.numerator?.value, 1, "Ingredient value is wrong")
        XCTAssertEqual(ingredient.amount?.numerator?.unit, "fake unit", "Ingredient unit is wrong")
        XCTAssertEqual(substance.code?.coding?.first?.display, "fake name", "Substance name is wrong")
        XCTAssertEqual(ingredient.itemReference?.reference, "#" + substance.id!, "Ingredient reference id does not match")
    }
}
