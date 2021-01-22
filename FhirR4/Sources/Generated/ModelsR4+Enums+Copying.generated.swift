// Generated using Sourcery 1.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// Copyright (c) 2020 D4L data4life gGmbH
// All rights reserved.

// D4L owns all legal rights, title and interest in and to the Software Development Kit ("SDK"),
// including any intellectual property rights that subsist in the SDK.

// The SDK and its documentation may be accessed and used for viewing/review purposes only.
// Any usage of the SDK for other purposes, including usage for the development of
// applications/third-party applications shall require the conclusion of a license agreement
// between you and D4L.

// If you are interested in licensing the SDK for your own applications/third-party
// applications and/or if you’d like to contribute to the development of the SDK, please
// contact D4L by email to help@data4life.care.

// swiftlint:disable file_length

// MARK: Enums
// MARK: ActivityDefinition.ProductX
extension ModelsR4.ActivityDefinition.ProductX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ActivityDefinition.ProductX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ActivityDefinition.ProductX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ActivityDefinition.SubjectX
extension ModelsR4.ActivityDefinition.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ActivityDefinition.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ActivityDefinition.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ActivityDefinition.TimingX
extension ModelsR4.ActivityDefinition.TimingX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.ActivityDefinition.TimingX.age(value1.copy() as! Age)
        case .dateTime(let value1):
            return ModelsR4.ActivityDefinition.TimingX.dateTime(value1)
        case .duration(let value1):
            return ModelsR4.ActivityDefinition.TimingX.duration(value1.copy() as! Duration)
        case .period(let value1):
            return ModelsR4.ActivityDefinition.TimingX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.ActivityDefinition.TimingX.range(value1.copy() as! Range)
        case .timing(let value1):
            return ModelsR4.ActivityDefinition.TimingX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: AllergyIntolerance.OnsetX
extension ModelsR4.AllergyIntolerance.OnsetX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.AllergyIntolerance.OnsetX.age(value1.copy() as! Age)
        case .dateTime(let value1):
            return ModelsR4.AllergyIntolerance.OnsetX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.AllergyIntolerance.OnsetX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.AllergyIntolerance.OnsetX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.AllergyIntolerance.OnsetX.string(value1)
        }
    }
}

// MARK: Annotation.AuthorX
extension ModelsR4.Annotation.AuthorX {

    public func copy() -> Any {
        switch self {
        case .reference(let value1):
            return ModelsR4.Annotation.AuthorX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.Annotation.AuthorX.string(value1)
        }
    }
}

// MARK: AuditEventEntityDetail.ValueX
extension ModelsR4.AuditEventEntityDetail.ValueX {

    public func copy() -> Any {
        switch self {
        case .base64Binary(let value1):
            return ModelsR4.AuditEventEntityDetail.ValueX.base64Binary(value1)
        case .string(let value1):
            return ModelsR4.AuditEventEntityDetail.ValueX.string(value1)
        }
    }
}

// MARK: BiologicallyDerivedProductCollection.CollectedX
extension ModelsR4.BiologicallyDerivedProductCollection.CollectedX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.BiologicallyDerivedProductCollection.CollectedX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.BiologicallyDerivedProductCollection.CollectedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: BiologicallyDerivedProductManipulation.TimeX
extension ModelsR4.BiologicallyDerivedProductManipulation.TimeX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.BiologicallyDerivedProductManipulation.TimeX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.BiologicallyDerivedProductManipulation.TimeX.period(value1.copy() as! Period)
        }
    }
}

// MARK: BiologicallyDerivedProductProcessing.TimeX
extension ModelsR4.BiologicallyDerivedProductProcessing.TimeX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.BiologicallyDerivedProductProcessing.TimeX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.BiologicallyDerivedProductProcessing.TimeX.period(value1.copy() as! Period)
        }
    }
}

// MARK: CarePlanActivityDetail.ProductX
extension ModelsR4.CarePlanActivityDetail.ProductX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.CarePlanActivityDetail.ProductX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.CarePlanActivityDetail.ProductX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: CarePlanActivityDetail.ScheduledX
extension ModelsR4.CarePlanActivityDetail.ScheduledX {

    public func copy() -> Any {
        switch self {
        case .period(let value1):
            return ModelsR4.CarePlanActivityDetail.ScheduledX.period(value1.copy() as! Period)
        case .string(let value1):
            return ModelsR4.CarePlanActivityDetail.ScheduledX.string(value1)
        case .timing(let value1):
            return ModelsR4.CarePlanActivityDetail.ScheduledX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: ChargeItem.OccurrenceX
extension ModelsR4.ChargeItem.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.ChargeItem.OccurrenceX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.ChargeItem.OccurrenceX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.ChargeItem.OccurrenceX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: ChargeItem.ProductX
extension ModelsR4.ChargeItem.ProductX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ChargeItem.ProductX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ChargeItem.ProductX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ClaimAccident.LocationX
extension ModelsR4.ClaimAccident.LocationX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ClaimAccident.LocationX.address(value1.copy() as! Address)
        case .reference(let value1):
            return ModelsR4.ClaimAccident.LocationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ClaimDiagnosis.DiagnosisX
extension ModelsR4.ClaimDiagnosis.DiagnosisX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ClaimDiagnosis.DiagnosisX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ClaimDiagnosis.DiagnosisX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ClaimItem.LocationX
extension ModelsR4.ClaimItem.LocationX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ClaimItem.LocationX.address(value1.copy() as! Address)
        case .codeableConcept(let value1):
            return ModelsR4.ClaimItem.LocationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ClaimItem.LocationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ClaimItem.ServicedX
extension ModelsR4.ClaimItem.ServicedX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.ClaimItem.ServicedX.date(value1)
        case .period(let value1):
            return ModelsR4.ClaimItem.ServicedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: ClaimProcedure.ProcedureX
extension ModelsR4.ClaimProcedure.ProcedureX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ClaimProcedure.ProcedureX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ClaimProcedure.ProcedureX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ClaimResponseAddItem.LocationX
extension ModelsR4.ClaimResponseAddItem.LocationX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ClaimResponseAddItem.LocationX.address(value1.copy() as! Address)
        case .codeableConcept(let value1):
            return ModelsR4.ClaimResponseAddItem.LocationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ClaimResponseAddItem.LocationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ClaimResponseAddItem.ServicedX
extension ModelsR4.ClaimResponseAddItem.ServicedX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.ClaimResponseAddItem.ServicedX.date(value1)
        case .period(let value1):
            return ModelsR4.ClaimResponseAddItem.ServicedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: ClaimSupportingInfo.TimingX
extension ModelsR4.ClaimSupportingInfo.TimingX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.ClaimSupportingInfo.TimingX.date(value1)
        case .period(let value1):
            return ModelsR4.ClaimSupportingInfo.TimingX.period(value1.copy() as! Period)
        }
    }
}

// MARK: ClaimSupportingInfo.ValueX
extension ModelsR4.ClaimSupportingInfo.ValueX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.ClaimSupportingInfo.ValueX.attachment(value1.copy() as! Attachment)
        case .boolean(let value1):
            return ModelsR4.ClaimSupportingInfo.ValueX.boolean(value1)
        case .quantity(let value1):
            return ModelsR4.ClaimSupportingInfo.ValueX.quantity(value1.copy() as! Quantity)
        case .reference(let value1):
            return ModelsR4.ClaimSupportingInfo.ValueX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.ClaimSupportingInfo.ValueX.string(value1)
        }
    }
}

// MARK: ClinicalImpression.EffectiveX
extension ModelsR4.ClinicalImpression.EffectiveX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.ClinicalImpression.EffectiveX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.ClinicalImpression.EffectiveX.period(value1.copy() as! Period)
        }
    }
}

// MARK: CodeSystemConceptProperty.ValueX
extension ModelsR4.CodeSystemConceptProperty.ValueX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.CodeSystemConceptProperty.ValueX.boolean(value1)
        case .code(let value1):
            return ModelsR4.CodeSystemConceptProperty.ValueX.code(value1)
        case .coding(let value1):
            return ModelsR4.CodeSystemConceptProperty.ValueX.coding(value1.copy() as! Coding)
        case .dateTime(let value1):
            return ModelsR4.CodeSystemConceptProperty.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.CodeSystemConceptProperty.ValueX.decimal(value1)
        case .integer(let value1):
            return ModelsR4.CodeSystemConceptProperty.ValueX.integer(value1)
        case .string(let value1):
            return ModelsR4.CodeSystemConceptProperty.ValueX.string(value1)
        }
    }
}

// MARK: CommunicationPayload.ContentX
extension ModelsR4.CommunicationPayload.ContentX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.CommunicationPayload.ContentX.attachment(value1.copy() as! Attachment)
        case .reference(let value1):
            return ModelsR4.CommunicationPayload.ContentX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.CommunicationPayload.ContentX.string(value1)
        }
    }
}

// MARK: CommunicationRequest.OccurrenceX
extension ModelsR4.CommunicationRequest.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.CommunicationRequest.OccurrenceX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.CommunicationRequest.OccurrenceX.period(value1.copy() as! Period)
        }
    }
}

// MARK: CommunicationRequestPayload.ContentX
extension ModelsR4.CommunicationRequestPayload.ContentX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.CommunicationRequestPayload.ContentX.attachment(value1.copy() as! Attachment)
        case .reference(let value1):
            return ModelsR4.CommunicationRequestPayload.ContentX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.CommunicationRequestPayload.ContentX.string(value1)
        }
    }
}

// MARK: CompositionRelatesTo.TargetX
extension ModelsR4.CompositionRelatesTo.TargetX {

    public func copy() -> Any {
        switch self {
        case .identifier(let value1):
            return ModelsR4.CompositionRelatesTo.TargetX.identifier(value1.copy() as! Identifier)
        case .reference(let value1):
            return ModelsR4.CompositionRelatesTo.TargetX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ConceptMap.SourceX
extension ModelsR4.ConceptMap.SourceX {

    public func copy() -> Any {
        switch self {
        case .canonical(let value1):
            return ModelsR4.ConceptMap.SourceX.canonical(value1)
        case .uri(let value1):
            return ModelsR4.ConceptMap.SourceX.uri(value1)
        }
    }
}

// MARK: ConceptMap.TargetX
extension ModelsR4.ConceptMap.TargetX {

    public func copy() -> Any {
        switch self {
        case .canonical(let value1):
            return ModelsR4.ConceptMap.TargetX.canonical(value1)
        case .uri(let value1):
            return ModelsR4.ConceptMap.TargetX.uri(value1)
        }
    }
}

// MARK: Condition.AbatementX
extension ModelsR4.Condition.AbatementX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.Condition.AbatementX.age(value1.copy() as! Age)
        case .dateTime(let value1):
            return ModelsR4.Condition.AbatementX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.Condition.AbatementX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.Condition.AbatementX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.Condition.AbatementX.string(value1)
        }
    }
}

// MARK: Condition.OnsetX
extension ModelsR4.Condition.OnsetX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.Condition.OnsetX.age(value1.copy() as! Age)
        case .dateTime(let value1):
            return ModelsR4.Condition.OnsetX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.Condition.OnsetX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.Condition.OnsetX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.Condition.OnsetX.string(value1)
        }
    }
}

// MARK: Consent.SourceX
extension ModelsR4.Consent.SourceX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.Consent.SourceX.attachment(value1.copy() as! Attachment)
        case .reference(let value1):
            return ModelsR4.Consent.SourceX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: Contract.LegallyBindingX
extension ModelsR4.Contract.LegallyBindingX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.Contract.LegallyBindingX.attachment(value1.copy() as! Attachment)
        case .reference(let value1):
            return ModelsR4.Contract.LegallyBindingX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: Contract.TopicX
extension ModelsR4.Contract.TopicX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.Contract.TopicX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.Contract.TopicX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ContractFriendly.ContentX
extension ModelsR4.ContractFriendly.ContentX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.ContractFriendly.ContentX.attachment(value1.copy() as! Attachment)
        case .reference(let value1):
            return ModelsR4.ContractFriendly.ContentX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ContractLegal.ContentX
extension ModelsR4.ContractLegal.ContentX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.ContractLegal.ContentX.attachment(value1.copy() as! Attachment)
        case .reference(let value1):
            return ModelsR4.ContractLegal.ContentX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ContractRule.ContentX
extension ModelsR4.ContractRule.ContentX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.ContractRule.ContentX.attachment(value1.copy() as! Attachment)
        case .reference(let value1):
            return ModelsR4.ContractRule.ContentX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ContractTerm.TopicX
