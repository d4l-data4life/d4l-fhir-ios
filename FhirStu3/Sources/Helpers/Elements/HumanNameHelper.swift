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

extension HumanName {
    public static func with(firstname: String, lastname: String, prefix: String? = nil, suffix: String? = nil) -> HumanName {
        let name = HumanName()
        name.given = [firstname]
        name.family = lastname
        if let suffix = suffix {
            name.suffix = [suffix]
        }
        if let prefix = prefix {
            name.prefix = [prefix]
        }
        return name
    }
}
