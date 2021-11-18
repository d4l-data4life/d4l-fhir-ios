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

protocol ResourceWrapperProtocol {
    associatedtype Resource
    var resource: Resource { get }
}

public class AnyResource<T: DomainResource>: Decodable, ResourceWrapperProtocol {
    public var resource: T

    enum AnyResourceKeys: String, CodingKey {
        case resourceType
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy:  AnyResourceKeys.self)
        let resourceType = try container.decode(String.self, forKey: .resourceType)

        guard let decodableClass = NSClassFromString("Data4LifeFHIR.\(resourceType)") as? Decodable.Type else {
            throw Data4LifeFHIRError.unknownResourceType(resourceType)
        }

        do {
            guard let object = try decodableClass.init(from: decoder) as? T else {
                throw Data4LifeFHIRError.unknownResourceType(resourceType)
            }

            resource = object
        } catch {
            throw error
        }
    }
}
