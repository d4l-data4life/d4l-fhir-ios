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

import Foundation

extension Bundle {
    enum BundleError: Error, CustomDebugStringConvertible {
        case reason(_: String)
        var debugDescription: String {
            switch self {
            case .reason(let reason):
                return "TestError: \(reason)"
            }
        }
        var localizedDescription: String {
            return debugDescription
        }
    }

    func loadJSONData(named: String) throws -> Data {
        guard let file = URL(string: named)?.deletingPathExtension().absoluteString,
            let type = URL(string: named)?.pathExtension else {
                throw BundleError.reason("Invalid filename")
        }

        guard let path = self.url(forResource: file, withExtension: type) else {
            throw BundleError.reason("Could not load json")
        }

        do {
            return try Data(contentsOf: path)
        } catch {
            throw BundleError.reason(error.localizedDescription)
        }
    }
}