extension ModelsR4.ContractTerm.TopicX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ContractTerm.TopicX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ContractTerm.TopicX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ContractTermAction.OccurrenceX
extension ModelsR4.ContractTermAction.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.ContractTermAction.OccurrenceX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.ContractTermAction.OccurrenceX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.ContractTermAction.OccurrenceX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: ContractTermAssetValuedItem.EntityX
extension ModelsR4.ContractTermAssetValuedItem.EntityX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ContractTermAssetValuedItem.EntityX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ContractTermAssetValuedItem.EntityX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ContractTermOfferAnswer.ValueX
extension ModelsR4.ContractTermOfferAnswer.ValueX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.attachment(value1.copy() as! Attachment)
        case .boolean(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.boolean(value1)
        case .coding(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.coding(value1.copy() as! Coding)
        case .date(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.decimal(value1)
        case .integer(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.integer(value1)
        case .quantity(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.quantity(value1.copy() as! Quantity)
        case .reference(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.time(value1)
        case .uri(let value1):
            return ModelsR4.ContractTermOfferAnswer.ValueX.uri(value1)
        }
    }
}

// MARK: CoverageCostToBeneficiary.ValueX
extension ModelsR4.CoverageCostToBeneficiary.ValueX {

    public func copy() -> Any {
        switch self {
        case .money(let value1):
            return ModelsR4.CoverageCostToBeneficiary.ValueX.money(value1.copy() as! Money)
        case .quantity(let value1):
            return ModelsR4.CoverageCostToBeneficiary.ValueX.quantity(value1.copy() as! Quantity)
        }
    }
}

// MARK: CoverageEligibilityRequest.ServicedX
extension ModelsR4.CoverageEligibilityRequest.ServicedX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.CoverageEligibilityRequest.ServicedX.date(value1)
        case .period(let value1):
            return ModelsR4.CoverageEligibilityRequest.ServicedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: CoverageEligibilityRequestItemDiagnosis.DiagnosisX
extension ModelsR4.CoverageEligibilityRequestItemDiagnosis.DiagnosisX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.CoverageEligibilityRequestItemDiagnosis.DiagnosisX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.CoverageEligibilityRequestItemDiagnosis.DiagnosisX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: CoverageEligibilityResponse.ServicedX
extension ModelsR4.CoverageEligibilityResponse.ServicedX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.CoverageEligibilityResponse.ServicedX.date(value1)
        case .period(let value1):
            return ModelsR4.CoverageEligibilityResponse.ServicedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: CoverageEligibilityResponseInsuranceItemBenefit.AllowedX
extension ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit.AllowedX {

    public func copy() -> Any {
        switch self {
        case .money(let value1):
            return ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit.AllowedX.money(value1.copy() as! Money)
        case .string(let value1):
            return ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit.AllowedX.string(value1)
        case .unsignedInt(let value1):
            return ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit.AllowedX.unsignedInt(value1)
        }
    }
}

// MARK: CoverageEligibilityResponseInsuranceItemBenefit.UsedX
extension ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit.UsedX {

    public func copy() -> Any {
        switch self {
        case .money(let value1):
            return ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit.UsedX.money(value1.copy() as! Money)
        case .string(let value1):
            return ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit.UsedX.string(value1)
        case .unsignedInt(let value1):
            return ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit.UsedX.unsignedInt(value1)
        }
    }
}

// MARK: DataRequirement.SubjectX
extension ModelsR4.DataRequirement.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.DataRequirement.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.DataRequirement.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: DataRequirementDateFilter.ValueX
extension ModelsR4.DataRequirementDateFilter.ValueX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.DataRequirementDateFilter.ValueX.dateTime(value1)
        case .duration(let value1):
            return ModelsR4.DataRequirementDateFilter.ValueX.duration(value1.copy() as! Duration)
        case .period(let value1):
            return ModelsR4.DataRequirementDateFilter.ValueX.period(value1.copy() as! Period)
        }
    }
}

// MARK: DetectedIssue.IdentifiedX
extension ModelsR4.DetectedIssue.IdentifiedX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.DetectedIssue.IdentifiedX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.DetectedIssue.IdentifiedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: DeviceDefinition.ManufacturerX
extension ModelsR4.DeviceDefinition.ManufacturerX {

    public func copy() -> Any {
        switch self {
        case .reference(let value1):
            return ModelsR4.DeviceDefinition.ManufacturerX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.DeviceDefinition.ManufacturerX.string(value1)
        }
    }
}

// MARK: DeviceRequest.CodeX
extension ModelsR4.DeviceRequest.CodeX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.DeviceRequest.CodeX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.DeviceRequest.CodeX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: DeviceRequest.OccurrenceX
extension ModelsR4.DeviceRequest.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.DeviceRequest.OccurrenceX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.DeviceRequest.OccurrenceX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.DeviceRequest.OccurrenceX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: DeviceRequestParameter.ValueX
extension ModelsR4.DeviceRequestParameter.ValueX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.DeviceRequestParameter.ValueX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.DeviceRequestParameter.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .quantity(let value1):
            return ModelsR4.DeviceRequestParameter.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.DeviceRequestParameter.ValueX.range(value1.copy() as! Range)
        }
    }
}

// MARK: DeviceUseStatement.TimingX
extension ModelsR4.DeviceUseStatement.TimingX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.DeviceUseStatement.TimingX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.DeviceUseStatement.TimingX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.DeviceUseStatement.TimingX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: DiagnosticReport.EffectiveX
extension ModelsR4.DiagnosticReport.EffectiveX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.DiagnosticReport.EffectiveX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.DiagnosticReport.EffectiveX.period(value1.copy() as! Period)
        }
    }
}

// MARK: Dosage.AsNeededX
extension ModelsR4.Dosage.AsNeededX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.Dosage.AsNeededX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.Dosage.AsNeededX.codeableConcept(value1.copy() as! CodeableConcept)
        }
    }
}

// MARK: DosageDoseAndRate.DoseX
extension ModelsR4.DosageDoseAndRate.DoseX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.DosageDoseAndRate.DoseX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.DosageDoseAndRate.DoseX.range(value1.copy() as! Range)
        }
    }
}

// MARK: DosageDoseAndRate.RateX
extension ModelsR4.DosageDoseAndRate.RateX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.DosageDoseAndRate.RateX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.DosageDoseAndRate.RateX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.DosageDoseAndRate.RateX.ratio(value1.copy() as! Ratio)
        }
    }
}

// MARK: ElementDefinition.DefaultValueX
extension ModelsR4.ElementDefinition.DefaultValueX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.canonical(value1)
        case .code(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.id(value1)
        case .identifier(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.string(value1)
        case .time(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.time(value1)
        case .timing(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.uri(value1)
        case .url(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.ElementDefinition.DefaultValueX.uuid(value1)
        }
    }
}

// MARK: ElementDefinition.FixedX
extension ModelsR4.ElementDefinition.FixedX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ElementDefinition.FixedX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.ElementDefinition.FixedX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.ElementDefinition.FixedX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.ElementDefinition.FixedX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.ElementDefinition.FixedX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.ElementDefinition.FixedX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.ElementDefinition.FixedX.canonical(value1)
        case .code(let value1):
            return ModelsR4.ElementDefinition.FixedX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.ElementDefinition.FixedX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.ElementDefinition.FixedX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.ElementDefinition.FixedX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.ElementDefinition.FixedX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.ElementDefinition.FixedX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.ElementDefinition.FixedX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.ElementDefinition.FixedX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.ElementDefinition.FixedX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.ElementDefinition.FixedX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ElementDefinition.FixedX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.ElementDefinition.FixedX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.ElementDefinition.FixedX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.ElementDefinition.FixedX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.ElementDefinition.FixedX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.ElementDefinition.FixedX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.ElementDefinition.FixedX.id(value1)
        case .identifier(let value1):
            return ModelsR4.ElementDefinition.FixedX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.ElementDefinition.FixedX.instant(value1)
        case .integer(let value1):
            return ModelsR4.ElementDefinition.FixedX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.ElementDefinition.FixedX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.ElementDefinition.FixedX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.ElementDefinition.FixedX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.ElementDefinition.FixedX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.ElementDefinition.FixedX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.ElementDefinition.FixedX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.ElementDefinition.FixedX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.ElementDefinition.FixedX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.ElementDefinition.FixedX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.ElementDefinition.FixedX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.ElementDefinition.FixedX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.ElementDefinition.FixedX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.ElementDefinition.FixedX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.ElementDefinition.FixedX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.ElementDefinition.FixedX.string(value1)
        case .time(let value1):
            return ModelsR4.ElementDefinition.FixedX.time(value1)
        case .timing(let value1):
            return ModelsR4.ElementDefinition.FixedX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.ElementDefinition.FixedX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.ElementDefinition.FixedX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.ElementDefinition.FixedX.uri(value1)
        case .url(let value1):
            return ModelsR4.ElementDefinition.FixedX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.ElementDefinition.FixedX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.ElementDefinition.FixedX.uuid(value1)
        }
    }
}

// MARK: ElementDefinition.MaxValueX
extension ModelsR4.ElementDefinition.MaxValueX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.decimal(value1)
        case .instant(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.integer(value1)
        case .positiveInt(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.quantity(value1.copy() as! Quantity)
        case .time(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.time(value1)
        case .unsignedInt(let value1):
            return ModelsR4.ElementDefinition.MaxValueX.unsignedInt(value1)
        }
    }
}

// MARK: ElementDefinition.MinValueX
extension ModelsR4.ElementDefinition.MinValueX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.ElementDefinition.MinValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.ElementDefinition.MinValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ElementDefinition.MinValueX.decimal(value1)
        case .instant(let value1):
            return ModelsR4.ElementDefinition.MinValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.ElementDefinition.MinValueX.integer(value1)
        case .positiveInt(let value1):
            return ModelsR4.ElementDefinition.MinValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.ElementDefinition.MinValueX.quantity(value1.copy() as! Quantity)
        case .time(let value1):
            return ModelsR4.ElementDefinition.MinValueX.time(value1)
        case .unsignedInt(let value1):
            return ModelsR4.ElementDefinition.MinValueX.unsignedInt(value1)
        }
    }
}

// MARK: ElementDefinition.PatternX
extension ModelsR4.ElementDefinition.PatternX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ElementDefinition.PatternX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.ElementDefinition.PatternX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.ElementDefinition.PatternX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.ElementDefinition.PatternX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.ElementDefinition.PatternX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.ElementDefinition.PatternX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.ElementDefinition.PatternX.canonical(value1)
        case .code(let value1):
            return ModelsR4.ElementDefinition.PatternX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.ElementDefinition.PatternX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.ElementDefinition.PatternX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.ElementDefinition.PatternX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.ElementDefinition.PatternX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.ElementDefinition.PatternX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.ElementDefinition.PatternX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.ElementDefinition.PatternX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.ElementDefinition.PatternX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.ElementDefinition.PatternX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ElementDefinition.PatternX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.ElementDefinition.PatternX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.ElementDefinition.PatternX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.ElementDefinition.PatternX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.ElementDefinition.PatternX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.ElementDefinition.PatternX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.ElementDefinition.PatternX.id(value1)
        case .identifier(let value1):
            return ModelsR4.ElementDefinition.PatternX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.ElementDefinition.PatternX.instant(value1)
        case .integer(let value1):
            return ModelsR4.ElementDefinition.PatternX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.ElementDefinition.PatternX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.ElementDefinition.PatternX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.ElementDefinition.PatternX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.ElementDefinition.PatternX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.ElementDefinition.PatternX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.ElementDefinition.PatternX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.ElementDefinition.PatternX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.ElementDefinition.PatternX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.ElementDefinition.PatternX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.ElementDefinition.PatternX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.ElementDefinition.PatternX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.ElementDefinition.PatternX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.ElementDefinition.PatternX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.ElementDefinition.PatternX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.ElementDefinition.PatternX.string(value1)
        case .time(let value1):
            return ModelsR4.ElementDefinition.PatternX.time(value1)
        case .timing(let value1):
            return ModelsR4.ElementDefinition.PatternX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.ElementDefinition.PatternX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.ElementDefinition.PatternX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.ElementDefinition.PatternX.uri(value1)
        case .url(let value1):
            return ModelsR4.ElementDefinition.PatternX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.ElementDefinition.PatternX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.ElementDefinition.PatternX.uuid(value1)
        }
    }
}

