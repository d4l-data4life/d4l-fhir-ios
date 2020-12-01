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

import Foundation

enum Data4LifeFHIRError: LocalizedError {

    case invalidDateFormat
    case unknownResourceType(String)
    case resourceMissingId(String)
    case missingRequiredProperty(String)

    var localizedDescription: String {
        switch self {
        case .invalidDateFormat:
            return "Invalid date format"
        case .resourceMissingId(let type):
            return "\(type) is missing `id` property"
        case .unknownResourceType(let type):
            return "Unknown resource type: \(type)"
        case .missingRequiredProperty(let propertyName):
            return "Missing required property \(propertyName)"
        }
    }

    var errorDescription: String? {
        return localizedDescription
    }

    var failureReason: String? {
        switch self {
        case .invalidDateFormat:
            return "Failed to encode/decode date as it's not a proper format"
        case .resourceMissingId:
            return "Could not contain resource as it's missing property `id` that's used to create a reference between resources"
        case .unknownResourceType(let type):
            return "Failed to encode/decode resource and it's type (\(type)) could not be recognized"
        case .missingRequiredProperty(let property):
            return "Could not find required property named `\(property)`"
        }
    }

    var recoverySuggestion: String? {
        switch self {
        case .invalidDateFormat:
            return "Check `https://www.hl7.org/fhir/datatypes.html` for more information about supported date and time formats"
        case .resourceMissingId:
            return "Check that resource has property `id` before trying to contain it, otherwise set the `id` before doing so"
        case .unknownResourceType(let type):
            return "Check that library supports \(type) resource type, as of now library supports minimal set of resources"
        case .missingRequiredProperty(let property):
            return "Use convenice initializer to create a resource so that all of the required properties (`\(property)`) are present. Alternatively check `https://www.hl7.org/fhir/` for more information about specific resource "
        }
    }
}
