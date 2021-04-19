//
//  R4+Core.swift
//  ModelsR4
//
//  Created by Alessio Borraccino on 17.04.21.
//  Copyright © 2021 HPS Gesundheitscloud gGmbH. All rights reserved.
//

import Data4LifeFHIRCore

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