// MARK: ElementDefinitionExample.ValueX
extension ModelsR4.ElementDefinitionExample.ValueX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.canonical(value1)
        case .code(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.id(value1)
        case .identifier(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.time(value1)
        case .timing(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.uri(value1)
        case .url(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.ElementDefinitionExample.ValueX.uuid(value1)
        }
    }
}

// MARK: EventDefinition.SubjectX
extension ModelsR4.EventDefinition.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.EventDefinition.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.EventDefinition.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: EvidenceVariableCharacteristic.DefinitionX
extension ModelsR4.EvidenceVariableCharacteristic.DefinitionX {

    public func copy() -> Any {
        switch self {
        case .canonical(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.DefinitionX.canonical(value1)
        case .codeableConcept(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.DefinitionX.codeableConcept(value1.copy() as! CodeableConcept)
        case .dataRequirement(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.DefinitionX.dataRequirement(value1.copy() as! DataRequirement)
        case .expression(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.DefinitionX.expression(value1.copy() as! Expression)
        case .reference(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.DefinitionX.reference(value1.copy() as! Reference)
        case .triggerDefinition(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.DefinitionX.triggerDefinition(value1.copy() as! TriggerDefinition)
        }
    }
}

// MARK: EvidenceVariableCharacteristic.ParticipantEffectiveX
extension ModelsR4.EvidenceVariableCharacteristic.ParticipantEffectiveX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.ParticipantEffectiveX.dateTime(value1)
        case .duration(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.ParticipantEffectiveX.duration(value1.copy() as! Duration)
        case .period(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.ParticipantEffectiveX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.EvidenceVariableCharacteristic.ParticipantEffectiveX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: ExplanationOfBenefitAccident.LocationX
extension ModelsR4.ExplanationOfBenefitAccident.LocationX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ExplanationOfBenefitAccident.LocationX.address(value1.copy() as! Address)
        case .reference(let value1):
            return ModelsR4.ExplanationOfBenefitAccident.LocationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ExplanationOfBenefitAddItem.LocationX
extension ModelsR4.ExplanationOfBenefitAddItem.LocationX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ExplanationOfBenefitAddItem.LocationX.address(value1.copy() as! Address)
        case .codeableConcept(let value1):
            return ModelsR4.ExplanationOfBenefitAddItem.LocationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ExplanationOfBenefitAddItem.LocationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ExplanationOfBenefitAddItem.ServicedX
extension ModelsR4.ExplanationOfBenefitAddItem.ServicedX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.ExplanationOfBenefitAddItem.ServicedX.date(value1)
        case .period(let value1):
            return ModelsR4.ExplanationOfBenefitAddItem.ServicedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: ExplanationOfBenefitBenefitBalanceFinancial.AllowedX
extension ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial.AllowedX {

    public func copy() -> Any {
        switch self {
        case .money(let value1):
            return ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial.AllowedX.money(value1.copy() as! Money)
        case .string(let value1):
            return ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial.AllowedX.string(value1)
        case .unsignedInt(let value1):
            return ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial.AllowedX.unsignedInt(value1)
        }
    }
}

// MARK: ExplanationOfBenefitBenefitBalanceFinancial.UsedX
extension ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial.UsedX {

    public func copy() -> Any {
        switch self {
        case .money(let value1):
            return ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial.UsedX.money(value1.copy() as! Money)
        case .unsignedInt(let value1):
            return ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial.UsedX.unsignedInt(value1)
        }
    }
}

// MARK: ExplanationOfBenefitDiagnosis.DiagnosisX
extension ModelsR4.ExplanationOfBenefitDiagnosis.DiagnosisX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ExplanationOfBenefitDiagnosis.DiagnosisX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ExplanationOfBenefitDiagnosis.DiagnosisX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ExplanationOfBenefitItem.LocationX
extension ModelsR4.ExplanationOfBenefitItem.LocationX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ExplanationOfBenefitItem.LocationX.address(value1.copy() as! Address)
        case .codeableConcept(let value1):
            return ModelsR4.ExplanationOfBenefitItem.LocationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ExplanationOfBenefitItem.LocationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ExplanationOfBenefitItem.ServicedX
extension ModelsR4.ExplanationOfBenefitItem.ServicedX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.ExplanationOfBenefitItem.ServicedX.date(value1)
        case .period(let value1):
            return ModelsR4.ExplanationOfBenefitItem.ServicedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: ExplanationOfBenefitProcedure.ProcedureX
extension ModelsR4.ExplanationOfBenefitProcedure.ProcedureX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ExplanationOfBenefitProcedure.ProcedureX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ExplanationOfBenefitProcedure.ProcedureX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ExplanationOfBenefitSupportingInfo.TimingX
extension ModelsR4.ExplanationOfBenefitSupportingInfo.TimingX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.ExplanationOfBenefitSupportingInfo.TimingX.date(value1)
        case .period(let value1):
            return ModelsR4.ExplanationOfBenefitSupportingInfo.TimingX.period(value1.copy() as! Period)
        }
    }
}

// MARK: ExplanationOfBenefitSupportingInfo.ValueX
extension ModelsR4.ExplanationOfBenefitSupportingInfo.ValueX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.ExplanationOfBenefitSupportingInfo.ValueX.attachment(value1.copy() as! Attachment)
        case .boolean(let value1):
            return ModelsR4.ExplanationOfBenefitSupportingInfo.ValueX.boolean(value1)
        case .quantity(let value1):
            return ModelsR4.ExplanationOfBenefitSupportingInfo.ValueX.quantity(value1.copy() as! Quantity)
        case .reference(let value1):
            return ModelsR4.ExplanationOfBenefitSupportingInfo.ValueX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.ExplanationOfBenefitSupportingInfo.ValueX.string(value1)
        }
    }
}

// MARK: Extension.ValueX
extension ModelsR4.Extension.ValueX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.Extension.ValueX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.Extension.ValueX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.Extension.ValueX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.Extension.ValueX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.Extension.ValueX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.Extension.ValueX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.Extension.ValueX.canonical(value1)
        case .code(let value1):
            return ModelsR4.Extension.ValueX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.Extension.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.Extension.ValueX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.Extension.ValueX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.Extension.ValueX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.Extension.ValueX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.Extension.ValueX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.Extension.ValueX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.Extension.ValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.Extension.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.Extension.ValueX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.Extension.ValueX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.Extension.ValueX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.Extension.ValueX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.Extension.ValueX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.Extension.ValueX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.Extension.ValueX.id(value1)
        case .identifier(let value1):
            return ModelsR4.Extension.ValueX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.Extension.ValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.Extension.ValueX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.Extension.ValueX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.Extension.ValueX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.Extension.ValueX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.Extension.ValueX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.Extension.ValueX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.Extension.ValueX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.Extension.ValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.Extension.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.Extension.ValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.Extension.ValueX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.Extension.ValueX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.Extension.ValueX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.Extension.ValueX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.Extension.ValueX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.Extension.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.Extension.ValueX.time(value1)
        case .timing(let value1):
            return ModelsR4.Extension.ValueX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.Extension.ValueX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.Extension.ValueX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.Extension.ValueX.uri(value1)
        case .url(let value1):
            return ModelsR4.Extension.ValueX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.Extension.ValueX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.Extension.ValueX.uuid(value1)
        }
    }
}

// MARK: FamilyMemberHistory.AgeX
extension ModelsR4.FamilyMemberHistory.AgeX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.FamilyMemberHistory.AgeX.age(value1.copy() as! Age)
        case .range(let value1):
            return ModelsR4.FamilyMemberHistory.AgeX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.FamilyMemberHistory.AgeX.string(value1)
        }
    }
}

// MARK: FamilyMemberHistory.BornX
extension ModelsR4.FamilyMemberHistory.BornX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.FamilyMemberHistory.BornX.date(value1)
        case .period(let value1):
            return ModelsR4.FamilyMemberHistory.BornX.period(value1.copy() as! Period)
        case .string(let value1):
            return ModelsR4.FamilyMemberHistory.BornX.string(value1)
        }
    }
}

// MARK: FamilyMemberHistory.DeceasedX
extension ModelsR4.FamilyMemberHistory.DeceasedX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.FamilyMemberHistory.DeceasedX.age(value1.copy() as! Age)
        case .boolean(let value1):
            return ModelsR4.FamilyMemberHistory.DeceasedX.boolean(value1)
        case .date(let value1):
            return ModelsR4.FamilyMemberHistory.DeceasedX.date(value1)
        case .range(let value1):
            return ModelsR4.FamilyMemberHistory.DeceasedX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.FamilyMemberHistory.DeceasedX.string(value1)
        }
    }
}

// MARK: FamilyMemberHistoryCondition.OnsetX
extension ModelsR4.FamilyMemberHistoryCondition.OnsetX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.FamilyMemberHistoryCondition.OnsetX.age(value1.copy() as! Age)
        case .period(let value1):
            return ModelsR4.FamilyMemberHistoryCondition.OnsetX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.FamilyMemberHistoryCondition.OnsetX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.FamilyMemberHistoryCondition.OnsetX.string(value1)
        }
    }
}

// MARK: Goal.StartX
extension ModelsR4.Goal.StartX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.Goal.StartX.codeableConcept(value1.copy() as! CodeableConcept)
        case .date(let value1):
            return ModelsR4.Goal.StartX.date(value1)
        }
    }
}

// MARK: GoalTarget.DetailX
extension ModelsR4.GoalTarget.DetailX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.GoalTarget.DetailX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.GoalTarget.DetailX.codeableConcept(value1.copy() as! CodeableConcept)
        case .integer(let value1):
            return ModelsR4.GoalTarget.DetailX.integer(value1)
        case .quantity(let value1):
            return ModelsR4.GoalTarget.DetailX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.GoalTarget.DetailX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.GoalTarget.DetailX.ratio(value1.copy() as! Ratio)
        case .string(let value1):
            return ModelsR4.GoalTarget.DetailX.string(value1)
        }
    }
}

// MARK: GoalTarget.DueX
extension ModelsR4.GoalTarget.DueX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.GoalTarget.DueX.date(value1)
        case .duration(let value1):
            return ModelsR4.GoalTarget.DueX.duration(value1.copy() as! Duration)
        }
    }
}

// MARK: GroupCharacteristic.ValueX
extension ModelsR4.GroupCharacteristic.ValueX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.GroupCharacteristic.ValueX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.GroupCharacteristic.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .quantity(let value1):
            return ModelsR4.GroupCharacteristic.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.GroupCharacteristic.ValueX.range(value1.copy() as! Range)
        case .reference(let value1):
            return ModelsR4.GroupCharacteristic.ValueX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: GuidanceResponse.ModuleX
extension ModelsR4.GuidanceResponse.ModuleX {

    public func copy() -> Any {
        switch self {
        case .canonical(let value1):
            return ModelsR4.GuidanceResponse.ModuleX.canonical(value1)
        case .codeableConcept(let value1):
            return ModelsR4.GuidanceResponse.ModuleX.codeableConcept(value1.copy() as! CodeableConcept)
        case .uri(let value1):
            return ModelsR4.GuidanceResponse.ModuleX.uri(value1)
        }
    }
}

// MARK: Immunization.OccurrenceX
extension ModelsR4.Immunization.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.Immunization.OccurrenceX.dateTime(value1)
        case .string(let value1):
            return ModelsR4.Immunization.OccurrenceX.string(value1)
        }
    }
}

// MARK: ImmunizationEvaluation.DoseNumberX
extension ModelsR4.ImmunizationEvaluation.DoseNumberX {

    public func copy() -> Any {
        switch self {
        case .positiveInt(let value1):
            return ModelsR4.ImmunizationEvaluation.DoseNumberX.positiveInt(value1)
        case .string(let value1):
            return ModelsR4.ImmunizationEvaluation.DoseNumberX.string(value1)
        }
    }
}

// MARK: ImmunizationEvaluation.SeriesDosesX
extension ModelsR4.ImmunizationEvaluation.SeriesDosesX {

    public func copy() -> Any {
        switch self {
        case .positiveInt(let value1):
            return ModelsR4.ImmunizationEvaluation.SeriesDosesX.positiveInt(value1)
        case .string(let value1):
            return ModelsR4.ImmunizationEvaluation.SeriesDosesX.string(value1)
        }
    }
}

// MARK: ImmunizationProtocolApplied.DoseNumberX
extension ModelsR4.ImmunizationProtocolApplied.DoseNumberX {

