//  BSD 3-Clause License
//
//  Copyright (c) 2018, Hasso-Plattner-Institut für Softwaresystemtechnik gGmbH
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
@testable import Data4LifeFHIR

class ContainedTests: XCTestCase {
    func testDocumentWithContainedAuthor() {
        let practitionerId = UUID().uuidString

        let practitioner = Practitioner()
        practitioner.id = practitionerId

        let address = Address()
        address.country = UUID().uuidString
        address.city = UUID().uuidString
        address.postalCode = UUID().uuidString
        practitioner.address = [address]

        let email = ContactPoint()
        email.system = .email
        email.value = UUID().uuidString
        practitioner.telecom = [email]

        let attachment = Attachment()
        attachment.contentType = UUID().uuidString
        attachment.title = UUID().uuidString
        let content = DocumentReferenceContent(attachment: attachment)

        let type = CodeableConcept()
        type.text = "Document"
        let document = DocumentReference(content: [content], indexed: .now, status: .current, type: type)

        do {
            let practitionerReference = try document.contain(resource: practitioner)
            if var authors = document.author {
                authors.append(practitionerReference)
                document.author = authors
            } else {
                document.author = [practitionerReference]
            }

            let documentData = try JSONEncoder().encode(document)
            let downloadedDocument = try JSONDecoder().decode(DocumentReference.self, from: documentData)

            if let downloadedPractitioner: Practitioner = downloadedDocument.containedResource(practitionerReference) {

                XCTAssertEqual(downloadedPractitioner, practitioner)
            } else {
                XCTFail("Document should have practitioner")
            }
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
