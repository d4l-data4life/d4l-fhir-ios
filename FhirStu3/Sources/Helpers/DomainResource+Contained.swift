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

import Foundation

extension DomainResource {
    public func containedResource<T: DomainResource>(_ ref: Reference) -> T? {
        guard var referenceId = ref.reference, referenceId.removeFirst() == "#" else {
            return nil
        }
        return containedResource(referenceId)
    }

    public func containedResource<T: DomainResource>(_ refId: String) -> T? {
        return contained?.filter({ $0.id == refId }).first as? T
    }

    public func contain(resource: Resource, withDisplay display: String? = nil) throws -> Reference {
        var cont = contained ?? [Resource]()
        cont.append(resource)
        contained = cont

        guard let refid = resource.id, !refid.isEmpty else {
            let type = "\(Swift.type(of: resource))"
            throw Data4LifeFHIRError.resourceMissingId(type)
        }

        let ref = Reference()
        ref.reference = "#\(refid)"
        if let display = display {
            ref.display = display
        }

        return ref
    }
}
