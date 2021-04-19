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

public protocol FhirIdentifierType {
    var assignerString: String? { get }
    var valueString: String? { get }
}

public protocol PartnerIdentifiable: AnyObject {
    func addAdditionalId(_ id: String, assignedTo partnerId: String)
    func setAdditionalIds(_ ids: [String], assignedTo partnerId: String)
    func getAdditionalIds(assignedTo partnerId: String) -> [String]?
}

public protocol CustomIdentifiable: PartnerIdentifiable {
    var customIdentifiers: [FhirIdentifierType]? { get set }
    func makeIdentifier(with id: String, partnerId: String) -> FhirIdentifierType
}

extension CustomIdentifiable {
    public func addAdditionalId(_ id: String, assignedTo partnerId: String) {
        let newIdentifier = makeIdentifier(with: id, partnerId: partnerId)
        if var currentIdentifiers = customIdentifiers {
            currentIdentifiers.append(newIdentifier)
            customIdentifiers = currentIdentifiers
        } else {
            customIdentifiers = [newIdentifier]
        }
    }

    public func setAdditionalIds(_ ids: [String], assignedTo partnerId: String) {
        let newIds = ids.map { makeIdentifier(with: $0, partnerId: partnerId) }
        if let otherIds = customIdentifiers?.filter({ $0.assignerString != partnerId }) {
            customIdentifiers = otherIds + newIds
        } else {
            customIdentifiers = newIds
        }
    }

    public func getAdditionalIds(assignedTo partnerId: String) -> [String]? {
        guard let identifiers = customIdentifiers?.filter({ $0.assignerString == partnerId }) else { return nil }
        let values = identifiers.compactMap({ $0.valueString })
        guard values.isEmpty == false else { return nil }
        return values
    }
}