    public func copy() -> Any {
        switch self {
        case .positiveInt(let value1):
            return ModelsR4.ImmunizationProtocolApplied.DoseNumberX.positiveInt(value1)
        case .string(let value1):
            return ModelsR4.ImmunizationProtocolApplied.DoseNumberX.string(value1)
        }
    }
}

// MARK: ImmunizationProtocolApplied.SeriesDosesX
extension ModelsR4.ImmunizationProtocolApplied.SeriesDosesX {

    public func copy() -> Any {
        switch self {
        case .positiveInt(let value1):
            return ModelsR4.ImmunizationProtocolApplied.SeriesDosesX.positiveInt(value1)
        case .string(let value1):
            return ModelsR4.ImmunizationProtocolApplied.SeriesDosesX.string(value1)
        }
    }
}

// MARK: ImmunizationRecommendationRecommendation.DoseNumberX
extension ModelsR4.ImmunizationRecommendationRecommendation.DoseNumberX {

    public func copy() -> Any {
        switch self {
        case .positiveInt(let value1):
            return ModelsR4.ImmunizationRecommendationRecommendation.DoseNumberX.positiveInt(value1)
        case .string(let value1):
            return ModelsR4.ImmunizationRecommendationRecommendation.DoseNumberX.string(value1)
        }
    }
}

// MARK: ImmunizationRecommendationRecommendation.SeriesDosesX
extension ModelsR4.ImmunizationRecommendationRecommendation.SeriesDosesX {

    public func copy() -> Any {
        switch self {
        case .positiveInt(let value1):
            return ModelsR4.ImmunizationRecommendationRecommendation.SeriesDosesX.positiveInt(value1)
        case .string(let value1):
            return ModelsR4.ImmunizationRecommendationRecommendation.SeriesDosesX.string(value1)
        }
    }
}

// MARK: ImplementationGuideDefinitionPage.NameX
extension ModelsR4.ImplementationGuideDefinitionPage.NameX {

    public func copy() -> Any {
        switch self {
        case .reference(let value1):
            return ModelsR4.ImplementationGuideDefinitionPage.NameX.reference(value1.copy() as! Reference)
        case .url(let value1):
            return ModelsR4.ImplementationGuideDefinitionPage.NameX.url(value1)
        }
    }
}

// MARK: ImplementationGuideDefinitionResource.ExampleX
extension ModelsR4.ImplementationGuideDefinitionResource.ExampleX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.ImplementationGuideDefinitionResource.ExampleX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.ImplementationGuideDefinitionResource.ExampleX.canonical(value1)
        }
    }
}

// MARK: ImplementationGuideManifestResource.ExampleX
extension ModelsR4.ImplementationGuideManifestResource.ExampleX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.ImplementationGuideManifestResource.ExampleX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.ImplementationGuideManifestResource.ExampleX.canonical(value1)
        }
    }
}

// MARK: InvoiceLineItem.ChargeItemX
extension ModelsR4.InvoiceLineItem.ChargeItemX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.InvoiceLineItem.ChargeItemX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.InvoiceLineItem.ChargeItemX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: Library.SubjectX
extension ModelsR4.Library.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.Library.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.Library.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: Measure.SubjectX
extension ModelsR4.Measure.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.Measure.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.Measure.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: Media.CreatedX
extension ModelsR4.Media.CreatedX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.Media.CreatedX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.Media.CreatedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: MedicationAdministration.EffectiveX
extension ModelsR4.MedicationAdministration.EffectiveX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.MedicationAdministration.EffectiveX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.MedicationAdministration.EffectiveX.period(value1.copy() as! Period)
        }
    }
}

// MARK: MedicationAdministration.MedicationX
extension ModelsR4.MedicationAdministration.MedicationX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationAdministration.MedicationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicationAdministration.MedicationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicationAdministrationDosage.RateX
extension ModelsR4.MedicationAdministrationDosage.RateX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.MedicationAdministrationDosage.RateX.quantity(value1.copy() as! Quantity)
        case .ratio(let value1):
            return ModelsR4.MedicationAdministrationDosage.RateX.ratio(value1.copy() as! Ratio)
        }
    }
}

// MARK: MedicationDispense.MedicationX
extension ModelsR4.MedicationDispense.MedicationX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationDispense.MedicationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicationDispense.MedicationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicationDispense.StatusReasonX
extension ModelsR4.MedicationDispense.StatusReasonX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationDispense.StatusReasonX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicationDispense.StatusReasonX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicationIngredient.ItemX
extension ModelsR4.MedicationIngredient.ItemX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationIngredient.ItemX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicationIngredient.ItemX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicationKnowledgeAdministrationGuidelines.IndicationX
extension ModelsR4.MedicationKnowledgeAdministrationGuidelines.IndicationX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationKnowledgeAdministrationGuidelines.IndicationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicationKnowledgeAdministrationGuidelines.IndicationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics.CharacteristicX
extension ModelsR4.MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics.CharacteristicX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics.CharacteristicX.codeableConcept(value1.copy() as! CodeableConcept)
        case .quantity(let value1):
            return ModelsR4.MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics.CharacteristicX.quantity(value1.copy() as! Quantity)
        }
    }
}

// MARK: MedicationKnowledgeDrugCharacteristic.ValueX
extension ModelsR4.MedicationKnowledgeDrugCharacteristic.ValueX {

    public func copy() -> Any {
        switch self {
        case .base64Binary(let value1):
            return ModelsR4.MedicationKnowledgeDrugCharacteristic.ValueX.base64Binary(value1)
        case .codeableConcept(let value1):
            return ModelsR4.MedicationKnowledgeDrugCharacteristic.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .quantity(let value1):
            return ModelsR4.MedicationKnowledgeDrugCharacteristic.ValueX.quantity(value1.copy() as! Quantity)
        case .string(let value1):
            return ModelsR4.MedicationKnowledgeDrugCharacteristic.ValueX.string(value1)
        }
    }
}

// MARK: MedicationKnowledgeIngredient.ItemX
extension ModelsR4.MedicationKnowledgeIngredient.ItemX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationKnowledgeIngredient.ItemX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicationKnowledgeIngredient.ItemX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicationRequest.MedicationX
extension ModelsR4.MedicationRequest.MedicationX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationRequest.MedicationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicationRequest.MedicationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicationRequest.ReportedX
extension ModelsR4.MedicationRequest.ReportedX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.MedicationRequest.ReportedX.boolean(value1)
        case .reference(let value1):
            return ModelsR4.MedicationRequest.ReportedX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicationRequestSubstitution.AllowedX
extension ModelsR4.MedicationRequestSubstitution.AllowedX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.MedicationRequestSubstitution.AllowedX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.MedicationRequestSubstitution.AllowedX.codeableConcept(value1.copy() as! CodeableConcept)
        }
    }
}

// MARK: MedicationStatement.EffectiveX
extension ModelsR4.MedicationStatement.EffectiveX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.MedicationStatement.EffectiveX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.MedicationStatement.EffectiveX.period(value1.copy() as! Period)
        }
    }
}

// MARK: MedicationStatement.MedicationX
extension ModelsR4.MedicationStatement.MedicationX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicationStatement.MedicationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicationStatement.MedicationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicinalProductAuthorizationProcedure.DateX
extension ModelsR4.MedicinalProductAuthorizationProcedure.DateX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.MedicinalProductAuthorizationProcedure.DateX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.MedicinalProductAuthorizationProcedure.DateX.period(value1.copy() as! Period)
        }
    }
}

// MARK: MedicinalProductContraindicationOtherTherapy.MedicationX
extension ModelsR4.MedicinalProductContraindicationOtherTherapy.MedicationX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicinalProductContraindicationOtherTherapy.MedicationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicinalProductContraindicationOtherTherapy.MedicationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicinalProductIndicationOtherTherapy.MedicationX
extension ModelsR4.MedicinalProductIndicationOtherTherapy.MedicationX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicinalProductIndicationOtherTherapy.MedicationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicinalProductIndicationOtherTherapy.MedicationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicinalProductInteractionInteractant.ItemX
extension ModelsR4.MedicinalProductInteractionInteractant.ItemX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicinalProductInteractionInteractant.ItemX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicinalProductInteractionInteractant.ItemX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MedicinalProductSpecialDesignation.IndicationX
extension ModelsR4.MedicinalProductSpecialDesignation.IndicationX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.MedicinalProductSpecialDesignation.IndicationX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.MedicinalProductSpecialDesignation.IndicationX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: MessageDefinition.EventX
extension ModelsR4.MessageDefinition.EventX {

    public func copy() -> Any {
        switch self {
        case .coding(let value1):
            return ModelsR4.MessageDefinition.EventX.coding(value1.copy() as! Coding)
        case .uri(let value1):
            return ModelsR4.MessageDefinition.EventX.uri(value1)
        }
    }
}

// MARK: MessageHeader.EventX
extension ModelsR4.MessageHeader.EventX {

    public func copy() -> Any {
        switch self {
        case .coding(let value1):
            return ModelsR4.MessageHeader.EventX.coding(value1.copy() as! Coding)
        case .uri(let value1):
            return ModelsR4.MessageHeader.EventX.uri(value1)
        }
    }
}

// MARK: NutritionOrderEnteralFormulaAdministration.RateX
extension ModelsR4.NutritionOrderEnteralFormulaAdministration.RateX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.NutritionOrderEnteralFormulaAdministration.RateX.quantity(value1.copy() as! Quantity)
        case .ratio(let value1):
            return ModelsR4.NutritionOrderEnteralFormulaAdministration.RateX.ratio(value1.copy() as! Ratio)
        }
    }
}

// MARK: Observation.EffectiveX
extension ModelsR4.Observation.EffectiveX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.Observation.EffectiveX.dateTime(value1)
        case .instant(let value1):
            return ModelsR4.Observation.EffectiveX.instant(value1)
        case .period(let value1):
            return ModelsR4.Observation.EffectiveX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.Observation.EffectiveX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: Observation.ValueX
extension ModelsR4.Observation.ValueX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.Observation.ValueX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.Observation.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .dateTime(let value1):
            return ModelsR4.Observation.ValueX.dateTime(value1)
        case .integer(let value1):
            return ModelsR4.Observation.ValueX.integer(value1)
        case .period(let value1):
            return ModelsR4.Observation.ValueX.period(value1.copy() as! Period)
        case .quantity(let value1):
            return ModelsR4.Observation.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.Observation.ValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.Observation.ValueX.ratio(value1.copy() as! Ratio)
        case .sampledData(let value1):
            return ModelsR4.Observation.ValueX.sampledData(value1.copy() as! SampledData)
        case .string(let value1):
            return ModelsR4.Observation.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.Observation.ValueX.time(value1)
        }
    }
}

// MARK: ObservationComponent.ValueX
extension ModelsR4.ObservationComponent.ValueX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.ObservationComponent.ValueX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.ObservationComponent.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .dateTime(let value1):
            return ModelsR4.ObservationComponent.ValueX.dateTime(value1)
        case .integer(let value1):
            return ModelsR4.ObservationComponent.ValueX.integer(value1)
        case .period(let value1):
            return ModelsR4.ObservationComponent.ValueX.period(value1.copy() as! Period)
        case .quantity(let value1):
            return ModelsR4.ObservationComponent.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.ObservationComponent.ValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.ObservationComponent.ValueX.ratio(value1.copy() as! Ratio)
        case .sampledData(let value1):
            return ModelsR4.ObservationComponent.ValueX.sampledData(value1.copy() as! SampledData)
        case .string(let value1):
            return ModelsR4.ObservationComponent.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.ObservationComponent.ValueX.time(value1)
        }
    }
}

