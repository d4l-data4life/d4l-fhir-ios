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
// MARK: - NSCopying
// MARK: - Account
extension ModelsR4.Account {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Account(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Account else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.name = self.name
        resource.subject = self.subject?.compactMap { $0.copy() as? Reference }
        resource.servicePeriod = self.servicePeriod?.copy() as? Period
        resource.coverage = self.coverage?.compactMap { $0.copy() as? AccountCoverage }
        resource.owner = self.owner?.copy() as? Reference
        resource.description_fhir = self.description_fhir
        resource.guarantor = self.guarantor?.compactMap { $0.copy() as? AccountGuarantor }
        resource.partOf = self.partOf?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AccountCoverage
extension ModelsR4.AccountCoverage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AccountCoverage(coverage: self.coverage)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AccountCoverage else {
            return self
        }
        resource.coverage = self.coverage.copy() as! Reference
        resource.priority = self.priority

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AccountGuarantor
extension ModelsR4.AccountGuarantor {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AccountGuarantor(party: self.party)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AccountGuarantor else {
            return self
        }
        resource.party = self.party.copy() as! Reference
        resource.onHold = self.onHold
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ActivityDefinition
extension ModelsR4.ActivityDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ActivityDefinition(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ActivityDefinition else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject?.copy() as? SubjectX
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.library = self.library
        resource.kind = self.kind
        resource.profile = self.profile
        resource.code = self.code?.copy() as? CodeableConcept
        resource.intent = self.intent
        resource.priority = self.priority
        resource.doNotPerform = self.doNotPerform
        resource.timing = self.timing?.copy() as? TimingX
        resource.location = self.location?.copy() as? Reference
        resource.participant = self.participant?.compactMap { $0.copy() as? ActivityDefinitionParticipant }
        resource.product = self.product?.copy() as? ProductX
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.dosage = self.dosage?.compactMap { $0.copy() as? Dosage }
        resource.bodySite = self.bodySite?.compactMap { $0.copy() as? CodeableConcept }
        resource.specimenRequirement = self.specimenRequirement?.compactMap { $0.copy() as? Reference }
        resource.observationRequirement = self.observationRequirement?.compactMap { $0.copy() as? Reference }
        resource.observationResultRequirement = self.observationResultRequirement?.compactMap { $0.copy() as? Reference }
        resource.transform = self.transform
        resource.dynamicValue = self.dynamicValue?.compactMap { $0.copy() as? ActivityDefinitionDynamicValue }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ActivityDefinitionDynamicValue
extension ModelsR4.ActivityDefinitionDynamicValue {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ActivityDefinitionDynamicValue(expression: self.expression, path: self.path)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ActivityDefinitionDynamicValue else {
            return self
        }
        resource.path = self.path
        resource.expression = self.expression.copy() as! Expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ActivityDefinitionParticipant
extension ModelsR4.ActivityDefinitionParticipant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ActivityDefinitionParticipant(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ActivityDefinitionParticipant else {
            return self
        }
        resource.type = self.type
        resource.role = self.role?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Address
extension ModelsR4.Address {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Address()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Address else {
            return self
        }
        resource.use = self.use
        resource.type = self.type
        resource.text = self.text
        resource.line = self.line
        resource.city = self.city
        resource.district = self.district
        resource.state = self.state
        resource.postalCode = self.postalCode
        resource.country = self.country
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AdverseEvent
extension ModelsR4.AdverseEvent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AdverseEvent(actuality: self.actuality, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AdverseEvent else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.actuality = self.actuality
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.event = self.event?.copy() as? CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.date = self.date
        resource.detected = self.detected
        resource.recordedDate = self.recordedDate
        resource.resultingCondition = self.resultingCondition?.compactMap { $0.copy() as? Reference }
        resource.location = self.location?.copy() as? Reference
        resource.seriousness = self.seriousness?.copy() as? CodeableConcept
        resource.severity = self.severity?.copy() as? CodeableConcept
        resource.outcome = self.outcome?.copy() as? CodeableConcept
        resource.recorder = self.recorder?.copy() as? Reference
        resource.contributor = self.contributor?.compactMap { $0.copy() as? Reference }
        resource.suspectEntity = self.suspectEntity?.compactMap { $0.copy() as? AdverseEventSuspectEntity }
        resource.subjectMedicalHistory = self.subjectMedicalHistory?.compactMap { $0.copy() as? Reference }
        resource.referenceDocument = self.referenceDocument?.compactMap { $0.copy() as? Reference }
        resource.study = self.study?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AdverseEventSuspectEntity
extension ModelsR4.AdverseEventSuspectEntity {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AdverseEventSuspectEntity(instance: self.instance)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AdverseEventSuspectEntity else {
            return self
        }
        resource.instance = self.instance.copy() as! Reference
        resource.causality = self.causality?.compactMap { $0.copy() as? AdverseEventSuspectEntityCausality }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AdverseEventSuspectEntityCausality
extension ModelsR4.AdverseEventSuspectEntityCausality {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AdverseEventSuspectEntityCausality()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AdverseEventSuspectEntityCausality else {
            return self
        }
        resource.assessment = self.assessment?.copy() as? CodeableConcept
        resource.productRelatedness = self.productRelatedness
        resource.author = self.author?.copy() as? Reference
        resource.method = self.method?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Age
extension ModelsR4.Age {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Age()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Age else {
            return self
        }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AllergyIntolerance
extension ModelsR4.AllergyIntolerance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AllergyIntolerance(patient: self.patient)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AllergyIntolerance else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.clinicalStatus = self.clinicalStatus?.copy() as? CodeableConcept
        resource.verificationStatus = self.verificationStatus?.copy() as? CodeableConcept
        resource.type = self.type
        resource.category = self.category
        resource.criticality = self.criticality
        resource.code = self.code?.copy() as? CodeableConcept
        resource.patient = self.patient.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.onset = self.onset?.copy() as? OnsetX
        resource.recordedDate = self.recordedDate
        resource.recorder = self.recorder?.copy() as? Reference
        resource.asserter = self.asserter?.copy() as? Reference
        resource.lastOccurrence = self.lastOccurrence
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.reaction = self.reaction?.compactMap { $0.copy() as? AllergyIntoleranceReaction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AllergyIntoleranceReaction
extension ModelsR4.AllergyIntoleranceReaction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AllergyIntoleranceReaction(manifestation: self.manifestation)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AllergyIntoleranceReaction else {
            return self
        }
        resource.substance = self.substance?.copy() as? CodeableConcept
        resource.manifestation = self.manifestation.compactMap { $0.copy() as? CodeableConcept }
        resource.description_fhir = self.description_fhir
        resource.onset = self.onset
        resource.severity = self.severity
        resource.exposureRoute = self.exposureRoute?.copy() as? CodeableConcept
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Annotation
extension ModelsR4.Annotation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Annotation(text: self.text)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Annotation else {
            return self
        }
        resource.author = self.author?.copy() as? AuthorX
        resource.time = self.time
        resource.text = self.text

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Appointment
extension ModelsR4.Appointment {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Appointment(participant: self.participant, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Appointment else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.cancelationReason = self.cancelationReason?.copy() as? CodeableConcept
        resource.serviceCategory = self.serviceCategory?.compactMap { $0.copy() as? CodeableConcept }
        resource.serviceType = self.serviceType?.compactMap { $0.copy() as? CodeableConcept }
        resource.specialty = self.specialty?.compactMap { $0.copy() as? CodeableConcept }
        resource.appointmentType = self.appointmentType?.copy() as? CodeableConcept
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.priority = self.priority
        resource.description_fhir = self.description_fhir
        resource.supportingInformation = self.supportingInformation?.compactMap { $0.copy() as? Reference }
        resource.start = self.start
        resource.end = self.end
        resource.minutesDuration = self.minutesDuration
        resource.slot = self.slot?.compactMap { $0.copy() as? Reference }
        resource.created = self.created
        resource.comment = self.comment
        resource.patientInstruction = self.patientInstruction
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.participant = self.participant.compactMap { $0.copy() as? AppointmentParticipant }
        resource.requestedPeriod = self.requestedPeriod?.compactMap { $0.copy() as? Period }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AppointmentParticipant
extension ModelsR4.AppointmentParticipant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AppointmentParticipant(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AppointmentParticipant else {
            return self
        }
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.actor = self.actor?.copy() as? Reference
        resource.required = self.required
        resource.status = self.status
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AppointmentResponse
extension ModelsR4.AppointmentResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AppointmentResponse(appointment: self.appointment, participantStatus: self.participantStatus)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AppointmentResponse else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.appointment = self.appointment.copy() as! Reference
        resource.start = self.start
        resource.end = self.end
        resource.participantType = self.participantType?.compactMap { $0.copy() as? CodeableConcept }
        resource.actor = self.actor?.copy() as? Reference
        resource.participantStatus = self.participantStatus
        resource.comment = self.comment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Attachment
extension ModelsR4.Attachment {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Attachment()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Attachment else {
            return self
        }
        resource.contentType = self.contentType
        resource.language = self.language
        resource.data = self.data
        resource.url = self.url
        resource.size = self.size
        resource.hash = self.hash
        resource.title = self.title
        resource.creation = self.creation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AuditEvent
extension ModelsR4.AuditEvent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AuditEvent(agent: self.agent, recorded: self.recorded, source: self.source, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AuditEvent else {
            return self
        }
        resource.type = self.type.copy() as! Coding
        resource.subtype = self.subtype?.compactMap { $0.copy() as? Coding }
        resource.action = self.action
        resource.period = self.period?.copy() as? Period
        resource.recorded = self.recorded
        resource.outcome = self.outcome
        resource.outcomeDesc = self.outcomeDesc
        resource.purposeOfEvent = self.purposeOfEvent?.compactMap { $0.copy() as? CodeableConcept }
        resource.agent = self.agent.compactMap { $0.copy() as? AuditEventAgent }
        resource.source = self.source.copy() as! AuditEventSource
        resource.entity = self.entity?.compactMap { $0.copy() as? AuditEventEntity }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AuditEventAgent
extension ModelsR4.AuditEventAgent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AuditEventAgent(requestor: self.requestor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AuditEventAgent else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.role = self.role?.compactMap { $0.copy() as? CodeableConcept }
        resource.who = self.who?.copy() as? Reference
        resource.altId = self.altId
        resource.name = self.name
        resource.requestor = self.requestor
        resource.location = self.location?.copy() as? Reference
        resource.policy = self.policy
        resource.media = self.media?.copy() as? Coding
        resource.network = self.network?.copy() as? AuditEventAgentNetwork
        resource.purposeOfUse = self.purposeOfUse?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AuditEventAgentNetwork
extension ModelsR4.AuditEventAgentNetwork {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AuditEventAgentNetwork()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AuditEventAgentNetwork else {
            return self
        }
        resource.address = self.address
        resource.type = self.type

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AuditEventEntity
extension ModelsR4.AuditEventEntity {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AuditEventEntity()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AuditEventEntity else {
            return self
        }
        resource.what = self.what?.copy() as? Reference
        resource.type = self.type?.copy() as? Coding
        resource.role = self.role?.copy() as? Coding
        resource.lifecycle = self.lifecycle?.copy() as? Coding
        resource.securityLabel = self.securityLabel?.compactMap { $0.copy() as? Coding }
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.query = self.query
        resource.detail = self.detail?.compactMap { $0.copy() as? AuditEventEntityDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AuditEventEntityDetail
extension ModelsR4.AuditEventEntityDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AuditEventEntityDetail(type: self.type, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AuditEventEntityDetail else {
            return self
        }
        resource.type = self.type
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - AuditEventSource
extension ModelsR4.AuditEventSource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.AuditEventSource(observer: self.observer)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.AuditEventSource else {
            return self
        }
        resource.site = self.site
        resource.observer = self.observer.copy() as! Reference
        resource.type = self.type?.compactMap { $0.copy() as? Coding }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BackboneElement
extension ModelsR4.BackboneElement {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BackboneElement()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BackboneElement else {
            return self
        }
        resource.modifierExtension = self.modifierExtension?.compactMap { $0.copy() as? Extension }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Basic
extension ModelsR4.Basic {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Basic(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Basic else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.created = self.created
        resource.author = self.author?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Binary
extension ModelsR4.Binary {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Binary(contentType: self.contentType)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Binary else {
            return self
        }
        resource.contentType = self.contentType
        resource.securityContext = self.securityContext?.copy() as? Reference
        resource.data = self.data

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BiologicallyDerivedProduct
extension ModelsR4.BiologicallyDerivedProduct {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BiologicallyDerivedProduct()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BiologicallyDerivedProduct else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.productCategory = self.productCategory
        resource.productCode = self.productCode?.copy() as? CodeableConcept
        resource.status = self.status
        resource.request = self.request?.compactMap { $0.copy() as? Reference }
        resource.quantity = self.quantity
        resource.parent = self.parent?.compactMap { $0.copy() as? Reference }
        resource.collection = self.collection?.copy() as? BiologicallyDerivedProductCollection
        resource.processing = self.processing?.compactMap { $0.copy() as? BiologicallyDerivedProductProcessing }
        resource.manipulation = self.manipulation?.copy() as? BiologicallyDerivedProductManipulation
        resource.storage = self.storage?.compactMap { $0.copy() as? BiologicallyDerivedProductStorage }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BiologicallyDerivedProductCollection
extension ModelsR4.BiologicallyDerivedProductCollection {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BiologicallyDerivedProductCollection()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BiologicallyDerivedProductCollection else {
            return self
        }
        resource.collector = self.collector?.copy() as? Reference
        resource.source = self.source?.copy() as? Reference
        resource.collected = self.collected?.copy() as? CollectedX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BiologicallyDerivedProductManipulation
extension ModelsR4.BiologicallyDerivedProductManipulation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BiologicallyDerivedProductManipulation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BiologicallyDerivedProductManipulation else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.time = self.time?.copy() as? TimeX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BiologicallyDerivedProductProcessing
extension ModelsR4.BiologicallyDerivedProductProcessing {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BiologicallyDerivedProductProcessing()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BiologicallyDerivedProductProcessing else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.procedure = self.procedure?.copy() as? CodeableConcept
        resource.additive = self.additive?.copy() as? Reference
        resource.time = self.time?.copy() as? TimeX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BiologicallyDerivedProductStorage
extension ModelsR4.BiologicallyDerivedProductStorage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BiologicallyDerivedProductStorage()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BiologicallyDerivedProductStorage else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.temperature = self.temperature
        resource.scale = self.scale
        resource.duration = self.duration?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BodyStructure
extension ModelsR4.BodyStructure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BodyStructure(patient: self.patient)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BodyStructure else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.morphology = self.morphology?.copy() as? CodeableConcept
        resource.location = self.location?.copy() as? CodeableConcept
        resource.locationQualifier = self.locationQualifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.description_fhir = self.description_fhir
        resource.image = self.image?.compactMap { $0.copy() as? Attachment }
        resource.patient = self.patient.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Bundle
extension ModelsR4.Bundle {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Bundle(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Bundle else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.type = self.type
        resource.timestamp = self.timestamp
        resource.total = self.total
        resource.link = self.link?.compactMap { $0.copy() as? BundleLink }
        resource.entry = self.entry?.compactMap { $0.copy() as? BundleEntry }
        resource.signature = self.signature?.copy() as? Signature

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BundleEntry
extension ModelsR4.BundleEntry {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BundleEntry()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BundleEntry else {
            return self
        }
        resource.link = self.link?.compactMap { $0.copy() as? BundleLink }
        resource.fullUrl = self.fullUrl
        resource.resource = self.resource?.copy() as? ResourceProxy
        resource.search = self.search?.copy() as? BundleEntrySearch
        resource.request = self.request?.copy() as? BundleEntryRequest
        resource.response = self.response?.copy() as? BundleEntryResponse

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BundleEntryRequest
extension ModelsR4.BundleEntryRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BundleEntryRequest(method: self.method, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BundleEntryRequest else {
            return self
        }
        resource.method = self.method
        resource.url = self.url
        resource.ifNoneMatch = self.ifNoneMatch
        resource.ifModifiedSince = self.ifModifiedSince
        resource.ifMatch = self.ifMatch
        resource.ifNoneExist = self.ifNoneExist

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BundleEntryResponse
extension ModelsR4.BundleEntryResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BundleEntryResponse(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BundleEntryResponse else {
            return self
        }
        resource.status = self.status
        resource.location = self.location
        resource.etag = self.etag
        resource.lastModified = self.lastModified
        resource.outcome = self.outcome?.copy() as? ResourceProxy

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BundleEntrySearch
extension ModelsR4.BundleEntrySearch {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BundleEntrySearch()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BundleEntrySearch else {
            return self
        }
        resource.mode = self.mode
        resource.score = self.score

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - BundleLink
extension ModelsR4.BundleLink {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.BundleLink(relation: self.relation, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.BundleLink else {
            return self
        }
        resource.relation = self.relation
        resource.url = self.url

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatement
extension ModelsR4.CapabilityStatement {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatement(date: self.date, fhirVersion: self.fhirVersion, format: self.format, kind: self.kind, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatement else {
            return self
        }
        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.kind = self.kind
        resource.instantiates = self.instantiates
        resource.imports = self.imports
        resource.software = self.software?.copy() as? CapabilityStatementSoftware
        resource.implementation = self.implementation?.copy() as? CapabilityStatementImplementation
        resource.fhirVersion = self.fhirVersion
        resource.format = self.format
        resource.patchFormat = self.patchFormat
        resource.implementationGuide = self.implementationGuide
        resource.rest = self.rest?.compactMap { $0.copy() as? CapabilityStatementRest }
        resource.messaging = self.messaging?.compactMap { $0.copy() as? CapabilityStatementMessaging }
        resource.document = self.document?.compactMap { $0.copy() as? CapabilityStatementDocument }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementDocument
extension ModelsR4.CapabilityStatementDocument {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementDocument(mode: self.mode, profile: self.profile)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementDocument else {
            return self
        }
        resource.mode = self.mode
        resource.documentation = self.documentation
        resource.profile = self.profile

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementImplementation
extension ModelsR4.CapabilityStatementImplementation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementImplementation(description_fhir: self.description_fhir)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementImplementation else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.url = self.url
        resource.custodian = self.custodian?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementMessaging
extension ModelsR4.CapabilityStatementMessaging {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementMessaging()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementMessaging else {
            return self
        }
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? CapabilityStatementMessagingEndpoint }
        resource.reliableCache = self.reliableCache
        resource.documentation = self.documentation
        resource.supportedMessage = self.supportedMessage?.compactMap { $0.copy() as? CapabilityStatementMessagingSupportedMessage }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementMessagingEndpoint
extension ModelsR4.CapabilityStatementMessagingEndpoint {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementMessagingEndpoint(address: self.address, protocol: self.`protocol`)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementMessagingEndpoint else {
            return self
        }
        resource.`protocol` = self.`protocol`.copy() as! Coding
        resource.address = self.address

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementMessagingSupportedMessage
extension ModelsR4.CapabilityStatementMessagingSupportedMessage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementMessagingSupportedMessage(definition: self.definition, mode: self.mode)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementMessagingSupportedMessage else {
            return self
        }
        resource.mode = self.mode
        resource.definition = self.definition

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementRest
extension ModelsR4.CapabilityStatementRest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementRest(mode: self.mode)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementRest else {
            return self
        }
        resource.mode = self.mode
        resource.documentation = self.documentation
        resource.security = self.security?.copy() as? CapabilityStatementRestSecurity
        resource.resource = self.resource?.compactMap { $0.copy() as? CapabilityStatementRestResource }
        resource.interaction = self.interaction?.compactMap { $0.copy() as? CapabilityStatementRestInteraction }
        resource.searchParam = self.searchParam?.compactMap { $0.copy() as? CapabilityStatementRestResourceSearchParam }
        resource.operation = self.operation?.compactMap { $0.copy() as? CapabilityStatementRestResourceOperation }
        resource.compartment = self.compartment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementRestInteraction
extension ModelsR4.CapabilityStatementRestInteraction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementRestInteraction(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementRestInteraction else {
            return self
        }
        resource.code = self.code
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementRestResource
extension ModelsR4.CapabilityStatementRestResource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementRestResource(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementRestResource else {
            return self
        }
        resource.type = self.type
        resource.profile = self.profile
        resource.supportedProfile = self.supportedProfile
        resource.documentation = self.documentation
        resource.interaction = self.interaction?.compactMap { $0.copy() as? CapabilityStatementRestResourceInteraction }
        resource.versioning = self.versioning
        resource.readHistory = self.readHistory
        resource.updateCreate = self.updateCreate
        resource.conditionalCreate = self.conditionalCreate
        resource.conditionalRead = self.conditionalRead
        resource.conditionalUpdate = self.conditionalUpdate
        resource.conditionalDelete = self.conditionalDelete
        resource.referencePolicy = self.referencePolicy
        resource.searchInclude = self.searchInclude
        resource.searchRevInclude = self.searchRevInclude
        resource.searchParam = self.searchParam?.compactMap { $0.copy() as? CapabilityStatementRestResourceSearchParam }
        resource.operation = self.operation?.compactMap { $0.copy() as? CapabilityStatementRestResourceOperation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementRestResourceInteraction
extension ModelsR4.CapabilityStatementRestResourceInteraction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementRestResourceInteraction(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementRestResourceInteraction else {
            return self
        }
        resource.code = self.code
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementRestResourceOperation
extension ModelsR4.CapabilityStatementRestResourceOperation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementRestResourceOperation(definition: self.definition, name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementRestResourceOperation else {
            return self
        }
        resource.name = self.name
        resource.definition = self.definition
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementRestResourceSearchParam
extension ModelsR4.CapabilityStatementRestResourceSearchParam {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementRestResourceSearchParam(name: self.name, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementRestResourceSearchParam else {
            return self
        }
        resource.name = self.name
        resource.definition = self.definition
        resource.type = self.type
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementRestSecurity
extension ModelsR4.CapabilityStatementRestSecurity {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementRestSecurity()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementRestSecurity else {
            return self
        }
        resource.cors = self.cors
        resource.service = self.service?.compactMap { $0.copy() as? CodeableConcept }
        resource.description_fhir = self.description_fhir

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CapabilityStatementSoftware
extension ModelsR4.CapabilityStatementSoftware {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CapabilityStatementSoftware(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CapabilityStatementSoftware else {
            return self
        }
        resource.name = self.name
        resource.version = self.version
        resource.releaseDate = self.releaseDate

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CarePlan
extension ModelsR4.CarePlan {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CarePlan(intent: self.intent, status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CarePlan else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.replaces = self.replaces?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.intent = self.intent
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.period = self.period?.copy() as? Period
        resource.created = self.created
        resource.author = self.author?.copy() as? Reference
        resource.contributor = self.contributor?.compactMap { $0.copy() as? Reference }
        resource.careTeam = self.careTeam?.compactMap { $0.copy() as? Reference }
        resource.addresses = self.addresses?.compactMap { $0.copy() as? Reference }
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy() as? Reference }
        resource.goal = self.goal?.compactMap { $0.copy() as? Reference }
        resource.activity = self.activity?.compactMap { $0.copy() as? CarePlanActivity }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CarePlanActivity
extension ModelsR4.CarePlanActivity {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CarePlanActivity()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CarePlanActivity else {
            return self
        }
        resource.outcomeCodeableConcept = self.outcomeCodeableConcept?.compactMap { $0.copy() as? CodeableConcept }
        resource.outcomeReference = self.outcomeReference?.compactMap { $0.copy() as? Reference }
        resource.progress = self.progress?.compactMap { $0.copy() as? Annotation }
        resource.reference = self.reference?.copy() as? Reference
        resource.detail = self.detail?.copy() as? CarePlanActivityDetail

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CarePlanActivityDetail
extension ModelsR4.CarePlanActivityDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CarePlanActivityDetail(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CarePlanActivityDetail else {
            return self
        }
        resource.kind = self.kind
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.code = self.code?.copy() as? CodeableConcept
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.goal = self.goal?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.doNotPerform = self.doNotPerform
        resource.scheduled = self.scheduled?.copy() as? ScheduledX
        resource.location = self.location?.copy() as? Reference
        resource.performer = self.performer?.compactMap { $0.copy() as? Reference }
        resource.product = self.product?.copy() as? ProductX
        resource.dailyAmount = self.dailyAmount?.copy() as? Quantity
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.description_fhir = self.description_fhir

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CareTeam
extension ModelsR4.CareTeam {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CareTeam()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CareTeam else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.name = self.name
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.period = self.period?.copy() as? Period
        resource.participant = self.participant?.compactMap { $0.copy() as? CareTeamParticipant }
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.managingOrganization = self.managingOrganization?.compactMap { $0.copy() as? Reference }
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CareTeamParticipant
extension ModelsR4.CareTeamParticipant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CareTeamParticipant()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CareTeamParticipant else {
            return self
        }
        resource.role = self.role?.compactMap { $0.copy() as? CodeableConcept }
        resource.member = self.member?.copy() as? Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CatalogEntry
extension ModelsR4.CatalogEntry {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CatalogEntry(orderable: self.orderable, referencedItem: self.referencedItem)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CatalogEntry else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.orderable = self.orderable
        resource.referencedItem = self.referencedItem.copy() as! Reference
        resource.additionalIdentifier = self.additionalIdentifier?.compactMap { $0.copy() as? Identifier }
        resource.classification = self.classification?.compactMap { $0.copy() as? CodeableConcept }
        resource.status = self.status
        resource.validityPeriod = self.validityPeriod?.copy() as? Period
        resource.validTo = self.validTo
        resource.lastUpdated = self.lastUpdated
        resource.additionalCharacteristic = self.additionalCharacteristic?.compactMap { $0.copy() as? CodeableConcept }
        resource.additionalClassification = self.additionalClassification?.compactMap { $0.copy() as? CodeableConcept }
        resource.relatedEntry = self.relatedEntry?.compactMap { $0.copy() as? CatalogEntryRelatedEntry }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CatalogEntryRelatedEntry
extension ModelsR4.CatalogEntryRelatedEntry {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CatalogEntryRelatedEntry(item: self.item, relationtype: self.relationtype)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CatalogEntryRelatedEntry else {
            return self
        }
        resource.relationtype = self.relationtype
        resource.item = self.item.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ChargeItem
extension ModelsR4.ChargeItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ChargeItem(code: self.code, status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ChargeItem else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.definitionUri = self.definitionUri
        resource.definitionCanonical = self.definitionCanonical
        resource.status = self.status
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.context = self.context?.copy() as? Reference
        resource.occurrence = self.occurrence?.copy() as? OccurrenceX
        resource.performer = self.performer?.compactMap { $0.copy() as? ChargeItemPerformer }
        resource.performingOrganization = self.performingOrganization?.copy() as? Reference
        resource.requestingOrganization = self.requestingOrganization?.copy() as? Reference
        resource.costCenter = self.costCenter?.copy() as? Reference
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.bodysite = self.bodysite?.compactMap { $0.copy() as? CodeableConcept }
        resource.factorOverride = self.factorOverride
        resource.priceOverride = self.priceOverride?.copy() as? Money
        resource.overrideReason = self.overrideReason
        resource.enterer = self.enterer?.copy() as? Reference
        resource.enteredDate = self.enteredDate
        resource.reason = self.reason?.compactMap { $0.copy() as? CodeableConcept }
        resource.service = self.service?.compactMap { $0.copy() as? Reference }
        resource.product = self.product?.copy() as? ProductX
        resource.account = self.account?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.supportingInformation = self.supportingInformation?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ChargeItemDefinition
extension ModelsR4.ChargeItemDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ChargeItemDefinition(status: self.status, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ChargeItemDefinition else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.title = self.title
        resource.derivedFromUri = self.derivedFromUri
        resource.partOf = self.partOf
        resource.replaces = self.replaces
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.code = self.code?.copy() as? CodeableConcept
        resource.instance = self.instance?.compactMap { $0.copy() as? Reference }
        resource.applicability = self.applicability?.compactMap { $0.copy() as? ChargeItemDefinitionApplicability }
        resource.propertyGroup = self.propertyGroup?.compactMap { $0.copy() as? ChargeItemDefinitionPropertyGroup }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ChargeItemDefinitionApplicability
extension ModelsR4.ChargeItemDefinitionApplicability {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ChargeItemDefinitionApplicability()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ChargeItemDefinitionApplicability else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.language = self.language
        resource.expression = self.expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ChargeItemDefinitionPropertyGroup
extension ModelsR4.ChargeItemDefinitionPropertyGroup {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ChargeItemDefinitionPropertyGroup()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ChargeItemDefinitionPropertyGroup else {
            return self
        }
        resource.applicability = self.applicability?.compactMap { $0.copy() as? ChargeItemDefinitionApplicability }
        resource.priceComponent = self.priceComponent?.compactMap { $0.copy() as? ChargeItemDefinitionPropertyGroupPriceComponent }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ChargeItemDefinitionPropertyGroupPriceComponent
extension ModelsR4.ChargeItemDefinitionPropertyGroupPriceComponent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ChargeItemDefinitionPropertyGroupPriceComponent(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ChargeItemDefinitionPropertyGroupPriceComponent else {
            return self
        }
        resource.type = self.type
        resource.code = self.code?.copy() as? CodeableConcept
        resource.factor = self.factor
        resource.amount = self.amount?.copy() as? Money

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ChargeItemPerformer
extension ModelsR4.ChargeItemPerformer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ChargeItemPerformer(actor: self.actor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ChargeItemPerformer else {
            return self
        }
        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Claim
extension ModelsR4.Claim {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Claim(created: self.created, insurance: self.insurance, patient: self.patient, priority: self.priority, provider: self.provider, status: self.status, type: self.type, use: self.use)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Claim else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.type = self.type.copy() as! CodeableConcept
        resource.subType = self.subType?.copy() as? CodeableConcept
        resource.use = self.use
        resource.patient = self.patient.copy() as! Reference
        resource.billablePeriod = self.billablePeriod?.copy() as? Period
        resource.created = self.created
        resource.enterer = self.enterer?.copy() as? Reference
        resource.insurer = self.insurer?.copy() as? Reference
        resource.provider = self.provider.copy() as! Reference
        resource.priority = self.priority.copy() as! CodeableConcept
        resource.fundsReserve = self.fundsReserve?.copy() as? CodeableConcept
        resource.related = self.related?.compactMap { $0.copy() as? ClaimRelated }
        resource.prescription = self.prescription?.copy() as? Reference
        resource.originalPrescription = self.originalPrescription?.copy() as? Reference
        resource.payee = self.payee?.copy() as? ClaimPayee
        resource.referral = self.referral?.copy() as? Reference
        resource.facility = self.facility?.copy() as? Reference
        resource.careTeam = self.careTeam?.compactMap { $0.copy() as? ClaimCareTeam }
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy() as? ClaimSupportingInfo }
        resource.diagnosis = self.diagnosis?.compactMap { $0.copy() as? ClaimDiagnosis }
        resource.procedure = self.procedure?.compactMap { $0.copy() as? ClaimProcedure }
        resource.insurance = self.insurance.compactMap { $0.copy() as? ClaimInsurance }
        resource.accident = self.accident?.copy() as? ClaimAccident
        resource.item = self.item?.compactMap { $0.copy() as? ClaimItem }
        resource.total = self.total?.copy() as? Money

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimAccident
extension ModelsR4.ClaimAccident {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimAccident(date: self.date)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimAccident else {
            return self
        }
        resource.date = self.date
        resource.type = self.type?.copy() as? CodeableConcept
        resource.location = self.location?.copy() as? LocationX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimCareTeam
extension ModelsR4.ClaimCareTeam {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimCareTeam(provider: self.provider, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimCareTeam else {
            return self
        }
        resource.sequence = self.sequence
        resource.provider = self.provider.copy() as! Reference
        resource.responsible = self.responsible
        resource.role = self.role?.copy() as? CodeableConcept
        resource.qualification = self.qualification?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimDiagnosis
extension ModelsR4.ClaimDiagnosis {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimDiagnosis(diagnosis: self.diagnosis, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimDiagnosis else {
            return self
        }
        resource.sequence = self.sequence
        resource.diagnosis = self.diagnosis.copy() as! DiagnosisX
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.onAdmission = self.onAdmission?.copy() as? CodeableConcept
        resource.packageCode = self.packageCode?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimInsurance
extension ModelsR4.ClaimInsurance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimInsurance(coverage: self.coverage, focal: self.focal, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimInsurance else {
            return self
        }
        resource.sequence = self.sequence
        resource.focal = self.focal
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.coverage = self.coverage.copy() as! Reference
        resource.businessArrangement = self.businessArrangement
        resource.preAuthRef = self.preAuthRef
        resource.claimResponse = self.claimResponse?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimItem
extension ModelsR4.ClaimItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimItem(productOrService: self.productOrService, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimItem else {
            return self
        }
        resource.sequence = self.sequence
        resource.careTeamSequence = self.careTeamSequence
        resource.diagnosisSequence = self.diagnosisSequence
        resource.procedureSequence = self.procedureSequence
        resource.informationSequence = self.informationSequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.programCode = self.programCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.serviced = self.serviced?.copy() as? ServicedX
        resource.location = self.location?.copy() as? LocationX
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi?.compactMap { $0.copy() as? Reference }
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.subSite = self.subSite?.compactMap { $0.copy() as? CodeableConcept }
        resource.encounter = self.encounter?.compactMap { $0.copy() as? Reference }
        resource.detail = self.detail?.compactMap { $0.copy() as? ClaimItemDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimItemDetail
extension ModelsR4.ClaimItemDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimItemDetail(productOrService: self.productOrService, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimItemDetail else {
            return self
        }
        resource.sequence = self.sequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.programCode = self.programCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi?.compactMap { $0.copy() as? Reference }
        resource.subDetail = self.subDetail?.compactMap { $0.copy() as? ClaimItemDetailSubDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimItemDetailSubDetail
extension ModelsR4.ClaimItemDetailSubDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimItemDetailSubDetail(productOrService: self.productOrService, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimItemDetailSubDetail else {
            return self
        }
        resource.sequence = self.sequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.programCode = self.programCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimPayee
extension ModelsR4.ClaimPayee {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimPayee(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimPayee else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.party = self.party?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimProcedure
extension ModelsR4.ClaimProcedure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimProcedure(procedure: self.procedure, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimProcedure else {
            return self
        }
        resource.sequence = self.sequence
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.date = self.date
        resource.procedure = self.procedure.copy() as! ProcedureX
        resource.udi = self.udi?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimRelated
extension ModelsR4.ClaimRelated {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimRelated()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimRelated else {
            return self
        }
        resource.claim = self.claim?.copy() as? Reference
        resource.relationship = self.relationship?.copy() as? CodeableConcept
        resource.reference = self.reference?.copy() as? Identifier

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponse
extension ModelsR4.ClaimResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponse(created: self.created, insurer: self.insurer, outcome: self.outcome, patient: self.patient, status: self.status, type: self.type, use: self.use)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponse else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.type = self.type.copy() as! CodeableConcept
        resource.subType = self.subType?.copy() as? CodeableConcept
        resource.use = self.use
        resource.patient = self.patient.copy() as! Reference
        resource.created = self.created
        resource.insurer = self.insurer.copy() as! Reference
        resource.requestor = self.requestor?.copy() as? Reference
        resource.request = self.request?.copy() as? Reference
        resource.outcome = self.outcome
        resource.disposition = self.disposition
        resource.preAuthRef = self.preAuthRef
        resource.preAuthPeriod = self.preAuthPeriod?.copy() as? Period
        resource.payeeType = self.payeeType?.copy() as? CodeableConcept
        resource.item = self.item?.compactMap { $0.copy() as? ClaimResponseItem }
        resource.addItem = self.addItem?.compactMap { $0.copy() as? ClaimResponseAddItem }
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ClaimResponseItemAdjudication }
        resource.total = self.total?.compactMap { $0.copy() as? ClaimResponseTotal }
        resource.payment = self.payment?.copy() as? ClaimResponsePayment
        resource.fundsReserve = self.fundsReserve?.copy() as? CodeableConcept
        resource.formCode = self.formCode?.copy() as? CodeableConcept
        resource.form = self.form?.copy() as? Attachment
        resource.processNote = self.processNote?.compactMap { $0.copy() as? ClaimResponseProcessNote }
        resource.communicationRequest = self.communicationRequest?.compactMap { $0.copy() as? Reference }
        resource.insurance = self.insurance?.compactMap { $0.copy() as? ClaimResponseInsurance }
        resource.error = self.error?.compactMap { $0.copy() as? ClaimResponseError }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseAddItem
extension ModelsR4.ClaimResponseAddItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseAddItem(adjudication: self.adjudication, productOrService: self.productOrService)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseAddItem else {
            return self
        }
        resource.itemSequence = self.itemSequence
        resource.detailSequence = self.detailSequence
        resource.subdetailSequence = self.subdetailSequence
        resource.provider = self.provider?.compactMap { $0.copy() as? Reference }
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.programCode = self.programCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.serviced = self.serviced?.copy() as? ServicedX
        resource.location = self.location?.copy() as? LocationX
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.subSite = self.subSite?.compactMap { $0.copy() as? CodeableConcept }
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication.compactMap { $0.copy() as? ClaimResponseItemAdjudication }
        resource.detail = self.detail?.compactMap { $0.copy() as? ClaimResponseAddItemDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseAddItemDetail
extension ModelsR4.ClaimResponseAddItemDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseAddItemDetail(adjudication: self.adjudication, productOrService: self.productOrService)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseAddItemDetail else {
            return self
        }
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication.compactMap { $0.copy() as? ClaimResponseItemAdjudication }
        resource.subDetail = self.subDetail?.compactMap { $0.copy() as? ClaimResponseAddItemDetailSubDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseAddItemDetailSubDetail
extension ModelsR4.ClaimResponseAddItemDetailSubDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseAddItemDetailSubDetail(adjudication: self.adjudication, productOrService: self.productOrService)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseAddItemDetailSubDetail else {
            return self
        }
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication.compactMap { $0.copy() as? ClaimResponseItemAdjudication }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseError
extension ModelsR4.ClaimResponseError {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseError(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseError else {
            return self
        }
        resource.itemSequence = self.itemSequence
        resource.detailSequence = self.detailSequence
        resource.subDetailSequence = self.subDetailSequence
        resource.code = self.code.copy() as! CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseInsurance
extension ModelsR4.ClaimResponseInsurance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseInsurance(coverage: self.coverage, focal: self.focal, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseInsurance else {
            return self
        }
        resource.sequence = self.sequence
        resource.focal = self.focal
        resource.coverage = self.coverage.copy() as! Reference
        resource.businessArrangement = self.businessArrangement
        resource.claimResponse = self.claimResponse?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseItem
extension ModelsR4.ClaimResponseItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseItem(adjudication: self.adjudication, itemSequence: self.itemSequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseItem else {
            return self
        }
        resource.itemSequence = self.itemSequence
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication.compactMap { $0.copy() as? ClaimResponseItemAdjudication }
        resource.detail = self.detail?.compactMap { $0.copy() as? ClaimResponseItemDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseItemAdjudication
extension ModelsR4.ClaimResponseItemAdjudication {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseItemAdjudication(category: self.category)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseItemAdjudication else {
            return self
        }
        resource.category = self.category.copy() as! CodeableConcept
        resource.reason = self.reason?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Money
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseItemDetail
extension ModelsR4.ClaimResponseItemDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseItemDetail(adjudication: self.adjudication, detailSequence: self.detailSequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseItemDetail else {
            return self
        }
        resource.detailSequence = self.detailSequence
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication.compactMap { $0.copy() as? ClaimResponseItemAdjudication }
        resource.subDetail = self.subDetail?.compactMap { $0.copy() as? ClaimResponseItemDetailSubDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseItemDetailSubDetail
extension ModelsR4.ClaimResponseItemDetailSubDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseItemDetailSubDetail(subDetailSequence: self.subDetailSequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseItemDetailSubDetail else {
            return self
        }
        resource.subDetailSequence = self.subDetailSequence
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ClaimResponseItemAdjudication }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponsePayment
extension ModelsR4.ClaimResponsePayment {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponsePayment(amount: self.amount, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponsePayment else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.adjustment = self.adjustment?.copy() as? Money
        resource.adjustmentReason = self.adjustmentReason?.copy() as? CodeableConcept
        resource.date = self.date
        resource.amount = self.amount.copy() as! Money
        resource.identifier = self.identifier?.copy() as? Identifier

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseProcessNote
extension ModelsR4.ClaimResponseProcessNote {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseProcessNote(text: self.text)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseProcessNote else {
            return self
        }
        resource.number = self.number
        resource.type = self.type
        resource.text = self.text
        resource.language = self.language?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimResponseTotal
extension ModelsR4.ClaimResponseTotal {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimResponseTotal(amount: self.amount, category: self.category)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimResponseTotal else {
            return self
        }
        resource.category = self.category.copy() as! CodeableConcept
        resource.amount = self.amount.copy() as! Money

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClaimSupportingInfo
extension ModelsR4.ClaimSupportingInfo {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClaimSupportingInfo(category: self.category, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClaimSupportingInfo else {
            return self
        }
        resource.sequence = self.sequence
        resource.category = self.category.copy() as! CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.timing = self.timing?.copy() as? TimingX
        resource.value = self.value?.copy() as? ValueX
        resource.reason = self.reason?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClinicalImpression
extension ModelsR4.ClinicalImpression {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClinicalImpression(status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClinicalImpression else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.effective = self.effective?.copy() as? EffectiveX
        resource.date = self.date
        resource.assessor = self.assessor?.copy() as? Reference
        resource.previous = self.previous?.copy() as? Reference
        resource.problem = self.problem?.compactMap { $0.copy() as? Reference }
        resource.investigation = self.investigation?.compactMap { $0.copy() as? ClinicalImpressionInvestigation }
        resource.`protocol` = self.`protocol`
        resource.summary = self.summary
        resource.finding = self.finding?.compactMap { $0.copy() as? ClinicalImpressionFinding }
        resource.prognosisCodeableConcept = self.prognosisCodeableConcept?.compactMap { $0.copy() as? CodeableConcept }
        resource.prognosisReference = self.prognosisReference?.compactMap { $0.copy() as? Reference }
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClinicalImpressionFinding
extension ModelsR4.ClinicalImpressionFinding {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClinicalImpressionFinding()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClinicalImpressionFinding else {
            return self
        }
        resource.itemCodeableConcept = self.itemCodeableConcept?.copy() as? CodeableConcept
        resource.itemReference = self.itemReference?.copy() as? Reference
        resource.basis = self.basis

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ClinicalImpressionInvestigation
extension ModelsR4.ClinicalImpressionInvestigation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ClinicalImpressionInvestigation(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ClinicalImpressionInvestigation else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.item = self.item?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CodeSystem
extension ModelsR4.CodeSystem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CodeSystem(content: self.content, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CodeSystem else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.caseSensitive = self.caseSensitive
        resource.valueSet = self.valueSet
        resource.hierarchyMeaning = self.hierarchyMeaning
        resource.compositional = self.compositional
        resource.versionNeeded = self.versionNeeded
        resource.content = self.content
        resource.supplements = self.supplements
        resource.count = self.count
        resource.filter = self.filter?.compactMap { $0.copy() as? CodeSystemFilter }
        resource.property = self.property?.compactMap { $0.copy() as? CodeSystemProperty }
        resource.concept = self.concept?.compactMap { $0.copy() as? CodeSystemConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CodeSystemConcept
extension ModelsR4.CodeSystemConcept {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CodeSystemConcept(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CodeSystemConcept else {
            return self
        }
        resource.code = self.code
        resource.display = self.display
        resource.definition = self.definition
        resource.designation = self.designation?.compactMap { $0.copy() as? CodeSystemConceptDesignation }
        resource.property = self.property?.compactMap { $0.copy() as? CodeSystemConceptProperty }
        resource.concept = self.concept?.compactMap { $0.copy() as? CodeSystemConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CodeSystemConceptDesignation
extension ModelsR4.CodeSystemConceptDesignation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CodeSystemConceptDesignation(value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CodeSystemConceptDesignation else {
            return self
        }
        resource.language = self.language
        resource.use = self.use?.copy() as? Coding
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CodeSystemConceptProperty
extension ModelsR4.CodeSystemConceptProperty {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CodeSystemConceptProperty(code: self.code, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CodeSystemConceptProperty else {
            return self
        }
        resource.code = self.code
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CodeSystemFilter
extension ModelsR4.CodeSystemFilter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CodeSystemFilter(code: self.code, operator: self.`operator`, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CodeSystemFilter else {
            return self
        }
        resource.code = self.code
        resource.description_fhir = self.description_fhir
        resource.`operator` = self.`operator`
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CodeSystemProperty
extension ModelsR4.CodeSystemProperty {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CodeSystemProperty(code: self.code, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CodeSystemProperty else {
            return self
        }
        resource.code = self.code
        resource.uri = self.uri
        resource.description_fhir = self.description_fhir
        resource.type = self.type

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CodeableConcept
extension ModelsR4.CodeableConcept {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CodeableConcept()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CodeableConcept else {
            return self
        }
        resource.coding = self.coding?.compactMap { $0.copy() as? Coding }
        resource.text = self.text

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Coding
extension ModelsR4.Coding {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Coding()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Coding else {
            return self
        }
        resource.system = self.system
        resource.version = self.version
        resource.code = self.code
        resource.display = self.display
        resource.userSelected = self.userSelected

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Communication
extension ModelsR4.Communication {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Communication(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Communication else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.inResponseTo = self.inResponseTo?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.priority = self.priority
        resource.medium = self.medium?.compactMap { $0.copy() as? CodeableConcept }
        resource.subject = self.subject?.copy() as? Reference
        resource.topic = self.topic?.copy() as? CodeableConcept
        resource.about = self.about?.compactMap { $0.copy() as? Reference }
        resource.encounter = self.encounter?.copy() as? Reference
        resource.sent = self.sent
        resource.received = self.received
        resource.recipient = self.recipient?.compactMap { $0.copy() as? Reference }
        resource.sender = self.sender?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.payload = self.payload?.compactMap { $0.copy() as? CommunicationPayload }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CommunicationPayload
extension ModelsR4.CommunicationPayload {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CommunicationPayload(content: self.content)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CommunicationPayload else {
            return self
        }
        resource.content = self.content.copy() as! ContentX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CommunicationRequest
extension ModelsR4.CommunicationRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CommunicationRequest(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CommunicationRequest else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.replaces = self.replaces?.compactMap { $0.copy() as? Reference }
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.priority = self.priority
        resource.doNotPerform = self.doNotPerform
        resource.medium = self.medium?.compactMap { $0.copy() as? CodeableConcept }
        resource.subject = self.subject?.copy() as? Reference
        resource.about = self.about?.compactMap { $0.copy() as? Reference }
        resource.encounter = self.encounter?.copy() as? Reference
        resource.payload = self.payload?.compactMap { $0.copy() as? CommunicationRequestPayload }
        resource.occurrence = self.occurrence?.copy() as? OccurrenceX
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.recipient = self.recipient?.compactMap { $0.copy() as? Reference }
        resource.sender = self.sender?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CommunicationRequestPayload
extension ModelsR4.CommunicationRequestPayload {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CommunicationRequestPayload(content: self.content)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CommunicationRequestPayload else {
            return self
        }
        resource.content = self.content.copy() as! ContentX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CompartmentDefinition
extension ModelsR4.CompartmentDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CompartmentDefinition(code: self.code, name: self.name, search: self.search, status: self.status, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CompartmentDefinition else {
            return self
        }
        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.purpose = self.purpose
        resource.code = self.code
        resource.search = self.search
        resource.resource = self.resource?.compactMap { $0.copy() as? CompartmentDefinitionResource }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CompartmentDefinitionResource
extension ModelsR4.CompartmentDefinitionResource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CompartmentDefinitionResource(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CompartmentDefinitionResource else {
            return self
        }
        resource.code = self.code
        resource.param = self.param
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Composition
extension ModelsR4.Composition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Composition(author: self.author, date: self.date, status: self.status, title: self.title, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Composition else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.status = self.status
        resource.type = self.type.copy() as! CodeableConcept
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.date = self.date
        resource.author = self.author.compactMap { $0.copy() as? Reference }
        resource.title = self.title
        resource.confidentiality = self.confidentiality
        resource.attester = self.attester?.compactMap { $0.copy() as? CompositionAttester }
        resource.custodian = self.custodian?.copy() as? Reference
        resource.relatesTo = self.relatesTo?.compactMap { $0.copy() as? CompositionRelatesTo }
        resource.event = self.event?.compactMap { $0.copy() as? CompositionEvent }
        resource.section = self.section?.compactMap { $0.copy() as? CompositionSection }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CompositionAttester
extension ModelsR4.CompositionAttester {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CompositionAttester(mode: self.mode)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CompositionAttester else {
            return self
        }
        resource.mode = self.mode
        resource.time = self.time
        resource.party = self.party?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CompositionEvent
extension ModelsR4.CompositionEvent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CompositionEvent()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CompositionEvent else {
            return self
        }
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.period = self.period?.copy() as? Period
        resource.detail = self.detail?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CompositionRelatesTo
extension ModelsR4.CompositionRelatesTo {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CompositionRelatesTo(code: self.code, target: self.target)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CompositionRelatesTo else {
            return self
        }
        resource.code = self.code
        resource.target = self.target.copy() as! TargetX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CompositionSection
extension ModelsR4.CompositionSection {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CompositionSection()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CompositionSection else {
            return self
        }
        resource.title = self.title
        resource.code = self.code?.copy() as? CodeableConcept
        resource.author = self.author?.compactMap { $0.copy() as? Reference }
        resource.focus = self.focus?.copy() as? Reference
        resource.text = self.text?.copy() as? Narrative
        resource.mode = self.mode
        resource.orderedBy = self.orderedBy?.copy() as? CodeableConcept
        resource.entry = self.entry?.compactMap { $0.copy() as? Reference }
        resource.emptyReason = self.emptyReason?.copy() as? CodeableConcept
        resource.section = self.section?.compactMap { $0.copy() as? CompositionSection }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConceptMap
extension ModelsR4.ConceptMap {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConceptMap(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConceptMap else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.source = self.source?.copy() as? SourceX
        resource.target = self.target?.copy() as? TargetX
        resource.group = self.group?.compactMap { $0.copy() as? ConceptMapGroup }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConceptMapGroup
extension ModelsR4.ConceptMapGroup {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConceptMapGroup(element: self.element)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConceptMapGroup else {
            return self
        }
        resource.source = self.source
        resource.sourceVersion = self.sourceVersion
        resource.target = self.target
        resource.targetVersion = self.targetVersion
        resource.element = self.element.compactMap { $0.copy() as? ConceptMapGroupElement }
        resource.unmapped = self.unmapped?.copy() as? ConceptMapGroupUnmapped

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConceptMapGroupElement
extension ModelsR4.ConceptMapGroupElement {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConceptMapGroupElement()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConceptMapGroupElement else {
            return self
        }
        resource.code = self.code
        resource.display = self.display
        resource.target = self.target?.compactMap { $0.copy() as? ConceptMapGroupElementTarget }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConceptMapGroupElementTarget
extension ModelsR4.ConceptMapGroupElementTarget {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConceptMapGroupElementTarget(equivalence: self.equivalence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConceptMapGroupElementTarget else {
            return self
        }
        resource.code = self.code
        resource.display = self.display
        resource.equivalence = self.equivalence
        resource.comment = self.comment
        resource.dependsOn = self.dependsOn?.compactMap { $0.copy() as? ConceptMapGroupElementTargetDependsOn }
        resource.product = self.product?.compactMap { $0.copy() as? ConceptMapGroupElementTargetDependsOn }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConceptMapGroupElementTargetDependsOn
extension ModelsR4.ConceptMapGroupElementTargetDependsOn {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConceptMapGroupElementTargetDependsOn(property: self.property, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConceptMapGroupElementTargetDependsOn else {
            return self
        }
        resource.property = self.property
        resource.system = self.system
        resource.value = self.value
        resource.display = self.display

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConceptMapGroupUnmapped
extension ModelsR4.ConceptMapGroupUnmapped {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConceptMapGroupUnmapped(mode: self.mode)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConceptMapGroupUnmapped else {
            return self
        }
        resource.mode = self.mode
        resource.code = self.code
        resource.display = self.display
        resource.url = self.url

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Condition
extension ModelsR4.Condition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Condition(subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Condition else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.clinicalStatus = self.clinicalStatus?.copy() as? CodeableConcept
        resource.verificationStatus = self.verificationStatus?.copy() as? CodeableConcept
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.severity = self.severity?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.bodySite = self.bodySite?.compactMap { $0.copy() as? CodeableConcept }
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.onset = self.onset?.copy() as? OnsetX
        resource.abatement = self.abatement?.copy() as? AbatementX
        resource.recordedDate = self.recordedDate
        resource.recorder = self.recorder?.copy() as? Reference
        resource.asserter = self.asserter?.copy() as? Reference
        resource.stage = self.stage?.compactMap { $0.copy() as? ConditionStage }
        resource.evidence = self.evidence?.compactMap { $0.copy() as? ConditionEvidence }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConditionEvidence
extension ModelsR4.ConditionEvidence {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConditionEvidence()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConditionEvidence else {
            return self
        }
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.detail = self.detail?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConditionStage
extension ModelsR4.ConditionStage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConditionStage()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConditionStage else {
            return self
        }
        resource.summary = self.summary?.copy() as? CodeableConcept
        resource.assessment = self.assessment?.compactMap { $0.copy() as? Reference }
        resource.type = self.type?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Consent
extension ModelsR4.Consent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Consent(category: self.category, scope: self.scope, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Consent else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.scope = self.scope.copy() as! CodeableConcept
        resource.category = self.category.compactMap { $0.copy() as? CodeableConcept }
        resource.patient = self.patient?.copy() as? Reference
        resource.dateTime = self.dateTime
        resource.performer = self.performer?.compactMap { $0.copy() as? Reference }
        resource.organization = self.organization?.compactMap { $0.copy() as? Reference }
        resource.source = self.source?.copy() as? SourceX
        resource.policy = self.policy?.compactMap { $0.copy() as? ConsentPolicy }
        resource.policyRule = self.policyRule?.copy() as? CodeableConcept
        resource.verification = self.verification?.compactMap { $0.copy() as? ConsentVerification }
        resource.provision = self.provision?.copy() as? ConsentProvision

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConsentPolicy
extension ModelsR4.ConsentPolicy {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConsentPolicy()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConsentPolicy else {
            return self
        }
        resource.authority = self.authority
        resource.uri = self.uri

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConsentProvision
extension ModelsR4.ConsentProvision {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConsentProvision()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConsentProvision else {
            return self
        }
        resource.type = self.type
        resource.period = self.period?.copy() as? Period
        resource.actor = self.actor?.compactMap { $0.copy() as? ConsentProvisionActor }
        resource.action = self.action?.compactMap { $0.copy() as? CodeableConcept }
        resource.securityLabel = self.securityLabel?.compactMap { $0.copy() as? Coding }
        resource.purpose = self.purpose?.compactMap { $0.copy() as? Coding }
        resource.`class` = self.`class`?.compactMap { $0.copy() as? Coding }
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.dataPeriod = self.dataPeriod?.copy() as? Period
        resource.data = self.data?.compactMap { $0.copy() as? ConsentProvisionData }
        resource.provision = self.provision?.compactMap { $0.copy() as? ConsentProvision }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConsentProvisionActor
extension ModelsR4.ConsentProvisionActor {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConsentProvisionActor(reference: self.reference, role: self.role)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConsentProvisionActor else {
            return self
        }
        resource.role = self.role.copy() as! CodeableConcept
        resource.reference = self.reference.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConsentProvisionData
extension ModelsR4.ConsentProvisionData {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConsentProvisionData(meaning: self.meaning, reference: self.reference)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConsentProvisionData else {
            return self
        }
        resource.meaning = self.meaning
        resource.reference = self.reference.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ConsentVerification
extension ModelsR4.ConsentVerification {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ConsentVerification(verified: self.verified)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ConsentVerification else {
            return self
        }
        resource.verified = self.verified
        resource.verifiedWith = self.verifiedWith?.copy() as? Reference
        resource.verificationDate = self.verificationDate

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContactDetail
extension ModelsR4.ContactDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContactDetail()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContactDetail else {
            return self
        }
        resource.name = self.name
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContactPoint
extension ModelsR4.ContactPoint {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContactPoint()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContactPoint else {
            return self
        }
        resource.system = self.system
        resource.value = self.value
        resource.use = self.use
        resource.rank = self.rank
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Contract
extension ModelsR4.Contract {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Contract()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Contract else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.url = self.url
        resource.version = self.version
        resource.status = self.status
        resource.legalState = self.legalState?.copy() as? CodeableConcept
        resource.instantiatesCanonical = self.instantiatesCanonical?.copy() as? Reference
        resource.instantiatesUri = self.instantiatesUri
        resource.contentDerivative = self.contentDerivative?.copy() as? CodeableConcept
        resource.issued = self.issued
        resource.applies = self.applies?.copy() as? Period
        resource.expirationType = self.expirationType?.copy() as? CodeableConcept
        resource.subject = self.subject?.compactMap { $0.copy() as? Reference }
        resource.authority = self.authority?.compactMap { $0.copy() as? Reference }
        resource.domain = self.domain?.compactMap { $0.copy() as? Reference }
        resource.site = self.site?.compactMap { $0.copy() as? Reference }
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.alias = self.alias
        resource.author = self.author?.copy() as? Reference
        resource.scope = self.scope?.copy() as? CodeableConcept
        resource.topic = self.topic?.copy() as? TopicX
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subType = self.subType?.compactMap { $0.copy() as? CodeableConcept }
        resource.contentDefinition = self.contentDefinition?.copy() as? ContractContentDefinition
        resource.term = self.term?.compactMap { $0.copy() as? ContractTerm }
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy() as? Reference }
        resource.relevantHistory = self.relevantHistory?.compactMap { $0.copy() as? Reference }
        resource.signer = self.signer?.compactMap { $0.copy() as? ContractSigner }
        resource.friendly = self.friendly?.compactMap { $0.copy() as? ContractFriendly }
        resource.legal = self.legal?.compactMap { $0.copy() as? ContractLegal }
        resource.rule = self.rule?.compactMap { $0.copy() as? ContractRule }
        resource.legallyBinding = self.legallyBinding?.copy() as? LegallyBindingX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractContentDefinition
extension ModelsR4.ContractContentDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractContentDefinition(publicationStatus: self.publicationStatus, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractContentDefinition else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.subType = self.subType?.copy() as? CodeableConcept
        resource.publisher = self.publisher?.copy() as? Reference
        resource.publicationDate = self.publicationDate
        resource.publicationStatus = self.publicationStatus
        resource.copyright = self.copyright

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractFriendly
extension ModelsR4.ContractFriendly {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractFriendly(content: self.content)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractFriendly else {
            return self
        }
        resource.content = self.content.copy() as! ContentX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractLegal
extension ModelsR4.ContractLegal {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractLegal(content: self.content)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractLegal else {
            return self
        }
        resource.content = self.content.copy() as! ContentX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractRule
extension ModelsR4.ContractRule {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractRule(content: self.content)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractRule else {
            return self
        }
        resource.content = self.content.copy() as! ContentX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractSigner
extension ModelsR4.ContractSigner {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractSigner(party: self.party, signature: self.signature, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractSigner else {
            return self
        }
        resource.type = self.type.copy() as! Coding
        resource.party = self.party.copy() as! Reference
        resource.signature = self.signature.compactMap { $0.copy() as? Signature }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTerm
extension ModelsR4.ContractTerm {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTerm(offer: self.offer)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTerm else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.issued = self.issued
        resource.applies = self.applies?.copy() as? Period
        resource.topic = self.topic?.copy() as? TopicX
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subType = self.subType?.copy() as? CodeableConcept
        resource.text = self.text
        resource.securityLabel = self.securityLabel?.compactMap { $0.copy() as? ContractTermSecurityLabel }
        resource.offer = self.offer.copy() as! ContractTermOffer
        resource.asset = self.asset?.compactMap { $0.copy() as? ContractTermAsset }
        resource.action = self.action?.compactMap { $0.copy() as? ContractTermAction }
        resource.group = self.group?.compactMap { $0.copy() as? ContractTerm }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermAction
extension ModelsR4.ContractTermAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermAction(intent: self.intent, status: self.status, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermAction else {
            return self
        }
        resource.doNotPerform = self.doNotPerform
        resource.type = self.type.copy() as! CodeableConcept
        resource.subject = self.subject?.compactMap { $0.copy() as? ContractTermActionSubject }
        resource.intent = self.intent.copy() as! CodeableConcept
        resource.linkId = self.linkId
        resource.status = self.status.copy() as! CodeableConcept
        resource.context = self.context?.copy() as? Reference
        resource.contextLinkId = self.contextLinkId
        resource.occurrence = self.occurrence?.copy() as? OccurrenceX
        resource.requester = self.requester?.compactMap { $0.copy() as? Reference }
        resource.requesterLinkId = self.requesterLinkId
        resource.performerType = self.performerType?.compactMap { $0.copy() as? CodeableConcept }
        resource.performerRole = self.performerRole?.copy() as? CodeableConcept
        resource.performer = self.performer?.copy() as? Reference
        resource.performerLinkId = self.performerLinkId
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.reason = self.reason
        resource.reasonLinkId = self.reasonLinkId
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.securityLabelNumber = self.securityLabelNumber

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermActionSubject
extension ModelsR4.ContractTermActionSubject {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermActionSubject(reference: self.reference)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermActionSubject else {
            return self
        }
        resource.reference = self.reference.compactMap { $0.copy() as? Reference }
        resource.role = self.role?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermAsset
extension ModelsR4.ContractTermAsset {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermAsset()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermAsset else {
            return self
        }
        resource.scope = self.scope?.copy() as? CodeableConcept
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.typeReference = self.typeReference?.compactMap { $0.copy() as? Reference }
        resource.subtype = self.subtype?.compactMap { $0.copy() as? CodeableConcept }
        resource.relationship = self.relationship?.copy() as? Coding
        resource.context = self.context?.compactMap { $0.copy() as? ContractTermAssetContext }
        resource.condition = self.condition
        resource.periodType = self.periodType?.compactMap { $0.copy() as? CodeableConcept }
        resource.period = self.period?.compactMap { $0.copy() as? Period }
        resource.usePeriod = self.usePeriod?.compactMap { $0.copy() as? Period }
        resource.text = self.text
        resource.linkId = self.linkId
        resource.answer = self.answer?.compactMap { $0.copy() as? ContractTermOfferAnswer }
        resource.securityLabelNumber = self.securityLabelNumber
        resource.valuedItem = self.valuedItem?.compactMap { $0.copy() as? ContractTermAssetValuedItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermAssetContext
extension ModelsR4.ContractTermAssetContext {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermAssetContext()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermAssetContext else {
            return self
        }
        resource.reference = self.reference?.copy() as? Reference
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.text = self.text

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermAssetValuedItem
extension ModelsR4.ContractTermAssetValuedItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermAssetValuedItem()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermAssetValuedItem else {
            return self
        }
        resource.entity = self.entity?.copy() as? EntityX
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.effectiveTime = self.effectiveTime
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.points = self.points
        resource.net = self.net?.copy() as? Money
        resource.payment = self.payment
        resource.paymentDate = self.paymentDate
        resource.responsible = self.responsible?.copy() as? Reference
        resource.recipient = self.recipient?.copy() as? Reference
        resource.linkId = self.linkId
        resource.securityLabelNumber = self.securityLabelNumber

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermOffer
extension ModelsR4.ContractTermOffer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermOffer()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermOffer else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.party = self.party?.compactMap { $0.copy() as? ContractTermOfferParty }
        resource.topic = self.topic?.copy() as? Reference
        resource.type = self.type?.copy() as? CodeableConcept
        resource.decision = self.decision?.copy() as? CodeableConcept
        resource.decisionMode = self.decisionMode?.compactMap { $0.copy() as? CodeableConcept }
        resource.answer = self.answer?.compactMap { $0.copy() as? ContractTermOfferAnswer }
        resource.text = self.text
        resource.linkId = self.linkId
        resource.securityLabelNumber = self.securityLabelNumber

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermOfferAnswer
extension ModelsR4.ContractTermOfferAnswer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermOfferAnswer(value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermOfferAnswer else {
            return self
        }
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermOfferParty
extension ModelsR4.ContractTermOfferParty {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermOfferParty(reference: self.reference, role: self.role)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermOfferParty else {
            return self
        }
        resource.reference = self.reference.compactMap { $0.copy() as? Reference }
        resource.role = self.role.copy() as! CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ContractTermSecurityLabel
extension ModelsR4.ContractTermSecurityLabel {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ContractTermSecurityLabel(classification: self.classification)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ContractTermSecurityLabel else {
            return self
        }
        resource.number = self.number
        resource.classification = self.classification.copy() as! Coding
        resource.category = self.category?.compactMap { $0.copy() as? Coding }
        resource.control = self.control?.compactMap { $0.copy() as? Coding }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Contributor
extension ModelsR4.Contributor {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Contributor(name: self.name, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Contributor else {
            return self
        }
        resource.type = self.type
        resource.name = self.name
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Count
extension ModelsR4.Count {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Count()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Count else {
            return self
        }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Coverage
extension ModelsR4.Coverage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Coverage(beneficiary: self.beneficiary, payor: self.payor, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Coverage else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.policyHolder = self.policyHolder?.copy() as? Reference
        resource.subscriber = self.subscriber?.copy() as? Reference
        resource.subscriberId = self.subscriberId
        resource.beneficiary = self.beneficiary.copy() as! Reference
        resource.dependent = self.dependent
        resource.relationship = self.relationship?.copy() as? CodeableConcept
        resource.period = self.period?.copy() as? Period
        resource.payor = self.payor.compactMap { $0.copy() as? Reference }
        resource.`class` = self.`class`?.compactMap { $0.copy() as? CoverageClass }
        resource.order = self.order
        resource.network = self.network
        resource.costToBeneficiary = self.costToBeneficiary?.compactMap { $0.copy() as? CoverageCostToBeneficiary }
        resource.subrogation = self.subrogation
        resource.contract = self.contract?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageClass
extension ModelsR4.CoverageClass {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageClass(type: self.type, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageClass else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.value = self.value
        resource.name = self.name

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageCostToBeneficiary
extension ModelsR4.CoverageCostToBeneficiary {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageCostToBeneficiary(value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageCostToBeneficiary else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.value = self.value.copy() as! ValueX
        resource.exception = self.exception?.compactMap { $0.copy() as? CoverageCostToBeneficiaryException }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageCostToBeneficiaryException
extension ModelsR4.CoverageCostToBeneficiaryException {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageCostToBeneficiaryException(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageCostToBeneficiaryException else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityRequest
extension ModelsR4.CoverageEligibilityRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityRequest(created: self.created, insurer: self.insurer, patient: self.patient, purpose: self.purpose, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityRequest else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.purpose = self.purpose
        resource.patient = self.patient.copy() as! Reference
        resource.serviced = self.serviced?.copy() as? ServicedX
        resource.created = self.created
        resource.enterer = self.enterer?.copy() as? Reference
        resource.provider = self.provider?.copy() as? Reference
        resource.insurer = self.insurer.copy() as! Reference
        resource.facility = self.facility?.copy() as? Reference
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy() as? CoverageEligibilityRequestSupportingInfo }
        resource.insurance = self.insurance?.compactMap { $0.copy() as? CoverageEligibilityRequestInsurance }
        resource.item = self.item?.compactMap { $0.copy() as? CoverageEligibilityRequestItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityRequestInsurance
extension ModelsR4.CoverageEligibilityRequestInsurance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityRequestInsurance(coverage: self.coverage)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityRequestInsurance else {
            return self
        }
        resource.focal = self.focal
        resource.coverage = self.coverage.copy() as! Reference
        resource.businessArrangement = self.businessArrangement

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityRequestItem
extension ModelsR4.CoverageEligibilityRequestItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityRequestItem()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityRequestItem else {
            return self
        }
        resource.supportingInfoSequence = self.supportingInfoSequence
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService?.copy() as? CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.provider = self.provider?.copy() as? Reference
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.facility = self.facility?.copy() as? Reference
        resource.diagnosis = self.diagnosis?.compactMap { $0.copy() as? CoverageEligibilityRequestItemDiagnosis }
        resource.detail = self.detail?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityRequestItemDiagnosis
extension ModelsR4.CoverageEligibilityRequestItemDiagnosis {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityRequestItemDiagnosis()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityRequestItemDiagnosis else {
            return self
        }
        resource.diagnosis = self.diagnosis?.copy() as? DiagnosisX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityRequestSupportingInfo
extension ModelsR4.CoverageEligibilityRequestSupportingInfo {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityRequestSupportingInfo(information: self.information, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityRequestSupportingInfo else {
            return self
        }
        resource.sequence = self.sequence
        resource.information = self.information.copy() as! Reference
        resource.appliesToAll = self.appliesToAll

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityResponse
extension ModelsR4.CoverageEligibilityResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityResponse(created: self.created, insurer: self.insurer, outcome: self.outcome, patient: self.patient, purpose: self.purpose, request: self.request, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityResponse else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.purpose = self.purpose
        resource.patient = self.patient.copy() as! Reference
        resource.serviced = self.serviced?.copy() as? ServicedX
        resource.created = self.created
        resource.requestor = self.requestor?.copy() as? Reference
        resource.request = self.request.copy() as! Reference
        resource.outcome = self.outcome
        resource.disposition = self.disposition
        resource.insurer = self.insurer.copy() as! Reference
        resource.insurance = self.insurance?.compactMap { $0.copy() as? CoverageEligibilityResponseInsurance }
        resource.preAuthRef = self.preAuthRef
        resource.form = self.form?.copy() as? CodeableConcept
        resource.error = self.error?.compactMap { $0.copy() as? CoverageEligibilityResponseError }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityResponseError
extension ModelsR4.CoverageEligibilityResponseError {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityResponseError(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityResponseError else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityResponseInsurance
extension ModelsR4.CoverageEligibilityResponseInsurance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityResponseInsurance(coverage: self.coverage)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityResponseInsurance else {
            return self
        }
        resource.coverage = self.coverage.copy() as! Reference
        resource.inforce = self.inforce
        resource.benefitPeriod = self.benefitPeriod?.copy() as? Period
        resource.item = self.item?.compactMap { $0.copy() as? CoverageEligibilityResponseInsuranceItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityResponseInsuranceItem
extension ModelsR4.CoverageEligibilityResponseInsuranceItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityResponseInsuranceItem()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityResponseInsuranceItem else {
            return self
        }
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService?.copy() as? CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.provider = self.provider?.copy() as? Reference
        resource.excluded = self.excluded
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.network = self.network?.copy() as? CodeableConcept
        resource.unit = self.unit?.copy() as? CodeableConcept
        resource.term = self.term?.copy() as? CodeableConcept
        resource.benefit = self.benefit?.compactMap { $0.copy() as? CoverageEligibilityResponseInsuranceItemBenefit }
        resource.authorizationRequired = self.authorizationRequired
        resource.authorizationSupporting = self.authorizationSupporting?.compactMap { $0.copy() as? CodeableConcept }
        resource.authorizationUrl = self.authorizationUrl

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - CoverageEligibilityResponseInsuranceItemBenefit
extension ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.allowed = self.allowed?.copy() as? AllowedX
        resource.used = self.used?.copy() as? UsedX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DataRequirement
extension ModelsR4.DataRequirement {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DataRequirement(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DataRequirement else {
            return self
        }
        resource.type = self.type
        resource.profile = self.profile
        resource.subject = self.subject?.copy() as? SubjectX
        resource.mustSupport = self.mustSupport
        resource.codeFilter = self.codeFilter?.compactMap { $0.copy() as? DataRequirementCodeFilter }
        resource.dateFilter = self.dateFilter?.compactMap { $0.copy() as? DataRequirementDateFilter }
        resource.limit = self.limit
        resource.sort = self.sort?.compactMap { $0.copy() as? DataRequirementSort }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DataRequirementCodeFilter
extension ModelsR4.DataRequirementCodeFilter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DataRequirementCodeFilter()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DataRequirementCodeFilter else {
            return self
        }
        resource.path = self.path
        resource.searchParam = self.searchParam
        resource.valueSet = self.valueSet
        resource.code = self.code?.compactMap { $0.copy() as? Coding }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DataRequirementDateFilter
extension ModelsR4.DataRequirementDateFilter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DataRequirementDateFilter()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DataRequirementDateFilter else {
            return self
        }
        resource.path = self.path
        resource.searchParam = self.searchParam
        resource.value = self.value?.copy() as? ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DataRequirementSort
extension ModelsR4.DataRequirementSort {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DataRequirementSort(direction: self.direction, path: self.path)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DataRequirementSort else {
            return self
        }
        resource.path = self.path
        resource.direction = self.direction

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DetectedIssue
extension ModelsR4.DetectedIssue {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DetectedIssue(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DetectedIssue else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.code = self.code?.copy() as? CodeableConcept
        resource.severity = self.severity
        resource.patient = self.patient?.copy() as? Reference
        resource.identified = self.identified?.copy() as? IdentifiedX
        resource.author = self.author?.copy() as? Reference
        resource.implicated = self.implicated?.compactMap { $0.copy() as? Reference }
        resource.evidence = self.evidence?.compactMap { $0.copy() as? DetectedIssueEvidence }
        resource.detail = self.detail
        resource.reference = self.reference
        resource.mitigation = self.mitigation?.compactMap { $0.copy() as? DetectedIssueMitigation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DetectedIssueEvidence
extension ModelsR4.DetectedIssueEvidence {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DetectedIssueEvidence()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DetectedIssueEvidence else {
            return self
        }
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.detail = self.detail?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DetectedIssueMitigation
extension ModelsR4.DetectedIssueMitigation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DetectedIssueMitigation(action: self.action)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DetectedIssueMitigation else {
            return self
        }
        resource.action = self.action.copy() as! CodeableConcept
        resource.date = self.date
        resource.author = self.author?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Device
extension ModelsR4.Device {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Device()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Device else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.definition = self.definition?.copy() as? Reference
        resource.udiCarrier = self.udiCarrier?.compactMap { $0.copy() as? DeviceUdiCarrier }
        resource.status = self.status
        resource.statusReason = self.statusReason?.compactMap { $0.copy() as? CodeableConcept }
        resource.distinctIdentifier = self.distinctIdentifier
        resource.manufacturer = self.manufacturer
        resource.manufactureDate = self.manufactureDate
        resource.expirationDate = self.expirationDate
        resource.lotNumber = self.lotNumber
        resource.serialNumber = self.serialNumber
        resource.deviceName = self.deviceName?.compactMap { $0.copy() as? DeviceDeviceName }
        resource.modelNumber = self.modelNumber
        resource.partNumber = self.partNumber
        resource.type = self.type?.copy() as? CodeableConcept
        resource.specialization = self.specialization?.compactMap { $0.copy() as? DeviceSpecialization }
        resource.version = self.version?.compactMap { $0.copy() as? DeviceVersion }
        resource.property = self.property?.compactMap { $0.copy() as? DeviceProperty }
        resource.patient = self.patient?.copy() as? Reference
        resource.owner = self.owner?.copy() as? Reference
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactPoint }
        resource.location = self.location?.copy() as? Reference
        resource.url = self.url
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.safety = self.safety?.compactMap { $0.copy() as? CodeableConcept }
        resource.parent = self.parent?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceDefinition
extension ModelsR4.DeviceDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceDefinition()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceDefinition else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.udiDeviceIdentifier = self.udiDeviceIdentifier?.compactMap { $0.copy() as? DeviceDefinitionUdiDeviceIdentifier }
        resource.manufacturer = self.manufacturer?.copy() as? ManufacturerX
        resource.deviceName = self.deviceName?.compactMap { $0.copy() as? DeviceDefinitionDeviceName }
        resource.modelNumber = self.modelNumber
        resource.type = self.type?.copy() as? CodeableConcept
        resource.specialization = self.specialization?.compactMap { $0.copy() as? DeviceDefinitionSpecialization }
        resource.version = self.version
        resource.safety = self.safety?.compactMap { $0.copy() as? CodeableConcept }
        resource.shelfLifeStorage = self.shelfLifeStorage?.compactMap { $0.copy() as? ProductShelfLife }
        resource.physicalCharacteristics = self.physicalCharacteristics?.copy() as? ProdCharacteristic
        resource.languageCode = self.languageCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.capability = self.capability?.compactMap { $0.copy() as? DeviceDefinitionCapability }
        resource.property = self.property?.compactMap { $0.copy() as? DeviceDefinitionProperty }
        resource.owner = self.owner?.copy() as? Reference
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactPoint }
        resource.url = self.url
        resource.onlineInformation = self.onlineInformation
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.parentDevice = self.parentDevice?.copy() as? Reference
        resource.material = self.material?.compactMap { $0.copy() as? DeviceDefinitionMaterial }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceDefinitionCapability
extension ModelsR4.DeviceDefinitionCapability {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceDefinitionCapability(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceDefinitionCapability else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.description_fhir = self.description_fhir?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceDefinitionDeviceName
extension ModelsR4.DeviceDefinitionDeviceName {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceDefinitionDeviceName(name: self.name, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceDefinitionDeviceName else {
            return self
        }
        resource.name = self.name
        resource.type = self.type

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceDefinitionMaterial
extension ModelsR4.DeviceDefinitionMaterial {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceDefinitionMaterial(substance: self.substance)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceDefinitionMaterial else {
            return self
        }
        resource.substance = self.substance.copy() as! CodeableConcept
        resource.alternate = self.alternate
        resource.allergenicIndicator = self.allergenicIndicator

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceDefinitionProperty
extension ModelsR4.DeviceDefinitionProperty {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceDefinitionProperty(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceDefinitionProperty else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.valueQuantity = self.valueQuantity?.compactMap { $0.copy() as? Quantity }
        resource.valueCode = self.valueCode?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceDefinitionSpecialization
extension ModelsR4.DeviceDefinitionSpecialization {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceDefinitionSpecialization(systemType: self.systemType)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceDefinitionSpecialization else {
            return self
        }
        resource.systemType = self.systemType
        resource.version = self.version

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceDefinitionUdiDeviceIdentifier
extension ModelsR4.DeviceDefinitionUdiDeviceIdentifier {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceDefinitionUdiDeviceIdentifier(deviceIdentifier: self.deviceIdentifier, issuer: self.issuer, jurisdiction: self.jurisdiction)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceDefinitionUdiDeviceIdentifier else {
            return self
        }
        resource.deviceIdentifier = self.deviceIdentifier
        resource.issuer = self.issuer
        resource.jurisdiction = self.jurisdiction

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceDeviceName
extension ModelsR4.DeviceDeviceName {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceDeviceName(name: self.name, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceDeviceName else {
            return self
        }
        resource.name = self.name
        resource.type = self.type

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceMetric
extension ModelsR4.DeviceMetric {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceMetric(category: self.category, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceMetric else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.type = self.type.copy() as! CodeableConcept
        resource.unit = self.unit?.copy() as? CodeableConcept
        resource.source = self.source?.copy() as? Reference
        resource.parent = self.parent?.copy() as? Reference
        resource.operationalStatus = self.operationalStatus
        resource.color = self.color
        resource.category = self.category
        resource.measurementPeriod = self.measurementPeriod?.copy() as? Timing
        resource.calibration = self.calibration?.compactMap { $0.copy() as? DeviceMetricCalibration }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceMetricCalibration
extension ModelsR4.DeviceMetricCalibration {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceMetricCalibration()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceMetricCalibration else {
            return self
        }
        resource.type = self.type
        resource.state = self.state
        resource.time = self.time

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceProperty
extension ModelsR4.DeviceProperty {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceProperty(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceProperty else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.valueQuantity = self.valueQuantity?.compactMap { $0.copy() as? Quantity }
        resource.valueCode = self.valueCode?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceRequest
extension ModelsR4.DeviceRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceRequest(code: self.code, intent: self.intent, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceRequest else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.priorRequest = self.priorRequest?.compactMap { $0.copy() as? Reference }
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.status = self.status
        resource.intent = self.intent
        resource.priority = self.priority
        resource.code = self.code.copy() as! CodeX
        resource.parameter = self.parameter?.compactMap { $0.copy() as? DeviceRequestParameter }
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrence = self.occurrence?.copy() as? OccurrenceX
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.performerType = self.performerType?.copy() as? CodeableConcept
        resource.performer = self.performer?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.insurance = self.insurance?.compactMap { $0.copy() as? Reference }
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.relevantHistory = self.relevantHistory?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceRequestParameter
extension ModelsR4.DeviceRequestParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceRequestParameter()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceRequestParameter else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.value = self.value?.copy() as? ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceSpecialization
extension ModelsR4.DeviceSpecialization {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceSpecialization(systemType: self.systemType)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceSpecialization else {
            return self
        }
        resource.systemType = self.systemType.copy() as! CodeableConcept
        resource.version = self.version

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceUdiCarrier
extension ModelsR4.DeviceUdiCarrier {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceUdiCarrier()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceUdiCarrier else {
            return self
        }
        resource.deviceIdentifier = self.deviceIdentifier
        resource.issuer = self.issuer
        resource.jurisdiction = self.jurisdiction
        resource.carrierAIDC = self.carrierAIDC
        resource.carrierHRF = self.carrierHRF
        resource.entryType = self.entryType

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceUseStatement
extension ModelsR4.DeviceUseStatement {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceUseStatement(device: self.device, status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceUseStatement else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.subject = self.subject.copy() as! Reference
        resource.derivedFrom = self.derivedFrom?.compactMap { $0.copy() as? Reference }
        resource.timing = self.timing?.copy() as? TimingX
        resource.recordedOn = self.recordedOn
        resource.source = self.source?.copy() as? Reference
        resource.device = self.device.copy() as! Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DeviceVersion
extension ModelsR4.DeviceVersion {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DeviceVersion(value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DeviceVersion else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.component = self.component?.copy() as? Identifier
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DiagnosticReport
extension ModelsR4.DiagnosticReport {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DiagnosticReport(code: self.code, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DiagnosticReport else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.effective = self.effective?.copy() as? EffectiveX
        resource.issued = self.issued
        resource.performer = self.performer?.compactMap { $0.copy() as? Reference }
        resource.resultsInterpreter = self.resultsInterpreter?.compactMap { $0.copy() as? Reference }
        resource.specimen = self.specimen?.compactMap { $0.copy() as? Reference }
        resource.result = self.result?.compactMap { $0.copy() as? Reference }
        resource.imagingStudy = self.imagingStudy?.compactMap { $0.copy() as? Reference }
        resource.media = self.media?.compactMap { $0.copy() as? DiagnosticReportMedia }
        resource.conclusion = self.conclusion
        resource.conclusionCode = self.conclusionCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.presentedForm = self.presentedForm?.compactMap { $0.copy() as? Attachment }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DiagnosticReportMedia
extension ModelsR4.DiagnosticReportMedia {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DiagnosticReportMedia(link: self.link)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DiagnosticReportMedia else {
            return self
        }
        resource.comment = self.comment
        resource.link = self.link.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Distance
extension ModelsR4.Distance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Distance()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Distance else {
            return self
        }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DocumentManifest
extension ModelsR4.DocumentManifest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DocumentManifest(content: self.content, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DocumentManifest else {
            return self
        }
        resource.masterIdentifier = self.masterIdentifier?.copy() as? Identifier
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.created = self.created
        resource.author = self.author?.compactMap { $0.copy() as? Reference }
        resource.recipient = self.recipient?.compactMap { $0.copy() as? Reference }
        resource.source = self.source
        resource.description_fhir = self.description_fhir
        resource.content = self.content.compactMap { $0.copy() as? Reference }
        resource.related = self.related?.compactMap { $0.copy() as? DocumentManifestRelated }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DocumentManifestRelated
extension ModelsR4.DocumentManifestRelated {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DocumentManifestRelated()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DocumentManifestRelated else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.ref = self.ref?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DocumentReference
extension ModelsR4.DocumentReference {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DocumentReference(content: self.content, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DocumentReference else {
            return self
        }
        resource.masterIdentifier = self.masterIdentifier?.copy() as? Identifier
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.docStatus = self.docStatus
        resource.type = self.type?.copy() as? CodeableConcept
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.subject = self.subject?.copy() as? Reference
        resource.date = self.date
        resource.author = self.author?.compactMap { $0.copy() as? Reference }
        resource.authenticator = self.authenticator?.copy() as? Reference
        resource.custodian = self.custodian?.copy() as? Reference
        resource.relatesTo = self.relatesTo?.compactMap { $0.copy() as? DocumentReferenceRelatesTo }
        resource.description_fhir = self.description_fhir
        resource.securityLabel = self.securityLabel?.compactMap { $0.copy() as? CodeableConcept }
        resource.content = self.content.compactMap { $0.copy() as? DocumentReferenceContent }
        resource.context = self.context?.copy() as? DocumentReferenceContext

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DocumentReferenceContent
extension ModelsR4.DocumentReferenceContent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DocumentReferenceContent(attachment: self.attachment)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DocumentReferenceContent else {
            return self
        }
        resource.attachment = self.attachment.copy() as! Attachment
        resource.format = self.format?.copy() as? Coding

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DocumentReferenceContext
extension ModelsR4.DocumentReferenceContext {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DocumentReferenceContext()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DocumentReferenceContext else {
            return self
        }
        resource.encounter = self.encounter?.compactMap { $0.copy() as? Reference }
        resource.event = self.event?.compactMap { $0.copy() as? CodeableConcept }
        resource.period = self.period?.copy() as? Period
        resource.facilityType = self.facilityType?.copy() as? CodeableConcept
        resource.practiceSetting = self.practiceSetting?.copy() as? CodeableConcept
        resource.sourcePatientInfo = self.sourcePatientInfo?.copy() as? Reference
        resource.related = self.related?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DocumentReferenceRelatesTo
extension ModelsR4.DocumentReferenceRelatesTo {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DocumentReferenceRelatesTo(code: self.code, target: self.target)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DocumentReferenceRelatesTo else {
            return self
        }
        resource.code = self.code
        resource.target = self.target.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DomainResource
extension ModelsR4.DomainResource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DomainResource()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DomainResource else {
            return self
        }
        resource.text = self.text?.copy() as? Narrative
        resource.contained = self.contained
        resource.`extension` = self.`extension`?.compactMap { $0.copy() as? Extension }
        resource.modifierExtension = self.modifierExtension?.compactMap { $0.copy() as? Extension }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Dosage
extension ModelsR4.Dosage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Dosage()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Dosage else {
            return self
        }
        resource.sequence = self.sequence
        resource.text = self.text
        resource.additionalInstruction = self.additionalInstruction?.compactMap { $0.copy() as? CodeableConcept }
        resource.patientInstruction = self.patientInstruction
        resource.timing = self.timing?.copy() as? Timing
        resource.asNeeded = self.asNeeded?.copy() as? AsNeededX
        resource.site = self.site?.copy() as? CodeableConcept
        resource.route = self.route?.copy() as? CodeableConcept
        resource.method = self.method?.copy() as? CodeableConcept
        resource.doseAndRate = self.doseAndRate?.compactMap { $0.copy() as? DosageDoseAndRate }
        resource.maxDosePerPeriod = self.maxDosePerPeriod?.copy() as? Ratio
        resource.maxDosePerAdministration = self.maxDosePerAdministration?.copy() as? Quantity
        resource.maxDosePerLifetime = self.maxDosePerLifetime?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - DosageDoseAndRate
extension ModelsR4.DosageDoseAndRate {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.DosageDoseAndRate()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.DosageDoseAndRate else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.dose = self.dose?.copy() as? DoseX
        resource.rate = self.rate?.copy() as? RateX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Duration
extension ModelsR4.Duration {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Duration()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Duration else {
            return self
        }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EffectEvidenceSynthesis
extension ModelsR4.EffectEvidenceSynthesis {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EffectEvidenceSynthesis(exposure: self.exposure, exposureAlternative: self.exposureAlternative, outcome: self.outcome, population: self.population, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EffectEvidenceSynthesis else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.synthesisType = self.synthesisType?.copy() as? CodeableConcept
        resource.studyType = self.studyType?.copy() as? CodeableConcept
        resource.population = self.population.copy() as! Reference
        resource.exposure = self.exposure.copy() as! Reference
        resource.exposureAlternative = self.exposureAlternative.copy() as! Reference
        resource.outcome = self.outcome.copy() as! Reference
        resource.sampleSize = self.sampleSize?.copy() as? EffectEvidenceSynthesisSampleSize
        resource.resultsByExposure = self.resultsByExposure?.compactMap { $0.copy() as? EffectEvidenceSynthesisResultsByExposure }
        resource.effectEstimate = self.effectEstimate?.compactMap { $0.copy() as? EffectEvidenceSynthesisEffectEstimate }
        resource.certainty = self.certainty?.compactMap { $0.copy() as? EffectEvidenceSynthesisCertainty }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EffectEvidenceSynthesisCertainty
extension ModelsR4.EffectEvidenceSynthesisCertainty {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EffectEvidenceSynthesisCertainty()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EffectEvidenceSynthesisCertainty else {
            return self
        }
        resource.rating = self.rating?.compactMap { $0.copy() as? CodeableConcept }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.certaintySubcomponent = self.certaintySubcomponent?.compactMap { $0.copy() as? EffectEvidenceSynthesisCertaintyCertaintySubcomponent }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EffectEvidenceSynthesisCertaintyCertaintySubcomponent
extension ModelsR4.EffectEvidenceSynthesisCertaintyCertaintySubcomponent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EffectEvidenceSynthesisCertaintyCertaintySubcomponent()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EffectEvidenceSynthesisCertaintyCertaintySubcomponent else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.rating = self.rating?.compactMap { $0.copy() as? CodeableConcept }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EffectEvidenceSynthesisEffectEstimate
extension ModelsR4.EffectEvidenceSynthesisEffectEstimate {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EffectEvidenceSynthesisEffectEstimate()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EffectEvidenceSynthesisEffectEstimate else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.type = self.type?.copy() as? CodeableConcept
        resource.variantState = self.variantState?.copy() as? CodeableConcept
        resource.value = self.value
        resource.unitOfMeasure = self.unitOfMeasure?.copy() as? CodeableConcept
        resource.precisionEstimate = self.precisionEstimate?.compactMap { $0.copy() as? EffectEvidenceSynthesisEffectEstimatePrecisionEstimate }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EffectEvidenceSynthesisEffectEstimatePrecisionEstimate
extension ModelsR4.EffectEvidenceSynthesisEffectEstimatePrecisionEstimate {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EffectEvidenceSynthesisEffectEstimatePrecisionEstimate()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EffectEvidenceSynthesisEffectEstimatePrecisionEstimate else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.level = self.level
        resource.from = self.from
        resource.to = self.to

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EffectEvidenceSynthesisResultsByExposure
extension ModelsR4.EffectEvidenceSynthesisResultsByExposure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EffectEvidenceSynthesisResultsByExposure(riskEvidenceSynthesis: self.riskEvidenceSynthesis)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EffectEvidenceSynthesisResultsByExposure else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.exposureState = self.exposureState
        resource.variantState = self.variantState?.copy() as? CodeableConcept
        resource.riskEvidenceSynthesis = self.riskEvidenceSynthesis.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EffectEvidenceSynthesisSampleSize
extension ModelsR4.EffectEvidenceSynthesisSampleSize {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EffectEvidenceSynthesisSampleSize()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EffectEvidenceSynthesisSampleSize else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.numberOfStudies = self.numberOfStudies
        resource.numberOfParticipants = self.numberOfParticipants

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Element
extension ModelsR4.Element: NSCopying {

    @objc func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Element()
        guard let resource = resourceToCopy as? ModelsR4.Element else {
            return self
        }
        resource.id = self.id
        resource.`extension` = self.`extension`?.compactMap { $0.copy() as? Extension }

        return resource
    }

    @objc public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinition
extension ModelsR4.ElementDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinition(path: self.path)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinition else {
            return self
        }
        resource.path = self.path
        resource.representation = self.representation
        resource.sliceName = self.sliceName
        resource.sliceIsConstraining = self.sliceIsConstraining
        resource.label = self.label
        resource.code = self.code?.compactMap { $0.copy() as? Coding }
        resource.slicing = self.slicing?.copy() as? ElementDefinitionSlicing
        resource.short = self.short
        resource.definition = self.definition
        resource.comment = self.comment
        resource.requirements = self.requirements
        resource.alias = self.alias
        resource.min = self.min
        resource.max = self.max
        resource.base = self.base?.copy() as? ElementDefinitionBase
        resource.contentReference = self.contentReference
        resource.type = self.type?.compactMap { $0.copy() as? ElementDefinitionType }
        resource.defaultValue = self.defaultValue?.copy() as? DefaultValueX
        resource.meaningWhenMissing = self.meaningWhenMissing
        resource.orderMeaning = self.orderMeaning
        resource.fixed = self.fixed?.copy() as? FixedX
        resource.pattern = self.pattern?.copy() as? PatternX
        resource.example = self.example?.compactMap { $0.copy() as? ElementDefinitionExample }
        resource.minValue = self.minValue?.copy() as? MinValueX
        resource.maxValue = self.maxValue?.copy() as? MaxValueX
        resource.maxLength = self.maxLength
        resource.condition = self.condition
        resource.constraint = self.constraint?.compactMap { $0.copy() as? ElementDefinitionConstraint }
        resource.mustSupport = self.mustSupport
        resource.isModifier = self.isModifier
        resource.isModifierReason = self.isModifierReason
        resource.isSummary = self.isSummary
        resource.binding = self.binding?.copy() as? ElementDefinitionBinding
        resource.mapping = self.mapping?.compactMap { $0.copy() as? ElementDefinitionMapping }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinitionBase
extension ModelsR4.ElementDefinitionBase {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinitionBase(max: self.max, min: self.min, path: self.path)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinitionBase else {
            return self
        }
        resource.path = self.path
        resource.min = self.min
        resource.max = self.max

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinitionBinding
extension ModelsR4.ElementDefinitionBinding {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinitionBinding(strength: self.strength)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinitionBinding else {
            return self
        }
        resource.strength = self.strength
        resource.description_fhir = self.description_fhir
        resource.valueSet = self.valueSet

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinitionConstraint
extension ModelsR4.ElementDefinitionConstraint {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinitionConstraint(human: self.human, key: self.key, severity: self.severity)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinitionConstraint else {
            return self
        }
        resource.key = self.key
        resource.requirements = self.requirements
        resource.severity = self.severity
        resource.human = self.human
        resource.expression = self.expression
        resource.xpath = self.xpath
        resource.source = self.source

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinitionExample
extension ModelsR4.ElementDefinitionExample {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinitionExample(label: self.label, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinitionExample else {
            return self
        }
        resource.label = self.label
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinitionMapping
extension ModelsR4.ElementDefinitionMapping {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinitionMapping(identity: self.identity, map: self.map)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinitionMapping else {
            return self
        }
        resource.identity = self.identity
        resource.language = self.language
        resource.map = self.map
        resource.comment = self.comment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinitionSlicing
extension ModelsR4.ElementDefinitionSlicing {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinitionSlicing(rules: self.rules)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinitionSlicing else {
            return self
        }
        resource.discriminator = self.discriminator?.compactMap { $0.copy() as? ElementDefinitionSlicingDiscriminator }
        resource.description_fhir = self.description_fhir
        resource.ordered = self.ordered
        resource.rules = self.rules

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinitionSlicingDiscriminator
extension ModelsR4.ElementDefinitionSlicingDiscriminator {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinitionSlicingDiscriminator(path: self.path, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinitionSlicingDiscriminator else {
            return self
        }
        resource.type = self.type
        resource.path = self.path

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ElementDefinitionType
extension ModelsR4.ElementDefinitionType {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ElementDefinitionType(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ElementDefinitionType else {
            return self
        }
        resource.code = self.code
        resource.profile = self.profile
        resource.targetProfile = self.targetProfile
        resource.aggregation = self.aggregation
        resource.versioning = self.versioning

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Encounter
extension ModelsR4.Encounter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Encounter(class: self.`class`, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Encounter else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.statusHistory = self.statusHistory?.compactMap { $0.copy() as? EncounterStatusHistory }
        resource.`class` = self.`class`.copy() as! Coding
        resource.classHistory = self.classHistory?.compactMap { $0.copy() as? EncounterClassHistory }
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.serviceType = self.serviceType?.copy() as? CodeableConcept
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.episodeOfCare = self.episodeOfCare?.compactMap { $0.copy() as? Reference }
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.participant = self.participant?.compactMap { $0.copy() as? EncounterParticipant }
        resource.appointment = self.appointment?.compactMap { $0.copy() as? Reference }
        resource.period = self.period?.copy() as? Period
        resource.length = self.length?.copy() as? Duration
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.diagnosis = self.diagnosis?.compactMap { $0.copy() as? EncounterDiagnosis }
        resource.account = self.account?.compactMap { $0.copy() as? Reference }
        resource.hospitalization = self.hospitalization?.copy() as? EncounterHospitalization
        resource.location = self.location?.compactMap { $0.copy() as? EncounterLocation }
        resource.serviceProvider = self.serviceProvider?.copy() as? Reference
        resource.partOf = self.partOf?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EncounterClassHistory
extension ModelsR4.EncounterClassHistory {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EncounterClassHistory(class: self.`class`, period: self.period)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EncounterClassHistory else {
            return self
        }
        resource.`class` = self.`class`.copy() as! Coding
        resource.period = self.period.copy() as! Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EncounterDiagnosis
extension ModelsR4.EncounterDiagnosis {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EncounterDiagnosis(condition: self.condition)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EncounterDiagnosis else {
            return self
        }
        resource.condition = self.condition.copy() as! Reference
        resource.use = self.use?.copy() as? CodeableConcept
        resource.rank = self.rank

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EncounterHospitalization
extension ModelsR4.EncounterHospitalization {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EncounterHospitalization()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EncounterHospitalization else {
            return self
        }
        resource.preAdmissionIdentifier = self.preAdmissionIdentifier?.copy() as? Identifier
        resource.origin = self.origin?.copy() as? Reference
        resource.admitSource = self.admitSource?.copy() as? CodeableConcept
        resource.reAdmission = self.reAdmission?.copy() as? CodeableConcept
        resource.dietPreference = self.dietPreference?.compactMap { $0.copy() as? CodeableConcept }
        resource.specialCourtesy = self.specialCourtesy?.compactMap { $0.copy() as? CodeableConcept }
        resource.specialArrangement = self.specialArrangement?.compactMap { $0.copy() as? CodeableConcept }
        resource.destination = self.destination?.copy() as? Reference
        resource.dischargeDisposition = self.dischargeDisposition?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EncounterLocation
extension ModelsR4.EncounterLocation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EncounterLocation(location: self.location)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EncounterLocation else {
            return self
        }
        resource.location = self.location.copy() as! Reference
        resource.status = self.status
        resource.physicalType = self.physicalType?.copy() as? CodeableConcept
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EncounterParticipant
extension ModelsR4.EncounterParticipant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EncounterParticipant()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EncounterParticipant else {
            return self
        }
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.period = self.period?.copy() as? Period
        resource.individual = self.individual?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EncounterStatusHistory
extension ModelsR4.EncounterStatusHistory {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EncounterStatusHistory(period: self.period, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EncounterStatusHistory else {
            return self
        }
        resource.status = self.status
        resource.period = self.period.copy() as! Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Endpoint
extension ModelsR4.Endpoint {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Endpoint(address: self.address, connectionType: self.connectionType, payloadType: self.payloadType, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Endpoint else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.connectionType = self.connectionType.copy() as! Coding
        resource.name = self.name
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactPoint }
        resource.period = self.period?.copy() as? Period
        resource.payloadType = self.payloadType.compactMap { $0.copy() as? CodeableConcept }
        resource.payloadMimeType = self.payloadMimeType
        resource.address = self.address
        resource.header = self.header

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EnrollmentRequest
extension ModelsR4.EnrollmentRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EnrollmentRequest()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EnrollmentRequest else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.created = self.created
        resource.insurer = self.insurer?.copy() as? Reference
        resource.provider = self.provider?.copy() as? Reference
        resource.candidate = self.candidate?.copy() as? Reference
        resource.coverage = self.coverage?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EnrollmentResponse
extension ModelsR4.EnrollmentResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EnrollmentResponse()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EnrollmentResponse else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.request = self.request?.copy() as? Reference
        resource.outcome = self.outcome
        resource.disposition = self.disposition
        resource.created = self.created
        resource.organization = self.organization?.copy() as? Reference
        resource.requestProvider = self.requestProvider?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EpisodeOfCare
extension ModelsR4.EpisodeOfCare {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EpisodeOfCare(patient: self.patient, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EpisodeOfCare else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.statusHistory = self.statusHistory?.compactMap { $0.copy() as? EpisodeOfCareStatusHistory }
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.diagnosis = self.diagnosis?.compactMap { $0.copy() as? EpisodeOfCareDiagnosis }
        resource.patient = self.patient.copy() as! Reference
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.period = self.period?.copy() as? Period
        resource.referralRequest = self.referralRequest?.compactMap { $0.copy() as? Reference }
        resource.careManager = self.careManager?.copy() as? Reference
        resource.team = self.team?.compactMap { $0.copy() as? Reference }
        resource.account = self.account?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EpisodeOfCareDiagnosis
extension ModelsR4.EpisodeOfCareDiagnosis {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EpisodeOfCareDiagnosis(condition: self.condition)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EpisodeOfCareDiagnosis else {
            return self
        }
        resource.condition = self.condition.copy() as! Reference
        resource.role = self.role?.copy() as? CodeableConcept
        resource.rank = self.rank

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EpisodeOfCareStatusHistory
extension ModelsR4.EpisodeOfCareStatusHistory {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EpisodeOfCareStatusHistory(period: self.period, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EpisodeOfCareStatusHistory else {
            return self
        }
        resource.status = self.status
        resource.period = self.period.copy() as! Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EventDefinition
extension ModelsR4.EventDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EventDefinition(status: self.status, trigger: self.trigger)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EventDefinition else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject?.copy() as? SubjectX
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.trigger = self.trigger.compactMap { $0.copy() as? TriggerDefinition }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Evidence
extension ModelsR4.Evidence {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Evidence(exposureBackground: self.exposureBackground, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Evidence else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.shortTitle = self.shortTitle
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.exposureBackground = self.exposureBackground.copy() as! Reference
        resource.exposureVariant = self.exposureVariant?.compactMap { $0.copy() as? Reference }
        resource.outcome = self.outcome?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EvidenceVariable
extension ModelsR4.EvidenceVariable {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EvidenceVariable(characteristic: self.characteristic, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EvidenceVariable else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.shortTitle = self.shortTitle
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.type = self.type
        resource.characteristic = self.characteristic.compactMap { $0.copy() as? EvidenceVariableCharacteristic }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - EvidenceVariableCharacteristic
extension ModelsR4.EvidenceVariableCharacteristic {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.EvidenceVariableCharacteristic(definition: self.definition)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.EvidenceVariableCharacteristic else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.definition = self.definition.copy() as! DefinitionX
        resource.usageContext = self.usageContext?.compactMap { $0.copy() as? UsageContext }
        resource.exclude = self.exclude
        resource.participantEffective = self.participantEffective?.copy() as? ParticipantEffectiveX
        resource.timeFromStart = self.timeFromStart?.copy() as? Duration
        resource.groupMeasure = self.groupMeasure

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenario
extension ModelsR4.ExampleScenario {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenario(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenario else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.copyright = self.copyright
        resource.purpose = self.purpose
        resource.actor = self.actor?.compactMap { $0.copy() as? ExampleScenarioActor }
        resource.instance = self.instance?.compactMap { $0.copy() as? ExampleScenarioInstance }
        resource.process = self.process?.compactMap { $0.copy() as? ExampleScenarioProcess }
        resource.workflow = self.workflow

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenarioActor
extension ModelsR4.ExampleScenarioActor {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenarioActor(actorId: self.actorId, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenarioActor else {
            return self
        }
        resource.actorId = self.actorId
        resource.type = self.type
        resource.name = self.name
        resource.description_fhir = self.description_fhir

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenarioInstance
extension ModelsR4.ExampleScenarioInstance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenarioInstance(resourceId: self.resourceId, resourceType: self.resourceType)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenarioInstance else {
            return self
        }
        resource.resourceId = self.resourceId
        resource.resourceType = self.resourceType
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.version = self.version?.compactMap { $0.copy() as? ExampleScenarioInstanceVersion }
        resource.containedInstance = self.containedInstance?.compactMap { $0.copy() as? ExampleScenarioInstanceContainedInstance }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenarioInstanceContainedInstance
extension ModelsR4.ExampleScenarioInstanceContainedInstance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenarioInstanceContainedInstance(resourceId: self.resourceId)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenarioInstanceContainedInstance else {
            return self
        }
        resource.resourceId = self.resourceId
        resource.versionId = self.versionId

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenarioInstanceVersion
extension ModelsR4.ExampleScenarioInstanceVersion {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenarioInstanceVersion(description_fhir: self.description_fhir, versionId: self.versionId)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenarioInstanceVersion else {
            return self
        }
        resource.versionId = self.versionId
        resource.description_fhir = self.description_fhir

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenarioProcess
extension ModelsR4.ExampleScenarioProcess {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenarioProcess(title: self.title)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenarioProcess else {
            return self
        }
        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.preConditions = self.preConditions
        resource.postConditions = self.postConditions
        resource.step = self.step?.compactMap { $0.copy() as? ExampleScenarioProcessStep }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenarioProcessStep
extension ModelsR4.ExampleScenarioProcessStep {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenarioProcessStep()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenarioProcessStep else {
            return self
        }
        resource.process = self.process?.compactMap { $0.copy() as? ExampleScenarioProcess }
        resource.pause = self.pause
        resource.operation = self.operation?.copy() as? ExampleScenarioProcessStepOperation
        resource.alternative = self.alternative?.compactMap { $0.copy() as? ExampleScenarioProcessStepAlternative }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenarioProcessStepAlternative
extension ModelsR4.ExampleScenarioProcessStepAlternative {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenarioProcessStepAlternative(title: self.title)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenarioProcessStepAlternative else {
            return self
        }
        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.step = self.step?.compactMap { $0.copy() as? ExampleScenarioProcessStep }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExampleScenarioProcessStepOperation
extension ModelsR4.ExampleScenarioProcessStepOperation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExampleScenarioProcessStepOperation(number: self.number)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExampleScenarioProcessStepOperation else {
            return self
        }
        resource.number = self.number
        resource.type = self.type
        resource.name = self.name
        resource.initiator = self.initiator
        resource.receiver = self.receiver
        resource.description_fhir = self.description_fhir
        resource.initiatorActive = self.initiatorActive
        resource.receiverActive = self.receiverActive
        resource.request = self.request?.copy() as? ExampleScenarioInstanceContainedInstance
        resource.response = self.response?.copy() as? ExampleScenarioInstanceContainedInstance

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefit
extension ModelsR4.ExplanationOfBenefit {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefit(created: self.created, insurance: self.insurance, insurer: self.insurer, outcome: self.outcome, patient: self.patient, provider: self.provider, status: self.status, type: self.type, use: self.use)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefit else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.type = self.type.copy() as! CodeableConcept
        resource.subType = self.subType?.copy() as? CodeableConcept
        resource.use = self.use
        resource.patient = self.patient.copy() as! Reference
        resource.billablePeriod = self.billablePeriod?.copy() as? Period
        resource.created = self.created
        resource.enterer = self.enterer?.copy() as? Reference
        resource.insurer = self.insurer.copy() as! Reference
        resource.provider = self.provider.copy() as! Reference
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.fundsReserveRequested = self.fundsReserveRequested?.copy() as? CodeableConcept
        resource.fundsReserve = self.fundsReserve?.copy() as? CodeableConcept
        resource.related = self.related?.compactMap { $0.copy() as? ExplanationOfBenefitRelated }
        resource.prescription = self.prescription?.copy() as? Reference
        resource.originalPrescription = self.originalPrescription?.copy() as? Reference
        resource.payee = self.payee?.copy() as? ExplanationOfBenefitPayee
        resource.referral = self.referral?.copy() as? Reference
        resource.facility = self.facility?.copy() as? Reference
        resource.claim = self.claim?.copy() as? Reference
        resource.claimResponse = self.claimResponse?.copy() as? Reference
        resource.outcome = self.outcome
        resource.disposition = self.disposition
        resource.preAuthRef = self.preAuthRef
        resource.preAuthRefPeriod = self.preAuthRefPeriod?.compactMap { $0.copy() as? Period }
        resource.careTeam = self.careTeam?.compactMap { $0.copy() as? ExplanationOfBenefitCareTeam }
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy() as? ExplanationOfBenefitSupportingInfo }
        resource.diagnosis = self.diagnosis?.compactMap { $0.copy() as? ExplanationOfBenefitDiagnosis }
        resource.procedure = self.procedure?.compactMap { $0.copy() as? ExplanationOfBenefitProcedure }
        resource.precedence = self.precedence
        resource.insurance = self.insurance.compactMap { $0.copy() as? ExplanationOfBenefitInsurance }
        resource.accident = self.accident?.copy() as? ExplanationOfBenefitAccident
        resource.item = self.item?.compactMap { $0.copy() as? ExplanationOfBenefitItem }
        resource.addItem = self.addItem?.compactMap { $0.copy() as? ExplanationOfBenefitAddItem }
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ExplanationOfBenefitItemAdjudication }
        resource.total = self.total?.compactMap { $0.copy() as? ExplanationOfBenefitTotal }
        resource.payment = self.payment?.copy() as? ExplanationOfBenefitPayment
        resource.formCode = self.formCode?.copy() as? CodeableConcept
        resource.form = self.form?.copy() as? Attachment
        resource.processNote = self.processNote?.compactMap { $0.copy() as? ExplanationOfBenefitProcessNote }
        resource.benefitPeriod = self.benefitPeriod?.copy() as? Period
        resource.benefitBalance = self.benefitBalance?.compactMap { $0.copy() as? ExplanationOfBenefitBenefitBalance }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitAccident
extension ModelsR4.ExplanationOfBenefitAccident {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitAccident()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitAccident else {
            return self
        }
        resource.date = self.date
        resource.type = self.type?.copy() as? CodeableConcept
        resource.location = self.location?.copy() as? LocationX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitAddItem
extension ModelsR4.ExplanationOfBenefitAddItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitAddItem(productOrService: self.productOrService)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitAddItem else {
            return self
        }
        resource.itemSequence = self.itemSequence
        resource.detailSequence = self.detailSequence
        resource.subDetailSequence = self.subDetailSequence
        resource.provider = self.provider?.compactMap { $0.copy() as? Reference }
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.programCode = self.programCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.serviced = self.serviced?.copy() as? ServicedX
        resource.location = self.location?.copy() as? LocationX
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.subSite = self.subSite?.compactMap { $0.copy() as? CodeableConcept }
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ExplanationOfBenefitItemAdjudication }
        resource.detail = self.detail?.compactMap { $0.copy() as? ExplanationOfBenefitAddItemDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitAddItemDetail
extension ModelsR4.ExplanationOfBenefitAddItemDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitAddItemDetail(productOrService: self.productOrService)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitAddItemDetail else {
            return self
        }
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ExplanationOfBenefitItemAdjudication }
        resource.subDetail = self.subDetail?.compactMap { $0.copy() as? ExplanationOfBenefitAddItemDetailSubDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitAddItemDetailSubDetail
extension ModelsR4.ExplanationOfBenefitAddItemDetailSubDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitAddItemDetailSubDetail(productOrService: self.productOrService)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitAddItemDetailSubDetail else {
            return self
        }
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ExplanationOfBenefitItemAdjudication }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitBenefitBalance
extension ModelsR4.ExplanationOfBenefitBenefitBalance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitBenefitBalance(category: self.category)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitBenefitBalance else {
            return self
        }
        resource.category = self.category.copy() as! CodeableConcept
        resource.excluded = self.excluded
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.network = self.network?.copy() as? CodeableConcept
        resource.unit = self.unit?.copy() as? CodeableConcept
        resource.term = self.term?.copy() as? CodeableConcept
        resource.financial = self.financial?.compactMap { $0.copy() as? ExplanationOfBenefitBenefitBalanceFinancial }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitBenefitBalanceFinancial
extension ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.allowed = self.allowed?.copy() as? AllowedX
        resource.used = self.used?.copy() as? UsedX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitCareTeam
extension ModelsR4.ExplanationOfBenefitCareTeam {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitCareTeam(provider: self.provider, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitCareTeam else {
            return self
        }
        resource.sequence = self.sequence
        resource.provider = self.provider.copy() as! Reference
        resource.responsible = self.responsible
        resource.role = self.role?.copy() as? CodeableConcept
        resource.qualification = self.qualification?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitDiagnosis
extension ModelsR4.ExplanationOfBenefitDiagnosis {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitDiagnosis(diagnosis: self.diagnosis, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitDiagnosis else {
            return self
        }
        resource.sequence = self.sequence
        resource.diagnosis = self.diagnosis.copy() as! DiagnosisX
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.onAdmission = self.onAdmission?.copy() as? CodeableConcept
        resource.packageCode = self.packageCode?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitInsurance
extension ModelsR4.ExplanationOfBenefitInsurance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitInsurance(coverage: self.coverage, focal: self.focal)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitInsurance else {
            return self
        }
        resource.focal = self.focal
        resource.coverage = self.coverage.copy() as! Reference
        resource.preAuthRef = self.preAuthRef

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitItem
extension ModelsR4.ExplanationOfBenefitItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitItem(productOrService: self.productOrService, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitItem else {
            return self
        }
        resource.sequence = self.sequence
        resource.careTeamSequence = self.careTeamSequence
        resource.diagnosisSequence = self.diagnosisSequence
        resource.procedureSequence = self.procedureSequence
        resource.informationSequence = self.informationSequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.programCode = self.programCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.serviced = self.serviced?.copy() as? ServicedX
        resource.location = self.location?.copy() as? LocationX
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi?.compactMap { $0.copy() as? Reference }
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.subSite = self.subSite?.compactMap { $0.copy() as? CodeableConcept }
        resource.encounter = self.encounter?.compactMap { $0.copy() as? Reference }
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ExplanationOfBenefitItemAdjudication }
        resource.detail = self.detail?.compactMap { $0.copy() as? ExplanationOfBenefitItemDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitItemAdjudication
extension ModelsR4.ExplanationOfBenefitItemAdjudication {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitItemAdjudication(category: self.category)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitItemAdjudication else {
            return self
        }
        resource.category = self.category.copy() as! CodeableConcept
        resource.reason = self.reason?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Money
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitItemDetail
extension ModelsR4.ExplanationOfBenefitItemDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitItemDetail(productOrService: self.productOrService, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitItemDetail else {
            return self
        }
        resource.sequence = self.sequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.programCode = self.programCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi?.compactMap { $0.copy() as? Reference }
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ExplanationOfBenefitItemAdjudication }
        resource.subDetail = self.subDetail?.compactMap { $0.copy() as? ExplanationOfBenefitItemDetailSubDetail }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitItemDetailSubDetail
extension ModelsR4.ExplanationOfBenefitItemDetailSubDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitItemDetailSubDetail(productOrService: self.productOrService, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitItemDetailSubDetail else {
            return self
        }
        resource.sequence = self.sequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.programCode = self.programCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi?.compactMap { $0.copy() as? Reference }
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication?.compactMap { $0.copy() as? ExplanationOfBenefitItemAdjudication }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitPayee
extension ModelsR4.ExplanationOfBenefitPayee {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitPayee()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitPayee else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.party = self.party?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitPayment
extension ModelsR4.ExplanationOfBenefitPayment {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitPayment()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitPayment else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.adjustment = self.adjustment?.copy() as? Money
        resource.adjustmentReason = self.adjustmentReason?.copy() as? CodeableConcept
        resource.date = self.date
        resource.amount = self.amount?.copy() as? Money
        resource.identifier = self.identifier?.copy() as? Identifier

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitProcedure
extension ModelsR4.ExplanationOfBenefitProcedure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitProcedure(procedure: self.procedure, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitProcedure else {
            return self
        }
        resource.sequence = self.sequence
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.date = self.date
        resource.procedure = self.procedure.copy() as! ProcedureX
        resource.udi = self.udi?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitProcessNote
extension ModelsR4.ExplanationOfBenefitProcessNote {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitProcessNote()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitProcessNote else {
            return self
        }
        resource.number = self.number
        resource.type = self.type
        resource.text = self.text
        resource.language = self.language?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitRelated
extension ModelsR4.ExplanationOfBenefitRelated {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitRelated()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitRelated else {
            return self
        }
        resource.claim = self.claim?.copy() as? Reference
        resource.relationship = self.relationship?.copy() as? CodeableConcept
        resource.reference = self.reference?.copy() as? Identifier

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitSupportingInfo
extension ModelsR4.ExplanationOfBenefitSupportingInfo {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitSupportingInfo(category: self.category, sequence: self.sequence)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitSupportingInfo else {
            return self
        }
        resource.sequence = self.sequence
        resource.category = self.category.copy() as! CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.timing = self.timing?.copy() as? TimingX
        resource.value = self.value?.copy() as? ValueX
        resource.reason = self.reason?.copy() as? Coding

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ExplanationOfBenefitTotal
extension ModelsR4.ExplanationOfBenefitTotal {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ExplanationOfBenefitTotal(amount: self.amount, category: self.category)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ExplanationOfBenefitTotal else {
            return self
        }
        resource.category = self.category.copy() as! CodeableConcept
        resource.amount = self.amount.copy() as! Money

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Expression
extension ModelsR4.Expression {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Expression(language: self.language)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Expression else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.name = self.name
        resource.language = self.language
        resource.expression = self.expression
        resource.reference = self.reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Extension
extension ModelsR4.Extension {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Extension(url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Extension else {
            return self
        }
        resource.url = self.url
        resource.value = self.value?.copy() as? ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - FHIRAbstractResource
extension ModelsR4.FHIRAbstractResource: NSCopying {

    @objc func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.FHIRAbstractResource()
        guard let resource = resourceToCopy as? ModelsR4.FHIRAbstractResource else {
            return self
        }

        return resource
    }

    @objc public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - FamilyMemberHistory
extension ModelsR4.FamilyMemberHistory {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.FamilyMemberHistory(patient: self.patient, relationship: self.relationship, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.FamilyMemberHistory else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.status = self.status
        resource.dataAbsentReason = self.dataAbsentReason?.copy() as? CodeableConcept
        resource.patient = self.patient.copy() as! Reference
        resource.date = self.date
        resource.name = self.name
        resource.relationship = self.relationship.copy() as! CodeableConcept
        resource.sex = self.sex?.copy() as? CodeableConcept
        resource.born = self.born?.copy() as? BornX
        resource.age = self.age?.copy() as? AgeX
        resource.estimatedAge = self.estimatedAge
        resource.deceased = self.deceased?.copy() as? DeceasedX
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.condition = self.condition?.compactMap { $0.copy() as? FamilyMemberHistoryCondition }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - FamilyMemberHistoryCondition
extension ModelsR4.FamilyMemberHistoryCondition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.FamilyMemberHistoryCondition(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.FamilyMemberHistoryCondition else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.outcome = self.outcome?.copy() as? CodeableConcept
        resource.contributedToDeath = self.contributedToDeath
        resource.onset = self.onset?.copy() as? OnsetX
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Flag
extension ModelsR4.Flag {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Flag(code: self.code, status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Flag else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.period = self.period?.copy() as? Period
        resource.encounter = self.encounter?.copy() as? Reference
        resource.author = self.author?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Goal
extension ModelsR4.Goal {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Goal(description_fhir: self.description_fhir, lifecycleStatus: self.lifecycleStatus, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Goal else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.lifecycleStatus = self.lifecycleStatus
        resource.achievementStatus = self.achievementStatus?.copy() as? CodeableConcept
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir.copy() as! CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.start = self.start?.copy() as? StartX
        resource.target = self.target?.compactMap { $0.copy() as? GoalTarget }
        resource.statusDate = self.statusDate
        resource.statusReason = self.statusReason
        resource.expressedBy = self.expressedBy?.copy() as? Reference
        resource.addresses = self.addresses?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.outcomeCode = self.outcomeCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.outcomeReference = self.outcomeReference?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - GoalTarget
extension ModelsR4.GoalTarget {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.GoalTarget()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.GoalTarget else {
            return self
        }
        resource.measure = self.measure?.copy() as? CodeableConcept
        resource.detail = self.detail?.copy() as? DetailX
        resource.due = self.due?.copy() as? DueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - GraphDefinition
extension ModelsR4.GraphDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.GraphDefinition(name: self.name, start: self.start, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.GraphDefinition else {
            return self
        }
        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.start = self.start
        resource.profile = self.profile
        resource.link = self.link?.compactMap { $0.copy() as? GraphDefinitionLink }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - GraphDefinitionLink
extension ModelsR4.GraphDefinitionLink {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.GraphDefinitionLink()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.GraphDefinitionLink else {
            return self
        }
        resource.path = self.path
        resource.sliceName = self.sliceName
        resource.min = self.min
        resource.max = self.max
        resource.description_fhir = self.description_fhir
        resource.target = self.target?.compactMap { $0.copy() as? GraphDefinitionLinkTarget }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - GraphDefinitionLinkTarget
extension ModelsR4.GraphDefinitionLinkTarget {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.GraphDefinitionLinkTarget(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.GraphDefinitionLinkTarget else {
            return self
        }
        resource.type = self.type
        resource.params = self.params
        resource.profile = self.profile
        resource.compartment = self.compartment?.compactMap { $0.copy() as? GraphDefinitionLinkTargetCompartment }
        resource.link = self.link?.compactMap { $0.copy() as? GraphDefinitionLink }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - GraphDefinitionLinkTargetCompartment
extension ModelsR4.GraphDefinitionLinkTargetCompartment {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.GraphDefinitionLinkTargetCompartment(code: self.code, rule: self.rule, use: self.use)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.GraphDefinitionLinkTargetCompartment else {
            return self
        }
        resource.use = self.use
        resource.code = self.code
        resource.rule = self.rule
        resource.expression = self.expression
        resource.description_fhir = self.description_fhir

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Group
extension ModelsR4.Group {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Group(actual: self.actual, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Group else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.type = self.type
        resource.actual = self.actual
        resource.code = self.code?.copy() as? CodeableConcept
        resource.name = self.name
        resource.quantity = self.quantity
        resource.managingEntity = self.managingEntity?.copy() as? Reference
        resource.characteristic = self.characteristic?.compactMap { $0.copy() as? GroupCharacteristic }
        resource.member = self.member?.compactMap { $0.copy() as? GroupMember }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - GroupCharacteristic
extension ModelsR4.GroupCharacteristic {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.GroupCharacteristic(code: self.code, exclude: self.exclude, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.GroupCharacteristic else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.value = self.value.copy() as! ValueX
        resource.exclude = self.exclude
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - GroupMember
extension ModelsR4.GroupMember {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.GroupMember(entity: self.entity)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.GroupMember else {
            return self
        }
        resource.entity = self.entity.copy() as! Reference
        resource.period = self.period?.copy() as? Period
        resource.inactive = self.inactive

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - GuidanceResponse
extension ModelsR4.GuidanceResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.GuidanceResponse(module: self.module, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.GuidanceResponse else {
            return self
        }
        resource.requestIdentifier = self.requestIdentifier?.copy() as? Identifier
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.module = self.module.copy() as! ModuleX
        resource.status = self.status
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrenceDateTime = self.occurrenceDateTime
        resource.performer = self.performer?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.evaluationMessage = self.evaluationMessage?.compactMap { $0.copy() as? Reference }
        resource.outputParameters = self.outputParameters?.copy() as? Reference
        resource.result = self.result?.copy() as? Reference
        resource.dataRequirement = self.dataRequirement?.compactMap { $0.copy() as? DataRequirement }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - HealthcareService
extension ModelsR4.HealthcareService {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.HealthcareService()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.HealthcareService else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.providedBy = self.providedBy?.copy() as? Reference
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.specialty = self.specialty?.compactMap { $0.copy() as? CodeableConcept }
        resource.location = self.location?.compactMap { $0.copy() as? Reference }
        resource.name = self.name
        resource.comment = self.comment
        resource.extraDetails = self.extraDetails
        resource.photo = self.photo?.copy() as? Attachment
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.coverageArea = self.coverageArea?.compactMap { $0.copy() as? Reference }
        resource.serviceProvisionCode = self.serviceProvisionCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.eligibility = self.eligibility?.compactMap { $0.copy() as? HealthcareServiceEligibility }
        resource.program = self.program?.compactMap { $0.copy() as? CodeableConcept }
        resource.characteristic = self.characteristic?.compactMap { $0.copy() as? CodeableConcept }
        resource.communication = self.communication?.compactMap { $0.copy() as? CodeableConcept }
        resource.referralMethod = self.referralMethod?.compactMap { $0.copy() as? CodeableConcept }
        resource.appointmentRequired = self.appointmentRequired
        resource.availableTime = self.availableTime?.compactMap { $0.copy() as? HealthcareServiceAvailableTime }
        resource.notAvailable = self.notAvailable?.compactMap { $0.copy() as? HealthcareServiceNotAvailable }
        resource.availabilityExceptions = self.availabilityExceptions
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - HealthcareServiceAvailableTime
extension ModelsR4.HealthcareServiceAvailableTime {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.HealthcareServiceAvailableTime()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.HealthcareServiceAvailableTime else {
            return self
        }
        resource.daysOfWeek = self.daysOfWeek
        resource.allDay = self.allDay
        resource.availableStartTime = self.availableStartTime
        resource.availableEndTime = self.availableEndTime

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - HealthcareServiceEligibility
extension ModelsR4.HealthcareServiceEligibility {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.HealthcareServiceEligibility()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.HealthcareServiceEligibility else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.comment = self.comment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - HealthcareServiceNotAvailable
extension ModelsR4.HealthcareServiceNotAvailable {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.HealthcareServiceNotAvailable(description_fhir: self.description_fhir)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.HealthcareServiceNotAvailable else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.during = self.during?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - HumanName
extension ModelsR4.HumanName {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.HumanName()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.HumanName else {
            return self
        }
        resource.use = self.use
        resource.text = self.text
        resource.family = self.family
        resource.given = self.given
        resource.prefix = self.prefix
        resource.suffix = self.suffix
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Identifier
extension ModelsR4.Identifier {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Identifier()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Identifier else {
            return self
        }
        resource.use = self.use
        resource.type = self.type?.copy() as? CodeableConcept
        resource.system = self.system
        resource.value = self.value
        resource.period = self.period?.copy() as? Period
        resource.assigner = self.assigner?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImagingStudy
extension ModelsR4.ImagingStudy {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImagingStudy(status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImagingStudy else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.modality = self.modality?.compactMap { $0.copy() as? Coding }
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.started = self.started
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.referrer = self.referrer?.copy() as? Reference
        resource.interpreter = self.interpreter?.compactMap { $0.copy() as? Reference }
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? Reference }
        resource.numberOfSeries = self.numberOfSeries
        resource.numberOfInstances = self.numberOfInstances
        resource.procedureReference = self.procedureReference?.copy() as? Reference
        resource.procedureCode = self.procedureCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.location = self.location?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.description_fhir = self.description_fhir
        resource.series = self.series?.compactMap { $0.copy() as? ImagingStudySeries }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImagingStudySeries
extension ModelsR4.ImagingStudySeries {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImagingStudySeries(modality: self.modality, uid: self.uid)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImagingStudySeries else {
            return self
        }
        resource.uid = self.uid
        resource.number = self.number
        resource.modality = self.modality.copy() as! Coding
        resource.description_fhir = self.description_fhir
        resource.numberOfInstances = self.numberOfInstances
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? Reference }
        resource.bodySite = self.bodySite?.copy() as? Coding
        resource.laterality = self.laterality?.copy() as? Coding
        resource.specimen = self.specimen?.compactMap { $0.copy() as? Reference }
        resource.started = self.started
        resource.performer = self.performer?.compactMap { $0.copy() as? ImagingStudySeriesPerformer }
        resource.instance = self.instance?.compactMap { $0.copy() as? ImagingStudySeriesInstance }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImagingStudySeriesInstance
extension ModelsR4.ImagingStudySeriesInstance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImagingStudySeriesInstance(sopClass: self.sopClass, uid: self.uid)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImagingStudySeriesInstance else {
            return self
        }
        resource.uid = self.uid
        resource.sopClass = self.sopClass.copy() as! Coding
        resource.number = self.number
        resource.title = self.title

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImagingStudySeriesPerformer
extension ModelsR4.ImagingStudySeriesPerformer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImagingStudySeriesPerformer(actor: self.actor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImagingStudySeriesPerformer else {
            return self
        }
        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Immunization
extension ModelsR4.Immunization {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Immunization(occurrence: self.occurrence, patient: self.patient, status: self.status, vaccineCode: self.vaccineCode)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Immunization else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.vaccineCode = self.vaccineCode.copy() as! CodeableConcept
        resource.patient = self.patient.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrence = self.occurrence.copy() as! OccurrenceX
        resource.recorded = self.recorded
        resource.primarySource = self.primarySource
        resource.reportOrigin = self.reportOrigin?.copy() as? CodeableConcept
        resource.location = self.location?.copy() as? Reference
        resource.manufacturer = self.manufacturer?.copy() as? Reference
        resource.lotNumber = self.lotNumber
        resource.expirationDate = self.expirationDate
        resource.site = self.site?.copy() as? CodeableConcept
        resource.route = self.route?.copy() as? CodeableConcept
        resource.doseQuantity = self.doseQuantity?.copy() as? Quantity
        resource.performer = self.performer?.compactMap { $0.copy() as? ImmunizationPerformer }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.isSubpotent = self.isSubpotent
        resource.subpotentReason = self.subpotentReason?.compactMap { $0.copy() as? CodeableConcept }
        resource.education = self.education?.compactMap { $0.copy() as? ImmunizationEducation }
        resource.programEligibility = self.programEligibility?.compactMap { $0.copy() as? CodeableConcept }
        resource.fundingSource = self.fundingSource?.copy() as? CodeableConcept
        resource.reaction = self.reaction?.compactMap { $0.copy() as? ImmunizationReaction }
        resource.protocolApplied = self.protocolApplied?.compactMap { $0.copy() as? ImmunizationProtocolApplied }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImmunizationEducation
extension ModelsR4.ImmunizationEducation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImmunizationEducation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImmunizationEducation else {
            return self
        }
        resource.documentType = self.documentType
        resource.reference = self.reference
        resource.publicationDate = self.publicationDate
        resource.presentationDate = self.presentationDate

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImmunizationEvaluation
extension ModelsR4.ImmunizationEvaluation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImmunizationEvaluation(doseStatus: self.doseStatus, immunizationEvent: self.immunizationEvent, patient: self.patient, status: self.status, targetDisease: self.targetDisease)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImmunizationEvaluation else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.patient = self.patient.copy() as! Reference
        resource.date = self.date
        resource.authority = self.authority?.copy() as? Reference
        resource.targetDisease = self.targetDisease.copy() as! CodeableConcept
        resource.immunizationEvent = self.immunizationEvent.copy() as! Reference
        resource.doseStatus = self.doseStatus.copy() as! CodeableConcept
        resource.doseStatusReason = self.doseStatusReason?.compactMap { $0.copy() as? CodeableConcept }
        resource.description_fhir = self.description_fhir
        resource.series = self.series
        resource.doseNumber = self.doseNumber?.copy() as? DoseNumberX
        resource.seriesDoses = self.seriesDoses?.copy() as? SeriesDosesX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImmunizationPerformer
extension ModelsR4.ImmunizationPerformer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImmunizationPerformer(actor: self.actor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImmunizationPerformer else {
            return self
        }
        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImmunizationProtocolApplied
extension ModelsR4.ImmunizationProtocolApplied {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImmunizationProtocolApplied(doseNumber: self.doseNumber)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImmunizationProtocolApplied else {
            return self
        }
        resource.series = self.series
        resource.authority = self.authority?.copy() as? Reference
        resource.targetDisease = self.targetDisease?.compactMap { $0.copy() as? CodeableConcept }
        resource.doseNumber = self.doseNumber.copy() as! DoseNumberX
        resource.seriesDoses = self.seriesDoses?.copy() as? SeriesDosesX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImmunizationReaction
extension ModelsR4.ImmunizationReaction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImmunizationReaction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImmunizationReaction else {
            return self
        }
        resource.date = self.date
        resource.detail = self.detail?.copy() as? Reference
        resource.reported = self.reported

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImmunizationRecommendation
extension ModelsR4.ImmunizationRecommendation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImmunizationRecommendation(date: self.date, patient: self.patient, recommendation: self.recommendation)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImmunizationRecommendation else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.patient = self.patient.copy() as! Reference
        resource.date = self.date
        resource.authority = self.authority?.copy() as? Reference
        resource.recommendation = self.recommendation.compactMap { $0.copy() as? ImmunizationRecommendationRecommendation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImmunizationRecommendationRecommendation
extension ModelsR4.ImmunizationRecommendationRecommendation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImmunizationRecommendationRecommendation(forecastStatus: self.forecastStatus)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImmunizationRecommendationRecommendation else {
            return self
        }
        resource.vaccineCode = self.vaccineCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.targetDisease = self.targetDisease?.copy() as? CodeableConcept
        resource.contraindicatedVaccineCode = self.contraindicatedVaccineCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.forecastStatus = self.forecastStatus.copy() as! CodeableConcept
        resource.forecastReason = self.forecastReason?.compactMap { $0.copy() as? CodeableConcept }
        resource.dateCriterion = self.dateCriterion?.compactMap { $0.copy() as? ImmunizationRecommendationRecommendationDateCriterion }
        resource.description_fhir = self.description_fhir
        resource.series = self.series
        resource.doseNumber = self.doseNumber?.copy() as? DoseNumberX
        resource.seriesDoses = self.seriesDoses?.copy() as? SeriesDosesX
        resource.supportingImmunization = self.supportingImmunization?.compactMap { $0.copy() as? Reference }
        resource.supportingPatientInformation = self.supportingPatientInformation?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImmunizationRecommendationRecommendationDateCriterion
extension ModelsR4.ImmunizationRecommendationRecommendationDateCriterion {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImmunizationRecommendationRecommendationDateCriterion(code: self.code, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImmunizationRecommendationRecommendationDateCriterion else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuide
extension ModelsR4.ImplementationGuide {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuide(fhirVersion: self.fhirVersion, name: self.name, packageId: self.packageId, status: self.status, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuide else {
            return self
        }
        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.copyright = self.copyright
        resource.packageId = self.packageId
        resource.license = self.license
        resource.fhirVersion = self.fhirVersion
        resource.dependsOn = self.dependsOn?.compactMap { $0.copy() as? ImplementationGuideDependsOn }
        resource.global = self.global?.compactMap { $0.copy() as? ImplementationGuideGlobal }
        resource.definition = self.definition?.copy() as? ImplementationGuideDefinition
        resource.manifest = self.manifest?.copy() as? ImplementationGuideManifest

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideDefinition
extension ModelsR4.ImplementationGuideDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideDefinition(resource: self.resource)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideDefinition else {
            return self
        }
        resource.grouping = self.grouping?.compactMap { $0.copy() as? ImplementationGuideDefinitionGrouping }
        resource.resource = self.resource.compactMap { $0.copy() as? ImplementationGuideDefinitionResource }
        resource.page = self.page?.copy() as? ImplementationGuideDefinitionPage
        resource.parameter = self.parameter?.compactMap { $0.copy() as? ImplementationGuideDefinitionParameter }
        resource.template = self.template?.compactMap { $0.copy() as? ImplementationGuideDefinitionTemplate }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideDefinitionGrouping
extension ModelsR4.ImplementationGuideDefinitionGrouping {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideDefinitionGrouping(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideDefinitionGrouping else {
            return self
        }
        resource.name = self.name
        resource.description_fhir = self.description_fhir

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideDefinitionPage
extension ModelsR4.ImplementationGuideDefinitionPage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideDefinitionPage(generation: self.generation, name: self.name, title: self.title)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideDefinitionPage else {
            return self
        }
        resource.name = self.name.copy() as! NameX
        resource.title = self.title
        resource.generation = self.generation
        resource.page = self.page?.compactMap { $0.copy() as? ImplementationGuideDefinitionPage }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideDefinitionParameter
extension ModelsR4.ImplementationGuideDefinitionParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideDefinitionParameter(code: self.code, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideDefinitionParameter else {
            return self
        }
        resource.code = self.code
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideDefinitionResource
extension ModelsR4.ImplementationGuideDefinitionResource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideDefinitionResource(reference: self.reference)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideDefinitionResource else {
            return self
        }
        resource.reference = self.reference.copy() as! Reference
        resource.fhirVersion = self.fhirVersion
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.example = self.example?.copy() as? ExampleX
        resource.groupingId = self.groupingId

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideDefinitionTemplate
extension ModelsR4.ImplementationGuideDefinitionTemplate {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideDefinitionTemplate(code: self.code, source: self.source)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideDefinitionTemplate else {
            return self
        }
        resource.code = self.code
        resource.source = self.source
        resource.scope = self.scope

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideDependsOn
extension ModelsR4.ImplementationGuideDependsOn {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideDependsOn(uri: self.uri)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideDependsOn else {
            return self
        }
        resource.uri = self.uri
        resource.packageId = self.packageId
        resource.version = self.version

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideGlobal
extension ModelsR4.ImplementationGuideGlobal {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideGlobal(profile: self.profile, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideGlobal else {
            return self
        }
        resource.type = self.type
        resource.profile = self.profile

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideManifest
extension ModelsR4.ImplementationGuideManifest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideManifest(resource: self.resource)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideManifest else {
            return self
        }
        resource.rendering = self.rendering
        resource.resource = self.resource.compactMap { $0.copy() as? ImplementationGuideManifestResource }
        resource.page = self.page?.compactMap { $0.copy() as? ImplementationGuideManifestPage }
        resource.image = self.image
        resource.other = self.other

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideManifestPage
extension ModelsR4.ImplementationGuideManifestPage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideManifestPage(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideManifestPage else {
            return self
        }
        resource.name = self.name
        resource.title = self.title
        resource.anchor = self.anchor

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ImplementationGuideManifestResource
extension ModelsR4.ImplementationGuideManifestResource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ImplementationGuideManifestResource(reference: self.reference)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ImplementationGuideManifestResource else {
            return self
        }
        resource.reference = self.reference.copy() as! Reference
        resource.example = self.example?.copy() as? ExampleX
        resource.relativePath = self.relativePath

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlan
extension ModelsR4.InsurancePlan {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlan()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlan else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.name = self.name
        resource.alias = self.alias
        resource.period = self.period?.copy() as? Period
        resource.ownedBy = self.ownedBy?.copy() as? Reference
        resource.administeredBy = self.administeredBy?.copy() as? Reference
        resource.coverageArea = self.coverageArea?.compactMap { $0.copy() as? Reference }
        resource.contact = self.contact?.compactMap { $0.copy() as? InsurancePlanContact }
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? Reference }
        resource.network = self.network?.compactMap { $0.copy() as? Reference }
        resource.coverage = self.coverage?.compactMap { $0.copy() as? InsurancePlanCoverage }
        resource.plan = self.plan?.compactMap { $0.copy() as? InsurancePlanPlan }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanContact
extension ModelsR4.InsurancePlanContact {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanContact()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanContact else {
            return self
        }
        resource.purpose = self.purpose?.copy() as? CodeableConcept
        resource.name = self.name?.copy() as? HumanName
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.address = self.address?.copy() as? Address

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanCoverage
extension ModelsR4.InsurancePlanCoverage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanCoverage(benefit: self.benefit, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanCoverage else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.network = self.network?.compactMap { $0.copy() as? Reference }
        resource.benefit = self.benefit.compactMap { $0.copy() as? InsurancePlanCoverageBenefit }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanCoverageBenefit
extension ModelsR4.InsurancePlanCoverageBenefit {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanCoverageBenefit(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanCoverageBenefit else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.requirement = self.requirement
        resource.limit = self.limit?.compactMap { $0.copy() as? InsurancePlanCoverageBenefitLimit }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanCoverageBenefitLimit
extension ModelsR4.InsurancePlanCoverageBenefitLimit {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanCoverageBenefitLimit()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanCoverageBenefitLimit else {
            return self
        }
        resource.value = self.value?.copy() as? Quantity
        resource.code = self.code?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanPlan
extension ModelsR4.InsurancePlanPlan {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanPlan()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanPlan else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.coverageArea = self.coverageArea?.compactMap { $0.copy() as? Reference }
        resource.network = self.network?.compactMap { $0.copy() as? Reference }
        resource.generalCost = self.generalCost?.compactMap { $0.copy() as? InsurancePlanPlanGeneralCost }
        resource.specificCost = self.specificCost?.compactMap { $0.copy() as? InsurancePlanPlanSpecificCost }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanPlanGeneralCost
extension ModelsR4.InsurancePlanPlanGeneralCost {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanPlanGeneralCost()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanPlanGeneralCost else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.groupSize = self.groupSize
        resource.cost = self.cost?.copy() as? Money
        resource.comment = self.comment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanPlanSpecificCost
extension ModelsR4.InsurancePlanPlanSpecificCost {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanPlanSpecificCost(category: self.category)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanPlanSpecificCost else {
            return self
        }
        resource.category = self.category.copy() as! CodeableConcept
        resource.benefit = self.benefit?.compactMap { $0.copy() as? InsurancePlanPlanSpecificCostBenefit }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanPlanSpecificCostBenefit
extension ModelsR4.InsurancePlanPlanSpecificCostBenefit {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanPlanSpecificCostBenefit(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanPlanSpecificCostBenefit else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.cost = self.cost?.compactMap { $0.copy() as? InsurancePlanPlanSpecificCostBenefitCost }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InsurancePlanPlanSpecificCostBenefitCost
extension ModelsR4.InsurancePlanPlanSpecificCostBenefitCost {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InsurancePlanPlanSpecificCostBenefitCost(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InsurancePlanPlanSpecificCostBenefitCost else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.applicability = self.applicability?.copy() as? CodeableConcept
        resource.qualifiers = self.qualifiers?.compactMap { $0.copy() as? CodeableConcept }
        resource.value = self.value?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Invoice
extension ModelsR4.Invoice {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Invoice(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Invoice else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.cancelledReason = self.cancelledReason
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.recipient = self.recipient?.copy() as? Reference
        resource.date = self.date
        resource.participant = self.participant?.compactMap { $0.copy() as? InvoiceParticipant }
        resource.issuer = self.issuer?.copy() as? Reference
        resource.account = self.account?.copy() as? Reference
        resource.lineItem = self.lineItem?.compactMap { $0.copy() as? InvoiceLineItem }
        resource.totalPriceComponent = self.totalPriceComponent?.compactMap { $0.copy() as? InvoiceLineItemPriceComponent }
        resource.totalNet = self.totalNet?.copy() as? Money
        resource.totalGross = self.totalGross?.copy() as? Money
        resource.paymentTerms = self.paymentTerms
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InvoiceLineItem
extension ModelsR4.InvoiceLineItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InvoiceLineItem(chargeItem: self.chargeItem)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InvoiceLineItem else {
            return self
        }
        resource.sequence = self.sequence
        resource.chargeItem = self.chargeItem.copy() as! ChargeItemX
        resource.priceComponent = self.priceComponent?.compactMap { $0.copy() as? InvoiceLineItemPriceComponent }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InvoiceLineItemPriceComponent
extension ModelsR4.InvoiceLineItemPriceComponent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InvoiceLineItemPriceComponent(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InvoiceLineItemPriceComponent else {
            return self
        }
        resource.type = self.type
        resource.code = self.code?.copy() as? CodeableConcept
        resource.factor = self.factor
        resource.amount = self.amount?.copy() as? Money

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - InvoiceParticipant
extension ModelsR4.InvoiceParticipant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.InvoiceParticipant(actor: self.actor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.InvoiceParticipant else {
            return self
        }
        resource.role = self.role?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Library
extension ModelsR4.Library {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Library(status: self.status, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Library else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.type = self.type.copy() as! CodeableConcept
        resource.subject = self.subject?.copy() as? SubjectX
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.parameter = self.parameter?.compactMap { $0.copy() as? ParameterDefinition }
        resource.dataRequirement = self.dataRequirement?.compactMap { $0.copy() as? DataRequirement }
        resource.content = self.content?.compactMap { $0.copy() as? Attachment }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Linkage
extension ModelsR4.Linkage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Linkage(item: self.item)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Linkage else {
            return self
        }
        resource.active = self.active
        resource.author = self.author?.copy() as? Reference
        resource.item = self.item.compactMap { $0.copy() as? LinkageItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - LinkageItem
extension ModelsR4.LinkageItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.LinkageItem(resource: self.resource, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.LinkageItem else {
            return self
        }
        resource.type = self.type
        resource.resource = self.resource.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - List
extension ModelsR4.List {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.List(mode: self.mode, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.List else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.mode = self.mode
        resource.title = self.title
        resource.code = self.code?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.date = self.date
        resource.source = self.source?.copy() as? Reference
        resource.orderedBy = self.orderedBy?.copy() as? CodeableConcept
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.entry = self.entry?.compactMap { $0.copy() as? ListEntry }
        resource.emptyReason = self.emptyReason?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ListEntry
extension ModelsR4.ListEntry {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ListEntry(item: self.item)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ListEntry else {
            return self
        }
        resource.flag = self.flag?.copy() as? CodeableConcept
        resource.deleted = self.deleted
        resource.date = self.date
        resource.item = self.item.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Location
extension ModelsR4.Location {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Location()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Location else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.operationalStatus = self.operationalStatus?.copy() as? Coding
        resource.name = self.name
        resource.alias = self.alias
        resource.description_fhir = self.description_fhir
        resource.mode = self.mode
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.address = self.address?.copy() as? Address
        resource.physicalType = self.physicalType?.copy() as? CodeableConcept
        resource.position = self.position?.copy() as? LocationPosition
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.partOf = self.partOf?.copy() as? Reference
        resource.hoursOfOperation = self.hoursOfOperation?.compactMap { $0.copy() as? LocationHoursOfOperation }
        resource.availabilityExceptions = self.availabilityExceptions
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - LocationHoursOfOperation
extension ModelsR4.LocationHoursOfOperation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.LocationHoursOfOperation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.LocationHoursOfOperation else {
            return self
        }
        resource.daysOfWeek = self.daysOfWeek
        resource.allDay = self.allDay
        resource.openingTime = self.openingTime
        resource.closingTime = self.closingTime

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - LocationPosition
extension ModelsR4.LocationPosition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.LocationPosition(latitude: self.latitude, longitude: self.longitude)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.LocationPosition else {
            return self
        }
        resource.longitude = self.longitude
        resource.latitude = self.latitude
        resource.altitude = self.altitude

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MarketingStatus
extension ModelsR4.MarketingStatus {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MarketingStatus(country: self.country, dateRange: self.dateRange, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MarketingStatus else {
            return self
        }
        resource.country = self.country.copy() as! CodeableConcept
        resource.jurisdiction = self.jurisdiction?.copy() as? CodeableConcept
        resource.status = self.status.copy() as! CodeableConcept
        resource.dateRange = self.dateRange.copy() as! Period
        resource.restoreDate = self.restoreDate

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Measure
extension ModelsR4.Measure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Measure(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Measure else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject?.copy() as? SubjectX
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.library = self.library
        resource.disclaimer = self.disclaimer
        resource.scoring = self.scoring?.copy() as? CodeableConcept
        resource.compositeScoring = self.compositeScoring?.copy() as? CodeableConcept
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.riskAdjustment = self.riskAdjustment
        resource.rateAggregation = self.rateAggregation
        resource.rationale = self.rationale
        resource.clinicalRecommendationStatement = self.clinicalRecommendationStatement
        resource.improvementNotation = self.improvementNotation?.copy() as? CodeableConcept
        resource.definition = self.definition
        resource.guidance = self.guidance
        resource.group = self.group?.compactMap { $0.copy() as? MeasureGroup }
        resource.supplementalData = self.supplementalData?.compactMap { $0.copy() as? MeasureSupplementalData }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureGroup
extension ModelsR4.MeasureGroup {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureGroup()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureGroup else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.population = self.population?.compactMap { $0.copy() as? MeasureGroupPopulation }
        resource.stratifier = self.stratifier?.compactMap { $0.copy() as? MeasureGroupStratifier }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureGroupPopulation
extension ModelsR4.MeasureGroupPopulation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureGroupPopulation(criteria: self.criteria)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureGroupPopulation else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.criteria = self.criteria.copy() as! Expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureGroupStratifier
extension ModelsR4.MeasureGroupStratifier {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureGroupStratifier()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureGroupStratifier else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.criteria = self.criteria?.copy() as? Expression
        resource.component = self.component?.compactMap { $0.copy() as? MeasureGroupStratifierComponent }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureGroupStratifierComponent
extension ModelsR4.MeasureGroupStratifierComponent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureGroupStratifierComponent(criteria: self.criteria)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureGroupStratifierComponent else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.criteria = self.criteria.copy() as! Expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureReport
extension ModelsR4.MeasureReport {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureReport(measure: self.measure, period: self.period, status: self.status, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureReport else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.type = self.type
        resource.measure = self.measure
        resource.subject = self.subject?.copy() as? Reference
        resource.date = self.date
        resource.reporter = self.reporter?.copy() as? Reference
        resource.period = self.period.copy() as! Period
        resource.improvementNotation = self.improvementNotation?.copy() as? CodeableConcept
        resource.group = self.group?.compactMap { $0.copy() as? MeasureReportGroup }
        resource.evaluatedResource = self.evaluatedResource?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureReportGroup
extension ModelsR4.MeasureReportGroup {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureReportGroup()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureReportGroup else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.population = self.population?.compactMap { $0.copy() as? MeasureReportGroupPopulation }
        resource.measureScore = self.measureScore?.copy() as? Quantity
        resource.stratifier = self.stratifier?.compactMap { $0.copy() as? MeasureReportGroupStratifier }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureReportGroupPopulation
extension ModelsR4.MeasureReportGroupPopulation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureReportGroupPopulation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureReportGroupPopulation else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.count = self.count
        resource.subjectResults = self.subjectResults?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureReportGroupStratifier
extension ModelsR4.MeasureReportGroupStratifier {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureReportGroupStratifier()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureReportGroupStratifier else {
            return self
        }
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.stratum = self.stratum?.compactMap { $0.copy() as? MeasureReportGroupStratifierStratum }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureReportGroupStratifierStratum
extension ModelsR4.MeasureReportGroupStratifierStratum {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureReportGroupStratifierStratum()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureReportGroupStratifierStratum else {
            return self
        }
        resource.value = self.value?.copy() as? CodeableConcept
        resource.component = self.component?.compactMap { $0.copy() as? MeasureReportGroupStratifierStratumComponent }
        resource.population = self.population?.compactMap { $0.copy() as? MeasureReportGroupStratifierStratumPopulation }
        resource.measureScore = self.measureScore?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureReportGroupStratifierStratumComponent
extension ModelsR4.MeasureReportGroupStratifierStratumComponent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureReportGroupStratifierStratumComponent(code: self.code, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureReportGroupStratifierStratumComponent else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.value = self.value.copy() as! CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureReportGroupStratifierStratumPopulation
extension ModelsR4.MeasureReportGroupStratifierStratumPopulation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureReportGroupStratifierStratumPopulation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureReportGroupStratifierStratumPopulation else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.count = self.count
        resource.subjectResults = self.subjectResults?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MeasureSupplementalData
extension ModelsR4.MeasureSupplementalData {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MeasureSupplementalData(criteria: self.criteria)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MeasureSupplementalData else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.usage = self.usage?.compactMap { $0.copy() as? CodeableConcept }
        resource.description_fhir = self.description_fhir
        resource.criteria = self.criteria.copy() as! Expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Media
extension ModelsR4.Media {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Media(content: self.content, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Media else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.modality = self.modality?.copy() as? CodeableConcept
        resource.view = self.view?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.created = self.created?.copy() as? CreatedX
        resource.issued = self.issued
        resource.`operator` = self.`operator`?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.deviceName = self.deviceName
        resource.device = self.device?.copy() as? Reference
        resource.height = self.height
        resource.width = self.width
        resource.frames = self.frames
        resource.duration = self.duration
        resource.content = self.content.copy() as! Attachment
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Medication
extension ModelsR4.Medication {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Medication()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Medication else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.status = self.status
        resource.manufacturer = self.manufacturer?.copy() as? Reference
        resource.form = self.form?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Ratio
        resource.ingredient = self.ingredient?.compactMap { $0.copy() as? MedicationIngredient }
        resource.batch = self.batch?.copy() as? MedicationBatch

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationAdministration
extension ModelsR4.MedicationAdministration {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationAdministration(effective: self.effective, medication: self.medication, status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationAdministration else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiates = self.instantiates
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.statusReason = self.statusReason?.compactMap { $0.copy() as? CodeableConcept }
        resource.category = self.category?.copy() as? CodeableConcept
        resource.medication = self.medication.copy() as! MedicationX
        resource.subject = self.subject.copy() as! Reference
        resource.context = self.context?.copy() as? Reference
        resource.supportingInformation = self.supportingInformation?.compactMap { $0.copy() as? Reference }
        resource.effective = self.effective.copy() as! EffectiveX
        resource.performer = self.performer?.compactMap { $0.copy() as? MedicationAdministrationPerformer }
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.request = self.request?.copy() as? Reference
        resource.device = self.device?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.dosage = self.dosage?.copy() as? MedicationAdministrationDosage
        resource.eventHistory = self.eventHistory?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationAdministrationDosage
extension ModelsR4.MedicationAdministrationDosage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationAdministrationDosage()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationAdministrationDosage else {
            return self
        }
        resource.text = self.text
        resource.site = self.site?.copy() as? CodeableConcept
        resource.route = self.route?.copy() as? CodeableConcept
        resource.method = self.method?.copy() as? CodeableConcept
        resource.dose = self.dose?.copy() as? Quantity
        resource.rate = self.rate?.copy() as? RateX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationAdministrationPerformer
extension ModelsR4.MedicationAdministrationPerformer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationAdministrationPerformer(actor: self.actor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationAdministrationPerformer else {
            return self
        }
        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationBatch
extension ModelsR4.MedicationBatch {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationBatch()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationBatch else {
            return self
        }
        resource.lotNumber = self.lotNumber
        resource.expirationDate = self.expirationDate

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationDispense
extension ModelsR4.MedicationDispense {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationDispense(medication: self.medication, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationDispense else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? StatusReasonX
        resource.category = self.category?.copy() as? CodeableConcept
        resource.medication = self.medication.copy() as! MedicationX
        resource.subject = self.subject?.copy() as? Reference
        resource.context = self.context?.copy() as? Reference
        resource.supportingInformation = self.supportingInformation?.compactMap { $0.copy() as? Reference }
        resource.performer = self.performer?.compactMap { $0.copy() as? MedicationDispensePerformer }
        resource.location = self.location?.copy() as? Reference
        resource.authorizingPrescription = self.authorizingPrescription?.compactMap { $0.copy() as? Reference }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.daysSupply = self.daysSupply?.copy() as? Quantity
        resource.whenPrepared = self.whenPrepared
        resource.whenHandedOver = self.whenHandedOver
        resource.destination = self.destination?.copy() as? Reference
        resource.receiver = self.receiver?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.dosageInstruction = self.dosageInstruction?.compactMap { $0.copy() as? Dosage }
        resource.substitution = self.substitution?.copy() as? MedicationDispenseSubstitution
        resource.detectedIssue = self.detectedIssue?.compactMap { $0.copy() as? Reference }
        resource.eventHistory = self.eventHistory?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationDispensePerformer
extension ModelsR4.MedicationDispensePerformer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationDispensePerformer(actor: self.actor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationDispensePerformer else {
            return self
        }
        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationDispenseSubstitution
extension ModelsR4.MedicationDispenseSubstitution {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationDispenseSubstitution(wasSubstituted: self.wasSubstituted)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationDispenseSubstitution else {
            return self
        }
        resource.wasSubstituted = self.wasSubstituted
        resource.type = self.type?.copy() as? CodeableConcept
        resource.reason = self.reason?.compactMap { $0.copy() as? CodeableConcept }
        resource.responsibleParty = self.responsibleParty?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationIngredient
extension ModelsR4.MedicationIngredient {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationIngredient(item: self.item)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationIngredient else {
            return self
        }
        resource.item = self.item.copy() as! ItemX
        resource.isActive = self.isActive
        resource.strength = self.strength?.copy() as? Ratio

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledge
extension ModelsR4.MedicationKnowledge {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledge()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledge else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.status = self.status
        resource.manufacturer = self.manufacturer?.copy() as? Reference
        resource.doseForm = self.doseForm?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Quantity
        resource.synonym = self.synonym
        resource.relatedMedicationKnowledge = self.relatedMedicationKnowledge?.compactMap { $0.copy() as? MedicationKnowledgeRelatedMedicationKnowledge }
        resource.associatedMedication = self.associatedMedication?.compactMap { $0.copy() as? Reference }
        resource.productType = self.productType?.compactMap { $0.copy() as? CodeableConcept }
        resource.monograph = self.monograph?.compactMap { $0.copy() as? MedicationKnowledgeMonograph }
        resource.ingredient = self.ingredient?.compactMap { $0.copy() as? MedicationKnowledgeIngredient }
        resource.preparationInstruction = self.preparationInstruction
        resource.intendedRoute = self.intendedRoute?.compactMap { $0.copy() as? CodeableConcept }
        resource.cost = self.cost?.compactMap { $0.copy() as? MedicationKnowledgeCost }
        resource.monitoringProgram = self.monitoringProgram?.compactMap { $0.copy() as? MedicationKnowledgeMonitoringProgram }
        resource.administrationGuidelines = self.administrationGuidelines?.compactMap { $0.copy() as? MedicationKnowledgeAdministrationGuidelines }
        resource.medicineClassification = self.medicineClassification?.compactMap { $0.copy() as? MedicationKnowledgeMedicineClassification }
        resource.packaging = self.packaging?.copy() as? MedicationKnowledgePackaging
        resource.drugCharacteristic = self.drugCharacteristic?.compactMap { $0.copy() as? MedicationKnowledgeDrugCharacteristic }
        resource.contraindication = self.contraindication?.compactMap { $0.copy() as? Reference }
        resource.regulatory = self.regulatory?.compactMap { $0.copy() as? MedicationKnowledgeRegulatory }
        resource.kinetics = self.kinetics?.compactMap { $0.copy() as? MedicationKnowledgeKinetics }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeAdministrationGuidelines
extension ModelsR4.MedicationKnowledgeAdministrationGuidelines {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeAdministrationGuidelines()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeAdministrationGuidelines else {
            return self
        }
        resource.dosage = self.dosage?.compactMap { $0.copy() as? MedicationKnowledgeAdministrationGuidelinesDosage }
        resource.indication = self.indication?.copy() as? IndicationX
        resource.patientCharacteristics = self.patientCharacteristics?.compactMap { $0.copy() as? MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeAdministrationGuidelinesDosage
extension ModelsR4.MedicationKnowledgeAdministrationGuidelinesDosage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeAdministrationGuidelinesDosage(dosage: self.dosage, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeAdministrationGuidelinesDosage else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.dosage = self.dosage.compactMap { $0.copy() as? Dosage }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics
extension ModelsR4.MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics(characteristic: self.characteristic)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics else {
            return self
        }
        resource.characteristic = self.characteristic.copy() as! CharacteristicX
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeCost
extension ModelsR4.MedicationKnowledgeCost {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeCost(cost: self.cost, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeCost else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.source = self.source
        resource.cost = self.cost.copy() as! Money

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeDrugCharacteristic
extension ModelsR4.MedicationKnowledgeDrugCharacteristic {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeDrugCharacteristic()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeDrugCharacteristic else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.value = self.value?.copy() as? ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeIngredient
extension ModelsR4.MedicationKnowledgeIngredient {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeIngredient(item: self.item)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeIngredient else {
            return self
        }
        resource.item = self.item.copy() as! ItemX
        resource.isActive = self.isActive
        resource.strength = self.strength?.copy() as? Ratio

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeKinetics
extension ModelsR4.MedicationKnowledgeKinetics {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeKinetics()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeKinetics else {
            return self
        }
        resource.areaUnderCurve = self.areaUnderCurve?.compactMap { $0.copy() as? Quantity }
        resource.lethalDose50 = self.lethalDose50?.compactMap { $0.copy() as? Quantity }
        resource.halfLifePeriod = self.halfLifePeriod?.copy() as? Duration

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeMedicineClassification
extension ModelsR4.MedicationKnowledgeMedicineClassification {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeMedicineClassification(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeMedicineClassification else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.classification = self.classification?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeMonitoringProgram
extension ModelsR4.MedicationKnowledgeMonitoringProgram {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeMonitoringProgram()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeMonitoringProgram else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.name = self.name

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeMonograph
extension ModelsR4.MedicationKnowledgeMonograph {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeMonograph()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeMonograph else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.source = self.source?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgePackaging
extension ModelsR4.MedicationKnowledgePackaging {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgePackaging()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgePackaging else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.quantity = self.quantity?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeRegulatory
extension ModelsR4.MedicationKnowledgeRegulatory {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeRegulatory(regulatoryAuthority: self.regulatoryAuthority)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeRegulatory else {
            return self
        }
        resource.regulatoryAuthority = self.regulatoryAuthority.copy() as! Reference
        resource.substitution = self.substitution?.compactMap { $0.copy() as? MedicationKnowledgeRegulatorySubstitution }
        resource.schedule = self.schedule?.compactMap { $0.copy() as? MedicationKnowledgeRegulatorySchedule }
        resource.maxDispense = self.maxDispense?.copy() as? MedicationKnowledgeRegulatoryMaxDispense

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeRegulatoryMaxDispense
extension ModelsR4.MedicationKnowledgeRegulatoryMaxDispense {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeRegulatoryMaxDispense(quantity: self.quantity)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeRegulatoryMaxDispense else {
            return self
        }
        resource.quantity = self.quantity.copy() as! Quantity
        resource.period = self.period?.copy() as? Duration

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeRegulatorySchedule
extension ModelsR4.MedicationKnowledgeRegulatorySchedule {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeRegulatorySchedule(schedule: self.schedule)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeRegulatorySchedule else {
            return self
        }
        resource.schedule = self.schedule.copy() as! CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeRegulatorySubstitution
extension ModelsR4.MedicationKnowledgeRegulatorySubstitution {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeRegulatorySubstitution(allowed: self.allowed, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeRegulatorySubstitution else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.allowed = self.allowed

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationKnowledgeRelatedMedicationKnowledge
extension ModelsR4.MedicationKnowledgeRelatedMedicationKnowledge {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationKnowledgeRelatedMedicationKnowledge(reference: self.reference, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationKnowledgeRelatedMedicationKnowledge else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.reference = self.reference.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationRequest
extension ModelsR4.MedicationRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationRequest(intent: self.intent, medication: self.medication, status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationRequest else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.intent = self.intent
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.priority = self.priority
        resource.doNotPerform = self.doNotPerform
        resource.reported = self.reported?.copy() as? ReportedX
        resource.medication = self.medication.copy() as! MedicationX
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.supportingInformation = self.supportingInformation?.compactMap { $0.copy() as? Reference }
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.performer = self.performer?.copy() as? Reference
        resource.performerType = self.performerType?.copy() as? CodeableConcept
        resource.recorder = self.recorder?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.courseOfTherapyType = self.courseOfTherapyType?.copy() as? CodeableConcept
        resource.insurance = self.insurance?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.dosageInstruction = self.dosageInstruction?.compactMap { $0.copy() as? Dosage }
        resource.dispenseRequest = self.dispenseRequest?.copy() as? MedicationRequestDispenseRequest
        resource.substitution = self.substitution?.copy() as? MedicationRequestSubstitution
        resource.priorPrescription = self.priorPrescription?.copy() as? Reference
        resource.detectedIssue = self.detectedIssue?.compactMap { $0.copy() as? Reference }
        resource.eventHistory = self.eventHistory?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationRequestDispenseRequest
extension ModelsR4.MedicationRequestDispenseRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationRequestDispenseRequest()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationRequestDispenseRequest else {
            return self
        }
        resource.initialFill = self.initialFill?.copy() as? MedicationRequestDispenseRequestInitialFill
        resource.dispenseInterval = self.dispenseInterval?.copy() as? Duration
        resource.validityPeriod = self.validityPeriod?.copy() as? Period
        resource.numberOfRepeatsAllowed = self.numberOfRepeatsAllowed
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.expectedSupplyDuration = self.expectedSupplyDuration?.copy() as? Duration
        resource.performer = self.performer?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationRequestDispenseRequestInitialFill
extension ModelsR4.MedicationRequestDispenseRequestInitialFill {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationRequestDispenseRequestInitialFill()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationRequestDispenseRequestInitialFill else {
            return self
        }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.duration = self.duration?.copy() as? Duration

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationRequestSubstitution
extension ModelsR4.MedicationRequestSubstitution {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationRequestSubstitution(allowed: self.allowed)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationRequestSubstitution else {
            return self
        }
        resource.allowed = self.allowed.copy() as! AllowedX
        resource.reason = self.reason?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicationStatement
extension ModelsR4.MedicationStatement {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicationStatement(medication: self.medication, status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicationStatement else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.statusReason = self.statusReason?.compactMap { $0.copy() as? CodeableConcept }
        resource.category = self.category?.copy() as? CodeableConcept
        resource.medication = self.medication.copy() as! MedicationX
        resource.subject = self.subject.copy() as! Reference
        resource.context = self.context?.copy() as? Reference
        resource.effective = self.effective?.copy() as? EffectiveX
        resource.dateAsserted = self.dateAsserted
        resource.informationSource = self.informationSource?.copy() as? Reference
        resource.derivedFrom = self.derivedFrom?.compactMap { $0.copy() as? Reference }
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.dosage = self.dosage?.compactMap { $0.copy() as? Dosage }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProduct
extension ModelsR4.MedicinalProduct {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProduct(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProduct else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.domain = self.domain?.copy() as? Coding
        resource.combinedPharmaceuticalDoseForm = self.combinedPharmaceuticalDoseForm?.copy() as? CodeableConcept
        resource.legalStatusOfSupply = self.legalStatusOfSupply?.copy() as? CodeableConcept
        resource.additionalMonitoringIndicator = self.additionalMonitoringIndicator?.copy() as? CodeableConcept
        resource.specialMeasures = self.specialMeasures
        resource.paediatricUseIndicator = self.paediatricUseIndicator?.copy() as? CodeableConcept
        resource.productClassification = self.productClassification?.compactMap { $0.copy() as? CodeableConcept }
        resource.marketingStatus = self.marketingStatus?.compactMap { $0.copy() as? MarketingStatus }
        resource.pharmaceuticalProduct = self.pharmaceuticalProduct?.compactMap { $0.copy() as? Reference }
        resource.packagedMedicinalProduct = self.packagedMedicinalProduct?.compactMap { $0.copy() as? Reference }
        resource.attachedDocument = self.attachedDocument?.compactMap { $0.copy() as? Reference }
        resource.masterFile = self.masterFile?.compactMap { $0.copy() as? Reference }
        resource.contact = self.contact?.compactMap { $0.copy() as? Reference }
        resource.clinicalTrial = self.clinicalTrial?.compactMap { $0.copy() as? Reference }
        resource.name = self.name.compactMap { $0.copy() as? MedicinalProductName }
        resource.crossReference = self.crossReference?.compactMap { $0.copy() as? Identifier }
        resource.manufacturingBusinessOperation = self.manufacturingBusinessOperation?.compactMap { $0.copy() as? MedicinalProductManufacturingBusinessOperation }
        resource.specialDesignation = self.specialDesignation?.compactMap { $0.copy() as? MedicinalProductSpecialDesignation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductAuthorization
extension ModelsR4.MedicinalProductAuthorization {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductAuthorization()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductAuthorization else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.subject = self.subject?.copy() as? Reference
        resource.country = self.country?.compactMap { $0.copy() as? CodeableConcept }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.status = self.status?.copy() as? CodeableConcept
        resource.statusDate = self.statusDate
        resource.restoreDate = self.restoreDate
        resource.validityPeriod = self.validityPeriod?.copy() as? Period
        resource.dataExclusivityPeriod = self.dataExclusivityPeriod?.copy() as? Period
        resource.dateOfFirstAuthorization = self.dateOfFirstAuthorization
        resource.internationalBirthDate = self.internationalBirthDate
        resource.legalBasis = self.legalBasis?.copy() as? CodeableConcept
        resource.jurisdictionalAuthorization = self.jurisdictionalAuthorization?.compactMap { $0.copy() as? MedicinalProductAuthorizationJurisdictionalAuthorization }
        resource.holder = self.holder?.copy() as? Reference
        resource.regulator = self.regulator?.copy() as? Reference
        resource.procedure = self.procedure?.copy() as? MedicinalProductAuthorizationProcedure

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductAuthorizationJurisdictionalAuthorization
extension ModelsR4.MedicinalProductAuthorizationJurisdictionalAuthorization {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductAuthorizationJurisdictionalAuthorization()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductAuthorizationJurisdictionalAuthorization else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.country = self.country?.copy() as? CodeableConcept
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.legalStatusOfSupply = self.legalStatusOfSupply?.copy() as? CodeableConcept
        resource.validityPeriod = self.validityPeriod?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductAuthorizationProcedure
extension ModelsR4.MedicinalProductAuthorizationProcedure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductAuthorizationProcedure(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductAuthorizationProcedure else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.type = self.type.copy() as! CodeableConcept
        resource.date = self.date?.copy() as? DateX
        resource.application = self.application?.compactMap { $0.copy() as? MedicinalProductAuthorizationProcedure }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductContraindication
extension ModelsR4.MedicinalProductContraindication {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductContraindication()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductContraindication else {
            return self
        }
        resource.subject = self.subject?.compactMap { $0.copy() as? Reference }
        resource.disease = self.disease?.copy() as? CodeableConcept
        resource.diseaseStatus = self.diseaseStatus?.copy() as? CodeableConcept
        resource.comorbidity = self.comorbidity?.compactMap { $0.copy() as? CodeableConcept }
        resource.therapeuticIndication = self.therapeuticIndication?.compactMap { $0.copy() as? Reference }
        resource.otherTherapy = self.otherTherapy?.compactMap { $0.copy() as? MedicinalProductContraindicationOtherTherapy }
        resource.population = self.population?.compactMap { $0.copy() as? Population }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductContraindicationOtherTherapy
extension ModelsR4.MedicinalProductContraindicationOtherTherapy {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductContraindicationOtherTherapy(medication: self.medication, therapyRelationshipType: self.therapyRelationshipType)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductContraindicationOtherTherapy else {
            return self
        }
        resource.therapyRelationshipType = self.therapyRelationshipType.copy() as! CodeableConcept
        resource.medication = self.medication.copy() as! MedicationX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductIndication
extension ModelsR4.MedicinalProductIndication {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductIndication()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductIndication else {
            return self
        }
        resource.subject = self.subject?.compactMap { $0.copy() as? Reference }
        resource.diseaseSymptomProcedure = self.diseaseSymptomProcedure?.copy() as? CodeableConcept
        resource.diseaseStatus = self.diseaseStatus?.copy() as? CodeableConcept
        resource.comorbidity = self.comorbidity?.compactMap { $0.copy() as? CodeableConcept }
        resource.intendedEffect = self.intendedEffect?.copy() as? CodeableConcept
        resource.duration = self.duration?.copy() as? Quantity
        resource.otherTherapy = self.otherTherapy?.compactMap { $0.copy() as? MedicinalProductIndicationOtherTherapy }
        resource.undesirableEffect = self.undesirableEffect?.compactMap { $0.copy() as? Reference }
        resource.population = self.population?.compactMap { $0.copy() as? Population }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductIndicationOtherTherapy
extension ModelsR4.MedicinalProductIndicationOtherTherapy {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductIndicationOtherTherapy(medication: self.medication, therapyRelationshipType: self.therapyRelationshipType)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductIndicationOtherTherapy else {
            return self
        }
        resource.therapyRelationshipType = self.therapyRelationshipType.copy() as! CodeableConcept
        resource.medication = self.medication.copy() as! MedicationX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductIngredient
extension ModelsR4.MedicinalProductIngredient {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductIngredient(role: self.role)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductIngredient else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.role = self.role.copy() as! CodeableConcept
        resource.allergenicIndicator = self.allergenicIndicator
        resource.manufacturer = self.manufacturer?.compactMap { $0.copy() as? Reference }
        resource.specifiedSubstance = self.specifiedSubstance?.compactMap { $0.copy() as? MedicinalProductIngredientSpecifiedSubstance }
        resource.substance = self.substance?.copy() as? MedicinalProductIngredientSubstance

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductIngredientSpecifiedSubstance
extension ModelsR4.MedicinalProductIngredientSpecifiedSubstance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductIngredientSpecifiedSubstance(code: self.code, group: self.group)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductIngredientSpecifiedSubstance else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.group = self.group.copy() as! CodeableConcept
        resource.confidentiality = self.confidentiality?.copy() as? CodeableConcept
        resource.strength = self.strength?.compactMap { $0.copy() as? MedicinalProductIngredientSpecifiedSubstanceStrength }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductIngredientSpecifiedSubstanceStrength
extension ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrength {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrength(presentation: self.presentation)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrength else {
            return self
        }
        resource.presentation = self.presentation.copy() as! Ratio
        resource.presentationLowLimit = self.presentationLowLimit?.copy() as? Ratio
        resource.concentration = self.concentration?.copy() as? Ratio
        resource.concentrationLowLimit = self.concentrationLowLimit?.copy() as? Ratio
        resource.measurementPoint = self.measurementPoint
        resource.country = self.country?.compactMap { $0.copy() as? CodeableConcept }
        resource.referenceStrength = self.referenceStrength?.compactMap { $0.copy() as? MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength
extension ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength(strength: self.strength)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength else {
            return self
        }
        resource.substance = self.substance?.copy() as? CodeableConcept
        resource.strength = self.strength.copy() as! Ratio
        resource.strengthLowLimit = self.strengthLowLimit?.copy() as? Ratio
        resource.measurementPoint = self.measurementPoint
        resource.country = self.country?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductIngredientSubstance
extension ModelsR4.MedicinalProductIngredientSubstance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductIngredientSubstance(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductIngredientSubstance else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.strength = self.strength?.compactMap { $0.copy() as? MedicinalProductIngredientSpecifiedSubstanceStrength }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductInteraction
extension ModelsR4.MedicinalProductInteraction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductInteraction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductInteraction else {
            return self
        }
        resource.subject = self.subject?.compactMap { $0.copy() as? Reference }
        resource.description_fhir = self.description_fhir
        resource.interactant = self.interactant?.compactMap { $0.copy() as? MedicinalProductInteractionInteractant }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.effect = self.effect?.copy() as? CodeableConcept
        resource.incidence = self.incidence?.copy() as? CodeableConcept
        resource.management = self.management?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductInteractionInteractant
extension ModelsR4.MedicinalProductInteractionInteractant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductInteractionInteractant(item: self.item)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductInteractionInteractant else {
            return self
        }
        resource.item = self.item.copy() as! ItemX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductManufactured
extension ModelsR4.MedicinalProductManufactured {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductManufactured(manufacturedDoseForm: self.manufacturedDoseForm, quantity: self.quantity)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductManufactured else {
            return self
        }
        resource.manufacturedDoseForm = self.manufacturedDoseForm.copy() as! CodeableConcept
        resource.unitOfPresentation = self.unitOfPresentation?.copy() as? CodeableConcept
        resource.quantity = self.quantity.copy() as! Quantity
        resource.manufacturer = self.manufacturer?.compactMap { $0.copy() as? Reference }
        resource.ingredient = self.ingredient?.compactMap { $0.copy() as? Reference }
        resource.physicalCharacteristics = self.physicalCharacteristics?.copy() as? ProdCharacteristic
        resource.otherCharacteristics = self.otherCharacteristics?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductManufacturingBusinessOperation
extension ModelsR4.MedicinalProductManufacturingBusinessOperation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductManufacturingBusinessOperation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductManufacturingBusinessOperation else {
            return self
        }
        resource.operationType = self.operationType?.copy() as? CodeableConcept
        resource.authorisationReferenceNumber = self.authorisationReferenceNumber?.copy() as? Identifier
        resource.effectiveDate = self.effectiveDate
        resource.confidentialityIndicator = self.confidentialityIndicator?.copy() as? CodeableConcept
        resource.manufacturer = self.manufacturer?.compactMap { $0.copy() as? Reference }
        resource.regulator = self.regulator?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductName
extension ModelsR4.MedicinalProductName {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductName(productName: self.productName)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductName else {
            return self
        }
        resource.productName = self.productName
        resource.namePart = self.namePart?.compactMap { $0.copy() as? MedicinalProductNameNamePart }
        resource.countryLanguage = self.countryLanguage?.compactMap { $0.copy() as? MedicinalProductNameCountryLanguage }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductNameCountryLanguage
extension ModelsR4.MedicinalProductNameCountryLanguage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductNameCountryLanguage(country: self.country, language: self.language)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductNameCountryLanguage else {
            return self
        }
        resource.country = self.country.copy() as! CodeableConcept
        resource.jurisdiction = self.jurisdiction?.copy() as? CodeableConcept
        resource.language = self.language.copy() as! CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductNameNamePart
extension ModelsR4.MedicinalProductNameNamePart {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductNameNamePart(part: self.part, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductNameNamePart else {
            return self
        }
        resource.part = self.part
        resource.type = self.type.copy() as! Coding

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductPackaged
extension ModelsR4.MedicinalProductPackaged {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductPackaged(packageItem: self.packageItem)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductPackaged else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.subject = self.subject?.compactMap { $0.copy() as? Reference }
        resource.description_fhir = self.description_fhir
        resource.legalStatusOfSupply = self.legalStatusOfSupply?.copy() as? CodeableConcept
        resource.marketingStatus = self.marketingStatus?.compactMap { $0.copy() as? MarketingStatus }
        resource.marketingAuthorization = self.marketingAuthorization?.copy() as? Reference
        resource.manufacturer = self.manufacturer?.compactMap { $0.copy() as? Reference }
        resource.batchIdentifier = self.batchIdentifier?.compactMap { $0.copy() as? MedicinalProductPackagedBatchIdentifier }
        resource.packageItem = self.packageItem.compactMap { $0.copy() as? MedicinalProductPackagedPackageItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductPackagedBatchIdentifier
extension ModelsR4.MedicinalProductPackagedBatchIdentifier {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductPackagedBatchIdentifier(outerPackaging: self.outerPackaging)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductPackagedBatchIdentifier else {
            return self
        }
        resource.outerPackaging = self.outerPackaging.copy() as! Identifier
        resource.immediatePackaging = self.immediatePackaging?.copy() as? Identifier

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductPackagedPackageItem
extension ModelsR4.MedicinalProductPackagedPackageItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductPackagedPackageItem(quantity: self.quantity, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductPackagedPackageItem else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.type = self.type.copy() as! CodeableConcept
        resource.quantity = self.quantity.copy() as! Quantity
        resource.material = self.material?.compactMap { $0.copy() as? CodeableConcept }
        resource.alternateMaterial = self.alternateMaterial?.compactMap { $0.copy() as? CodeableConcept }
        resource.device = self.device?.compactMap { $0.copy() as? Reference }
        resource.manufacturedItem = self.manufacturedItem?.compactMap { $0.copy() as? Reference }
        resource.packageItem = self.packageItem?.compactMap { $0.copy() as? MedicinalProductPackagedPackageItem }
        resource.physicalCharacteristics = self.physicalCharacteristics?.copy() as? ProdCharacteristic
        resource.otherCharacteristics = self.otherCharacteristics?.compactMap { $0.copy() as? CodeableConcept }
        resource.shelfLifeStorage = self.shelfLifeStorage?.compactMap { $0.copy() as? ProductShelfLife }
        resource.manufacturer = self.manufacturer?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductPharmaceutical
extension ModelsR4.MedicinalProductPharmaceutical {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductPharmaceutical(administrableDoseForm: self.administrableDoseForm, routeOfAdministration: self.routeOfAdministration)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductPharmaceutical else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.administrableDoseForm = self.administrableDoseForm.copy() as! CodeableConcept
        resource.unitOfPresentation = self.unitOfPresentation?.copy() as? CodeableConcept
        resource.ingredient = self.ingredient?.compactMap { $0.copy() as? Reference }
        resource.device = self.device?.compactMap { $0.copy() as? Reference }
        resource.characteristics = self.characteristics?.compactMap { $0.copy() as? MedicinalProductPharmaceuticalCharacteristics }
        resource.routeOfAdministration = self.routeOfAdministration.compactMap { $0.copy() as? MedicinalProductPharmaceuticalRouteOfAdministration }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductPharmaceuticalCharacteristics
extension ModelsR4.MedicinalProductPharmaceuticalCharacteristics {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductPharmaceuticalCharacteristics(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductPharmaceuticalCharacteristics else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductPharmaceuticalRouteOfAdministration
extension ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministration {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministration(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministration else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.firstDose = self.firstDose?.copy() as? Quantity
        resource.maxSingleDose = self.maxSingleDose?.copy() as? Quantity
        resource.maxDosePerDay = self.maxDosePerDay?.copy() as? Quantity
        resource.maxDosePerTreatmentPeriod = self.maxDosePerTreatmentPeriod?.copy() as? Ratio
        resource.maxTreatmentPeriod = self.maxTreatmentPeriod?.copy() as? Duration
        resource.targetSpecies = self.targetSpecies?.compactMap { $0.copy() as? MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies
extension ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.withdrawalPeriod = self.withdrawalPeriod?.compactMap { $0.copy() as? MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod
extension ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod(tissue: self.tissue, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod else {
            return self
        }
        resource.tissue = self.tissue.copy() as! CodeableConcept
        resource.value = self.value.copy() as! Quantity
        resource.supportingInformation = self.supportingInformation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductSpecialDesignation
extension ModelsR4.MedicinalProductSpecialDesignation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductSpecialDesignation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductSpecialDesignation else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.intendedUse = self.intendedUse?.copy() as? CodeableConcept
        resource.indication = self.indication?.copy() as? IndicationX
        resource.status = self.status?.copy() as? CodeableConcept
        resource.date = self.date
        resource.species = self.species?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MedicinalProductUndesirableEffect
extension ModelsR4.MedicinalProductUndesirableEffect {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MedicinalProductUndesirableEffect()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MedicinalProductUndesirableEffect else {
            return self
        }
        resource.subject = self.subject?.compactMap { $0.copy() as? Reference }
        resource.symptomConditionEffect = self.symptomConditionEffect?.copy() as? CodeableConcept
        resource.classification = self.classification?.copy() as? CodeableConcept
        resource.frequencyOfOccurrence = self.frequencyOfOccurrence?.copy() as? CodeableConcept
        resource.population = self.population?.compactMap { $0.copy() as? Population }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MessageDefinition
extension ModelsR4.MessageDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MessageDefinition(date: self.date, event: self.event, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MessageDefinition else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.replaces = self.replaces
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.base = self.base
        resource.parent = self.parent
        resource.event = self.event.copy() as! EventX
        resource.category = self.category
        resource.focus = self.focus?.compactMap { $0.copy() as? MessageDefinitionFocus }
        resource.responseRequired = self.responseRequired
        resource.allowedResponse = self.allowedResponse?.compactMap { $0.copy() as? MessageDefinitionAllowedResponse }
        resource.graph = self.graph

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MessageDefinitionAllowedResponse
extension ModelsR4.MessageDefinitionAllowedResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MessageDefinitionAllowedResponse(message: self.message)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MessageDefinitionAllowedResponse else {
            return self
        }
        resource.message = self.message
        resource.situation = self.situation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MessageDefinitionFocus
extension ModelsR4.MessageDefinitionFocus {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MessageDefinitionFocus(code: self.code, min: self.min)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MessageDefinitionFocus else {
            return self
        }
        resource.code = self.code
        resource.profile = self.profile
        resource.min = self.min
        resource.max = self.max

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MessageHeader
extension ModelsR4.MessageHeader {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MessageHeader(event: self.event, source: self.source)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MessageHeader else {
            return self
        }
        resource.event = self.event.copy() as! EventX
        resource.destination = self.destination?.compactMap { $0.copy() as? MessageHeaderDestination }
        resource.sender = self.sender?.copy() as? Reference
        resource.enterer = self.enterer?.copy() as? Reference
        resource.author = self.author?.copy() as? Reference
        resource.source = self.source.copy() as! MessageHeaderSource
        resource.responsible = self.responsible?.copy() as? Reference
        resource.reason = self.reason?.copy() as? CodeableConcept
        resource.response = self.response?.copy() as? MessageHeaderResponse
        resource.focus = self.focus?.compactMap { $0.copy() as? Reference }
        resource.definition = self.definition

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MessageHeaderDestination
extension ModelsR4.MessageHeaderDestination {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MessageHeaderDestination(endpoint: self.endpoint)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MessageHeaderDestination else {
            return self
        }
        resource.name = self.name
        resource.target = self.target?.copy() as? Reference
        resource.endpoint = self.endpoint
        resource.receiver = self.receiver?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MessageHeaderResponse
extension ModelsR4.MessageHeaderResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MessageHeaderResponse(code: self.code, identifier: self.identifier)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MessageHeaderResponse else {
            return self
        }
        resource.identifier = self.identifier
        resource.code = self.code
        resource.details = self.details?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MessageHeaderSource
extension ModelsR4.MessageHeaderSource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MessageHeaderSource(endpoint: self.endpoint)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MessageHeaderSource else {
            return self
        }
        resource.name = self.name
        resource.software = self.software
        resource.version = self.version
        resource.contact = self.contact?.copy() as? ContactPoint
        resource.endpoint = self.endpoint

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Meta
extension ModelsR4.Meta {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Meta()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Meta else {
            return self
        }
        resource.versionId = self.versionId
        resource.lastUpdated = self.lastUpdated
        resource.source = self.source
        resource.profile = self.profile
        resource.security = self.security?.compactMap { $0.copy() as? Coding }
        resource.tag = self.tag?.compactMap { $0.copy() as? Coding }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequence
extension ModelsR4.MolecularSequence {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequence(coordinateSystem: self.coordinateSystem)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequence else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.type = self.type
        resource.coordinateSystem = self.coordinateSystem
        resource.patient = self.patient?.copy() as? Reference
        resource.specimen = self.specimen?.copy() as? Reference
        resource.device = self.device?.copy() as? Reference
        resource.performer = self.performer?.copy() as? Reference
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.referenceSeq = self.referenceSeq?.copy() as? MolecularSequenceReferenceSeq
        resource.variant = self.variant?.compactMap { $0.copy() as? MolecularSequenceVariant }
        resource.observedSeq = self.observedSeq
        resource.quality = self.quality?.compactMap { $0.copy() as? MolecularSequenceQuality }
        resource.readCoverage = self.readCoverage
        resource.repository = self.repository?.compactMap { $0.copy() as? MolecularSequenceRepository }
        resource.pointer = self.pointer?.compactMap { $0.copy() as? Reference }
        resource.structureVariant = self.structureVariant?.compactMap { $0.copy() as? MolecularSequenceStructureVariant }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequenceQuality
extension ModelsR4.MolecularSequenceQuality {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequenceQuality(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequenceQuality else {
            return self
        }
        resource.type = self.type
        resource.standardSequence = self.standardSequence?.copy() as? CodeableConcept
        resource.start = self.start
        resource.end = self.end
        resource.score = self.score?.copy() as? Quantity
        resource.method = self.method?.copy() as? CodeableConcept
        resource.truthTP = self.truthTP
        resource.queryTP = self.queryTP
        resource.truthFN = self.truthFN
        resource.queryFP = self.queryFP
        resource.gtFP = self.gtFP
        resource.precision = self.precision
        resource.recall = self.recall
        resource.fScore = self.fScore
        resource.roc = self.roc?.copy() as? MolecularSequenceQualityRoc

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequenceQualityRoc
extension ModelsR4.MolecularSequenceQualityRoc {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequenceQualityRoc()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequenceQualityRoc else {
            return self
        }
        resource.score = self.score
        resource.numTP = self.numTP
        resource.numFP = self.numFP
        resource.numFN = self.numFN
        resource.precision = self.precision
        resource.sensitivity = self.sensitivity
        resource.fMeasure = self.fMeasure

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequenceReferenceSeq
extension ModelsR4.MolecularSequenceReferenceSeq {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequenceReferenceSeq()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequenceReferenceSeq else {
            return self
        }
        resource.chromosome = self.chromosome?.copy() as? CodeableConcept
        resource.genomeBuild = self.genomeBuild
        resource.orientation = self.orientation
        resource.referenceSeqId = self.referenceSeqId?.copy() as? CodeableConcept
        resource.referenceSeqPointer = self.referenceSeqPointer?.copy() as? Reference
        resource.referenceSeqString = self.referenceSeqString
        resource.strand = self.strand
        resource.windowStart = self.windowStart
        resource.windowEnd = self.windowEnd

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequenceRepository
extension ModelsR4.MolecularSequenceRepository {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequenceRepository(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequenceRepository else {
            return self
        }
        resource.type = self.type
        resource.url = self.url
        resource.name = self.name
        resource.datasetId = self.datasetId
        resource.variantsetId = self.variantsetId
        resource.readsetId = self.readsetId

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequenceStructureVariant
extension ModelsR4.MolecularSequenceStructureVariant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequenceStructureVariant()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequenceStructureVariant else {
            return self
        }
        resource.variantType = self.variantType?.copy() as? CodeableConcept
        resource.exact = self.exact
        resource.length = self.length
        resource.outer = self.outer?.copy() as? MolecularSequenceStructureVariantOuter
        resource.inner = self.inner?.copy() as? MolecularSequenceStructureVariantInner

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequenceStructureVariantInner
extension ModelsR4.MolecularSequenceStructureVariantInner {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequenceStructureVariantInner()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequenceStructureVariantInner else {
            return self
        }
        resource.start = self.start
        resource.end = self.end

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequenceStructureVariantOuter
extension ModelsR4.MolecularSequenceStructureVariantOuter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequenceStructureVariantOuter()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequenceStructureVariantOuter else {
            return self
        }
        resource.start = self.start
        resource.end = self.end

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - MolecularSequenceVariant
extension ModelsR4.MolecularSequenceVariant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.MolecularSequenceVariant()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.MolecularSequenceVariant else {
            return self
        }
        resource.start = self.start
        resource.end = self.end
        resource.observedAllele = self.observedAllele
        resource.referenceAllele = self.referenceAllele
        resource.cigar = self.cigar
        resource.variantPointer = self.variantPointer?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Money
extension ModelsR4.Money {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Money()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Money else {
            return self
        }
        resource.value = self.value
        resource.currency = self.currency

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NamingSystem
extension ModelsR4.NamingSystem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NamingSystem(date: self.date, kind: self.kind, name: self.name, status: self.status, uniqueId: self.uniqueId)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NamingSystem else {
            return self
        }
        resource.name = self.name
        resource.status = self.status
        resource.kind = self.kind
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.responsible = self.responsible
        resource.type = self.type?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.usage = self.usage
        resource.uniqueId = self.uniqueId.compactMap { $0.copy() as? NamingSystemUniqueId }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NamingSystemUniqueId
extension ModelsR4.NamingSystemUniqueId {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NamingSystemUniqueId(type: self.type, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NamingSystemUniqueId else {
            return self
        }
        resource.type = self.type
        resource.value = self.value
        resource.preferred = self.preferred
        resource.comment = self.comment
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Narrative
extension ModelsR4.Narrative {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Narrative(div: self.div, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Narrative else {
            return self
        }
        resource.status = self.status
        resource.div = self.div

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NutritionOrder
extension ModelsR4.NutritionOrder {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NutritionOrder(dateTime: self.dateTime, intent: self.intent, patient: self.patient, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NutritionOrder else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.instantiates = self.instantiates
        resource.status = self.status
        resource.intent = self.intent
        resource.patient = self.patient.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.dateTime = self.dateTime
        resource.orderer = self.orderer?.copy() as? Reference
        resource.allergyIntolerance = self.allergyIntolerance?.compactMap { $0.copy() as? Reference }
        resource.foodPreferenceModifier = self.foodPreferenceModifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.excludeFoodModifier = self.excludeFoodModifier?.compactMap { $0.copy() as? CodeableConcept }
        resource.oralDiet = self.oralDiet?.copy() as? NutritionOrderOralDiet
        resource.supplement = self.supplement?.compactMap { $0.copy() as? NutritionOrderSupplement }
        resource.enteralFormula = self.enteralFormula?.copy() as? NutritionOrderEnteralFormula
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NutritionOrderEnteralFormula
extension ModelsR4.NutritionOrderEnteralFormula {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NutritionOrderEnteralFormula()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NutritionOrderEnteralFormula else {
            return self
        }
        resource.baseFormulaType = self.baseFormulaType?.copy() as? CodeableConcept
        resource.baseFormulaProductName = self.baseFormulaProductName
        resource.additiveType = self.additiveType?.copy() as? CodeableConcept
        resource.additiveProductName = self.additiveProductName
        resource.caloricDensity = self.caloricDensity?.copy() as? Quantity
        resource.routeofAdministration = self.routeofAdministration?.copy() as? CodeableConcept
        resource.administration = self.administration?.compactMap { $0.copy() as? NutritionOrderEnteralFormulaAdministration }
        resource.maxVolumeToDeliver = self.maxVolumeToDeliver?.copy() as? Quantity
        resource.administrationInstruction = self.administrationInstruction

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NutritionOrderEnteralFormulaAdministration
extension ModelsR4.NutritionOrderEnteralFormulaAdministration {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NutritionOrderEnteralFormulaAdministration()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NutritionOrderEnteralFormulaAdministration else {
            return self
        }
        resource.schedule = self.schedule?.copy() as? Timing
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.rate = self.rate?.copy() as? RateX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NutritionOrderOralDiet
extension ModelsR4.NutritionOrderOralDiet {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NutritionOrderOralDiet()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NutritionOrderOralDiet else {
            return self
        }
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.schedule = self.schedule?.compactMap { $0.copy() as? Timing }
        resource.nutrient = self.nutrient?.compactMap { $0.copy() as? NutritionOrderOralDietNutrient }
        resource.texture = self.texture?.compactMap { $0.copy() as? NutritionOrderOralDietTexture }
        resource.fluidConsistencyType = self.fluidConsistencyType?.compactMap { $0.copy() as? CodeableConcept }
        resource.instruction = self.instruction

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NutritionOrderOralDietNutrient
extension ModelsR4.NutritionOrderOralDietNutrient {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NutritionOrderOralDietNutrient()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NutritionOrderOralDietNutrient else {
            return self
        }
        resource.modifier = self.modifier?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NutritionOrderOralDietTexture
extension ModelsR4.NutritionOrderOralDietTexture {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NutritionOrderOralDietTexture()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NutritionOrderOralDietTexture else {
            return self
        }
        resource.modifier = self.modifier?.copy() as? CodeableConcept
        resource.foodType = self.foodType?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - NutritionOrderSupplement
extension ModelsR4.NutritionOrderSupplement {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.NutritionOrderSupplement()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.NutritionOrderSupplement else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.productName = self.productName
        resource.schedule = self.schedule?.compactMap { $0.copy() as? Timing }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.instruction = self.instruction

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Observation
extension ModelsR4.Observation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Observation(code: self.code, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Observation else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.focus = self.focus?.compactMap { $0.copy() as? Reference }
        resource.encounter = self.encounter?.copy() as? Reference
        resource.effective = self.effective?.copy() as? EffectiveX
        resource.issued = self.issued
        resource.performer = self.performer?.compactMap { $0.copy() as? Reference }
        resource.value = self.value?.copy() as? ValueX
        resource.dataAbsentReason = self.dataAbsentReason?.copy() as? CodeableConcept
        resource.interpretation = self.interpretation?.compactMap { $0.copy() as? CodeableConcept }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.method = self.method?.copy() as? CodeableConcept
        resource.specimen = self.specimen?.copy() as? Reference
        resource.device = self.device?.copy() as? Reference
        resource.referenceRange = self.referenceRange?.compactMap { $0.copy() as? ObservationReferenceRange }
        resource.hasMember = self.hasMember?.compactMap { $0.copy() as? Reference }
        resource.derivedFrom = self.derivedFrom?.compactMap { $0.copy() as? Reference }
        resource.component = self.component?.compactMap { $0.copy() as? ObservationComponent }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ObservationComponent
extension ModelsR4.ObservationComponent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ObservationComponent(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ObservationComponent else {
            return self
        }
        resource.code = self.code.copy() as! CodeableConcept
        resource.value = self.value?.copy() as? ValueX
        resource.dataAbsentReason = self.dataAbsentReason?.copy() as? CodeableConcept
        resource.interpretation = self.interpretation?.compactMap { $0.copy() as? CodeableConcept }
        resource.referenceRange = self.referenceRange?.compactMap { $0.copy() as? ObservationReferenceRange }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ObservationDefinition
extension ModelsR4.ObservationDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ObservationDefinition(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ObservationDefinition else {
            return self
        }
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.code = self.code.copy() as! CodeableConcept
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.permittedDataType = self.permittedDataType
        resource.multipleResultsAllowed = self.multipleResultsAllowed
        resource.method = self.method?.copy() as? CodeableConcept
        resource.preferredReportName = self.preferredReportName
        resource.quantitativeDetails = self.quantitativeDetails?.copy() as? ObservationDefinitionQuantitativeDetails
        resource.qualifiedInterval = self.qualifiedInterval?.compactMap { $0.copy() as? ObservationDefinitionQualifiedInterval }
        resource.validCodedValueSet = self.validCodedValueSet?.copy() as? Reference
        resource.normalCodedValueSet = self.normalCodedValueSet?.copy() as? Reference
        resource.abnormalCodedValueSet = self.abnormalCodedValueSet?.copy() as? Reference
        resource.criticalCodedValueSet = self.criticalCodedValueSet?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ObservationDefinitionQualifiedInterval
extension ModelsR4.ObservationDefinitionQualifiedInterval {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ObservationDefinitionQualifiedInterval()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ObservationDefinitionQualifiedInterval else {
            return self
        }
        resource.category = self.category
        resource.range = self.range?.copy() as? Range
        resource.context = self.context?.copy() as? CodeableConcept
        resource.appliesTo = self.appliesTo?.compactMap { $0.copy() as? CodeableConcept }
        resource.gender = self.gender
        resource.age = self.age?.copy() as? Range
        resource.gestationalAge = self.gestationalAge?.copy() as? Range
        resource.condition = self.condition

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ObservationDefinitionQuantitativeDetails
extension ModelsR4.ObservationDefinitionQuantitativeDetails {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ObservationDefinitionQuantitativeDetails()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ObservationDefinitionQuantitativeDetails else {
            return self
        }
        resource.customaryUnit = self.customaryUnit?.copy() as? CodeableConcept
        resource.unit = self.unit?.copy() as? CodeableConcept
        resource.conversionFactor = self.conversionFactor
        resource.decimalPrecision = self.decimalPrecision

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ObservationReferenceRange
extension ModelsR4.ObservationReferenceRange {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ObservationReferenceRange()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ObservationReferenceRange else {
            return self
        }
        resource.low = self.low?.copy() as? Quantity
        resource.high = self.high?.copy() as? Quantity
        resource.type = self.type?.copy() as? CodeableConcept
        resource.appliesTo = self.appliesTo?.compactMap { $0.copy() as? CodeableConcept }
        resource.age = self.age?.copy() as? Range
        resource.text = self.text

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OperationDefinition
extension ModelsR4.OperationDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OperationDefinition(code: self.code, instance: self.instance, kind: self.kind, name: self.name, status: self.status, system: self.system, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OperationDefinition else {
            return self
        }
        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.kind = self.kind
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.affectsState = self.affectsState
        resource.code = self.code
        resource.comment = self.comment
        resource.base = self.base
        resource.resource = self.resource
        resource.system = self.system
        resource.type = self.type
        resource.instance = self.instance
        resource.inputProfile = self.inputProfile
        resource.outputProfile = self.outputProfile
        resource.parameter = self.parameter?.compactMap { $0.copy() as? OperationDefinitionParameter }
        resource.overload = self.overload?.compactMap { $0.copy() as? OperationDefinitionOverload }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OperationDefinitionOverload
extension ModelsR4.OperationDefinitionOverload {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OperationDefinitionOverload()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OperationDefinitionOverload else {
            return self
        }
        resource.parameterName = self.parameterName
        resource.comment = self.comment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OperationDefinitionParameter
extension ModelsR4.OperationDefinitionParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OperationDefinitionParameter(max: self.max, min: self.min, name: self.name, use: self.use)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OperationDefinitionParameter else {
            return self
        }
        resource.name = self.name
        resource.use = self.use
        resource.min = self.min
        resource.max = self.max
        resource.documentation = self.documentation
        resource.type = self.type
        resource.targetProfile = self.targetProfile
        resource.searchType = self.searchType
        resource.binding = self.binding?.copy() as? OperationDefinitionParameterBinding
        resource.referencedFrom = self.referencedFrom?.compactMap { $0.copy() as? OperationDefinitionParameterReferencedFrom }
        resource.part = self.part?.compactMap { $0.copy() as? OperationDefinitionParameter }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OperationDefinitionParameterBinding
extension ModelsR4.OperationDefinitionParameterBinding {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OperationDefinitionParameterBinding(strength: self.strength, valueSet: self.valueSet)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OperationDefinitionParameterBinding else {
            return self
        }
        resource.strength = self.strength
        resource.valueSet = self.valueSet

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OperationDefinitionParameterReferencedFrom
extension ModelsR4.OperationDefinitionParameterReferencedFrom {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OperationDefinitionParameterReferencedFrom(source: self.source)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OperationDefinitionParameterReferencedFrom else {
            return self
        }
        resource.source = self.source
        resource.sourceId = self.sourceId

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OperationOutcome
extension ModelsR4.OperationOutcome {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OperationOutcome(issue: self.issue)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OperationOutcome else {
            return self
        }
        resource.issue = self.issue.compactMap { $0.copy() as? OperationOutcomeIssue }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OperationOutcomeIssue
extension ModelsR4.OperationOutcomeIssue {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OperationOutcomeIssue(code: self.code, severity: self.severity)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OperationOutcomeIssue else {
            return self
        }
        resource.severity = self.severity
        resource.code = self.code
        resource.details = self.details?.copy() as? CodeableConcept
        resource.diagnostics = self.diagnostics
        resource.location = self.location
        resource.expression = self.expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Organization
extension ModelsR4.Organization {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Organization()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Organization else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.name = self.name
        resource.alias = self.alias
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.address = self.address?.compactMap { $0.copy() as? Address }
        resource.partOf = self.partOf?.copy() as? Reference
        resource.contact = self.contact?.compactMap { $0.copy() as? OrganizationContact }
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OrganizationAffiliation
extension ModelsR4.OrganizationAffiliation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OrganizationAffiliation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OrganizationAffiliation else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.period = self.period?.copy() as? Period
        resource.organization = self.organization?.copy() as? Reference
        resource.participatingOrganization = self.participatingOrganization?.copy() as? Reference
        resource.network = self.network?.compactMap { $0.copy() as? Reference }
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.specialty = self.specialty?.compactMap { $0.copy() as? CodeableConcept }
        resource.location = self.location?.compactMap { $0.copy() as? Reference }
        resource.healthcareService = self.healthcareService?.compactMap { $0.copy() as? Reference }
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - OrganizationContact
extension ModelsR4.OrganizationContact {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.OrganizationContact()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.OrganizationContact else {
            return self
        }
        resource.purpose = self.purpose?.copy() as? CodeableConcept
        resource.name = self.name?.copy() as? HumanName
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.address = self.address?.copy() as? Address

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ParameterDefinition
extension ModelsR4.ParameterDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ParameterDefinition(type: self.type, use: self.use)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ParameterDefinition else {
            return self
        }
        resource.name = self.name
        resource.use = self.use
        resource.min = self.min
        resource.max = self.max
        resource.documentation = self.documentation
        resource.type = self.type
        resource.profile = self.profile

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Parameters
extension ModelsR4.Parameters {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Parameters()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Parameters else {
            return self
        }
        resource.parameter = self.parameter?.compactMap { $0.copy() as? ParametersParameter }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ParametersParameter
extension ModelsR4.ParametersParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ParametersParameter(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ParametersParameter else {
            return self
        }
        resource.name = self.name
        resource.value = self.value?.copy() as? ValueX
        resource.resource = self.resource?.copy() as? ResourceProxy
        resource.part = self.part?.compactMap { $0.copy() as? ParametersParameter }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Patient
extension ModelsR4.Patient {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Patient()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Patient else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.name = self.name?.compactMap { $0.copy() as? HumanName }
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.gender = self.gender
        resource.birthDate = self.birthDate
        resource.deceased = self.deceased?.copy() as? DeceasedX
        resource.address = self.address?.compactMap { $0.copy() as? Address }
        resource.maritalStatus = self.maritalStatus?.copy() as? CodeableConcept
        resource.multipleBirth = self.multipleBirth?.copy() as? MultipleBirthX
        resource.photo = self.photo?.compactMap { $0.copy() as? Attachment }
        resource.contact = self.contact?.compactMap { $0.copy() as? PatientContact }
        resource.communication = self.communication?.compactMap { $0.copy() as? PatientCommunication }
        resource.generalPractitioner = self.generalPractitioner?.compactMap { $0.copy() as? Reference }
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.link = self.link?.compactMap { $0.copy() as? PatientLink }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PatientCommunication
extension ModelsR4.PatientCommunication {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PatientCommunication(language: self.language)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PatientCommunication else {
            return self
        }
        resource.language = self.language.copy() as! CodeableConcept
        resource.preferred = self.preferred

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PatientContact
extension ModelsR4.PatientContact {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PatientContact()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PatientContact else {
            return self
        }
        resource.relationship = self.relationship?.compactMap { $0.copy() as? CodeableConcept }
        resource.name = self.name?.copy() as? HumanName
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.address = self.address?.copy() as? Address
        resource.gender = self.gender
        resource.organization = self.organization?.copy() as? Reference
        resource.period = self.period?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PatientLink
extension ModelsR4.PatientLink {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PatientLink(other: self.other, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PatientLink else {
            return self
        }
        resource.other = self.other.copy() as! Reference
        resource.type = self.type

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PaymentNotice
extension ModelsR4.PaymentNotice {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PaymentNotice(amount: self.amount, created: self.created, payment: self.payment, recipient: self.recipient, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PaymentNotice else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.request = self.request?.copy() as? Reference
        resource.response = self.response?.copy() as? Reference
        resource.created = self.created
        resource.provider = self.provider?.copy() as? Reference
        resource.payment = self.payment.copy() as! Reference
        resource.paymentDate = self.paymentDate
        resource.payee = self.payee?.copy() as? Reference
        resource.recipient = self.recipient.copy() as! Reference
        resource.amount = self.amount.copy() as! Money
        resource.paymentStatus = self.paymentStatus?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PaymentReconciliation
extension ModelsR4.PaymentReconciliation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PaymentReconciliation(created: self.created, paymentAmount: self.paymentAmount, paymentDate: self.paymentDate, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PaymentReconciliation else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.period = self.period?.copy() as? Period
        resource.created = self.created
        resource.paymentIssuer = self.paymentIssuer?.copy() as? Reference
        resource.request = self.request?.copy() as? Reference
        resource.requestor = self.requestor?.copy() as? Reference
        resource.outcome = self.outcome
        resource.disposition = self.disposition
        resource.paymentDate = self.paymentDate
        resource.paymentAmount = self.paymentAmount.copy() as! Money
        resource.paymentIdentifier = self.paymentIdentifier?.copy() as? Identifier
        resource.detail = self.detail?.compactMap { $0.copy() as? PaymentReconciliationDetail }
        resource.formCode = self.formCode?.copy() as? CodeableConcept
        resource.processNote = self.processNote?.compactMap { $0.copy() as? PaymentReconciliationProcessNote }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PaymentReconciliationDetail
extension ModelsR4.PaymentReconciliationDetail {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PaymentReconciliationDetail(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PaymentReconciliationDetail else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.predecessor = self.predecessor?.copy() as? Identifier
        resource.type = self.type.copy() as! CodeableConcept
        resource.request = self.request?.copy() as? Reference
        resource.submitter = self.submitter?.copy() as? Reference
        resource.response = self.response?.copy() as? Reference
        resource.date = self.date
        resource.responsible = self.responsible?.copy() as? Reference
        resource.payee = self.payee?.copy() as? Reference
        resource.amount = self.amount?.copy() as? Money

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PaymentReconciliationProcessNote
extension ModelsR4.PaymentReconciliationProcessNote {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PaymentReconciliationProcessNote()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PaymentReconciliationProcessNote else {
            return self
        }
        resource.type = self.type
        resource.text = self.text

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Period
extension ModelsR4.Period {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Period()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Period else {
            return self
        }
        resource.start = self.start
        resource.end = self.end

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Person
extension ModelsR4.Person {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Person()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Person else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.name = self.name?.compactMap { $0.copy() as? HumanName }
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.gender = self.gender
        resource.birthDate = self.birthDate
        resource.address = self.address?.compactMap { $0.copy() as? Address }
        resource.photo = self.photo?.copy() as? Attachment
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.active = self.active
        resource.link = self.link?.compactMap { $0.copy() as? PersonLink }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PersonLink
extension ModelsR4.PersonLink {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PersonLink(target: self.target)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PersonLink else {
            return self
        }
        resource.target = self.target.copy() as! Reference
        resource.assurance = self.assurance

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PlanDefinition
extension ModelsR4.PlanDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PlanDefinition(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PlanDefinition else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.type = self.type?.copy() as? CodeableConcept
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject?.copy() as? SubjectX
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.library = self.library
        resource.goal = self.goal?.compactMap { $0.copy() as? PlanDefinitionGoal }
        resource.action = self.action?.compactMap { $0.copy() as? PlanDefinitionAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PlanDefinitionAction
extension ModelsR4.PlanDefinitionAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PlanDefinitionAction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PlanDefinitionAction else {
            return self
        }
        resource.prefix = self.prefix
        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.textEquivalent = self.textEquivalent
        resource.priority = self.priority
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.reason = self.reason?.compactMap { $0.copy() as? CodeableConcept }
        resource.documentation = self.documentation?.compactMap { $0.copy() as? RelatedArtifact }
        resource.goalId = self.goalId
        resource.subject = self.subject?.copy() as? SubjectX
        resource.trigger = self.trigger?.compactMap { $0.copy() as? TriggerDefinition }
        resource.condition = self.condition?.compactMap { $0.copy() as? PlanDefinitionActionCondition }
        resource.input = self.input?.compactMap { $0.copy() as? DataRequirement }
        resource.output = self.output?.compactMap { $0.copy() as? DataRequirement }
        resource.relatedAction = self.relatedAction?.compactMap { $0.copy() as? PlanDefinitionActionRelatedAction }
        resource.timing = self.timing?.copy() as? TimingX
        resource.participant = self.participant?.compactMap { $0.copy() as? PlanDefinitionActionParticipant }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.groupingBehavior = self.groupingBehavior
        resource.selectionBehavior = self.selectionBehavior
        resource.requiredBehavior = self.requiredBehavior
        resource.precheckBehavior = self.precheckBehavior
        resource.cardinalityBehavior = self.cardinalityBehavior
        resource.definition = self.definition?.copy() as? DefinitionX
        resource.transform = self.transform
        resource.dynamicValue = self.dynamicValue?.compactMap { $0.copy() as? PlanDefinitionActionDynamicValue }
        resource.action = self.action?.compactMap { $0.copy() as? PlanDefinitionAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PlanDefinitionActionCondition
extension ModelsR4.PlanDefinitionActionCondition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PlanDefinitionActionCondition(kind: self.kind)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PlanDefinitionActionCondition else {
            return self
        }
        resource.kind = self.kind
        resource.expression = self.expression?.copy() as? Expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PlanDefinitionActionDynamicValue
extension ModelsR4.PlanDefinitionActionDynamicValue {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PlanDefinitionActionDynamicValue()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PlanDefinitionActionDynamicValue else {
            return self
        }
        resource.path = self.path
        resource.expression = self.expression?.copy() as? Expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PlanDefinitionActionParticipant
extension ModelsR4.PlanDefinitionActionParticipant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PlanDefinitionActionParticipant(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PlanDefinitionActionParticipant else {
            return self
        }
        resource.type = self.type
        resource.role = self.role?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PlanDefinitionActionRelatedAction
extension ModelsR4.PlanDefinitionActionRelatedAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PlanDefinitionActionRelatedAction(actionId: self.actionId, relationship: self.relationship)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PlanDefinitionActionRelatedAction else {
            return self
        }
        resource.actionId = self.actionId
        resource.relationship = self.relationship
        resource.offset = self.offset?.copy() as? OffsetX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PlanDefinitionGoal
extension ModelsR4.PlanDefinitionGoal {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PlanDefinitionGoal(description_fhir: self.description_fhir)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PlanDefinitionGoal else {
            return self
        }
        resource.category = self.category?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir.copy() as! CodeableConcept
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.start = self.start?.copy() as? CodeableConcept
        resource.addresses = self.addresses?.compactMap { $0.copy() as? CodeableConcept }
        resource.documentation = self.documentation?.compactMap { $0.copy() as? RelatedArtifact }
        resource.target = self.target?.compactMap { $0.copy() as? PlanDefinitionGoalTarget }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PlanDefinitionGoalTarget
extension ModelsR4.PlanDefinitionGoalTarget {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PlanDefinitionGoalTarget()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PlanDefinitionGoalTarget else {
            return self
        }
        resource.measure = self.measure?.copy() as? CodeableConcept
        resource.detail = self.detail?.copy() as? DetailX
        resource.due = self.due?.copy() as? Duration

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Population
extension ModelsR4.Population {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Population()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Population else {
            return self
        }
        resource.age = self.age?.copy() as? AgeX
        resource.gender = self.gender?.copy() as? CodeableConcept
        resource.race = self.race?.copy() as? CodeableConcept
        resource.physiologicalCondition = self.physiologicalCondition?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Practitioner
extension ModelsR4.Practitioner {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Practitioner()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Practitioner else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.name = self.name?.compactMap { $0.copy() as? HumanName }
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.address = self.address?.compactMap { $0.copy() as? Address }
        resource.gender = self.gender
        resource.birthDate = self.birthDate
        resource.photo = self.photo?.compactMap { $0.copy() as? Attachment }
        resource.qualification = self.qualification?.compactMap { $0.copy() as? PractitionerQualification }
        resource.communication = self.communication?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PractitionerQualification
extension ModelsR4.PractitionerQualification {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PractitionerQualification(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PractitionerQualification else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.code = self.code.copy() as! CodeableConcept
        resource.period = self.period?.copy() as? Period
        resource.issuer = self.issuer?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PractitionerRole
extension ModelsR4.PractitionerRole {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PractitionerRole()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PractitionerRole else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.period = self.period?.copy() as? Period
        resource.practitioner = self.practitioner?.copy() as? Reference
        resource.organization = self.organization?.copy() as? Reference
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.specialty = self.specialty?.compactMap { $0.copy() as? CodeableConcept }
        resource.location = self.location?.compactMap { $0.copy() as? Reference }
        resource.healthcareService = self.healthcareService?.compactMap { $0.copy() as? Reference }
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.availableTime = self.availableTime?.compactMap { $0.copy() as? PractitionerRoleAvailableTime }
        resource.notAvailable = self.notAvailable?.compactMap { $0.copy() as? PractitionerRoleNotAvailable }
        resource.availabilityExceptions = self.availabilityExceptions
        resource.endpoint = self.endpoint?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PractitionerRoleAvailableTime
extension ModelsR4.PractitionerRoleAvailableTime {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PractitionerRoleAvailableTime()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PractitionerRoleAvailableTime else {
            return self
        }
        resource.daysOfWeek = self.daysOfWeek
        resource.allDay = self.allDay
        resource.availableStartTime = self.availableStartTime
        resource.availableEndTime = self.availableEndTime

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - PractitionerRoleNotAvailable
extension ModelsR4.PractitionerRoleNotAvailable {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.PractitionerRoleNotAvailable(description_fhir: self.description_fhir)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.PractitionerRoleNotAvailable else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.during = self.during?.copy() as? Period

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Procedure
extension ModelsR4.Procedure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Procedure(status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Procedure else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.performed = self.performed?.copy() as? PerformedX
        resource.recorder = self.recorder?.copy() as? Reference
        resource.asserter = self.asserter?.copy() as? Reference
        resource.performer = self.performer?.compactMap { $0.copy() as? ProcedurePerformer }
        resource.location = self.location?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.bodySite = self.bodySite?.compactMap { $0.copy() as? CodeableConcept }
        resource.outcome = self.outcome?.copy() as? CodeableConcept
        resource.report = self.report?.compactMap { $0.copy() as? Reference }
        resource.complication = self.complication?.compactMap { $0.copy() as? CodeableConcept }
        resource.complicationDetail = self.complicationDetail?.compactMap { $0.copy() as? Reference }
        resource.followUp = self.followUp?.compactMap { $0.copy() as? CodeableConcept }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.focalDevice = self.focalDevice?.compactMap { $0.copy() as? ProcedureFocalDevice }
        resource.usedReference = self.usedReference?.compactMap { $0.copy() as? Reference }
        resource.usedCode = self.usedCode?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ProcedureFocalDevice
extension ModelsR4.ProcedureFocalDevice {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ProcedureFocalDevice(manipulated: self.manipulated)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ProcedureFocalDevice else {
            return self
        }
        resource.action = self.action?.copy() as? CodeableConcept
        resource.manipulated = self.manipulated.copy() as! Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ProcedurePerformer
extension ModelsR4.ProcedurePerformer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ProcedurePerformer(actor: self.actor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ProcedurePerformer else {
            return self
        }
        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ProdCharacteristic
extension ModelsR4.ProdCharacteristic {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ProdCharacteristic()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ProdCharacteristic else {
            return self
        }
        resource.height = self.height?.copy() as? Quantity
        resource.width = self.width?.copy() as? Quantity
        resource.depth = self.depth?.copy() as? Quantity
        resource.weight = self.weight?.copy() as? Quantity
        resource.nominalVolume = self.nominalVolume?.copy() as? Quantity
        resource.externalDiameter = self.externalDiameter?.copy() as? Quantity
        resource.shape = self.shape
        resource.color = self.color
        resource.imprint = self.imprint
        resource.image = self.image?.compactMap { $0.copy() as? Attachment }
        resource.scoring = self.scoring?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ProductShelfLife
extension ModelsR4.ProductShelfLife {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ProductShelfLife(period: self.period, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ProductShelfLife else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.type = self.type.copy() as! CodeableConcept
        resource.period = self.period.copy() as! Quantity
        resource.specialPrecautionsForStorage = self.specialPrecautionsForStorage?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Provenance
extension ModelsR4.Provenance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Provenance(agent: self.agent, recorded: self.recorded, target: self.target)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Provenance else {
            return self
        }
        resource.target = self.target.compactMap { $0.copy() as? Reference }
        resource.occurred = self.occurred?.copy() as? OccurredX
        resource.recorded = self.recorded
        resource.policy = self.policy
        resource.location = self.location?.copy() as? Reference
        resource.reason = self.reason?.compactMap { $0.copy() as? CodeableConcept }
        resource.activity = self.activity?.copy() as? CodeableConcept
        resource.agent = self.agent.compactMap { $0.copy() as? ProvenanceAgent }
        resource.entity = self.entity?.compactMap { $0.copy() as? ProvenanceEntity }
        resource.signature = self.signature?.compactMap { $0.copy() as? Signature }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ProvenanceAgent
extension ModelsR4.ProvenanceAgent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ProvenanceAgent(who: self.who)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ProvenanceAgent else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.role = self.role?.compactMap { $0.copy() as? CodeableConcept }
        resource.who = self.who.copy() as! Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ProvenanceEntity
extension ModelsR4.ProvenanceEntity {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ProvenanceEntity(role: self.role, what: self.what)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ProvenanceEntity else {
            return self
        }
        resource.role = self.role
        resource.what = self.what.copy() as! Reference
        resource.agent = self.agent?.compactMap { $0.copy() as? ProvenanceAgent }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Quantity
extension ModelsR4.Quantity {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Quantity()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Quantity else {
            return self
        }
        resource.value = self.value
        resource.comparator = self.comparator
        resource.unit = self.unit
        resource.system = self.system
        resource.code = self.code

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Questionnaire
extension ModelsR4.Questionnaire {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Questionnaire(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Questionnaire else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.derivedFrom = self.derivedFrom
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subjectType = self.subjectType
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.code = self.code?.compactMap { $0.copy() as? Coding }
        resource.item = self.item?.compactMap { $0.copy() as? QuestionnaireItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - QuestionnaireItem
extension ModelsR4.QuestionnaireItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.QuestionnaireItem(linkId: self.linkId, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.QuestionnaireItem else {
            return self
        }
        resource.linkId = self.linkId
        resource.definition = self.definition
        resource.code = self.code?.compactMap { $0.copy() as? Coding }
        resource.prefix = self.prefix
        resource.text = self.text
        resource.type = self.type
        resource.enableWhen = self.enableWhen?.compactMap { $0.copy() as? QuestionnaireItemEnableWhen }
        resource.enableBehavior = self.enableBehavior
        resource.required = self.required
        resource.repeats = self.repeats
        resource.readOnly = self.readOnly
        resource.maxLength = self.maxLength
        resource.answerValueSet = self.answerValueSet
        resource.answerOption = self.answerOption?.compactMap { $0.copy() as? QuestionnaireItemAnswerOption }
        resource.initial = self.initial?.compactMap { $0.copy() as? QuestionnaireItemInitial }
        resource.item = self.item?.compactMap { $0.copy() as? QuestionnaireItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - QuestionnaireItemAnswerOption
extension ModelsR4.QuestionnaireItemAnswerOption {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.QuestionnaireItemAnswerOption(value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.QuestionnaireItemAnswerOption else {
            return self
        }
        resource.value = self.value.copy() as! ValueX
        resource.initialSelected = self.initialSelected

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - QuestionnaireItemEnableWhen
extension ModelsR4.QuestionnaireItemEnableWhen {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.QuestionnaireItemEnableWhen(answer: self.answer, operator: self.`operator`, question: self.question)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.QuestionnaireItemEnableWhen else {
            return self
        }
        resource.question = self.question
        resource.`operator` = self.`operator`
        resource.answer = self.answer.copy() as! AnswerX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - QuestionnaireItemInitial
extension ModelsR4.QuestionnaireItemInitial {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.QuestionnaireItemInitial(value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.QuestionnaireItemInitial else {
            return self
        }
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - QuestionnaireResponse
extension ModelsR4.QuestionnaireResponse {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.QuestionnaireResponse(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.QuestionnaireResponse else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.questionnaire = self.questionnaire
        resource.status = self.status
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.authored = self.authored
        resource.author = self.author?.copy() as? Reference
        resource.source = self.source?.copy() as? Reference
        resource.item = self.item?.compactMap { $0.copy() as? QuestionnaireResponseItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - QuestionnaireResponseItem
extension ModelsR4.QuestionnaireResponseItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.QuestionnaireResponseItem(linkId: self.linkId)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.QuestionnaireResponseItem else {
            return self
        }
        resource.linkId = self.linkId
        resource.definition = self.definition
        resource.text = self.text
        resource.answer = self.answer?.compactMap { $0.copy() as? QuestionnaireResponseItemAnswer }
        resource.item = self.item?.compactMap { $0.copy() as? QuestionnaireResponseItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - QuestionnaireResponseItemAnswer
extension ModelsR4.QuestionnaireResponseItemAnswer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.QuestionnaireResponseItemAnswer()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.QuestionnaireResponseItemAnswer else {
            return self
        }
        resource.value = self.value?.copy() as? ValueX
        resource.item = self.item?.compactMap { $0.copy() as? QuestionnaireResponseItem }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Range
extension ModelsR4.Range {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Range()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Range else {
            return self
        }
        resource.low = self.low?.copy() as? Quantity
        resource.high = self.high?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Ratio
extension ModelsR4.Ratio {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Ratio()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Ratio else {
            return self
        }
        resource.numerator = self.numerator?.copy() as? Quantity
        resource.denominator = self.denominator?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Reference
extension ModelsR4.Reference {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Reference()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Reference else {
            return self
        }
        resource.reference = self.reference
        resource.type = self.type
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.display = self.display

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RelatedArtifact
extension ModelsR4.RelatedArtifact {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RelatedArtifact(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RelatedArtifact else {
            return self
        }
        resource.type = self.type
        resource.label = self.label
        resource.display = self.display
        resource.citation = self.citation
        resource.url = self.url
        resource.document = self.document?.copy() as? Attachment
        resource.resource = self.resource

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RelatedPerson
extension ModelsR4.RelatedPerson {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RelatedPerson(patient: self.patient)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RelatedPerson else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.patient = self.patient.copy() as! Reference
        resource.relationship = self.relationship?.compactMap { $0.copy() as? CodeableConcept }
        resource.name = self.name?.compactMap { $0.copy() as? HumanName }
        resource.telecom = self.telecom?.compactMap { $0.copy() as? ContactPoint }
        resource.gender = self.gender
        resource.birthDate = self.birthDate
        resource.address = self.address?.compactMap { $0.copy() as? Address }
        resource.photo = self.photo?.compactMap { $0.copy() as? Attachment }
        resource.period = self.period?.copy() as? Period
        resource.communication = self.communication?.compactMap { $0.copy() as? RelatedPersonCommunication }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RelatedPersonCommunication
extension ModelsR4.RelatedPersonCommunication {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RelatedPersonCommunication(language: self.language)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RelatedPersonCommunication else {
            return self
        }
        resource.language = self.language.copy() as! CodeableConcept
        resource.preferred = self.preferred

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RequestGroup
extension ModelsR4.RequestGroup {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RequestGroup(intent: self.intent, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RequestGroup else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.replaces = self.replaces?.compactMap { $0.copy() as? Reference }
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.status = self.status
        resource.intent = self.intent
        resource.priority = self.priority
        resource.code = self.code?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.authoredOn = self.authoredOn
        resource.author = self.author?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.action = self.action?.compactMap { $0.copy() as? RequestGroupAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RequestGroupAction
extension ModelsR4.RequestGroupAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RequestGroupAction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RequestGroupAction else {
            return self
        }
        resource.prefix = self.prefix
        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.textEquivalent = self.textEquivalent
        resource.priority = self.priority
        resource.code = self.code?.compactMap { $0.copy() as? CodeableConcept }
        resource.documentation = self.documentation?.compactMap { $0.copy() as? RelatedArtifact }
        resource.condition = self.condition?.compactMap { $0.copy() as? RequestGroupActionCondition }
        resource.relatedAction = self.relatedAction?.compactMap { $0.copy() as? RequestGroupActionRelatedAction }
        resource.timing = self.timing?.copy() as? TimingX
        resource.participant = self.participant?.compactMap { $0.copy() as? Reference }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.groupingBehavior = self.groupingBehavior
        resource.selectionBehavior = self.selectionBehavior
        resource.requiredBehavior = self.requiredBehavior
        resource.precheckBehavior = self.precheckBehavior
        resource.cardinalityBehavior = self.cardinalityBehavior
        resource.resource = self.resource?.copy() as? Reference
        resource.action = self.action?.compactMap { $0.copy() as? RequestGroupAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RequestGroupActionCondition
extension ModelsR4.RequestGroupActionCondition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RequestGroupActionCondition(kind: self.kind)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RequestGroupActionCondition else {
            return self
        }
        resource.kind = self.kind
        resource.expression = self.expression?.copy() as? Expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RequestGroupActionRelatedAction
extension ModelsR4.RequestGroupActionRelatedAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RequestGroupActionRelatedAction(actionId: self.actionId, relationship: self.relationship)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RequestGroupActionRelatedAction else {
            return self
        }
        resource.actionId = self.actionId
        resource.relationship = self.relationship
        resource.offset = self.offset?.copy() as? OffsetX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ResearchDefinition
extension ModelsR4.ResearchDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ResearchDefinition(population: self.population, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ResearchDefinition else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.shortTitle = self.shortTitle
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject?.copy() as? SubjectX
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.comment = self.comment
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.library = self.library
        resource.population = self.population.copy() as! Reference
        resource.exposure = self.exposure?.copy() as? Reference
        resource.exposureAlternative = self.exposureAlternative?.copy() as? Reference
        resource.outcome = self.outcome?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ResearchElementDefinition
extension ModelsR4.ResearchElementDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ResearchElementDefinition(characteristic: self.characteristic, status: self.status, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ResearchElementDefinition else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.shortTitle = self.shortTitle
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject?.copy() as? SubjectX
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.comment = self.comment
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.library = self.library
        resource.type = self.type
        resource.variableType = self.variableType
        resource.characteristic = self.characteristic.compactMap { $0.copy() as? ResearchElementDefinitionCharacteristic }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ResearchElementDefinitionCharacteristic
extension ModelsR4.ResearchElementDefinitionCharacteristic {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ResearchElementDefinitionCharacteristic(definition: self.definition)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ResearchElementDefinitionCharacteristic else {
            return self
        }
        resource.definition = self.definition.copy() as! DefinitionX
        resource.usageContext = self.usageContext?.compactMap { $0.copy() as? UsageContext }
        resource.exclude = self.exclude
        resource.unitOfMeasure = self.unitOfMeasure?.copy() as? CodeableConcept
        resource.studyEffectiveDescription = self.studyEffectiveDescription
        resource.studyEffective = self.studyEffective?.copy() as? StudyEffectiveX
        resource.studyEffectiveTimeFromStart = self.studyEffectiveTimeFromStart?.copy() as? Duration
        resource.studyEffectiveGroupMeasure = self.studyEffectiveGroupMeasure
        resource.participantEffectiveDescription = self.participantEffectiveDescription
        resource.participantEffective = self.participantEffective?.copy() as? ParticipantEffectiveX
        resource.participantEffectiveTimeFromStart = self.participantEffectiveTimeFromStart?.copy() as? Duration
        resource.participantEffectiveGroupMeasure = self.participantEffectiveGroupMeasure

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ResearchStudy
extension ModelsR4.ResearchStudy {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ResearchStudy(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ResearchStudy else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.title = self.title
        resource.`protocol` = self.`protocol`?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.primaryPurposeType = self.primaryPurposeType?.copy() as? CodeableConcept
        resource.phase = self.phase?.copy() as? CodeableConcept
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.focus = self.focus?.compactMap { $0.copy() as? CodeableConcept }
        resource.condition = self.condition?.compactMap { $0.copy() as? CodeableConcept }
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.keyword = self.keyword?.compactMap { $0.copy() as? CodeableConcept }
        resource.location = self.location?.compactMap { $0.copy() as? CodeableConcept }
        resource.description_fhir = self.description_fhir
        resource.enrollment = self.enrollment?.compactMap { $0.copy() as? Reference }
        resource.period = self.period?.copy() as? Period
        resource.sponsor = self.sponsor?.copy() as? Reference
        resource.principalInvestigator = self.principalInvestigator?.copy() as? Reference
        resource.site = self.site?.compactMap { $0.copy() as? Reference }
        resource.reasonStopped = self.reasonStopped?.copy() as? CodeableConcept
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.arm = self.arm?.compactMap { $0.copy() as? ResearchStudyArm }
        resource.objective = self.objective?.compactMap { $0.copy() as? ResearchStudyObjective }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ResearchStudyArm
extension ModelsR4.ResearchStudyArm {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ResearchStudyArm(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ResearchStudyArm else {
            return self
        }
        resource.name = self.name
        resource.type = self.type?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ResearchStudyObjective
extension ModelsR4.ResearchStudyObjective {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ResearchStudyObjective()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ResearchStudyObjective else {
            return self
        }
        resource.name = self.name
        resource.type = self.type?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ResearchSubject
extension ModelsR4.ResearchSubject {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ResearchSubject(individual: self.individual, status: self.status, study: self.study)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ResearchSubject else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.period = self.period?.copy() as? Period
        resource.study = self.study.copy() as! Reference
        resource.individual = self.individual.copy() as! Reference
        resource.assignedArm = self.assignedArm
        resource.actualArm = self.actualArm
        resource.consent = self.consent?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Resource
extension ModelsR4.Resource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Resource()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Resource else {
            return self
        }
        resource.id = self.id
        resource.meta = self.meta?.copy() as? Meta
        resource.implicitRules = self.implicitRules
        resource.language = self.language

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RiskAssessment
extension ModelsR4.RiskAssessment {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RiskAssessment(status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RiskAssessment else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.basedOn = self.basedOn?.copy() as? Reference
        resource.parent = self.parent?.copy() as? Reference
        resource.status = self.status
        resource.method = self.method?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrence = self.occurrence?.copy() as? OccurrenceX
        resource.condition = self.condition?.copy() as? Reference
        resource.performer = self.performer?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.basis = self.basis?.compactMap { $0.copy() as? Reference }
        resource.prediction = self.prediction?.compactMap { $0.copy() as? RiskAssessmentPrediction }
        resource.mitigation = self.mitigation
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RiskAssessmentPrediction
extension ModelsR4.RiskAssessmentPrediction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RiskAssessmentPrediction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RiskAssessmentPrediction else {
            return self
        }
        resource.outcome = self.outcome?.copy() as? CodeableConcept
        resource.probability = self.probability?.copy() as? ProbabilityX
        resource.qualitativeRisk = self.qualitativeRisk?.copy() as? CodeableConcept
        resource.relativeRisk = self.relativeRisk
        resource.when = self.when?.copy() as? WhenX
        resource.rationale = self.rationale

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RiskEvidenceSynthesis
extension ModelsR4.RiskEvidenceSynthesis {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RiskEvidenceSynthesis(outcome: self.outcome, population: self.population, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RiskEvidenceSynthesis else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic?.compactMap { $0.copy() as? CodeableConcept }
        resource.author = self.author?.compactMap { $0.copy() as? ContactDetail }
        resource.editor = self.editor?.compactMap { $0.copy() as? ContactDetail }
        resource.reviewer = self.reviewer?.compactMap { $0.copy() as? ContactDetail }
        resource.endorser = self.endorser?.compactMap { $0.copy() as? ContactDetail }
        resource.relatedArtifact = self.relatedArtifact?.compactMap { $0.copy() as? RelatedArtifact }
        resource.synthesisType = self.synthesisType?.copy() as? CodeableConcept
        resource.studyType = self.studyType?.copy() as? CodeableConcept
        resource.population = self.population.copy() as! Reference
        resource.exposure = self.exposure?.copy() as? Reference
        resource.outcome = self.outcome.copy() as! Reference
        resource.sampleSize = self.sampleSize?.copy() as? RiskEvidenceSynthesisSampleSize
        resource.riskEstimate = self.riskEstimate?.copy() as? RiskEvidenceSynthesisRiskEstimate
        resource.certainty = self.certainty?.compactMap { $0.copy() as? RiskEvidenceSynthesisCertainty }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RiskEvidenceSynthesisCertainty
extension ModelsR4.RiskEvidenceSynthesisCertainty {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RiskEvidenceSynthesisCertainty()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RiskEvidenceSynthesisCertainty else {
            return self
        }
        resource.rating = self.rating?.compactMap { $0.copy() as? CodeableConcept }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.certaintySubcomponent = self.certaintySubcomponent?.compactMap { $0.copy() as? RiskEvidenceSynthesisCertaintyCertaintySubcomponent }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RiskEvidenceSynthesisCertaintyCertaintySubcomponent
extension ModelsR4.RiskEvidenceSynthesisCertaintyCertaintySubcomponent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RiskEvidenceSynthesisCertaintyCertaintySubcomponent()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RiskEvidenceSynthesisCertaintyCertaintySubcomponent else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.rating = self.rating?.compactMap { $0.copy() as? CodeableConcept }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RiskEvidenceSynthesisRiskEstimate
extension ModelsR4.RiskEvidenceSynthesisRiskEstimate {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RiskEvidenceSynthesisRiskEstimate()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RiskEvidenceSynthesisRiskEstimate else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.type = self.type?.copy() as? CodeableConcept
        resource.value = self.value
        resource.unitOfMeasure = self.unitOfMeasure?.copy() as? CodeableConcept
        resource.denominatorCount = self.denominatorCount
        resource.numeratorCount = self.numeratorCount
        resource.precisionEstimate = self.precisionEstimate?.compactMap { $0.copy() as? RiskEvidenceSynthesisRiskEstimatePrecisionEstimate }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RiskEvidenceSynthesisRiskEstimatePrecisionEstimate
extension ModelsR4.RiskEvidenceSynthesisRiskEstimatePrecisionEstimate {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RiskEvidenceSynthesisRiskEstimatePrecisionEstimate()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RiskEvidenceSynthesisRiskEstimatePrecisionEstimate else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.level = self.level
        resource.from = self.from
        resource.to = self.to

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - RiskEvidenceSynthesisSampleSize
extension ModelsR4.RiskEvidenceSynthesisSampleSize {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.RiskEvidenceSynthesisSampleSize()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.RiskEvidenceSynthesisSampleSize else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.numberOfStudies = self.numberOfStudies
        resource.numberOfParticipants = self.numberOfParticipants

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SampledData
extension ModelsR4.SampledData {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SampledData(dimensions: self.dimensions, origin: self.origin, period: self.period)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SampledData else {
            return self
        }
        resource.origin = self.origin.copy() as! Quantity
        resource.period = self.period
        resource.factor = self.factor
        resource.lowerLimit = self.lowerLimit
        resource.upperLimit = self.upperLimit
        resource.dimensions = self.dimensions
        resource.data = self.data

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Schedule
extension ModelsR4.Schedule {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Schedule(actor: self.actor)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Schedule else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.active = self.active
        resource.serviceCategory = self.serviceCategory?.compactMap { $0.copy() as? CodeableConcept }
        resource.serviceType = self.serviceType?.compactMap { $0.copy() as? CodeableConcept }
        resource.specialty = self.specialty?.compactMap { $0.copy() as? CodeableConcept }
        resource.actor = self.actor.compactMap { $0.copy() as? Reference }
        resource.planningHorizon = self.planningHorizon?.copy() as? Period
        resource.comment = self.comment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SearchParameter
extension ModelsR4.SearchParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SearchParameter(base: self.base, code: self.code, description_fhir: self.description_fhir, name: self.name, status: self.status, type: self.type, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SearchParameter else {
            return self
        }
        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.derivedFrom = self.derivedFrom
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.code = self.code
        resource.base = self.base
        resource.type = self.type
        resource.expression = self.expression
        resource.xpath = self.xpath
        resource.xpathUsage = self.xpathUsage
        resource.target = self.target
        resource.multipleOr = self.multipleOr
        resource.multipleAnd = self.multipleAnd
        resource.comparator = self.comparator
        resource.modifier = self.modifier
        resource.chain = self.chain
        resource.component = self.component?.compactMap { $0.copy() as? SearchParameterComponent }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SearchParameterComponent
extension ModelsR4.SearchParameterComponent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SearchParameterComponent(definition: self.definition, expression: self.expression)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SearchParameterComponent else {
            return self
        }
        resource.definition = self.definition
        resource.expression = self.expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ServiceRequest
extension ModelsR4.ServiceRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ServiceRequest(intent: self.intent, status: self.status, subject: self.subject)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ServiceRequest else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.replaces = self.replaces?.compactMap { $0.copy() as? Reference }
        resource.requisition = self.requisition?.copy() as? Identifier
        resource.status = self.status
        resource.intent = self.intent
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.priority = self.priority
        resource.doNotPerform = self.doNotPerform
        resource.code = self.code?.copy() as? CodeableConcept
        resource.orderDetail = self.orderDetail?.compactMap { $0.copy() as? CodeableConcept }
        resource.quantity = self.quantity?.copy() as? QuantityX
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrence = self.occurrence?.copy() as? OccurrenceX
        resource.asNeeded = self.asNeeded?.copy() as? AsNeededX
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.performerType = self.performerType?.copy() as? CodeableConcept
        resource.performer = self.performer?.compactMap { $0.copy() as? Reference }
        resource.locationCode = self.locationCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.locationReference = self.locationReference?.compactMap { $0.copy() as? Reference }
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.insurance = self.insurance?.compactMap { $0.copy() as? Reference }
        resource.supportingInfo = self.supportingInfo?.compactMap { $0.copy() as? Reference }
        resource.specimen = self.specimen?.compactMap { $0.copy() as? Reference }
        resource.bodySite = self.bodySite?.compactMap { $0.copy() as? CodeableConcept }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.patientInstruction = self.patientInstruction
        resource.relevantHistory = self.relevantHistory?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Signature
extension ModelsR4.Signature {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Signature(type: self.type, when: self.when, who: self.who)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Signature else {
            return self
        }
        resource.type = self.type.compactMap { $0.copy() as? Coding }
        resource.when = self.when
        resource.who = self.who.copy() as! Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference
        resource.targetFormat = self.targetFormat
        resource.sigFormat = self.sigFormat
        resource.data = self.data

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Slot
extension ModelsR4.Slot {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Slot(end: self.end, schedule: self.schedule, start: self.start, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Slot else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.serviceCategory = self.serviceCategory?.compactMap { $0.copy() as? CodeableConcept }
        resource.serviceType = self.serviceType?.compactMap { $0.copy() as? CodeableConcept }
        resource.specialty = self.specialty?.compactMap { $0.copy() as? CodeableConcept }
        resource.appointmentType = self.appointmentType?.copy() as? CodeableConcept
        resource.schedule = self.schedule.copy() as! Reference
        resource.status = self.status
        resource.start = self.start
        resource.end = self.end
        resource.overbooked = self.overbooked
        resource.comment = self.comment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Specimen
extension ModelsR4.Specimen {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Specimen()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Specimen else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.accessionIdentifier = self.accessionIdentifier?.copy() as? Identifier
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.receivedTime = self.receivedTime
        resource.parent = self.parent?.compactMap { $0.copy() as? Reference }
        resource.request = self.request?.compactMap { $0.copy() as? Reference }
        resource.collection = self.collection?.copy() as? SpecimenCollection
        resource.processing = self.processing?.compactMap { $0.copy() as? SpecimenProcessing }
        resource.container = self.container?.compactMap { $0.copy() as? SpecimenContainer }
        resource.condition = self.condition?.compactMap { $0.copy() as? CodeableConcept }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SpecimenCollection
extension ModelsR4.SpecimenCollection {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SpecimenCollection()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SpecimenCollection else {
            return self
        }
        resource.collector = self.collector?.copy() as? Reference
        resource.collected = self.collected?.copy() as? CollectedX
        resource.duration = self.duration?.copy() as? Duration
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.method = self.method?.copy() as? CodeableConcept
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.fastingStatus = self.fastingStatus?.copy() as? FastingStatusX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SpecimenContainer
extension ModelsR4.SpecimenContainer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SpecimenContainer()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SpecimenContainer else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.description_fhir = self.description_fhir
        resource.type = self.type?.copy() as? CodeableConcept
        resource.capacity = self.capacity?.copy() as? Quantity
        resource.specimenQuantity = self.specimenQuantity?.copy() as? Quantity
        resource.additive = self.additive?.copy() as? AdditiveX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SpecimenDefinition
extension ModelsR4.SpecimenDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SpecimenDefinition()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SpecimenDefinition else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.typeCollected = self.typeCollected?.copy() as? CodeableConcept
        resource.patientPreparation = self.patientPreparation?.compactMap { $0.copy() as? CodeableConcept }
        resource.timeAspect = self.timeAspect
        resource.collection = self.collection?.compactMap { $0.copy() as? CodeableConcept }
        resource.typeTested = self.typeTested?.compactMap { $0.copy() as? SpecimenDefinitionTypeTested }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SpecimenDefinitionTypeTested
extension ModelsR4.SpecimenDefinitionTypeTested {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SpecimenDefinitionTypeTested(preference: self.preference)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SpecimenDefinitionTypeTested else {
            return self
        }
        resource.isDerived = self.isDerived
        resource.type = self.type?.copy() as? CodeableConcept
        resource.preference = self.preference
        resource.container = self.container?.copy() as? SpecimenDefinitionTypeTestedContainer
        resource.requirement = self.requirement
        resource.retentionTime = self.retentionTime?.copy() as? Duration
        resource.rejectionCriterion = self.rejectionCriterion?.compactMap { $0.copy() as? CodeableConcept }
        resource.handling = self.handling?.compactMap { $0.copy() as? SpecimenDefinitionTypeTestedHandling }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SpecimenDefinitionTypeTestedContainer
extension ModelsR4.SpecimenDefinitionTypeTestedContainer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SpecimenDefinitionTypeTestedContainer()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SpecimenDefinitionTypeTestedContainer else {
            return self
        }
        resource.material = self.material?.copy() as? CodeableConcept
        resource.type = self.type?.copy() as? CodeableConcept
        resource.cap = self.cap?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.capacity = self.capacity?.copy() as? Quantity
        resource.minimumVolume = self.minimumVolume?.copy() as? MinimumVolumeX
        resource.additive = self.additive?.compactMap { $0.copy() as? SpecimenDefinitionTypeTestedContainerAdditive }
        resource.preparation = self.preparation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SpecimenDefinitionTypeTestedContainerAdditive
extension ModelsR4.SpecimenDefinitionTypeTestedContainerAdditive {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SpecimenDefinitionTypeTestedContainerAdditive(additive: self.additive)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SpecimenDefinitionTypeTestedContainerAdditive else {
            return self
        }
        resource.additive = self.additive.copy() as! AdditiveX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SpecimenDefinitionTypeTestedHandling
extension ModelsR4.SpecimenDefinitionTypeTestedHandling {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SpecimenDefinitionTypeTestedHandling()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SpecimenDefinitionTypeTestedHandling else {
            return self
        }
        resource.temperatureQualifier = self.temperatureQualifier?.copy() as? CodeableConcept
        resource.temperatureRange = self.temperatureRange?.copy() as? Range
        resource.maxDuration = self.maxDuration?.copy() as? Duration
        resource.instruction = self.instruction

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SpecimenProcessing
extension ModelsR4.SpecimenProcessing {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SpecimenProcessing()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SpecimenProcessing else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.procedure = self.procedure?.copy() as? CodeableConcept
        resource.additive = self.additive?.compactMap { $0.copy() as? Reference }
        resource.time = self.time?.copy() as? TimeX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureDefinition
extension ModelsR4.StructureDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureDefinition(abstract: self.abstract, kind: self.kind, name: self.name, status: self.status, type: self.type, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureDefinition else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.keyword = self.keyword?.compactMap { $0.copy() as? Coding }
        resource.fhirVersion = self.fhirVersion
        resource.mapping = self.mapping?.compactMap { $0.copy() as? StructureDefinitionMapping }
        resource.kind = self.kind
        resource.abstract = self.abstract
        resource.context = self.context?.compactMap { $0.copy() as? StructureDefinitionContext }
        resource.contextInvariant = self.contextInvariant
        resource.type = self.type
        resource.baseDefinition = self.baseDefinition
        resource.derivation = self.derivation
        resource.snapshot = self.snapshot?.copy() as? StructureDefinitionSnapshot
        resource.differential = self.differential?.copy() as? StructureDefinitionDifferential

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureDefinitionContext
extension ModelsR4.StructureDefinitionContext {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureDefinitionContext(expression: self.expression, type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureDefinitionContext else {
            return self
        }
        resource.type = self.type
        resource.expression = self.expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureDefinitionDifferential
extension ModelsR4.StructureDefinitionDifferential {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureDefinitionDifferential(element: self.element)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureDefinitionDifferential else {
            return self
        }
        resource.element = self.element.compactMap { $0.copy() as? ElementDefinition }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureDefinitionMapping
extension ModelsR4.StructureDefinitionMapping {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureDefinitionMapping(identity: self.identity)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureDefinitionMapping else {
            return self
        }
        resource.identity = self.identity
        resource.uri = self.uri
        resource.name = self.name
        resource.comment = self.comment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureDefinitionSnapshot
extension ModelsR4.StructureDefinitionSnapshot {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureDefinitionSnapshot(element: self.element)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureDefinitionSnapshot else {
            return self
        }
        resource.element = self.element.compactMap { $0.copy() as? ElementDefinition }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMap
extension ModelsR4.StructureMap {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMap(group: self.group, name: self.name, status: self.status, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMap else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.structure = self.structure?.compactMap { $0.copy() as? StructureMapStructure }
        resource.`import` = self.`import`
        resource.group = self.group.compactMap { $0.copy() as? StructureMapGroup }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMapGroup
extension ModelsR4.StructureMapGroup {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMapGroup(input: self.input, name: self.name, rule: self.rule, typeMode: self.typeMode)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMapGroup else {
            return self
        }
        resource.name = self.name
        resource.extends = self.extends
        resource.typeMode = self.typeMode
        resource.documentation = self.documentation
        resource.input = self.input.compactMap { $0.copy() as? StructureMapGroupInput }
        resource.rule = self.rule.compactMap { $0.copy() as? StructureMapGroupRule }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMapGroupInput
extension ModelsR4.StructureMapGroupInput {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMapGroupInput(mode: self.mode, name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMapGroupInput else {
            return self
        }
        resource.name = self.name
        resource.type = self.type
        resource.mode = self.mode
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMapGroupRule
extension ModelsR4.StructureMapGroupRule {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMapGroupRule(name: self.name, source: self.source)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMapGroupRule else {
            return self
        }
        resource.name = self.name
        resource.source = self.source.compactMap { $0.copy() as? StructureMapGroupRuleSource }
        resource.target = self.target?.compactMap { $0.copy() as? StructureMapGroupRuleTarget }
        resource.rule = self.rule?.compactMap { $0.copy() as? StructureMapGroupRule }
        resource.dependent = self.dependent?.compactMap { $0.copy() as? StructureMapGroupRuleDependent }
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMapGroupRuleDependent
extension ModelsR4.StructureMapGroupRuleDependent {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMapGroupRuleDependent(name: self.name, variable: self.variable)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMapGroupRuleDependent else {
            return self
        }
        resource.name = self.name
        resource.variable = self.variable

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMapGroupRuleSource
extension ModelsR4.StructureMapGroupRuleSource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMapGroupRuleSource(context: self.context)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMapGroupRuleSource else {
            return self
        }
        resource.context = self.context
        resource.min = self.min
        resource.max = self.max
        resource.type = self.type
        resource.defaultValue = self.defaultValue?.copy() as? DefaultValueX
        resource.element = self.element
        resource.listMode = self.listMode
        resource.variable = self.variable
        resource.condition = self.condition
        resource.check = self.check
        resource.logMessage = self.logMessage

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMapGroupRuleTarget
extension ModelsR4.StructureMapGroupRuleTarget {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMapGroupRuleTarget()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMapGroupRuleTarget else {
            return self
        }
        resource.context = self.context
        resource.contextType = self.contextType
        resource.element = self.element
        resource.variable = self.variable
        resource.listMode = self.listMode
        resource.listRuleId = self.listRuleId
        resource.transform = self.transform
        resource.parameter = self.parameter?.compactMap { $0.copy() as? StructureMapGroupRuleTargetParameter }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMapGroupRuleTargetParameter
extension ModelsR4.StructureMapGroupRuleTargetParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMapGroupRuleTargetParameter(value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMapGroupRuleTargetParameter else {
            return self
        }
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - StructureMapStructure
extension ModelsR4.StructureMapStructure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.StructureMapStructure(mode: self.mode, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.StructureMapStructure else {
            return self
        }
        resource.url = self.url
        resource.mode = self.mode
        resource.alias = self.alias
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Subscription
extension ModelsR4.Subscription {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Subscription(channel: self.channel, criteria: self.criteria, reason: self.reason, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Subscription else {
            return self
        }
        resource.status = self.status
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactPoint }
        resource.end = self.end
        resource.reason = self.reason
        resource.criteria = self.criteria
        resource.error = self.error
        resource.channel = self.channel.copy() as! SubscriptionChannel

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubscriptionChannel
extension ModelsR4.SubscriptionChannel {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubscriptionChannel(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubscriptionChannel else {
            return self
        }
        resource.type = self.type
        resource.endpoint = self.endpoint
        resource.payload = self.payload
        resource.header = self.header

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Substance
extension ModelsR4.Substance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Substance(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Substance else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.category = self.category?.compactMap { $0.copy() as? CodeableConcept }
        resource.code = self.code.copy() as! CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.instance = self.instance?.compactMap { $0.copy() as? SubstanceInstance }
        resource.ingredient = self.ingredient?.compactMap { $0.copy() as? SubstanceIngredient }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceAmount
extension ModelsR4.SubstanceAmount {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceAmount()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceAmount else {
            return self
        }
        resource.amount = self.amount?.copy() as? AmountX
        resource.amountType = self.amountType?.copy() as? CodeableConcept
        resource.amountText = self.amountText
        resource.referenceRange = self.referenceRange?.copy() as? SubstanceAmountReferenceRange

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceAmountReferenceRange
extension ModelsR4.SubstanceAmountReferenceRange {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceAmountReferenceRange()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceAmountReferenceRange else {
            return self
        }
        resource.lowLimit = self.lowLimit?.copy() as? Quantity
        resource.highLimit = self.highLimit?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceIngredient
extension ModelsR4.SubstanceIngredient {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceIngredient(substance: self.substance)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceIngredient else {
            return self
        }
        resource.quantity = self.quantity?.copy() as? Ratio
        resource.substance = self.substance.copy() as! SubstanceX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceInstance
extension ModelsR4.SubstanceInstance {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceInstance()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceInstance else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.expiry = self.expiry
        resource.quantity = self.quantity?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceNucleicAcid
extension ModelsR4.SubstanceNucleicAcid {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceNucleicAcid()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceNucleicAcid else {
            return self
        }
        resource.sequenceType = self.sequenceType?.copy() as? CodeableConcept
        resource.numberOfSubunits = self.numberOfSubunits
        resource.areaOfHybridisation = self.areaOfHybridisation
        resource.oligoNucleotideType = self.oligoNucleotideType?.copy() as? CodeableConcept
        resource.subunit = self.subunit?.compactMap { $0.copy() as? SubstanceNucleicAcidSubunit }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceNucleicAcidSubunit
extension ModelsR4.SubstanceNucleicAcidSubunit {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceNucleicAcidSubunit()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceNucleicAcidSubunit else {
            return self
        }
        resource.subunit = self.subunit
        resource.sequence = self.sequence
        resource.length = self.length
        resource.sequenceAttachment = self.sequenceAttachment?.copy() as? Attachment
        resource.fivePrime = self.fivePrime?.copy() as? CodeableConcept
        resource.threePrime = self.threePrime?.copy() as? CodeableConcept
        resource.linkage = self.linkage?.compactMap { $0.copy() as? SubstanceNucleicAcidSubunitLinkage }
        resource.sugar = self.sugar?.compactMap { $0.copy() as? SubstanceNucleicAcidSubunitSugar }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceNucleicAcidSubunitLinkage
extension ModelsR4.SubstanceNucleicAcidSubunitLinkage {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceNucleicAcidSubunitLinkage()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceNucleicAcidSubunitLinkage else {
            return self
        }
        resource.connectivity = self.connectivity
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name
        resource.residueSite = self.residueSite

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceNucleicAcidSubunitSugar
extension ModelsR4.SubstanceNucleicAcidSubunitSugar {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceNucleicAcidSubunitSugar()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceNucleicAcidSubunitSugar else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name
        resource.residueSite = self.residueSite

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstancePolymer
extension ModelsR4.SubstancePolymer {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstancePolymer()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstancePolymer else {
            return self
        }
        resource.`class` = self.`class`?.copy() as? CodeableConcept
        resource.geometry = self.geometry?.copy() as? CodeableConcept
        resource.copolymerConnectivity = self.copolymerConnectivity?.compactMap { $0.copy() as? CodeableConcept }
        resource.modification = self.modification
        resource.monomerSet = self.monomerSet?.compactMap { $0.copy() as? SubstancePolymerMonomerSet }
        resource.`repeat` = self.`repeat`?.compactMap { $0.copy() as? SubstancePolymerRepeat }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstancePolymerMonomerSet
extension ModelsR4.SubstancePolymerMonomerSet {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstancePolymerMonomerSet()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstancePolymerMonomerSet else {
            return self
        }
        resource.ratioType = self.ratioType?.copy() as? CodeableConcept
        resource.startingMaterial = self.startingMaterial?.compactMap { $0.copy() as? SubstancePolymerMonomerSetStartingMaterial }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstancePolymerMonomerSetStartingMaterial
extension ModelsR4.SubstancePolymerMonomerSetStartingMaterial {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstancePolymerMonomerSetStartingMaterial()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstancePolymerMonomerSetStartingMaterial else {
            return self
        }
        resource.material = self.material?.copy() as? CodeableConcept
        resource.type = self.type?.copy() as? CodeableConcept
        resource.isDefining = self.isDefining
        resource.amount = self.amount?.copy() as? SubstanceAmount

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstancePolymerRepeat
extension ModelsR4.SubstancePolymerRepeat {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstancePolymerRepeat()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstancePolymerRepeat else {
            return self
        }
        resource.numberOfUnits = self.numberOfUnits
        resource.averageMolecularFormula = self.averageMolecularFormula
        resource.repeatUnitAmountType = self.repeatUnitAmountType?.copy() as? CodeableConcept
        resource.repeatUnit = self.repeatUnit?.compactMap { $0.copy() as? SubstancePolymerRepeatRepeatUnit }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstancePolymerRepeatRepeatUnit
extension ModelsR4.SubstancePolymerRepeatRepeatUnit {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstancePolymerRepeatRepeatUnit()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstancePolymerRepeatRepeatUnit else {
            return self
        }
        resource.orientationOfPolymerisation = self.orientationOfPolymerisation?.copy() as? CodeableConcept
        resource.repeatUnit = self.repeatUnit
        resource.amount = self.amount?.copy() as? SubstanceAmount
        resource.degreeOfPolymerisation = self.degreeOfPolymerisation?.compactMap { $0.copy() as? SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation }
        resource.structuralRepresentation = self.structuralRepresentation?.compactMap { $0.copy() as? SubstancePolymerRepeatRepeatUnitStructuralRepresentation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation
extension ModelsR4.SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation else {
            return self
        }
        resource.degree = self.degree?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? SubstanceAmount

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstancePolymerRepeatRepeatUnitStructuralRepresentation
extension ModelsR4.SubstancePolymerRepeatRepeatUnitStructuralRepresentation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstancePolymerRepeatRepeatUnitStructuralRepresentation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstancePolymerRepeatRepeatUnitStructuralRepresentation else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.representation = self.representation
        resource.attachment = self.attachment?.copy() as? Attachment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceProtein
extension ModelsR4.SubstanceProtein {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceProtein()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceProtein else {
            return self
        }
        resource.sequenceType = self.sequenceType?.copy() as? CodeableConcept
        resource.numberOfSubunits = self.numberOfSubunits
        resource.disulfideLinkage = self.disulfideLinkage
        resource.subunit = self.subunit?.compactMap { $0.copy() as? SubstanceProteinSubunit }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceProteinSubunit
extension ModelsR4.SubstanceProteinSubunit {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceProteinSubunit()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceProteinSubunit else {
            return self
        }
        resource.subunit = self.subunit
        resource.sequence = self.sequence
        resource.length = self.length
        resource.sequenceAttachment = self.sequenceAttachment?.copy() as? Attachment
        resource.nTerminalModificationId = self.nTerminalModificationId?.copy() as? Identifier
        resource.nTerminalModification = self.nTerminalModification
        resource.cTerminalModificationId = self.cTerminalModificationId?.copy() as? Identifier
        resource.cTerminalModification = self.cTerminalModification

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceReferenceInformation
extension ModelsR4.SubstanceReferenceInformation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceReferenceInformation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceReferenceInformation else {
            return self
        }
        resource.comment = self.comment
        resource.gene = self.gene?.compactMap { $0.copy() as? SubstanceReferenceInformationGene }
        resource.geneElement = self.geneElement?.compactMap { $0.copy() as? SubstanceReferenceInformationGeneElement }
        resource.classification = self.classification?.compactMap { $0.copy() as? SubstanceReferenceInformationClassification }
        resource.target = self.target?.compactMap { $0.copy() as? SubstanceReferenceInformationTarget }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceReferenceInformationClassification
extension ModelsR4.SubstanceReferenceInformationClassification {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceReferenceInformationClassification()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceReferenceInformationClassification else {
            return self
        }
        resource.domain = self.domain?.copy() as? CodeableConcept
        resource.classification = self.classification?.copy() as? CodeableConcept
        resource.subtype = self.subtype?.compactMap { $0.copy() as? CodeableConcept }
        resource.source = self.source?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceReferenceInformationGene
extension ModelsR4.SubstanceReferenceInformationGene {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceReferenceInformationGene()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceReferenceInformationGene else {
            return self
        }
        resource.geneSequenceOrigin = self.geneSequenceOrigin?.copy() as? CodeableConcept
        resource.gene = self.gene?.copy() as? CodeableConcept
        resource.source = self.source?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceReferenceInformationGeneElement
extension ModelsR4.SubstanceReferenceInformationGeneElement {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceReferenceInformationGeneElement()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceReferenceInformationGeneElement else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.element = self.element?.copy() as? Identifier
        resource.source = self.source?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceReferenceInformationTarget
extension ModelsR4.SubstanceReferenceInformationTarget {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceReferenceInformationTarget()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceReferenceInformationTarget else {
            return self
        }
        resource.target = self.target?.copy() as? Identifier
        resource.type = self.type?.copy() as? CodeableConcept
        resource.interaction = self.interaction?.copy() as? CodeableConcept
        resource.organism = self.organism?.copy() as? CodeableConcept
        resource.organismType = self.organismType?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? AmountX
        resource.amountType = self.amountType?.copy() as? CodeableConcept
        resource.source = self.source?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSourceMaterial
extension ModelsR4.SubstanceSourceMaterial {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSourceMaterial()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSourceMaterial else {
            return self
        }
        resource.sourceMaterialClass = self.sourceMaterialClass?.copy() as? CodeableConcept
        resource.sourceMaterialType = self.sourceMaterialType?.copy() as? CodeableConcept
        resource.sourceMaterialState = self.sourceMaterialState?.copy() as? CodeableConcept
        resource.organismId = self.organismId?.copy() as? Identifier
        resource.organismName = self.organismName
        resource.parentSubstanceId = self.parentSubstanceId?.compactMap { $0.copy() as? Identifier }
        resource.parentSubstanceName = self.parentSubstanceName
        resource.countryOfOrigin = self.countryOfOrigin?.compactMap { $0.copy() as? CodeableConcept }
        resource.geographicalLocation = self.geographicalLocation
        resource.developmentStage = self.developmentStage?.copy() as? CodeableConcept
        resource.fractionDescription = self.fractionDescription?.compactMap { $0.copy() as? SubstanceSourceMaterialFractionDescription }
        resource.organism = self.organism?.copy() as? SubstanceSourceMaterialOrganism
        resource.partDescription = self.partDescription?.compactMap { $0.copy() as? SubstanceSourceMaterialPartDescription }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSourceMaterialFractionDescription
extension ModelsR4.SubstanceSourceMaterialFractionDescription {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSourceMaterialFractionDescription()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSourceMaterialFractionDescription else {
            return self
        }
        resource.fraction = self.fraction
        resource.materialType = self.materialType?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSourceMaterialOrganism
extension ModelsR4.SubstanceSourceMaterialOrganism {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSourceMaterialOrganism()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSourceMaterialOrganism else {
            return self
        }
        resource.family = self.family?.copy() as? CodeableConcept
        resource.genus = self.genus?.copy() as? CodeableConcept
        resource.species = self.species?.copy() as? CodeableConcept
        resource.intraspecificType = self.intraspecificType?.copy() as? CodeableConcept
        resource.intraspecificDescription = self.intraspecificDescription
        resource.author = self.author?.compactMap { $0.copy() as? SubstanceSourceMaterialOrganismAuthor }
        resource.hybrid = self.hybrid?.copy() as? SubstanceSourceMaterialOrganismHybrid
        resource.organismGeneral = self.organismGeneral?.copy() as? SubstanceSourceMaterialOrganismOrganismGeneral

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSourceMaterialOrganismAuthor
extension ModelsR4.SubstanceSourceMaterialOrganismAuthor {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSourceMaterialOrganismAuthor()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSourceMaterialOrganismAuthor else {
            return self
        }
        resource.authorType = self.authorType?.copy() as? CodeableConcept
        resource.authorDescription = self.authorDescription

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSourceMaterialOrganismHybrid
extension ModelsR4.SubstanceSourceMaterialOrganismHybrid {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSourceMaterialOrganismHybrid()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSourceMaterialOrganismHybrid else {
            return self
        }
        resource.maternalOrganismId = self.maternalOrganismId
        resource.maternalOrganismName = self.maternalOrganismName
        resource.paternalOrganismId = self.paternalOrganismId
        resource.paternalOrganismName = self.paternalOrganismName
        resource.hybridType = self.hybridType?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSourceMaterialOrganismOrganismGeneral
extension ModelsR4.SubstanceSourceMaterialOrganismOrganismGeneral {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSourceMaterialOrganismOrganismGeneral()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSourceMaterialOrganismOrganismGeneral else {
            return self
        }
        resource.kingdom = self.kingdom?.copy() as? CodeableConcept
        resource.phylum = self.phylum?.copy() as? CodeableConcept
        resource.`class` = self.`class`?.copy() as? CodeableConcept
        resource.order = self.order?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSourceMaterialPartDescription
extension ModelsR4.SubstanceSourceMaterialPartDescription {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSourceMaterialPartDescription()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSourceMaterialPartDescription else {
            return self
        }
        resource.part = self.part?.copy() as? CodeableConcept
        resource.partLocation = self.partLocation?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecification
extension ModelsR4.SubstanceSpecification {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecification()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecification else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.type = self.type?.copy() as? CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept
        resource.domain = self.domain?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.source = self.source?.compactMap { $0.copy() as? Reference }
        resource.comment = self.comment
        resource.moiety = self.moiety?.compactMap { $0.copy() as? SubstanceSpecificationMoiety }
        resource.property = self.property?.compactMap { $0.copy() as? SubstanceSpecificationProperty }
        resource.referenceInformation = self.referenceInformation?.copy() as? Reference
        resource.structure = self.structure?.copy() as? SubstanceSpecificationStructure
        resource.code = self.code?.compactMap { $0.copy() as? SubstanceSpecificationFHIRString }
        resource.name = self.name?.compactMap { $0.copy() as? SubstanceSpecificationName }
        resource.molecularWeight = self.molecularWeight?.compactMap { $0.copy() as? SubstanceSpecificationStructureIsotopeMolecularWeight }
        resource.relationship = self.relationship?.compactMap { $0.copy() as? SubstanceSpecificationRelationship }
        resource.nucleicAcid = self.nucleicAcid?.copy() as? Reference
        resource.polymer = self.polymer?.copy() as? Reference
        resource.protein = self.protein?.copy() as? Reference
        resource.sourceMaterial = self.sourceMaterial?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationFHIRString
extension ModelsR4.SubstanceSpecificationFHIRString {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationFHIRString()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationFHIRString else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept
        resource.statusDate = self.statusDate
        resource.comment = self.comment
        resource.source = self.source?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationMoiety
extension ModelsR4.SubstanceSpecificationMoiety {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationMoiety()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationMoiety else {
            return self
        }
        resource.role = self.role?.copy() as? CodeableConcept
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name
        resource.stereochemistry = self.stereochemistry?.copy() as? CodeableConcept
        resource.opticalActivity = self.opticalActivity?.copy() as? CodeableConcept
        resource.molecularFormula = self.molecularFormula
        resource.amount = self.amount?.copy() as? AmountX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationName
extension ModelsR4.SubstanceSpecificationName {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationName(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationName else {
            return self
        }
        resource.name = self.name
        resource.type = self.type?.copy() as? CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept
        resource.preferred = self.preferred
        resource.language = self.language?.compactMap { $0.copy() as? CodeableConcept }
        resource.domain = self.domain?.compactMap { $0.copy() as? CodeableConcept }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.synonym = self.synonym?.compactMap { $0.copy() as? SubstanceSpecificationName }
        resource.translation = self.translation?.compactMap { $0.copy() as? SubstanceSpecificationName }
        resource.official = self.official?.compactMap { $0.copy() as? SubstanceSpecificationNameOfficial }
        resource.source = self.source?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationNameOfficial
extension ModelsR4.SubstanceSpecificationNameOfficial {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationNameOfficial()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationNameOfficial else {
            return self
        }
        resource.authority = self.authority?.copy() as? CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept
        resource.date = self.date

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationProperty
extension ModelsR4.SubstanceSpecificationProperty {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationProperty()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationProperty else {
            return self
        }
        resource.category = self.category?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.parameters = self.parameters
        resource.definingSubstance = self.definingSubstance?.copy() as? DefiningSubstanceX
        resource.amount = self.amount?.copy() as? AmountX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationRelationship
extension ModelsR4.SubstanceSpecificationRelationship {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationRelationship()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationRelationship else {
            return self
        }
        resource.substance = self.substance?.copy() as? SubstanceX
        resource.relationship = self.relationship?.copy() as? CodeableConcept
        resource.isDefining = self.isDefining
        resource.amount = self.amount?.copy() as? AmountX
        resource.amountRatioLowLimit = self.amountRatioLowLimit?.copy() as? Ratio
        resource.amountType = self.amountType?.copy() as? CodeableConcept
        resource.source = self.source?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationStructure
extension ModelsR4.SubstanceSpecificationStructure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationStructure()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationStructure else {
            return self
        }
        resource.stereochemistry = self.stereochemistry?.copy() as? CodeableConcept
        resource.opticalActivity = self.opticalActivity?.copy() as? CodeableConcept
        resource.molecularFormula = self.molecularFormula
        resource.molecularFormulaByMoiety = self.molecularFormulaByMoiety
        resource.isotope = self.isotope?.compactMap { $0.copy() as? SubstanceSpecificationStructureIsotope }
        resource.molecularWeight = self.molecularWeight?.copy() as? SubstanceSpecificationStructureIsotopeMolecularWeight
        resource.source = self.source?.compactMap { $0.copy() as? Reference }
        resource.representation = self.representation?.compactMap { $0.copy() as? SubstanceSpecificationStructureRepresentation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationStructureIsotope
extension ModelsR4.SubstanceSpecificationStructureIsotope {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationStructureIsotope()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationStructureIsotope else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name?.copy() as? CodeableConcept
        resource.substitution = self.substitution?.copy() as? CodeableConcept
        resource.halfLife = self.halfLife?.copy() as? Quantity
        resource.molecularWeight = self.molecularWeight?.copy() as? SubstanceSpecificationStructureIsotopeMolecularWeight

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationStructureIsotopeMolecularWeight
extension ModelsR4.SubstanceSpecificationStructureIsotopeMolecularWeight {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationStructureIsotopeMolecularWeight()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationStructureIsotopeMolecularWeight else {
            return self
        }
        resource.method = self.method?.copy() as? CodeableConcept
        resource.type = self.type?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Quantity

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SubstanceSpecificationStructureRepresentation
extension ModelsR4.SubstanceSpecificationStructureRepresentation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SubstanceSpecificationStructureRepresentation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SubstanceSpecificationStructureRepresentation else {
            return self
        }
        resource.type = self.type?.copy() as? CodeableConcept
        resource.representation = self.representation
        resource.attachment = self.attachment?.copy() as? Attachment

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SupplyDelivery
extension ModelsR4.SupplyDelivery {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SupplyDelivery()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SupplyDelivery else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.patient = self.patient?.copy() as? Reference
        resource.type = self.type?.copy() as? CodeableConcept
        resource.suppliedItem = self.suppliedItem?.copy() as? SupplyDeliverySuppliedItem
        resource.occurrence = self.occurrence?.copy() as? OccurrenceX
        resource.supplier = self.supplier?.copy() as? Reference
        resource.destination = self.destination?.copy() as? Reference
        resource.receiver = self.receiver?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SupplyDeliverySuppliedItem
extension ModelsR4.SupplyDeliverySuppliedItem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SupplyDeliverySuppliedItem()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SupplyDeliverySuppliedItem else {
            return self
        }
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.item = self.item?.copy() as? ItemX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SupplyRequest
extension ModelsR4.SupplyRequest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SupplyRequest(item: self.item, quantity: self.quantity)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SupplyRequest else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.category = self.category?.copy() as? CodeableConcept
        resource.priority = self.priority
        resource.item = self.item.copy() as! ItemX
        resource.quantity = self.quantity.copy() as! Quantity
        resource.parameter = self.parameter?.compactMap { $0.copy() as? SupplyRequestParameter }
        resource.occurrence = self.occurrence?.copy() as? OccurrenceX
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.supplier = self.supplier?.compactMap { $0.copy() as? Reference }
        resource.reasonCode = self.reasonCode?.compactMap { $0.copy() as? CodeableConcept }
        resource.reasonReference = self.reasonReference?.compactMap { $0.copy() as? Reference }
        resource.deliverFrom = self.deliverFrom?.copy() as? Reference
        resource.deliverTo = self.deliverTo?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - SupplyRequestParameter
extension ModelsR4.SupplyRequestParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.SupplyRequestParameter()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.SupplyRequestParameter else {
            return self
        }
        resource.code = self.code?.copy() as? CodeableConcept
        resource.value = self.value?.copy() as? ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Task
extension ModelsR4.Task {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Task(intent: self.intent, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Task else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn?.compactMap { $0.copy() as? Reference }
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.partOf = self.partOf?.compactMap { $0.copy() as? Reference }
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.businessStatus = self.businessStatus?.copy() as? CodeableConcept
        resource.intent = self.intent
        resource.priority = self.priority
        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.focus = self.focus?.copy() as? Reference
        resource.`for` = self.`for`?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.executionPeriod = self.executionPeriod?.copy() as? Period
        resource.authoredOn = self.authoredOn
        resource.lastModified = self.lastModified
        resource.requester = self.requester?.copy() as? Reference
        resource.performerType = self.performerType?.compactMap { $0.copy() as? CodeableConcept }
        resource.owner = self.owner?.copy() as? Reference
        resource.location = self.location?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.copy() as? CodeableConcept
        resource.reasonReference = self.reasonReference?.copy() as? Reference
        resource.insurance = self.insurance?.compactMap { $0.copy() as? Reference }
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }
        resource.relevantHistory = self.relevantHistory?.compactMap { $0.copy() as? Reference }
        resource.restriction = self.restriction?.copy() as? TaskRestriction
        resource.input = self.input?.compactMap { $0.copy() as? TaskInput }
        resource.output = self.output?.compactMap { $0.copy() as? TaskOutput }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TaskInput
extension ModelsR4.TaskInput {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TaskInput(type: self.type, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TaskInput else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TaskOutput
extension ModelsR4.TaskOutput {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TaskOutput(type: self.type, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TaskOutput else {
            return self
        }
        resource.type = self.type.copy() as! CodeableConcept
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TaskRestriction
extension ModelsR4.TaskRestriction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TaskRestriction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TaskRestriction else {
            return self
        }
        resource.repetitions = self.repetitions
        resource.period = self.period?.copy() as? Period
        resource.recipient = self.recipient?.compactMap { $0.copy() as? Reference }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilities
extension ModelsR4.TerminologyCapabilities {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilities(date: self.date, kind: self.kind, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilities else {
            return self
        }
        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.kind = self.kind
        resource.software = self.software?.copy() as? TerminologyCapabilitiesSoftware
        resource.implementation = self.implementation?.copy() as? TerminologyCapabilitiesImplementation
        resource.lockedDate = self.lockedDate
        resource.codeSystem = self.codeSystem?.compactMap { $0.copy() as? TerminologyCapabilitiesCodeSystem }
        resource.expansion = self.expansion?.copy() as? TerminologyCapabilitiesExpansion
        resource.codeSearch = self.codeSearch
        resource.validateCode = self.validateCode?.copy() as? TerminologyCapabilitiesValidateCode
        resource.translation = self.translation?.copy() as? TerminologyCapabilitiesTranslation
        resource.closure = self.closure?.copy() as? TerminologyCapabilitiesClosure

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesClosure
extension ModelsR4.TerminologyCapabilitiesClosure {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesClosure()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesClosure else {
            return self
        }
        resource.translation = self.translation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesCodeSystem
extension ModelsR4.TerminologyCapabilitiesCodeSystem {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesCodeSystem()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesCodeSystem else {
            return self
        }
        resource.uri = self.uri
        resource.version = self.version?.compactMap { $0.copy() as? TerminologyCapabilitiesCodeSystemVersion }
        resource.subsumption = self.subsumption

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesCodeSystemVersion
extension ModelsR4.TerminologyCapabilitiesCodeSystemVersion {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesCodeSystemVersion()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesCodeSystemVersion else {
            return self
        }
        resource.code = self.code
        resource.isDefault = self.isDefault
        resource.compositional = self.compositional
        resource.language = self.language
        resource.filter = self.filter?.compactMap { $0.copy() as? TerminologyCapabilitiesCodeSystemVersionFilter }
        resource.property = self.property

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesCodeSystemVersionFilter
extension ModelsR4.TerminologyCapabilitiesCodeSystemVersionFilter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesCodeSystemVersionFilter(code: self.code, op: self.op)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesCodeSystemVersionFilter else {
            return self
        }
        resource.code = self.code
        resource.op = self.op

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesExpansion
extension ModelsR4.TerminologyCapabilitiesExpansion {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesExpansion()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesExpansion else {
            return self
        }
        resource.hierarchical = self.hierarchical
        resource.paging = self.paging
        resource.incomplete = self.incomplete
        resource.parameter = self.parameter?.compactMap { $0.copy() as? TerminologyCapabilitiesExpansionParameter }
        resource.textFilter = self.textFilter

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesExpansionParameter
extension ModelsR4.TerminologyCapabilitiesExpansionParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesExpansionParameter(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesExpansionParameter else {
            return self
        }
        resource.name = self.name
        resource.documentation = self.documentation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesImplementation
extension ModelsR4.TerminologyCapabilitiesImplementation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesImplementation(description_fhir: self.description_fhir)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesImplementation else {
            return self
        }
        resource.description_fhir = self.description_fhir
        resource.url = self.url

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesSoftware
extension ModelsR4.TerminologyCapabilitiesSoftware {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesSoftware(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesSoftware else {
            return self
        }
        resource.name = self.name
        resource.version = self.version

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesTranslation
extension ModelsR4.TerminologyCapabilitiesTranslation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesTranslation(needsMap: self.needsMap)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesTranslation else {
            return self
        }
        resource.needsMap = self.needsMap

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TerminologyCapabilitiesValidateCode
extension ModelsR4.TerminologyCapabilitiesValidateCode {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TerminologyCapabilitiesValidateCode(translations: self.translations)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TerminologyCapabilitiesValidateCode else {
            return self
        }
        resource.translations = self.translations

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReport
extension ModelsR4.TestReport {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReport(result: self.result, status: self.status, testScript: self.testScript)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReport else {
            return self
        }
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name
        resource.status = self.status
        resource.testScript = self.testScript.copy() as! Reference
        resource.result = self.result
        resource.score = self.score
        resource.tester = self.tester
        resource.issued = self.issued
        resource.participant = self.participant?.compactMap { $0.copy() as? TestReportParticipant }
        resource.setup = self.setup?.copy() as? TestReportSetup
        resource.test = self.test?.compactMap { $0.copy() as? TestReportTest }
        resource.teardown = self.teardown?.copy() as? TestReportTeardown

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportParticipant
extension ModelsR4.TestReportParticipant {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportParticipant(type: self.type, uri: self.uri)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportParticipant else {
            return self
        }
        resource.type = self.type
        resource.uri = self.uri
        resource.display = self.display

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportSetup
extension ModelsR4.TestReportSetup {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportSetup(action: self.action)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportSetup else {
            return self
        }
        resource.action = self.action.compactMap { $0.copy() as? TestReportSetupAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportSetupAction
extension ModelsR4.TestReportSetupAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportSetupAction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportSetupAction else {
            return self
        }
        resource.operation = self.operation?.copy() as? TestReportSetupActionOperation
        resource.assert = self.assert?.copy() as? TestReportSetupActionAssert

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportSetupActionAssert
extension ModelsR4.TestReportSetupActionAssert {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportSetupActionAssert(result: self.result)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportSetupActionAssert else {
            return self
        }
        resource.result = self.result
        resource.message = self.message
        resource.detail = self.detail

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportSetupActionOperation
extension ModelsR4.TestReportSetupActionOperation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportSetupActionOperation(result: self.result)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportSetupActionOperation else {
            return self
        }
        resource.result = self.result
        resource.message = self.message
        resource.detail = self.detail

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportTeardown
extension ModelsR4.TestReportTeardown {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportTeardown(action: self.action)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportTeardown else {
            return self
        }
        resource.action = self.action.compactMap { $0.copy() as? TestReportTeardownAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportTeardownAction
extension ModelsR4.TestReportTeardownAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportTeardownAction(operation: self.operation)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportTeardownAction else {
            return self
        }
        resource.operation = self.operation.copy() as! TestReportSetupActionOperation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportTest
extension ModelsR4.TestReportTest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportTest(action: self.action)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportTest else {
            return self
        }
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.action = self.action.compactMap { $0.copy() as? TestReportTestAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestReportTestAction
extension ModelsR4.TestReportTestAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestReportTestAction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestReportTestAction else {
            return self
        }
        resource.operation = self.operation?.copy() as? TestReportSetupActionOperation
        resource.assert = self.assert?.copy() as? TestReportSetupActionAssert

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScript
extension ModelsR4.TestScript {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScript(name: self.name, status: self.status, url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScript else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.origin = self.origin?.compactMap { $0.copy() as? TestScriptOrigin }
        resource.destination = self.destination?.compactMap { $0.copy() as? TestScriptDestination }
        resource.metadata = self.metadata?.copy() as? TestScriptMetadata
        resource.fixture = self.fixture?.compactMap { $0.copy() as? TestScriptFixture }
        resource.profile = self.profile?.compactMap { $0.copy() as? Reference }
        resource.variable = self.variable?.compactMap { $0.copy() as? TestScriptVariable }
        resource.setup = self.setup?.copy() as? TestScriptSetup
        resource.test = self.test?.compactMap { $0.copy() as? TestScriptTest }
        resource.teardown = self.teardown?.copy() as? TestScriptTeardown

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptDestination
extension ModelsR4.TestScriptDestination {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptDestination(index: self.index, profile: self.profile)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptDestination else {
            return self
        }
        resource.index = self.index
        resource.profile = self.profile.copy() as! Coding

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptFixture
extension ModelsR4.TestScriptFixture {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptFixture(autocreate: self.autocreate, autodelete: self.autodelete)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptFixture else {
            return self
        }
        resource.autocreate = self.autocreate
        resource.autodelete = self.autodelete
        resource.resource = self.resource?.copy() as? Reference

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptMetadata
extension ModelsR4.TestScriptMetadata {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptMetadata(capability: self.capability)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptMetadata else {
            return self
        }
        resource.link = self.link?.compactMap { $0.copy() as? TestScriptMetadataLink }
        resource.capability = self.capability.compactMap { $0.copy() as? TestScriptMetadataCapability }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptMetadataCapability
extension ModelsR4.TestScriptMetadataCapability {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptMetadataCapability(capabilities: self.capabilities, required: self.required, validated: self.validated)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptMetadataCapability else {
            return self
        }
        resource.required = self.required
        resource.validated = self.validated
        resource.description_fhir = self.description_fhir
        resource.origin = self.origin
        resource.destination = self.destination
        resource.link = self.link
        resource.capabilities = self.capabilities

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptMetadataLink
extension ModelsR4.TestScriptMetadataLink {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptMetadataLink(url: self.url)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptMetadataLink else {
            return self
        }
        resource.url = self.url
        resource.description_fhir = self.description_fhir

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptOrigin
extension ModelsR4.TestScriptOrigin {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptOrigin(index: self.index, profile: self.profile)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptOrigin else {
            return self
        }
        resource.index = self.index
        resource.profile = self.profile.copy() as! Coding

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptSetup
extension ModelsR4.TestScriptSetup {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptSetup(action: self.action)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptSetup else {
            return self
        }
        resource.action = self.action.compactMap { $0.copy() as? TestScriptSetupAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptSetupAction
extension ModelsR4.TestScriptSetupAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptSetupAction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptSetupAction else {
            return self
        }
        resource.operation = self.operation?.copy() as? TestScriptSetupActionOperation
        resource.assert = self.assert?.copy() as? TestScriptSetupActionAssert

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptSetupActionAssert
extension ModelsR4.TestScriptSetupActionAssert {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptSetupActionAssert(warningOnly: self.warningOnly)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptSetupActionAssert else {
            return self
        }
        resource.label = self.label
        resource.description_fhir = self.description_fhir
        resource.direction = self.direction
        resource.compareToSourceId = self.compareToSourceId
        resource.compareToSourceExpression = self.compareToSourceExpression
        resource.compareToSourcePath = self.compareToSourcePath
        resource.contentType = self.contentType
        resource.expression = self.expression
        resource.headerField = self.headerField
        resource.minimumId = self.minimumId
        resource.navigationLinks = self.navigationLinks
        resource.`operator` = self.`operator`
        resource.path = self.path
        resource.requestMethod = self.requestMethod
        resource.requestURL = self.requestURL
        resource.resource = self.resource
        resource.response = self.response
        resource.responseCode = self.responseCode
        resource.sourceId = self.sourceId
        resource.validateProfileId = self.validateProfileId
        resource.value = self.value
        resource.warningOnly = self.warningOnly

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptSetupActionOperation
extension ModelsR4.TestScriptSetupActionOperation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptSetupActionOperation(encodeRequestUrl: self.encodeRequestUrl)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptSetupActionOperation else {
            return self
        }
        resource.type = self.type?.copy() as? Coding
        resource.resource = self.resource
        resource.label = self.label
        resource.description_fhir = self.description_fhir
        resource.accept = self.accept
        resource.contentType = self.contentType
        resource.destination = self.destination
        resource.encodeRequestUrl = self.encodeRequestUrl
        resource.method = self.method
        resource.origin = self.origin
        resource.params = self.params
        resource.requestHeader = self.requestHeader?.compactMap { $0.copy() as? TestScriptSetupActionOperationRequestHeader }
        resource.requestId = self.requestId
        resource.responseId = self.responseId
        resource.sourceId = self.sourceId
        resource.targetId = self.targetId
        resource.url = self.url

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptSetupActionOperationRequestHeader
extension ModelsR4.TestScriptSetupActionOperationRequestHeader {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptSetupActionOperationRequestHeader(field: self.field, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptSetupActionOperationRequestHeader else {
            return self
        }
        resource.field = self.field
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptTeardown
extension ModelsR4.TestScriptTeardown {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptTeardown(action: self.action)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptTeardown else {
            return self
        }
        resource.action = self.action.compactMap { $0.copy() as? TestScriptTeardownAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptTeardownAction
extension ModelsR4.TestScriptTeardownAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptTeardownAction(operation: self.operation)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptTeardownAction else {
            return self
        }
        resource.operation = self.operation.copy() as! TestScriptSetupActionOperation

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptTest
extension ModelsR4.TestScriptTest {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptTest(action: self.action)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptTest else {
            return self
        }
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.action = self.action.compactMap { $0.copy() as? TestScriptTestAction }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptTestAction
extension ModelsR4.TestScriptTestAction {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptTestAction()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptTestAction else {
            return self
        }
        resource.operation = self.operation?.copy() as? TestScriptSetupActionOperation
        resource.assert = self.assert?.copy() as? TestScriptSetupActionAssert

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TestScriptVariable
extension ModelsR4.TestScriptVariable {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TestScriptVariable(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TestScriptVariable else {
            return self
        }
        resource.name = self.name
        resource.defaultValue = self.defaultValue
        resource.description_fhir = self.description_fhir
        resource.expression = self.expression
        resource.headerField = self.headerField
        resource.hint = self.hint
        resource.path = self.path
        resource.sourceId = self.sourceId

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - Timing
extension ModelsR4.Timing {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.Timing()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.Timing else {
            return self
        }
        resource.event = self.event
        resource.`repeat` = self.`repeat`?.copy() as? TimingRepeat
        resource.code = self.code?.copy() as? CodeableConcept

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TimingRepeat
extension ModelsR4.TimingRepeat {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TimingRepeat()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TimingRepeat else {
            return self
        }
        resource.bounds = self.bounds?.copy() as? BoundsX
        resource.count = self.count
        resource.countMax = self.countMax
        resource.duration = self.duration
        resource.durationMax = self.durationMax
        resource.durationUnit = self.durationUnit
        resource.frequency = self.frequency
        resource.frequencyMax = self.frequencyMax
        resource.period = self.period
        resource.periodMax = self.periodMax
        resource.periodUnit = self.periodUnit
        resource.dayOfWeek = self.dayOfWeek
        resource.timeOfDay = self.timeOfDay
        resource.when = self.when
        resource.offset = self.offset

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - TriggerDefinition
extension ModelsR4.TriggerDefinition {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.TriggerDefinition(type: self.type)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.TriggerDefinition else {
            return self
        }
        resource.type = self.type
        resource.name = self.name
        resource.timing = self.timing?.copy() as? TimingX
        resource.data = self.data?.compactMap { $0.copy() as? DataRequirement }
        resource.condition = self.condition?.copy() as? Expression

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - UsageContext
extension ModelsR4.UsageContext {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.UsageContext(code: self.code, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.UsageContext else {
            return self
        }
        resource.code = self.code.copy() as! Coding
        resource.value = self.value.copy() as! ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSet
extension ModelsR4.ValueSet {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSet(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSet else {
            return self
        }
        resource.url = self.url
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact?.compactMap { $0.copy() as? ContactDetail }
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext?.compactMap { $0.copy() as? UsageContext }
        resource.jurisdiction = self.jurisdiction?.compactMap { $0.copy() as? CodeableConcept }
        resource.immutable = self.immutable
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.compose = self.compose?.copy() as? ValueSetCompose
        resource.expansion = self.expansion?.copy() as? ValueSetExpansion

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSetCompose
extension ModelsR4.ValueSetCompose {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSetCompose(include: self.include)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSetCompose else {
            return self
        }
        resource.lockedDate = self.lockedDate
        resource.inactive = self.inactive
        resource.include = self.include.compactMap { $0.copy() as? ValueSetComposeInclude }
        resource.exclude = self.exclude?.compactMap { $0.copy() as? ValueSetComposeInclude }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSetComposeInclude
extension ModelsR4.ValueSetComposeInclude {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSetComposeInclude()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSetComposeInclude else {
            return self
        }
        resource.system = self.system
        resource.version = self.version
        resource.concept = self.concept?.compactMap { $0.copy() as? ValueSetComposeIncludeConcept }
        resource.filter = self.filter?.compactMap { $0.copy() as? ValueSetComposeIncludeFilter }
        resource.valueSet = self.valueSet

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSetComposeIncludeConcept
extension ModelsR4.ValueSetComposeIncludeConcept {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSetComposeIncludeConcept(code: self.code)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSetComposeIncludeConcept else {
            return self
        }
        resource.code = self.code
        resource.display = self.display
        resource.designation = self.designation?.compactMap { $0.copy() as? ValueSetComposeIncludeConceptDesignation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSetComposeIncludeConceptDesignation
extension ModelsR4.ValueSetComposeIncludeConceptDesignation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSetComposeIncludeConceptDesignation(value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSetComposeIncludeConceptDesignation else {
            return self
        }
        resource.language = self.language
        resource.use = self.use?.copy() as? Coding
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSetComposeIncludeFilter
extension ModelsR4.ValueSetComposeIncludeFilter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSetComposeIncludeFilter(op: self.op, property: self.property, value: self.value)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSetComposeIncludeFilter else {
            return self
        }
        resource.property = self.property
        resource.op = self.op
        resource.value = self.value

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSetExpansion
extension ModelsR4.ValueSetExpansion {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSetExpansion(timestamp: self.timestamp)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSetExpansion else {
            return self
        }
        resource.identifier = self.identifier
        resource.timestamp = self.timestamp
        resource.total = self.total
        resource.offset = self.offset
        resource.parameter = self.parameter?.compactMap { $0.copy() as? ValueSetExpansionParameter }
        resource.contains = self.contains?.compactMap { $0.copy() as? ValueSetExpansionContains }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSetExpansionContains
extension ModelsR4.ValueSetExpansionContains {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSetExpansionContains()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSetExpansionContains else {
            return self
        }
        resource.system = self.system
        resource.abstract = self.abstract
        resource.inactive = self.inactive
        resource.version = self.version
        resource.code = self.code
        resource.display = self.display
        resource.designation = self.designation?.compactMap { $0.copy() as? ValueSetComposeIncludeConceptDesignation }
        resource.contains = self.contains?.compactMap { $0.copy() as? ValueSetExpansionContains }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - ValueSetExpansionParameter
extension ModelsR4.ValueSetExpansionParameter {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.ValueSetExpansionParameter(name: self.name)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.ValueSetExpansionParameter else {
            return self
        }
        resource.name = self.name
        resource.value = self.value?.copy() as? ValueX

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - VerificationResult
extension ModelsR4.VerificationResult {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.VerificationResult(status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.VerificationResult else {
            return self
        }
        resource.target = self.target?.compactMap { $0.copy() as? Reference }
        resource.targetLocation = self.targetLocation
        resource.need = self.need?.copy() as? CodeableConcept
        resource.status = self.status
        resource.statusDate = self.statusDate
        resource.validationType = self.validationType?.copy() as? CodeableConcept
        resource.validationProcess = self.validationProcess?.compactMap { $0.copy() as? CodeableConcept }
        resource.frequency = self.frequency?.copy() as? Timing
        resource.lastPerformed = self.lastPerformed
        resource.nextScheduled = self.nextScheduled
        resource.failureAction = self.failureAction?.copy() as? CodeableConcept
        resource.primarySource = self.primarySource?.compactMap { $0.copy() as? VerificationResultPrimarySource }
        resource.attestation = self.attestation?.copy() as? VerificationResultAttestation
        resource.validator = self.validator?.compactMap { $0.copy() as? VerificationResultValidator }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - VerificationResultAttestation
extension ModelsR4.VerificationResultAttestation {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.VerificationResultAttestation()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.VerificationResultAttestation else {
            return self
        }
        resource.who = self.who?.copy() as? Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference
        resource.communicationMethod = self.communicationMethod?.copy() as? CodeableConcept
        resource.date = self.date
        resource.sourceIdentityCertificate = self.sourceIdentityCertificate
        resource.proxyIdentityCertificate = self.proxyIdentityCertificate
        resource.proxySignature = self.proxySignature?.copy() as? Signature
        resource.sourceSignature = self.sourceSignature?.copy() as? Signature

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - VerificationResultPrimarySource
extension ModelsR4.VerificationResultPrimarySource {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.VerificationResultPrimarySource()
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.VerificationResultPrimarySource else {
            return self
        }
        resource.who = self.who?.copy() as? Reference
        resource.type = self.type?.compactMap { $0.copy() as? CodeableConcept }
        resource.communicationMethod = self.communicationMethod?.compactMap { $0.copy() as? CodeableConcept }
        resource.validationStatus = self.validationStatus?.copy() as? CodeableConcept
        resource.validationDate = self.validationDate
        resource.canPushUpdates = self.canPushUpdates?.copy() as? CodeableConcept
        resource.pushTypeAvailable = self.pushTypeAvailable?.compactMap { $0.copy() as? CodeableConcept }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - VerificationResultValidator
extension ModelsR4.VerificationResultValidator {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.VerificationResultValidator(organization: self.organization)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.VerificationResultValidator else {
            return self
        }
        resource.organization = self.organization.copy() as! Reference
        resource.identityCertificate = self.identityCertificate
        resource.attestationSignature = self.attestationSignature?.copy() as? Signature

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - VisionPrescription
extension ModelsR4.VisionPrescription {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.VisionPrescription(created: self.created, dateWritten: self.dateWritten, lensSpecification: self.lensSpecification, patient: self.patient, prescriber: self.prescriber, status: self.status)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.VisionPrescription else {
            return self
        }
        resource.identifier = self.identifier?.compactMap { $0.copy() as? Identifier }
        resource.status = self.status
        resource.created = self.created
        resource.patient = self.patient.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.dateWritten = self.dateWritten
        resource.prescriber = self.prescriber.copy() as! Reference
        resource.lensSpecification = self.lensSpecification.compactMap { $0.copy() as? VisionPrescriptionLensSpecification }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - VisionPrescriptionLensSpecification
extension ModelsR4.VisionPrescriptionLensSpecification {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.VisionPrescriptionLensSpecification(eye: self.eye, product: self.product)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.VisionPrescriptionLensSpecification else {
            return self
        }
        resource.product = self.product.copy() as! CodeableConcept
        resource.eye = self.eye
        resource.sphere = self.sphere
        resource.cylinder = self.cylinder
        resource.axis = self.axis
        resource.prism = self.prism?.compactMap { $0.copy() as? VisionPrescriptionLensSpecificationPrism }
        resource.add = self.add
        resource.power = self.power
        resource.backCurve = self.backCurve
        resource.diameter = self.diameter
        resource.duration = self.duration?.copy() as? Quantity
        resource.color = self.color
        resource.brand = self.brand
        resource.note = self.note?.compactMap { $0.copy() as? Annotation }

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}

// MARK: - VisionPrescriptionLensSpecificationPrism
extension ModelsR4.VisionPrescriptionLensSpecificationPrism {

    override func copied(on subClassInstance: Any? = nil) -> Any {
        let resourceToCopy = subClassInstance ?? ModelsR4.VisionPrescriptionLensSpecificationPrism(amount: self.amount, base: self.base)
        guard let resource = super.copied(on: resourceToCopy) as? ModelsR4.VisionPrescriptionLensSpecificationPrism else {
            return self
        }
        resource.amount = self.amount
        resource.base = self.base

        return resource
    }

    override public func copy(with zone: NSZone? = nil) -> Any {
        return self.copied()
    }
}
