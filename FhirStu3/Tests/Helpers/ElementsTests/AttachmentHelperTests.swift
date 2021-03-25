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

class AttachmentHelperTests: XCTestCase {

    func testAttachmentFactorySuccess() throws {
        let data = Data([0xFF, 0xD8, 0xFF, 0xDB, 0x01, 0x02])
        let creationDate = DateTime.now
        let attachment = try Attachment.with(title: "title",
                                             creationDate: creationDate,
                                             contentType: "mime",
                                             data: data)
        XCTAssertEqual(attachment.getTitle(), "title", "Title is different")
        XCTAssertEqual(attachment.getData(),  Data([0xFF, 0xD8, 0xFF, 0xDB, 0x01, 0x02]), "Data is different")
        XCTAssertEqual(attachment.getContentType(), "mime", "Content type is different")
        XCTAssertEqual(attachment.getCreationDate(), creationDate, "Creation date is different")
        XCTAssertEqual(attachment.hash, data.sha1Hash)
        XCTAssertEqual(attachment.data_fhir, data.base64EncodedString())
    }
}