// MARK: ParametersParameter.ValueX
extension ModelsR4.ParametersParameter.ValueX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.ParametersParameter.ValueX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.ParametersParameter.ValueX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.ParametersParameter.ValueX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.ParametersParameter.ValueX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.ParametersParameter.ValueX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.ParametersParameter.ValueX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.ParametersParameter.ValueX.canonical(value1)
        case .code(let value1):
            return ModelsR4.ParametersParameter.ValueX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.ParametersParameter.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.ParametersParameter.ValueX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.ParametersParameter.ValueX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.ParametersParameter.ValueX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.ParametersParameter.ValueX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.ParametersParameter.ValueX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.ParametersParameter.ValueX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.ParametersParameter.ValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.ParametersParameter.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ParametersParameter.ValueX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.ParametersParameter.ValueX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.ParametersParameter.ValueX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.ParametersParameter.ValueX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.ParametersParameter.ValueX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.ParametersParameter.ValueX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.ParametersParameter.ValueX.id(value1)
        case .identifier(let value1):
            return ModelsR4.ParametersParameter.ValueX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.ParametersParameter.ValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.ParametersParameter.ValueX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.ParametersParameter.ValueX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.ParametersParameter.ValueX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.ParametersParameter.ValueX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.ParametersParameter.ValueX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.ParametersParameter.ValueX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.ParametersParameter.ValueX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.ParametersParameter.ValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.ParametersParameter.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.ParametersParameter.ValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.ParametersParameter.ValueX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.ParametersParameter.ValueX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.ParametersParameter.ValueX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.ParametersParameter.ValueX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.ParametersParameter.ValueX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.ParametersParameter.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.ParametersParameter.ValueX.time(value1)
        case .timing(let value1):
            return ModelsR4.ParametersParameter.ValueX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.ParametersParameter.ValueX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.ParametersParameter.ValueX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.ParametersParameter.ValueX.uri(value1)
        case .url(let value1):
            return ModelsR4.ParametersParameter.ValueX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.ParametersParameter.ValueX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.ParametersParameter.ValueX.uuid(value1)
        }
    }
}

// MARK: Patient.DeceasedX
extension ModelsR4.Patient.DeceasedX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.Patient.DeceasedX.boolean(value1)
        case .dateTime(let value1):
            return ModelsR4.Patient.DeceasedX.dateTime(value1)
        }
    }
}

// MARK: Patient.MultipleBirthX
extension ModelsR4.Patient.MultipleBirthX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.Patient.MultipleBirthX.boolean(value1)
        case .integer(let value1):
            return ModelsR4.Patient.MultipleBirthX.integer(value1)
        }
    }
}

// MARK: PlanDefinition.SubjectX
extension ModelsR4.PlanDefinition.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.PlanDefinition.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.PlanDefinition.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: PlanDefinitionAction.DefinitionX
extension ModelsR4.PlanDefinitionAction.DefinitionX {

    public func copy() -> Any {
        switch self {
        case .canonical(let value1):
            return ModelsR4.PlanDefinitionAction.DefinitionX.canonical(value1)
        case .uri(let value1):
            return ModelsR4.PlanDefinitionAction.DefinitionX.uri(value1)
        }
    }
}

// MARK: PlanDefinitionAction.SubjectX
extension ModelsR4.PlanDefinitionAction.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.PlanDefinitionAction.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.PlanDefinitionAction.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: PlanDefinitionAction.TimingX
extension ModelsR4.PlanDefinitionAction.TimingX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.PlanDefinitionAction.TimingX.age(value1.copy() as! Age)
        case .dateTime(let value1):
            return ModelsR4.PlanDefinitionAction.TimingX.dateTime(value1)
        case .duration(let value1):
            return ModelsR4.PlanDefinitionAction.TimingX.duration(value1.copy() as! Duration)
        case .period(let value1):
            return ModelsR4.PlanDefinitionAction.TimingX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.PlanDefinitionAction.TimingX.range(value1.copy() as! Range)
        case .timing(let value1):
            return ModelsR4.PlanDefinitionAction.TimingX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: PlanDefinitionActionRelatedAction.OffsetX
extension ModelsR4.PlanDefinitionActionRelatedAction.OffsetX {

    public func copy() -> Any {
        switch self {
        case .duration(let value1):
            return ModelsR4.PlanDefinitionActionRelatedAction.OffsetX.duration(value1.copy() as! Duration)
        case .range(let value1):
            return ModelsR4.PlanDefinitionActionRelatedAction.OffsetX.range(value1.copy() as! Range)
        }
    }
}

// MARK: PlanDefinitionGoalTarget.DetailX
extension ModelsR4.PlanDefinitionGoalTarget.DetailX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.PlanDefinitionGoalTarget.DetailX.codeableConcept(value1.copy() as! CodeableConcept)
        case .quantity(let value1):
            return ModelsR4.PlanDefinitionGoalTarget.DetailX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.PlanDefinitionGoalTarget.DetailX.range(value1.copy() as! Range)
        }
    }
}

// MARK: Population.AgeX
extension ModelsR4.Population.AgeX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.Population.AgeX.codeableConcept(value1.copy() as! CodeableConcept)
        case .range(let value1):
            return ModelsR4.Population.AgeX.range(value1.copy() as! Range)
        }
    }
}

// MARK: Procedure.PerformedX
extension ModelsR4.Procedure.PerformedX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.Procedure.PerformedX.age(value1.copy() as! Age)
        case .dateTime(let value1):
            return ModelsR4.Procedure.PerformedX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.Procedure.PerformedX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.Procedure.PerformedX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.Procedure.PerformedX.string(value1)
        }
    }
}

// MARK: Provenance.OccurredX
extension ModelsR4.Provenance.OccurredX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.Provenance.OccurredX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.Provenance.OccurredX.period(value1.copy() as! Period)
        }
    }
}

// MARK: QuestionnaireItemAnswerOption.ValueX
extension ModelsR4.QuestionnaireItemAnswerOption.ValueX {

    public func copy() -> Any {
        switch self {
        case .coding(let value1):
            return ModelsR4.QuestionnaireItemAnswerOption.ValueX.coding(value1.copy() as! Coding)
        case .date(let value1):
            return ModelsR4.QuestionnaireItemAnswerOption.ValueX.date(value1)
        case .integer(let value1):
            return ModelsR4.QuestionnaireItemAnswerOption.ValueX.integer(value1)
        case .reference(let value1):
            return ModelsR4.QuestionnaireItemAnswerOption.ValueX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.QuestionnaireItemAnswerOption.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.QuestionnaireItemAnswerOption.ValueX.time(value1)
        }
    }
}

