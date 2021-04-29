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
import ModelsR4

class PartnerIdentifiableTests: XCTestCase {

    func testAddAndRemoveCustomIdentifierStu3() {
        let partnerId = UUID().uuidString
        let customIdentifierValue = UUID().uuidString
        let otherIdentifier = Data4LifeFHIR.Identifier(identifier: UUID().uuidString, partnerId: UUID().uuidString)

        let resource = FhirFactory.createStu3CarePlanResource()

        resource.identifier = [otherIdentifier]
        XCTAssertNil(resource.getAdditionalIds(assignedTo: partnerId))

        resource.addAdditionalId(customIdentifierValue, assignedTo: partnerId)
        guard let ids = resource.getAdditionalIds(assignedTo: partnerId) else {
            XCTFail("Should have additional ids array")
            return
        }

        XCTAssertEqual(ids.first, customIdentifierValue)
        XCTAssertEqual(ids.count, 1)

        resource.setAdditionalIds([], assignedTo: partnerId)
        XCTAssertNil(resource.getAdditionalIds(assignedTo: partnerId))
        XCTAssertEqual(resource.identifier?.first, otherIdentifier)
    }

    func testEncodeAndDecodeCustomIdentifiersStu3() {
        let partnerId = UUID().uuidString
        let firstIdentifierValue = UUID().uuidString
        let secondIdentifierValue = UUID().uuidString

        let resource = FhirFactory.createStu3CarePlanResource()

        resource.setAdditionalIds([firstIdentifierValue, secondIdentifierValue], assignedTo: partnerId)

        do {
            let jsonData = try JSONEncoder().encode(resource)
            let decodedResource = try JSONDecoder().decode(Data4LifeFHIR.CarePlan.self, from: jsonData)
            guard let ids = decodedResource.getAdditionalIds(assignedTo: partnerId) else {
                XCTFail("Should have additional ids array")
                return
            }

            XCTAssertEqual(decodedResource, resource)
            XCTAssertEqual(ids.first, firstIdentifierValue)
            XCTAssertEqual(ids.last, secondIdentifierValue)
            XCTAssertEqual(ids.count, 2)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func testAddAndRemoveCustomIdentifierR4() {
        let partnerId = UUID().uuidString
        let customIdentifierValue = UUID().uuidString
        let otherIdentifier = ModelsR4.Identifier(assigner: Reference(reference: UUID().uuidString.asFHIRStringPrimitive()), value: UUID().uuidString.asFHIRStringPrimitive())

        let resource = FhirFactory.createR4CarePlanResource()

        resource.identifier = [otherIdentifier]
        XCTAssertNil(resource.getAdditionalIds(assignedTo: partnerId))

        resource.addAdditionalId(customIdentifierValue, assignedTo: partnerId)
        guard let ids = resource.getAdditionalIds(assignedTo: partnerId) else {
            XCTFail("Should have additional ids array")
            return
        }

        XCTAssertEqual(ids.first, customIdentifierValue)
        XCTAssertEqual(ids.count, 1)

        resource.setAdditionalIds([], assignedTo: partnerId)
        XCTAssertNil(resource.getAdditionalIds(assignedTo: partnerId))
        XCTAssertEqual(resource.identifier?.first, otherIdentifier)
    }

    func testEncodeAndDecodeCustomIdentifiersR4() {
        let partnerId = UUID().uuidString
        let firstIdentifierValue = UUID().uuidString
        let secondIdentifierValue = UUID().uuidString

        let resource = FhirFactory.createR4CarePlanResource()

        resource.setAdditionalIds([firstIdentifierValue, secondIdentifierValue], assignedTo: partnerId)

        do {
            let jsonData = try JSONEncoder().encode(resource)
            let decodedResource = try JSONDecoder().decode(ModelsR4.CarePlan.self, from: jsonData)
            guard let ids = decodedResource.getAdditionalIds(assignedTo: partnerId) else {
                XCTFail("Should have additional ids array")
                return
            }

            XCTAssertEqual(decodedResource, resource)
            XCTAssertEqual(ids.first, firstIdentifierValue)
            XCTAssertEqual(ids.last, secondIdentifierValue)
            XCTAssertEqual(ids.count, 2)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}

struct FhirFactory {
static func createStu3CarePlanResource() -> Data4LifeFHIR.CarePlan {
    let reference = Reference(UUID().uuidString)
    return CarePlan(intent: .option, status: .active, subject: reference)
}

static func createR4CarePlanResource() -> ModelsR4.CarePlan {
    let reference = ModelsR4.Reference(reference: UUID().uuidString.asFHIRStringPrimitive())
    return ModelsR4.CarePlan(intent: RequestIntent.option.asPrimitive(), status: RequestStatus.active.asPrimitive(), subject: reference)
}
}
