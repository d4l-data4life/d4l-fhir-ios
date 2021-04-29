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
@_implementationOnly import Data4LifeSDKUtils

extension Attachment {
    public static func with(title: String, creationDate: Date, contentType: String, data: Data) throws -> Attachment {
        let attachment = Attachment()
        let binary = ModelsR4.Base64Binary(data.base64EncodedString())
        attachment.data = binary.asPrimitive()
        attachment.contentType = contentType.asFHIRStringPrimitive()
        attachment.creation = (try? DateTime(date: creationDate))?.asPrimitive()
        let hashData = ModelsR4.Base64Binary(data.sha1Hash)
        attachment.hash = hashData.asPrimitive()
        attachment.title = title.asFHIRStringPrimitive()
        attachment.size = data.count.asFHIRUnsignedIntegerPrimitive()
        return attachment
    }
}