// MARK: QuestionnaireItemEnableWhen.AnswerX
extension ModelsR4.QuestionnaireItemEnableWhen.AnswerX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.boolean(value1)
        case .coding(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.coding(value1.copy() as! Coding)
        case .date(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.decimal(value1)
        case .integer(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.integer(value1)
        case .quantity(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.quantity(value1.copy() as! Quantity)
        case .reference(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.string(value1)
        case .time(let value1):
            return ModelsR4.QuestionnaireItemEnableWhen.AnswerX.time(value1)
        }
    }
}

// MARK: QuestionnaireItemInitial.ValueX
extension ModelsR4.QuestionnaireItemInitial.ValueX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.attachment(value1.copy() as! Attachment)
        case .boolean(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.boolean(value1)
        case .coding(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.coding(value1.copy() as! Coding)
        case .date(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.decimal(value1)
        case .integer(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.integer(value1)
        case .quantity(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.quantity(value1.copy() as! Quantity)
        case .reference(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.time(value1)
        case .uri(let value1):
            return ModelsR4.QuestionnaireItemInitial.ValueX.uri(value1)
        }
    }
}

// MARK: QuestionnaireResponseItemAnswer.ValueX
extension ModelsR4.QuestionnaireResponseItemAnswer.ValueX {

    public func copy() -> Any {
        switch self {
        case .attachment(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.attachment(value1.copy() as! Attachment)
        case .boolean(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.boolean(value1)
        case .coding(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.coding(value1.copy() as! Coding)
        case .date(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.decimal(value1)
        case .integer(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.integer(value1)
        case .quantity(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.quantity(value1.copy() as! Quantity)
        case .reference(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.reference(value1.copy() as! Reference)
        case .string(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.time(value1)
        case .uri(let value1):
            return ModelsR4.QuestionnaireResponseItemAnswer.ValueX.uri(value1)
        }
    }
}

// MARK: RequestGroupAction.TimingX
extension ModelsR4.RequestGroupAction.TimingX {

    public func copy() -> Any {
        switch self {
        case .age(let value1):
            return ModelsR4.RequestGroupAction.TimingX.age(value1.copy() as! Age)
        case .dateTime(let value1):
            return ModelsR4.RequestGroupAction.TimingX.dateTime(value1)
        case .duration(let value1):
            return ModelsR4.RequestGroupAction.TimingX.duration(value1.copy() as! Duration)
        case .period(let value1):
            return ModelsR4.RequestGroupAction.TimingX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.RequestGroupAction.TimingX.range(value1.copy() as! Range)
        case .timing(let value1):
            return ModelsR4.RequestGroupAction.TimingX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: RequestGroupActionRelatedAction.OffsetX
extension ModelsR4.RequestGroupActionRelatedAction.OffsetX {

    public func copy() -> Any {
        switch self {
        case .duration(let value1):
            return ModelsR4.RequestGroupActionRelatedAction.OffsetX.duration(value1.copy() as! Duration)
        case .range(let value1):
            return ModelsR4.RequestGroupActionRelatedAction.OffsetX.range(value1.copy() as! Range)
        }
    }
}

// MARK: ResearchDefinition.SubjectX
extension ModelsR4.ResearchDefinition.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ResearchDefinition.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ResearchDefinition.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ResearchElementDefinition.SubjectX
extension ModelsR4.ResearchElementDefinition.SubjectX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.ResearchElementDefinition.SubjectX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.ResearchElementDefinition.SubjectX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ResearchElementDefinitionCharacteristic.DefinitionX
extension ModelsR4.ResearchElementDefinitionCharacteristic.DefinitionX {

    public func copy() -> Any {
        switch self {
        case .canonical(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.DefinitionX.canonical(value1)
        case .codeableConcept(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.DefinitionX.codeableConcept(value1.copy() as! CodeableConcept)
        case .dataRequirement(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.DefinitionX.dataRequirement(value1.copy() as! DataRequirement)
        case .expression(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.DefinitionX.expression(value1.copy() as! Expression)
        }
    }
}

// MARK: ResearchElementDefinitionCharacteristic.ParticipantEffectiveX
extension ModelsR4.ResearchElementDefinitionCharacteristic.ParticipantEffectiveX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.ParticipantEffectiveX.dateTime(value1)
        case .duration(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.ParticipantEffectiveX.duration(value1.copy() as! Duration)
        case .period(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.ParticipantEffectiveX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.ParticipantEffectiveX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: ResearchElementDefinitionCharacteristic.StudyEffectiveX
extension ModelsR4.ResearchElementDefinitionCharacteristic.StudyEffectiveX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.StudyEffectiveX.dateTime(value1)
        case .duration(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.StudyEffectiveX.duration(value1.copy() as! Duration)
        case .period(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.StudyEffectiveX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.ResearchElementDefinitionCharacteristic.StudyEffectiveX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: ResourceProxy
extension ModelsR4.ResourceProxy {

    public func copy() -> Any {
        switch self {
        case .account(let value1):
            return ModelsR4.ResourceProxy.account(value1.copy() as! Account)
        case .activityDefinition(let value1):
            return ModelsR4.ResourceProxy.activityDefinition(value1.copy() as! ActivityDefinition)
        case .adverseEvent(let value1):
            return ModelsR4.ResourceProxy.adverseEvent(value1.copy() as! AdverseEvent)
        case .allergyIntolerance(let value1):
            return ModelsR4.ResourceProxy.allergyIntolerance(value1.copy() as! AllergyIntolerance)
        case .appointment(let value1):
            return ModelsR4.ResourceProxy.appointment(value1.copy() as! Appointment)
        case .appointmentResponse(let value1):
            return ModelsR4.ResourceProxy.appointmentResponse(value1.copy() as! AppointmentResponse)
        case .auditEvent(let value1):
            return ModelsR4.ResourceProxy.auditEvent(value1.copy() as! AuditEvent)
        case .basic(let value1):
            return ModelsR4.ResourceProxy.basic(value1.copy() as! Basic)
        case .binary(let value1):
            return ModelsR4.ResourceProxy.binary(value1.copy() as! Binary)
        case .biologicallyDerivedProduct(let value1):
            return ModelsR4.ResourceProxy.biologicallyDerivedProduct(value1.copy() as! BiologicallyDerivedProduct)
        case .bodyStructure(let value1):
            return ModelsR4.ResourceProxy.bodyStructure(value1.copy() as! BodyStructure)
        case .bundle(let value1):
            return ModelsR4.ResourceProxy.bundle(value1.copy() as! Bundle)
        case .capabilityStatement(let value1):
            return ModelsR4.ResourceProxy.capabilityStatement(value1.copy() as! CapabilityStatement)
        case .carePlan(let value1):
            return ModelsR4.ResourceProxy.carePlan(value1.copy() as! CarePlan)
        case .careTeam(let value1):
            return ModelsR4.ResourceProxy.careTeam(value1.copy() as! CareTeam)
        case .catalogEntry(let value1):
            return ModelsR4.ResourceProxy.catalogEntry(value1.copy() as! CatalogEntry)
        case .chargeItem(let value1):
            return ModelsR4.ResourceProxy.chargeItem(value1.copy() as! ChargeItem)
        case .chargeItemDefinition(let value1):
            return ModelsR4.ResourceProxy.chargeItemDefinition(value1.copy() as! ChargeItemDefinition)
        case .claim(let value1):
            return ModelsR4.ResourceProxy.claim(value1.copy() as! Claim)
        case .claimResponse(let value1):
            return ModelsR4.ResourceProxy.claimResponse(value1.copy() as! ClaimResponse)
        case .clinicalImpression(let value1):
            return ModelsR4.ResourceProxy.clinicalImpression(value1.copy() as! ClinicalImpression)
        case .codeSystem(let value1):
            return ModelsR4.ResourceProxy.codeSystem(value1.copy() as! CodeSystem)
        case .communication(let value1):
            return ModelsR4.ResourceProxy.communication(value1.copy() as! Communication)
        case .communicationRequest(let value1):
            return ModelsR4.ResourceProxy.communicationRequest(value1.copy() as! CommunicationRequest)
        case .compartmentDefinition(let value1):
            return ModelsR4.ResourceProxy.compartmentDefinition(value1.copy() as! CompartmentDefinition)
        case .composition(let value1):
            return ModelsR4.ResourceProxy.composition(value1.copy() as! Composition)
        case .conceptMap(let value1):
            return ModelsR4.ResourceProxy.conceptMap(value1.copy() as! ConceptMap)
        case .condition(let value1):
            return ModelsR4.ResourceProxy.condition(value1.copy() as! Condition)
        case .consent(let value1):
            return ModelsR4.ResourceProxy.consent(value1.copy() as! Consent)
        case .contract(let value1):
            return ModelsR4.ResourceProxy.contract(value1.copy() as! Contract)
        case .coverage(let value1):
            return ModelsR4.ResourceProxy.coverage(value1.copy() as! Coverage)
        case .coverageEligibilityRequest(let value1):
            return ModelsR4.ResourceProxy.coverageEligibilityRequest(value1.copy() as! CoverageEligibilityRequest)
        case .coverageEligibilityResponse(let value1):
            return ModelsR4.ResourceProxy.coverageEligibilityResponse(value1.copy() as! CoverageEligibilityResponse)
        case .detectedIssue(let value1):
            return ModelsR4.ResourceProxy.detectedIssue(value1.copy() as! DetectedIssue)
        case .device(let value1):
            return ModelsR4.ResourceProxy.device(value1.copy() as! Device)
        case .deviceDefinition(let value1):
            return ModelsR4.ResourceProxy.deviceDefinition(value1.copy() as! DeviceDefinition)
        case .deviceMetric(let value1):
            return ModelsR4.ResourceProxy.deviceMetric(value1.copy() as! DeviceMetric)
        case .deviceRequest(let value1):
            return ModelsR4.ResourceProxy.deviceRequest(value1.copy() as! DeviceRequest)
        case .deviceUseStatement(let value1):
            return ModelsR4.ResourceProxy.deviceUseStatement(value1.copy() as! DeviceUseStatement)
        case .diagnosticReport(let value1):
            return ModelsR4.ResourceProxy.diagnosticReport(value1.copy() as! DiagnosticReport)
        case .documentManifest(let value1):
            return ModelsR4.ResourceProxy.documentManifest(value1.copy() as! DocumentManifest)
        case .documentReference(let value1):
            return ModelsR4.ResourceProxy.documentReference(value1.copy() as! DocumentReference)
        case .domainResource(let value1):
            return ModelsR4.ResourceProxy.domainResource(value1.copy() as! DomainResource)
        case .effectEvidenceSynthesis(let value1):
            return ModelsR4.ResourceProxy.effectEvidenceSynthesis(value1.copy() as! EffectEvidenceSynthesis)
        case .encounter(let value1):
            return ModelsR4.ResourceProxy.encounter(value1.copy() as! Encounter)
        case .endpoint(let value1):
            return ModelsR4.ResourceProxy.endpoint(value1.copy() as! Endpoint)
        case .enrollmentRequest(let value1):
            return ModelsR4.ResourceProxy.enrollmentRequest(value1.copy() as! EnrollmentRequest)
        case .enrollmentResponse(let value1):
            return ModelsR4.ResourceProxy.enrollmentResponse(value1.copy() as! EnrollmentResponse)
        case .episodeOfCare(let value1):
            return ModelsR4.ResourceProxy.episodeOfCare(value1.copy() as! EpisodeOfCare)
        case .eventDefinition(let value1):
            return ModelsR4.ResourceProxy.eventDefinition(value1.copy() as! EventDefinition)
        case .evidence(let value1):
            return ModelsR4.ResourceProxy.evidence(value1.copy() as! Evidence)
        case .evidenceVariable(let value1):
            return ModelsR4.ResourceProxy.evidenceVariable(value1.copy() as! EvidenceVariable)
        case .exampleScenario(let value1):
            return ModelsR4.ResourceProxy.exampleScenario(value1.copy() as! ExampleScenario)
        case .explanationOfBenefit(let value1):
            return ModelsR4.ResourceProxy.explanationOfBenefit(value1.copy() as! ExplanationOfBenefit)
        case .familyMemberHistory(let value1):
            return ModelsR4.ResourceProxy.familyMemberHistory(value1.copy() as! FamilyMemberHistory)
        case .flag(let value1):
            return ModelsR4.ResourceProxy.flag(value1.copy() as! Flag)
        case .goal(let value1):
            return ModelsR4.ResourceProxy.goal(value1.copy() as! Goal)
        case .graphDefinition(let value1):
            return ModelsR4.ResourceProxy.graphDefinition(value1.copy() as! GraphDefinition)
        case .group(let value1):
            return ModelsR4.ResourceProxy.group(value1.copy() as! Group)
        case .guidanceResponse(let value1):
            return ModelsR4.ResourceProxy.guidanceResponse(value1.copy() as! GuidanceResponse)
        case .healthcareService(let value1):
            return ModelsR4.ResourceProxy.healthcareService(value1.copy() as! HealthcareService)
        case .imagingStudy(let value1):
            return ModelsR4.ResourceProxy.imagingStudy(value1.copy() as! ImagingStudy)
        case .immunization(let value1):
            return ModelsR4.ResourceProxy.immunization(value1.copy() as! Immunization)
        case .immunizationEvaluation(let value1):
            return ModelsR4.ResourceProxy.immunizationEvaluation(value1.copy() as! ImmunizationEvaluation)
        case .immunizationRecommendation(let value1):
            return ModelsR4.ResourceProxy.immunizationRecommendation(value1.copy() as! ImmunizationRecommendation)
        case .implementationGuide(let value1):
            return ModelsR4.ResourceProxy.implementationGuide(value1.copy() as! ImplementationGuide)
        case .insurancePlan(let value1):
            return ModelsR4.ResourceProxy.insurancePlan(value1.copy() as! InsurancePlan)
        case .invoice(let value1):
            return ModelsR4.ResourceProxy.invoice(value1.copy() as! Invoice)
        case .library(let value1):
            return ModelsR4.ResourceProxy.library(value1.copy() as! Library)
        case .linkage(let value1):
            return ModelsR4.ResourceProxy.linkage(value1.copy() as! Linkage)
        case .list(let value1):
            return ModelsR4.ResourceProxy.list(value1.copy() as! List)
        case .location(let value1):
            return ModelsR4.ResourceProxy.location(value1.copy() as! Location)
        case .measure(let value1):
            return ModelsR4.ResourceProxy.measure(value1.copy() as! Measure)
        case .measureReport(let value1):
            return ModelsR4.ResourceProxy.measureReport(value1.copy() as! MeasureReport)
        case .media(let value1):
            return ModelsR4.ResourceProxy.media(value1.copy() as! Media)
        case .medication(let value1):
            return ModelsR4.ResourceProxy.medication(value1.copy() as! Medication)
        case .medicationAdministration(let value1):
            return ModelsR4.ResourceProxy.medicationAdministration(value1.copy() as! MedicationAdministration)
        case .medicationDispense(let value1):
            return ModelsR4.ResourceProxy.medicationDispense(value1.copy() as! MedicationDispense)
        case .medicationKnowledge(let value1):
            return ModelsR4.ResourceProxy.medicationKnowledge(value1.copy() as! MedicationKnowledge)
        case .medicationRequest(let value1):
            return ModelsR4.ResourceProxy.medicationRequest(value1.copy() as! MedicationRequest)
        case .medicationStatement(let value1):
            return ModelsR4.ResourceProxy.medicationStatement(value1.copy() as! MedicationStatement)
        case .medicinalProduct(let value1):
            return ModelsR4.ResourceProxy.medicinalProduct(value1.copy() as! MedicinalProduct)
        case .medicinalProductAuthorization(let value1):
            return ModelsR4.ResourceProxy.medicinalProductAuthorization(value1.copy() as! MedicinalProductAuthorization)
        case .medicinalProductContraindication(let value1):
            return ModelsR4.ResourceProxy.medicinalProductContraindication(value1.copy() as! MedicinalProductContraindication)
        case .medicinalProductIndication(let value1):
            return ModelsR4.ResourceProxy.medicinalProductIndication(value1.copy() as! MedicinalProductIndication)
        case .medicinalProductIngredient(let value1):
            return ModelsR4.ResourceProxy.medicinalProductIngredient(value1.copy() as! MedicinalProductIngredient)
        case .medicinalProductInteraction(let value1):
            return ModelsR4.ResourceProxy.medicinalProductInteraction(value1.copy() as! MedicinalProductInteraction)
        case .medicinalProductManufactured(let value1):
            return ModelsR4.ResourceProxy.medicinalProductManufactured(value1.copy() as! MedicinalProductManufactured)
        case .medicinalProductPackaged(let value1):
            return ModelsR4.ResourceProxy.medicinalProductPackaged(value1.copy() as! MedicinalProductPackaged)
        case .medicinalProductPharmaceutical(let value1):
            return ModelsR4.ResourceProxy.medicinalProductPharmaceutical(value1.copy() as! MedicinalProductPharmaceutical)
        case .medicinalProductUndesirableEffect(let value1):
            return ModelsR4.ResourceProxy.medicinalProductUndesirableEffect(value1.copy() as! MedicinalProductUndesirableEffect)
        case .messageDefinition(let value1):
            return ModelsR4.ResourceProxy.messageDefinition(value1.copy() as! MessageDefinition)
        case .messageHeader(let value1):
            return ModelsR4.ResourceProxy.messageHeader(value1.copy() as! MessageHeader)
        case .molecularSequence(let value1):
            return ModelsR4.ResourceProxy.molecularSequence(value1.copy() as! MolecularSequence)
        case .namingSystem(let value1):
            return ModelsR4.ResourceProxy.namingSystem(value1.copy() as! NamingSystem)
        case .nutritionOrder(let value1):
            return ModelsR4.ResourceProxy.nutritionOrder(value1.copy() as! NutritionOrder)
        case .observation(let value1):
            return ModelsR4.ResourceProxy.observation(value1.copy() as! Observation)
        case .observationDefinition(let value1):
            return ModelsR4.ResourceProxy.observationDefinition(value1.copy() as! ObservationDefinition)
        case .operationDefinition(let value1):
            return ModelsR4.ResourceProxy.operationDefinition(value1.copy() as! OperationDefinition)
        case .operationOutcome(let value1):
            return ModelsR4.ResourceProxy.operationOutcome(value1.copy() as! OperationOutcome)
        case .organization(let value1):
            return ModelsR4.ResourceProxy.organization(value1.copy() as! Organization)
        case .organizationAffiliation(let value1):
            return ModelsR4.ResourceProxy.organizationAffiliation(value1.copy() as! OrganizationAffiliation)
        case .parameters(let value1):
            return ModelsR4.ResourceProxy.parameters(value1.copy() as! Parameters)
        case .patient(let value1):
            return ModelsR4.ResourceProxy.patient(value1.copy() as! Patient)
        case .paymentNotice(let value1):
            return ModelsR4.ResourceProxy.paymentNotice(value1.copy() as! PaymentNotice)
        case .paymentReconciliation(let value1):
            return ModelsR4.ResourceProxy.paymentReconciliation(value1.copy() as! PaymentReconciliation)
        case .person(let value1):
            return ModelsR4.ResourceProxy.person(value1.copy() as! Person)
        case .planDefinition(let value1):
            return ModelsR4.ResourceProxy.planDefinition(value1.copy() as! PlanDefinition)
        case .practitioner(let value1):
            return ModelsR4.ResourceProxy.practitioner(value1.copy() as! Practitioner)
        case .practitionerRole(let value1):
            return ModelsR4.ResourceProxy.practitionerRole(value1.copy() as! PractitionerRole)
        case .procedure(let value1):
            return ModelsR4.ResourceProxy.procedure(value1.copy() as! Procedure)
        case .provenance(let value1):
            return ModelsR4.ResourceProxy.provenance(value1.copy() as! Provenance)
        case .questionnaire(let value1):
            return ModelsR4.ResourceProxy.questionnaire(value1.copy() as! Questionnaire)
        case .questionnaireResponse(let value1):
            return ModelsR4.ResourceProxy.questionnaireResponse(value1.copy() as! QuestionnaireResponse)
        case .relatedPerson(let value1):
            return ModelsR4.ResourceProxy.relatedPerson(value1.copy() as! RelatedPerson)
        case .requestGroup(let value1):
            return ModelsR4.ResourceProxy.requestGroup(value1.copy() as! RequestGroup)
        case .researchDefinition(let value1):
            return ModelsR4.ResourceProxy.researchDefinition(value1.copy() as! ResearchDefinition)
        case .researchElementDefinition(let value1):
            return ModelsR4.ResourceProxy.researchElementDefinition(value1.copy() as! ResearchElementDefinition)
        case .researchStudy(let value1):
            return ModelsR4.ResourceProxy.researchStudy(value1.copy() as! ResearchStudy)
        case .researchSubject(let value1):
            return ModelsR4.ResourceProxy.researchSubject(value1.copy() as! ResearchSubject)
        case .resource(let value1):
            return ModelsR4.ResourceProxy.resource(value1.copy() as! Resource)
        case .riskAssessment(let value1):
            return ModelsR4.ResourceProxy.riskAssessment(value1.copy() as! RiskAssessment)
        case .riskEvidenceSynthesis(let value1):
            return ModelsR4.ResourceProxy.riskEvidenceSynthesis(value1.copy() as! RiskEvidenceSynthesis)
        case .schedule(let value1):
            return ModelsR4.ResourceProxy.schedule(value1.copy() as! Schedule)
        case .searchParameter(let value1):
            return ModelsR4.ResourceProxy.searchParameter(value1.copy() as! SearchParameter)
        case .serviceRequest(let value1):
            return ModelsR4.ResourceProxy.serviceRequest(value1.copy() as! ServiceRequest)
        case .slot(let value1):
            return ModelsR4.ResourceProxy.slot(value1.copy() as! Slot)
        case .specimen(let value1):
            return ModelsR4.ResourceProxy.specimen(value1.copy() as! Specimen)
        case .specimenDefinition(let value1):
            return ModelsR4.ResourceProxy.specimenDefinition(value1.copy() as! SpecimenDefinition)
        case .structureDefinition(let value1):
            return ModelsR4.ResourceProxy.structureDefinition(value1.copy() as! StructureDefinition)
        case .structureMap(let value1):
            return ModelsR4.ResourceProxy.structureMap(value1.copy() as! StructureMap)
        case .subscription(let value1):
            return ModelsR4.ResourceProxy.subscription(value1.copy() as! Subscription)
        case .substance(let value1):
            return ModelsR4.ResourceProxy.substance(value1.copy() as! Substance)
        case .substanceNucleicAcid(let value1):
            return ModelsR4.ResourceProxy.substanceNucleicAcid(value1.copy() as! SubstanceNucleicAcid)
        case .substancePolymer(let value1):
            return ModelsR4.ResourceProxy.substancePolymer(value1.copy() as! SubstancePolymer)
        case .substanceProtein(let value1):
            return ModelsR4.ResourceProxy.substanceProtein(value1.copy() as! SubstanceProtein)
        case .substanceReferenceInformation(let value1):
            return ModelsR4.ResourceProxy.substanceReferenceInformation(value1.copy() as! SubstanceReferenceInformation)
        case .substanceSourceMaterial(let value1):
            return ModelsR4.ResourceProxy.substanceSourceMaterial(value1.copy() as! SubstanceSourceMaterial)
        case .substanceSpecification(let value1):
            return ModelsR4.ResourceProxy.substanceSpecification(value1.copy() as! SubstanceSpecification)
        case .supplyDelivery(let value1):
            return ModelsR4.ResourceProxy.supplyDelivery(value1.copy() as! SupplyDelivery)
        case .supplyRequest(let value1):
            return ModelsR4.ResourceProxy.supplyRequest(value1.copy() as! SupplyRequest)
        case .task(let value1):
            return ModelsR4.ResourceProxy.task(value1.copy() as! Task)
        case .terminologyCapabilities(let value1):
            return ModelsR4.ResourceProxy.terminologyCapabilities(value1.copy() as! TerminologyCapabilities)
        case .testReport(let value1):
            return ModelsR4.ResourceProxy.testReport(value1.copy() as! TestReport)
        case .testScript(let value1):
            return ModelsR4.ResourceProxy.testScript(value1.copy() as! TestScript)
        case .valueSet(let value1):
            return ModelsR4.ResourceProxy.valueSet(value1.copy() as! ValueSet)
        case .verificationResult(let value1):
            return ModelsR4.ResourceProxy.verificationResult(value1.copy() as! VerificationResult)
        case .visionPrescription(let value1):
            return ModelsR4.ResourceProxy.visionPrescription(value1.copy() as! VisionPrescription)
        case .unrecognized(let value1):
            return ModelsR4.ResourceProxy.unrecognized(value1.copy() as! Resource)
        }
    }
}

// MARK: RiskAssessment.OccurrenceX
extension ModelsR4.RiskAssessment.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.RiskAssessment.OccurrenceX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.RiskAssessment.OccurrenceX.period(value1.copy() as! Period)
        }
    }
}

// MARK: RiskAssessmentPrediction.ProbabilityX
extension ModelsR4.RiskAssessmentPrediction.ProbabilityX {

    public func copy() -> Any {
        switch self {
        case .decimal(let value1):
            return ModelsR4.RiskAssessmentPrediction.ProbabilityX.decimal(value1)
        case .range(let value1):
            return ModelsR4.RiskAssessmentPrediction.ProbabilityX.range(value1.copy() as! Range)
        }
    }
}

// MARK: RiskAssessmentPrediction.WhenX
extension ModelsR4.RiskAssessmentPrediction.WhenX {

    public func copy() -> Any {
        switch self {
        case .period(let value1):
            return ModelsR4.RiskAssessmentPrediction.WhenX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.RiskAssessmentPrediction.WhenX.range(value1.copy() as! Range)
        }
    }
}

// MARK: ServiceRequest.AsNeededX
extension ModelsR4.ServiceRequest.AsNeededX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.ServiceRequest.AsNeededX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.ServiceRequest.AsNeededX.codeableConcept(value1.copy() as! CodeableConcept)
        }
    }
}

// MARK: ServiceRequest.OccurrenceX
extension ModelsR4.ServiceRequest.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.ServiceRequest.OccurrenceX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.ServiceRequest.OccurrenceX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.ServiceRequest.OccurrenceX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: ServiceRequest.QuantityX
extension ModelsR4.ServiceRequest.QuantityX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.ServiceRequest.QuantityX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.ServiceRequest.QuantityX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.ServiceRequest.QuantityX.ratio(value1.copy() as! Ratio)
        }
    }
}

// MARK: SpecimenCollection.CollectedX
extension ModelsR4.SpecimenCollection.CollectedX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.SpecimenCollection.CollectedX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.SpecimenCollection.CollectedX.period(value1.copy() as! Period)
        }
    }
}

// MARK: SpecimenCollection.FastingStatusX
extension ModelsR4.SpecimenCollection.FastingStatusX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.SpecimenCollection.FastingStatusX.codeableConcept(value1.copy() as! CodeableConcept)
        case .duration(let value1):
            return ModelsR4.SpecimenCollection.FastingStatusX.duration(value1.copy() as! Duration)
        }
    }
}

// MARK: SpecimenContainer.AdditiveX
extension ModelsR4.SpecimenContainer.AdditiveX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.SpecimenContainer.AdditiveX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.SpecimenContainer.AdditiveX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: SpecimenDefinitionTypeTestedContainer.MinimumVolumeX
extension ModelsR4.SpecimenDefinitionTypeTestedContainer.MinimumVolumeX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.SpecimenDefinitionTypeTestedContainer.MinimumVolumeX.quantity(value1.copy() as! Quantity)
        case .string(let value1):
            return ModelsR4.SpecimenDefinitionTypeTestedContainer.MinimumVolumeX.string(value1)
        }
    }
}

// MARK: SpecimenDefinitionTypeTestedContainerAdditive.AdditiveX
extension ModelsR4.SpecimenDefinitionTypeTestedContainerAdditive.AdditiveX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.SpecimenDefinitionTypeTestedContainerAdditive.AdditiveX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.SpecimenDefinitionTypeTestedContainerAdditive.AdditiveX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: SpecimenProcessing.TimeX
extension ModelsR4.SpecimenProcessing.TimeX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.SpecimenProcessing.TimeX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.SpecimenProcessing.TimeX.period(value1.copy() as! Period)
        }
    }
}

// MARK: StructureMapGroupRuleSource.DefaultValueX
extension ModelsR4.StructureMapGroupRuleSource.DefaultValueX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.canonical(value1)
        case .code(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.id(value1)
        case .identifier(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.string(value1)
        case .time(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.time(value1)
        case .timing(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.uri(value1)
        case .url(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.StructureMapGroupRuleSource.DefaultValueX.uuid(value1)
        }
    }
}

// MARK: StructureMapGroupRuleTargetParameter.ValueX
extension ModelsR4.StructureMapGroupRuleTargetParameter.ValueX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.StructureMapGroupRuleTargetParameter.ValueX.boolean(value1)
        case .decimal(let value1):
            return ModelsR4.StructureMapGroupRuleTargetParameter.ValueX.decimal(value1)
        case .id(let value1):
            return ModelsR4.StructureMapGroupRuleTargetParameter.ValueX.id(value1)
        case .integer(let value1):
            return ModelsR4.StructureMapGroupRuleTargetParameter.ValueX.integer(value1)
        case .string(let value1):
            return ModelsR4.StructureMapGroupRuleTargetParameter.ValueX.string(value1)
        }
    }
}

// MARK: SubstanceAmount.AmountX
extension ModelsR4.SubstanceAmount.AmountX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.SubstanceAmount.AmountX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.SubstanceAmount.AmountX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.SubstanceAmount.AmountX.string(value1)
        }
    }
}

