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

public typealias FhirR4Resource = ModelsR4.DomainResource
extension FhirR4Resource: AnyFhirResource {}

extension CustomIdentifiable where Self: FhirR4Resource {
    public func makeIdentifier(with id: String, partnerId: String) -> FhirIdentifierType {
        ModelsR4.Identifier(assigner: ModelsR4.Reference(reference: partnerId.asFHIRStringPrimitive()), value: id.asFHIRStringPrimitive())
    }
}

extension ModelsR4.Identifier: FhirIdentifierType {
    public var assignerString: String? {
        assigner?.reference?.value?.string
    }

    public var valueString: String? {
        value?.value?.string
    }
}

extension ModelsR4.DocumentReference: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [ModelsR4.Identifier]
        }
    }
}

extension ModelsR4.Questionnaire: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [ModelsR4.Identifier]
        }
    }
}

extension ModelsR4.Observation: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [ModelsR4.Identifier]
        }
    }
}

extension ModelsR4.DiagnosticReport: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [ModelsR4.Identifier]
        }
    }
}

extension ModelsR4.CarePlan: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [ModelsR4.Identifier]
        }
    }
}

extension ModelsR4.Organization: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [ModelsR4.Identifier]
        }
    }
}

extension ModelsR4.Practitioner: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [ModelsR4.Identifier]
        }
    }
}

extension ModelsR4.Patient: CustomIdentifiable {
    public var customIdentifiers: [FhirIdentifierType]? {
        get {
            identifier
        }
        set {
            self.identifier = newValue as? [ModelsR4.Identifier]
        }
    }
}
