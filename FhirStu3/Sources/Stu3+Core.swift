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

@_exported import Data4LifeFHIRCore

public typealias FhirStu3Resource = Data4LifeFHIR.DomainResource
extension FhirStu3Resource: AnyFhirResource {}

extension Data4LifeFHIR.Identifier: FhirIdentifierType {
    public var assignerString: String? {
        assigner?.reference
    }

    public var valueString: String? {
        value
    }
}

extension CustomIdentifiable where Self: FhirStu3Resource {
    public func makeIdentifier(with id: String, partnerId: String) -> FhirIdentifierType {
        Data4LifeFHIR.Identifier(identifier: id, partnerId: partnerId)
    }
}

extension Data4LifeFHIR.DocumentReference: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [Data4LifeFHIR.Identifier]
        }
    }
}

extension Data4LifeFHIR.Questionnaire: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [Data4LifeFHIR.Identifier]
        }
    }
}

extension Data4LifeFHIR.Observation: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [Data4LifeFHIR.Identifier]
        }
    }
}

extension Data4LifeFHIR.DiagnosticReport: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [Data4LifeFHIR.Identifier]
        }
    }
}

extension Data4LifeFHIR.CarePlan: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [Data4LifeFHIR.Identifier]
        }
    }
}

extension Data4LifeFHIR.Organization: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [Data4LifeFHIR.Identifier]
        }
    }
}

extension Data4LifeFHIR.Practitioner: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [Data4LifeFHIR.Identifier]
        }
    }
}

extension Data4LifeFHIR.Patient: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [Data4LifeFHIR.Identifier]
        }
    }
}