// MARK: SubstanceIngredient.SubstanceX
extension ModelsR4.SubstanceIngredient.SubstanceX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.SubstanceIngredient.SubstanceX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.SubstanceIngredient.SubstanceX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: SubstanceReferenceInformationTarget.AmountX
extension ModelsR4.SubstanceReferenceInformationTarget.AmountX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.SubstanceReferenceInformationTarget.AmountX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.SubstanceReferenceInformationTarget.AmountX.range(value1.copy() as! Range)
        case .string(let value1):
            return ModelsR4.SubstanceReferenceInformationTarget.AmountX.string(value1)
        }
    }
}

// MARK: SubstanceSpecificationMoiety.AmountX
extension ModelsR4.SubstanceSpecificationMoiety.AmountX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.SubstanceSpecificationMoiety.AmountX.quantity(value1.copy() as! Quantity)
        case .string(let value1):
            return ModelsR4.SubstanceSpecificationMoiety.AmountX.string(value1)
        }
    }
}

// MARK: SubstanceSpecificationProperty.AmountX
extension ModelsR4.SubstanceSpecificationProperty.AmountX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.SubstanceSpecificationProperty.AmountX.quantity(value1.copy() as! Quantity)
        case .string(let value1):
            return ModelsR4.SubstanceSpecificationProperty.AmountX.string(value1)
        }
    }
}

// MARK: SubstanceSpecificationProperty.DefiningSubstanceX
extension ModelsR4.SubstanceSpecificationProperty.DefiningSubstanceX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.SubstanceSpecificationProperty.DefiningSubstanceX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.SubstanceSpecificationProperty.DefiningSubstanceX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: SubstanceSpecificationRelationship.AmountX
extension ModelsR4.SubstanceSpecificationRelationship.AmountX {

