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
@_implementationOnly import Data4LifeSDKUtils

extension Attachment {
    public static func with(title: String,
                            creationDate: DateTime,
                            contentType: String,
                            data: Data) throws -> Data4LifeFHIR.Attachment {

        let attachment = Attachment()
        attachment.title = title
        attachment.creation = creationDate
        attachment.contentType = contentType
        attachment.data_fhir = data.base64EncodedString()
        attachment.size = data.count
        attachment.hash = data.sha1Hash
        return attachment
    }
}

extension Attachment {
    public func getData() -> Data? {
        guard let base64String = data_fhir else { return nil }
        return Data(base64Encoded: base64String)
    }
    public func getTitle() -> String? {
        return title
    }
    public func getCreationDate() -> DateTime? {
        return creation
    }
    public func getContentType() -> String? {
        return contentType
    }
}