    public func copy() -> Any {
        switch self {
        case .quantity(let value1):
            return ModelsR4.SubstanceSpecificationRelationship.AmountX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.SubstanceSpecificationRelationship.AmountX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.SubstanceSpecificationRelationship.AmountX.ratio(value1.copy() as! Ratio)
        case .string(let value1):
            return ModelsR4.SubstanceSpecificationRelationship.AmountX.string(value1)
        }
    }
}

// MARK: SubstanceSpecificationRelationship.SubstanceX
extension ModelsR4.SubstanceSpecificationRelationship.SubstanceX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.SubstanceSpecificationRelationship.SubstanceX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.SubstanceSpecificationRelationship.SubstanceX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: SupplyDelivery.OccurrenceX
extension ModelsR4.SupplyDelivery.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.SupplyDelivery.OccurrenceX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.SupplyDelivery.OccurrenceX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.SupplyDelivery.OccurrenceX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: SupplyDeliverySuppliedItem.ItemX
extension ModelsR4.SupplyDeliverySuppliedItem.ItemX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.SupplyDeliverySuppliedItem.ItemX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.SupplyDeliverySuppliedItem.ItemX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: SupplyRequest.ItemX
extension ModelsR4.SupplyRequest.ItemX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.SupplyRequest.ItemX.codeableConcept(value1.copy() as! CodeableConcept)
        case .reference(let value1):
            return ModelsR4.SupplyRequest.ItemX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: SupplyRequest.OccurrenceX
extension ModelsR4.SupplyRequest.OccurrenceX {

    public func copy() -> Any {
        switch self {
        case .dateTime(let value1):
            return ModelsR4.SupplyRequest.OccurrenceX.dateTime(value1)
        case .period(let value1):
            return ModelsR4.SupplyRequest.OccurrenceX.period(value1.copy() as! Period)
        case .timing(let value1):
            return ModelsR4.SupplyRequest.OccurrenceX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: SupplyRequestParameter.ValueX
extension ModelsR4.SupplyRequestParameter.ValueX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.SupplyRequestParameter.ValueX.boolean(value1)
        case .codeableConcept(let value1):
            return ModelsR4.SupplyRequestParameter.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .quantity(let value1):
            return ModelsR4.SupplyRequestParameter.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.SupplyRequestParameter.ValueX.range(value1.copy() as! Range)
        }
    }
}

// MARK: TaskInput.ValueX
extension ModelsR4.TaskInput.ValueX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.TaskInput.ValueX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.TaskInput.ValueX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.TaskInput.ValueX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.TaskInput.ValueX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.TaskInput.ValueX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.TaskInput.ValueX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.TaskInput.ValueX.canonical(value1)
        case .code(let value1):
            return ModelsR4.TaskInput.ValueX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.TaskInput.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.TaskInput.ValueX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.TaskInput.ValueX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.TaskInput.ValueX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.TaskInput.ValueX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.TaskInput.ValueX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.TaskInput.ValueX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.TaskInput.ValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.TaskInput.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.TaskInput.ValueX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.TaskInput.ValueX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.TaskInput.ValueX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.TaskInput.ValueX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.TaskInput.ValueX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.TaskInput.ValueX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.TaskInput.ValueX.id(value1)
        case .identifier(let value1):
            return ModelsR4.TaskInput.ValueX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.TaskInput.ValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.TaskInput.ValueX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.TaskInput.ValueX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.TaskInput.ValueX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.TaskInput.ValueX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.TaskInput.ValueX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.TaskInput.ValueX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.TaskInput.ValueX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.TaskInput.ValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.TaskInput.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.TaskInput.ValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.TaskInput.ValueX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.TaskInput.ValueX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.TaskInput.ValueX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.TaskInput.ValueX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.TaskInput.ValueX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.TaskInput.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.TaskInput.ValueX.time(value1)
        case .timing(let value1):
            return ModelsR4.TaskInput.ValueX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.TaskInput.ValueX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.TaskInput.ValueX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.TaskInput.ValueX.uri(value1)
        case .url(let value1):
            return ModelsR4.TaskInput.ValueX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.TaskInput.ValueX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.TaskInput.ValueX.uuid(value1)
        }
    }
}

// MARK: TaskOutput.ValueX
extension ModelsR4.TaskOutput.ValueX {

    public func copy() -> Any {
        switch self {
        case .address(let value1):
            return ModelsR4.TaskOutput.ValueX.address(value1.copy() as! Address)
        case .age(let value1):
            return ModelsR4.TaskOutput.ValueX.age(value1.copy() as! Age)
        case .annotation(let value1):
            return ModelsR4.TaskOutput.ValueX.annotation(value1.copy() as! Annotation)
        case .attachment(let value1):
            return ModelsR4.TaskOutput.ValueX.attachment(value1.copy() as! Attachment)
        case .base64Binary(let value1):
            return ModelsR4.TaskOutput.ValueX.base64Binary(value1)
        case .boolean(let value1):
            return ModelsR4.TaskOutput.ValueX.boolean(value1)
        case .canonical(let value1):
            return ModelsR4.TaskOutput.ValueX.canonical(value1)
        case .code(let value1):
            return ModelsR4.TaskOutput.ValueX.code(value1)
        case .codeableConcept(let value1):
            return ModelsR4.TaskOutput.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .coding(let value1):
            return ModelsR4.TaskOutput.ValueX.coding(value1.copy() as! Coding)
        case .contactDetail(let value1):
            return ModelsR4.TaskOutput.ValueX.contactDetail(value1.copy() as! ContactDetail)
        case .contactPoint(let value1):
            return ModelsR4.TaskOutput.ValueX.contactPoint(value1.copy() as! ContactPoint)
        case .contributor(let value1):
            return ModelsR4.TaskOutput.ValueX.contributor(value1.copy() as! Contributor)
        case .count(let value1):
            return ModelsR4.TaskOutput.ValueX.count(value1.copy() as! Count)
        case .dataRequirement(let value1):
            return ModelsR4.TaskOutput.ValueX.dataRequirement(value1.copy() as! DataRequirement)
        case .date(let value1):
            return ModelsR4.TaskOutput.ValueX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.TaskOutput.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.TaskOutput.ValueX.decimal(value1)
        case .distance(let value1):
            return ModelsR4.TaskOutput.ValueX.distance(value1.copy() as! Distance)
        case .dosage(let value1):
            return ModelsR4.TaskOutput.ValueX.dosage(value1.copy() as! Dosage)
        case .duration(let value1):
            return ModelsR4.TaskOutput.ValueX.duration(value1.copy() as! Duration)
        case .expression(let value1):
            return ModelsR4.TaskOutput.ValueX.expression(value1.copy() as! Expression)
        case .humanName(let value1):
            return ModelsR4.TaskOutput.ValueX.humanName(value1.copy() as! HumanName)
        case .id(let value1):
            return ModelsR4.TaskOutput.ValueX.id(value1)
        case .identifier(let value1):
            return ModelsR4.TaskOutput.ValueX.identifier(value1.copy() as! Identifier)
        case .instant(let value1):
            return ModelsR4.TaskOutput.ValueX.instant(value1)
        case .integer(let value1):
            return ModelsR4.TaskOutput.ValueX.integer(value1)
        case .markdown(let value1):
            return ModelsR4.TaskOutput.ValueX.markdown(value1)
        case .meta(let value1):
            return ModelsR4.TaskOutput.ValueX.meta(value1.copy() as! Meta)
        case .money(let value1):
            return ModelsR4.TaskOutput.ValueX.money(value1.copy() as! Money)
        case .oid(let value1):
            return ModelsR4.TaskOutput.ValueX.oid(value1)
        case .parameterDefinition(let value1):
            return ModelsR4.TaskOutput.ValueX.parameterDefinition(value1.copy() as! ParameterDefinition)
        case .period(let value1):
            return ModelsR4.TaskOutput.ValueX.period(value1.copy() as! Period)
        case .positiveInt(let value1):
            return ModelsR4.TaskOutput.ValueX.positiveInt(value1)
        case .quantity(let value1):
            return ModelsR4.TaskOutput.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.TaskOutput.ValueX.range(value1.copy() as! Range)
        case .ratio(let value1):
            return ModelsR4.TaskOutput.ValueX.ratio(value1.copy() as! Ratio)
        case .reference(let value1):
            return ModelsR4.TaskOutput.ValueX.reference(value1.copy() as! Reference)
        case .relatedArtifact(let value1):
            return ModelsR4.TaskOutput.ValueX.relatedArtifact(value1.copy() as! RelatedArtifact)
        case .sampledData(let value1):
            return ModelsR4.TaskOutput.ValueX.sampledData(value1.copy() as! SampledData)
        case .signature(let value1):
            return ModelsR4.TaskOutput.ValueX.signature(value1.copy() as! Signature)
        case .string(let value1):
            return ModelsR4.TaskOutput.ValueX.string(value1)
        case .time(let value1):
            return ModelsR4.TaskOutput.ValueX.time(value1)
        case .timing(let value1):
            return ModelsR4.TaskOutput.ValueX.timing(value1.copy() as! Timing)
        case .triggerDefinition(let value1):
            return ModelsR4.TaskOutput.ValueX.triggerDefinition(value1.copy() as! TriggerDefinition)
        case .unsignedInt(let value1):
            return ModelsR4.TaskOutput.ValueX.unsignedInt(value1)
        case .uri(let value1):
            return ModelsR4.TaskOutput.ValueX.uri(value1)
        case .url(let value1):
            return ModelsR4.TaskOutput.ValueX.url(value1)
        case .usageContext(let value1):
            return ModelsR4.TaskOutput.ValueX.usageContext(value1.copy() as! UsageContext)
        case .uuid(let value1):
            return ModelsR4.TaskOutput.ValueX.uuid(value1)
        }
    }
}

// MARK: TimingRepeat.BoundsX
extension ModelsR4.TimingRepeat.BoundsX {

    public func copy() -> Any {
        switch self {
        case .duration(let value1):
            return ModelsR4.TimingRepeat.BoundsX.duration(value1.copy() as! Duration)
        case .period(let value1):
            return ModelsR4.TimingRepeat.BoundsX.period(value1.copy() as! Period)
        case .range(let value1):
            return ModelsR4.TimingRepeat.BoundsX.range(value1.copy() as! Range)
        }
    }
}

// MARK: TriggerDefinition.TimingX
extension ModelsR4.TriggerDefinition.TimingX {

    public func copy() -> Any {
        switch self {
        case .date(let value1):
            return ModelsR4.TriggerDefinition.TimingX.date(value1)
        case .dateTime(let value1):
            return ModelsR4.TriggerDefinition.TimingX.dateTime(value1)
        case .reference(let value1):
            return ModelsR4.TriggerDefinition.TimingX.reference(value1.copy() as! Reference)
        case .timing(let value1):
            return ModelsR4.TriggerDefinition.TimingX.timing(value1.copy() as! Timing)
        }
    }
}

// MARK: UsageContext.ValueX
extension ModelsR4.UsageContext.ValueX {

    public func copy() -> Any {
        switch self {
        case .codeableConcept(let value1):
            return ModelsR4.UsageContext.ValueX.codeableConcept(value1.copy() as! CodeableConcept)
        case .quantity(let value1):
            return ModelsR4.UsageContext.ValueX.quantity(value1.copy() as! Quantity)
        case .range(let value1):
            return ModelsR4.UsageContext.ValueX.range(value1.copy() as! Range)
        case .reference(let value1):
            return ModelsR4.UsageContext.ValueX.reference(value1.copy() as! Reference)
        }
    }
}

// MARK: ValueSetExpansionParameter.ValueX
extension ModelsR4.ValueSetExpansionParameter.ValueX {

    public func copy() -> Any {
        switch self {
        case .boolean(let value1):
            return ModelsR4.ValueSetExpansionParameter.ValueX.boolean(value1)
        case .code(let value1):
            return ModelsR4.ValueSetExpansionParameter.ValueX.code(value1)
        case .dateTime(let value1):
            return ModelsR4.ValueSetExpansionParameter.ValueX.dateTime(value1)
        case .decimal(let value1):
            return ModelsR4.ValueSetExpansionParameter.ValueX.decimal(value1)
        case .integer(let value1):
            return ModelsR4.ValueSetExpansionParameter.ValueX.integer(value1)
        case .string(let value1):
            return ModelsR4.ValueSetExpansionParameter.ValueX.string(value1)
        case .uri(let value1):
            return ModelsR4.ValueSetExpansionParameter.ValueX.uri(value1)
        }
    }
}
