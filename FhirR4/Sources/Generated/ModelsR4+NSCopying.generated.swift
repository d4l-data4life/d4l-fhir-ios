// Generated using Sourcery 1.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable file_length


// MARK: - Account NSCopying

extension ModelsR4.Account {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Account else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.name = self.name
        resource.subject = self.subject
        resource.servicePeriod = self.servicePeriod?.copy() as? Period
        resource.coverage = self.coverage
        resource.owner = self.owner?.copy() as? Reference
        resource.description_fhir = self.description_fhir
        resource.guarantor = self.guarantor
        resource.partOf = self.partOf?.copy() as? Reference

        return resource
    }
}

// MARK: - AccountCoverage NSCopying

extension ModelsR4.AccountCoverage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AccountCoverage else {
            return self
        }

        resource.coverage = self.coverage.copy() as! Reference
        resource.priority = self.priority

        return resource
    }
}

// MARK: - AccountGuarantor NSCopying

extension ModelsR4.AccountGuarantor {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AccountGuarantor else {
            return self
        }

        resource.party = self.party.copy() as! Reference
        resource.onHold = self.onHold
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - ActivityDefinition NSCopying

extension ModelsR4.ActivityDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ActivityDefinition else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.library = self.library
        resource.kind = self.kind
        resource.profile = self.profile
        resource.code = self.code?.copy() as? CodeableConcept
        resource.intent = self.intent
        resource.priority = self.priority
        resource.doNotPerform = self.doNotPerform
        resource.timing = self.timing
        resource.location = self.location?.copy() as? Reference
        resource.participant = self.participant
        resource.product = self.product
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.dosage = self.dosage
        resource.bodySite = self.bodySite
        resource.specimenRequirement = self.specimenRequirement
        resource.observationRequirement = self.observationRequirement
        resource.observationResultRequirement = self.observationResultRequirement
        resource.transform = self.transform
        resource.dynamicValue = self.dynamicValue

        return resource
    }
}

// MARK: - ActivityDefinitionDynamicValue NSCopying

extension ModelsR4.ActivityDefinitionDynamicValue {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ActivityDefinitionDynamicValue else {
            return self
        }

        resource.path = self.path
        resource.expression = self.expression.copy() as! Expression

        return resource
    }
}

// MARK: - ActivityDefinitionParticipant NSCopying

extension ModelsR4.ActivityDefinitionParticipant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ActivityDefinitionParticipant else {
            return self
        }

        resource.type = self.type
        resource.role = self.role?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - Address NSCopying

extension ModelsR4.Address {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Address else {
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
}

// MARK: - AdverseEvent NSCopying

extension ModelsR4.AdverseEvent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AdverseEvent else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.actuality = self.actuality
        resource.category = self.category
        resource.event = self.event?.copy() as? CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.date = self.date
        resource.detected = self.detected
        resource.recordedDate = self.recordedDate
        resource.resultingCondition = self.resultingCondition
        resource.location = self.location?.copy() as? Reference
        resource.seriousness = self.seriousness?.copy() as? CodeableConcept
        resource.severity = self.severity?.copy() as? CodeableConcept
        resource.outcome = self.outcome?.copy() as? CodeableConcept
        resource.recorder = self.recorder?.copy() as? Reference
        resource.contributor = self.contributor
        resource.suspectEntity = self.suspectEntity
        resource.subjectMedicalHistory = self.subjectMedicalHistory
        resource.referenceDocument = self.referenceDocument
        resource.study = self.study

        return resource
    }
}

// MARK: - AdverseEventSuspectEntity NSCopying

extension ModelsR4.AdverseEventSuspectEntity {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AdverseEventSuspectEntity else {
            return self
        }

        resource.instance = self.instance.copy() as! Reference
        resource.causality = self.causality

        return resource
    }
}

// MARK: - AdverseEventSuspectEntityCausality NSCopying

extension ModelsR4.AdverseEventSuspectEntityCausality {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AdverseEventSuspectEntityCausality else {
            return self
        }

        resource.assessment = self.assessment?.copy() as? CodeableConcept
        resource.productRelatedness = self.productRelatedness
        resource.author = self.author?.copy() as? Reference
        resource.method = self.method?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - Age NSCopying

extension ModelsR4.Age {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Age else {
            return self
        }


        return resource
    }
}

// MARK: - AllergyIntolerance NSCopying

extension ModelsR4.AllergyIntolerance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AllergyIntolerance else {
            return self
        }

        resource.identifier = self.identifier
        resource.clinicalStatus = self.clinicalStatus?.copy() as? CodeableConcept
        resource.verificationStatus = self.verificationStatus?.copy() as? CodeableConcept
        resource.type = self.type
        resource.category = self.category
        resource.criticality = self.criticality
        resource.code = self.code?.copy() as? CodeableConcept
        resource.patient = self.patient.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.onset = self.onset
        resource.recordedDate = self.recordedDate
        resource.recorder = self.recorder?.copy() as? Reference
        resource.asserter = self.asserter?.copy() as? Reference
        resource.lastOccurrence = self.lastOccurrence
        resource.note = self.note
        resource.reaction = self.reaction

        return resource
    }
}

// MARK: - AllergyIntoleranceReaction NSCopying

extension ModelsR4.AllergyIntoleranceReaction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AllergyIntoleranceReaction else {
            return self
        }

        resource.substance = self.substance?.copy() as? CodeableConcept
        resource.manifestation = self.manifestation
        resource.description_fhir = self.description_fhir
        resource.onset = self.onset
        resource.severity = self.severity
        resource.exposureRoute = self.exposureRoute?.copy() as? CodeableConcept
        resource.note = self.note

        return resource
    }
}

// MARK: - Annotation NSCopying

extension ModelsR4.Annotation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Annotation else {
            return self
        }

        resource.author = self.author
        resource.time = self.time
        resource.text = self.text

        return resource
    }
}

// MARK: - Appointment NSCopying

extension ModelsR4.Appointment {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Appointment else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.cancelationReason = self.cancelationReason?.copy() as? CodeableConcept
        resource.serviceCategory = self.serviceCategory
        resource.serviceType = self.serviceType
        resource.specialty = self.specialty
        resource.appointmentType = self.appointmentType?.copy() as? CodeableConcept
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.priority = self.priority
        resource.description_fhir = self.description_fhir
        resource.supportingInformation = self.supportingInformation
        resource.start = self.start
        resource.end = self.end
        resource.minutesDuration = self.minutesDuration
        resource.slot = self.slot
        resource.created = self.created
        resource.comment = self.comment
        resource.patientInstruction = self.patientInstruction
        resource.basedOn = self.basedOn
        resource.participant = self.participant
        resource.requestedPeriod = self.requestedPeriod

        return resource
    }
}

// MARK: - AppointmentParticipant NSCopying

extension ModelsR4.AppointmentParticipant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AppointmentParticipant else {
            return self
        }

        resource.type = self.type
        resource.actor = self.actor?.copy() as? Reference
        resource.required = self.required
        resource.status = self.status
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - AppointmentResponse NSCopying

extension ModelsR4.AppointmentResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AppointmentResponse else {
            return self
        }

        resource.identifier = self.identifier
        resource.appointment = self.appointment.copy() as! Reference
        resource.start = self.start
        resource.end = self.end
        resource.participantType = self.participantType
        resource.actor = self.actor?.copy() as? Reference
        resource.participantStatus = self.participantStatus
        resource.comment = self.comment

        return resource
    }
}

// MARK: - Attachment NSCopying

extension ModelsR4.Attachment {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Attachment else {
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
}

// MARK: - AuditEvent NSCopying

extension ModelsR4.AuditEvent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AuditEvent else {
            return self
        }

        resource.type = self.type.copy() as! Coding
        resource.subtype = self.subtype
        resource.action = self.action
        resource.period = self.period?.copy() as? Period
        resource.recorded = self.recorded
        resource.outcome = self.outcome
        resource.outcomeDesc = self.outcomeDesc
        resource.purposeOfEvent = self.purposeOfEvent
        resource.agent = self.agent
        resource.source = self.source.copy() as! AuditEventSource
        resource.entity = self.entity

        return resource
    }
}

// MARK: - AuditEventAgent NSCopying

extension ModelsR4.AuditEventAgent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AuditEventAgent else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.role = self.role
        resource.who = self.who?.copy() as? Reference
        resource.altId = self.altId
        resource.name = self.name
        resource.requestor = self.requestor
        resource.location = self.location?.copy() as? Reference
        resource.policy = self.policy
        resource.media = self.media?.copy() as? Coding
        resource.network = self.network?.copy() as? AuditEventAgentNetwork
        resource.purposeOfUse = self.purposeOfUse

        return resource
    }
}

// MARK: - AuditEventAgentNetwork NSCopying

extension ModelsR4.AuditEventAgentNetwork {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AuditEventAgentNetwork else {
            return self
        }

        resource.address = self.address
        resource.type = self.type

        return resource
    }
}

// MARK: - AuditEventEntity NSCopying

extension ModelsR4.AuditEventEntity {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AuditEventEntity else {
            return self
        }

        resource.what = self.what?.copy() as? Reference
        resource.type = self.type?.copy() as? Coding
        resource.role = self.role?.copy() as? Coding
        resource.lifecycle = self.lifecycle?.copy() as? Coding
        resource.securityLabel = self.securityLabel
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.query = self.query
        resource.detail = self.detail

        return resource
    }
}

// MARK: - AuditEventEntityDetail NSCopying

extension ModelsR4.AuditEventEntityDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AuditEventEntityDetail else {
            return self
        }

        resource.type = self.type
        resource.value = self.value

        return resource
    }
}

// MARK: - AuditEventSource NSCopying

extension ModelsR4.AuditEventSource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.AuditEventSource else {
            return self
        }

        resource.site = self.site
        resource.observer = self.observer.copy() as! Reference
        resource.type = self.type

        return resource
    }
}

// MARK: - BackboneElement NSCopying

extension ModelsR4.BackboneElement {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BackboneElement else {
            return self
        }

        resource.modifierExtension = self.modifierExtension

        return resource
    }
}

// MARK: - Basic NSCopying

extension ModelsR4.Basic {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Basic else {
            return self
        }

        resource.identifier = self.identifier
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.created = self.created
        resource.author = self.author?.copy() as? Reference

        return resource
    }
}

// MARK: - Binary NSCopying

extension ModelsR4.Binary {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Binary else {
            return self
        }

        resource.contentType = self.contentType
        resource.securityContext = self.securityContext?.copy() as? Reference
        resource.data = self.data

        return resource
    }
}

// MARK: - BiologicallyDerivedProduct NSCopying

extension ModelsR4.BiologicallyDerivedProduct {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BiologicallyDerivedProduct else {
            return self
        }

        resource.identifier = self.identifier
        resource.productCategory = self.productCategory
        resource.productCode = self.productCode?.copy() as? CodeableConcept
        resource.status = self.status
        resource.request = self.request
        resource.quantity = self.quantity
        resource.parent = self.parent
        resource.collection = self.collection?.copy() as? BiologicallyDerivedProductCollection
        resource.processing = self.processing
        resource.manipulation = self.manipulation?.copy() as? BiologicallyDerivedProductManipulation
        resource.storage = self.storage

        return resource
    }
}

// MARK: - BiologicallyDerivedProductCollection NSCopying

extension ModelsR4.BiologicallyDerivedProductCollection {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BiologicallyDerivedProductCollection else {
            return self
        }

        resource.collector = self.collector?.copy() as? Reference
        resource.source = self.source?.copy() as? Reference
        resource.collected = self.collected

        return resource
    }
}

// MARK: - BiologicallyDerivedProductManipulation NSCopying

extension ModelsR4.BiologicallyDerivedProductManipulation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BiologicallyDerivedProductManipulation else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.time = self.time

        return resource
    }
}

// MARK: - BiologicallyDerivedProductProcessing NSCopying

extension ModelsR4.BiologicallyDerivedProductProcessing {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BiologicallyDerivedProductProcessing else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.procedure = self.procedure?.copy() as? CodeableConcept
        resource.additive = self.additive?.copy() as? Reference
        resource.time = self.time

        return resource
    }
}

// MARK: - BiologicallyDerivedProductStorage NSCopying

extension ModelsR4.BiologicallyDerivedProductStorage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BiologicallyDerivedProductStorage else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.temperature = self.temperature
        resource.scale = self.scale
        resource.duration = self.duration?.copy() as? Period

        return resource
    }
}

// MARK: - BodyStructure NSCopying

extension ModelsR4.BodyStructure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BodyStructure else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.morphology = self.morphology?.copy() as? CodeableConcept
        resource.location = self.location?.copy() as? CodeableConcept
        resource.locationQualifier = self.locationQualifier
        resource.description_fhir = self.description_fhir
        resource.image = self.image
        resource.patient = self.patient.copy() as! Reference

        return resource
    }
}

// MARK: - Bundle NSCopying

extension ModelsR4.Bundle {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Bundle else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.type = self.type
        resource.timestamp = self.timestamp
        resource.total = self.total
        resource.link = self.link
        resource.entry = self.entry
        resource.signature = self.signature?.copy() as? Signature

        return resource
    }
}

// MARK: - BundleEntry NSCopying

extension ModelsR4.BundleEntry {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BundleEntry else {
            return self
        }

        resource.link = self.link
        resource.fullUrl = self.fullUrl
        resource.resource = self.resource
        resource.search = self.search?.copy() as? BundleEntrySearch
        resource.request = self.request?.copy() as? BundleEntryRequest
        resource.response = self.response?.copy() as? BundleEntryResponse

        return resource
    }
}

// MARK: - BundleEntryRequest NSCopying

extension ModelsR4.BundleEntryRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BundleEntryRequest else {
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
}

// MARK: - BundleEntryResponse NSCopying

extension ModelsR4.BundleEntryResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BundleEntryResponse else {
            return self
        }

        resource.status = self.status
        resource.location = self.location
        resource.etag = self.etag
        resource.lastModified = self.lastModified
        resource.outcome = self.outcome

        return resource
    }
}

// MARK: - BundleEntrySearch NSCopying

extension ModelsR4.BundleEntrySearch {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BundleEntrySearch else {
            return self
        }

        resource.mode = self.mode
        resource.score = self.score

        return resource
    }
}

// MARK: - BundleLink NSCopying

extension ModelsR4.BundleLink {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.BundleLink else {
            return self
        }

        resource.relation = self.relation
        resource.url = self.url

        return resource
    }
}

// MARK: - CapabilityStatement NSCopying

extension ModelsR4.CapabilityStatement {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatement else {
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
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
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
        resource.rest = self.rest
        resource.messaging = self.messaging
        resource.document = self.document

        return resource
    }
}

// MARK: - CapabilityStatementDocument NSCopying

extension ModelsR4.CapabilityStatementDocument {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementDocument else {
            return self
        }

        resource.mode = self.mode
        resource.documentation = self.documentation
        resource.profile = self.profile

        return resource
    }
}

// MARK: - CapabilityStatementImplementation NSCopying

extension ModelsR4.CapabilityStatementImplementation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementImplementation else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.url = self.url
        resource.custodian = self.custodian?.copy() as? Reference

        return resource
    }
}

// MARK: - CapabilityStatementMessaging NSCopying

extension ModelsR4.CapabilityStatementMessaging {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementMessaging else {
            return self
        }

        resource.endpoint = self.endpoint
        resource.reliableCache = self.reliableCache
        resource.documentation = self.documentation
        resource.supportedMessage = self.supportedMessage

        return resource
    }
}

// MARK: - CapabilityStatementMessagingEndpoint NSCopying

extension ModelsR4.CapabilityStatementMessagingEndpoint {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementMessagingEndpoint else {
            return self
        }

        resource.`protocol` = self.`protocol`.copy() as! Coding
        resource.address = self.address

        return resource
    }
}

// MARK: - CapabilityStatementMessagingSupportedMessage NSCopying

extension ModelsR4.CapabilityStatementMessagingSupportedMessage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementMessagingSupportedMessage else {
            return self
        }

        resource.mode = self.mode
        resource.definition = self.definition

        return resource
    }
}

// MARK: - CapabilityStatementRest NSCopying

extension ModelsR4.CapabilityStatementRest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementRest else {
            return self
        }

        resource.mode = self.mode
        resource.documentation = self.documentation
        resource.security = self.security?.copy() as? CapabilityStatementRestSecurity
        resource.resource = self.resource
        resource.interaction = self.interaction
        resource.searchParam = self.searchParam
        resource.operation = self.operation
        resource.compartment = self.compartment

        return resource
    }
}

// MARK: - CapabilityStatementRestInteraction NSCopying

extension ModelsR4.CapabilityStatementRestInteraction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementRestInteraction else {
            return self
        }

        resource.code = self.code
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - CapabilityStatementRestResource NSCopying

extension ModelsR4.CapabilityStatementRestResource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementRestResource else {
            return self
        }

        resource.type = self.type
        resource.profile = self.profile
        resource.supportedProfile = self.supportedProfile
        resource.documentation = self.documentation
        resource.interaction = self.interaction
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
        resource.searchParam = self.searchParam
        resource.operation = self.operation

        return resource
    }
}

// MARK: - CapabilityStatementRestResourceInteraction NSCopying

extension ModelsR4.CapabilityStatementRestResourceInteraction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementRestResourceInteraction else {
            return self
        }

        resource.code = self.code
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - CapabilityStatementRestResourceOperation NSCopying

extension ModelsR4.CapabilityStatementRestResourceOperation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementRestResourceOperation else {
            return self
        }

        resource.name = self.name
        resource.definition = self.definition
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - CapabilityStatementRestResourceSearchParam NSCopying

extension ModelsR4.CapabilityStatementRestResourceSearchParam {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementRestResourceSearchParam else {
            return self
        }

        resource.name = self.name
        resource.definition = self.definition
        resource.type = self.type
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - CapabilityStatementRestSecurity NSCopying

extension ModelsR4.CapabilityStatementRestSecurity {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementRestSecurity else {
            return self
        }

        resource.cors = self.cors
        resource.service = self.service
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - CapabilityStatementSoftware NSCopying

extension ModelsR4.CapabilityStatementSoftware {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CapabilityStatementSoftware else {
            return self
        }

        resource.name = self.name
        resource.version = self.version
        resource.releaseDate = self.releaseDate

        return resource
    }
}

// MARK: - CarePlan NSCopying

extension ModelsR4.CarePlan {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CarePlan else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn
        resource.replaces = self.replaces
        resource.partOf = self.partOf
        resource.status = self.status
        resource.intent = self.intent
        resource.category = self.category
        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.period = self.period?.copy() as? Period
        resource.created = self.created
        resource.author = self.author?.copy() as? Reference
        resource.contributor = self.contributor
        resource.careTeam = self.careTeam
        resource.addresses = self.addresses
        resource.supportingInfo = self.supportingInfo
        resource.goal = self.goal
        resource.activity = self.activity
        resource.note = self.note

        return resource
    }
}

// MARK: - CarePlanActivity NSCopying

extension ModelsR4.CarePlanActivity {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CarePlanActivity else {
            return self
        }

        resource.outcomeCodeableConcept = self.outcomeCodeableConcept
        resource.outcomeReference = self.outcomeReference
        resource.progress = self.progress
        resource.reference = self.reference?.copy() as? Reference
        resource.detail = self.detail?.copy() as? CarePlanActivityDetail

        return resource
    }
}

// MARK: - CarePlanActivityDetail NSCopying

extension ModelsR4.CarePlanActivityDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CarePlanActivityDetail else {
            return self
        }

        resource.kind = self.kind
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.code = self.code?.copy() as? CodeableConcept
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.goal = self.goal
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.doNotPerform = self.doNotPerform
        resource.scheduled = self.scheduled
        resource.location = self.location?.copy() as? Reference
        resource.performer = self.performer
        resource.product = self.product
        resource.dailyAmount = self.dailyAmount?.copy() as? Quantity
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - CareTeam NSCopying

extension ModelsR4.CareTeam {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CareTeam else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.category = self.category
        resource.name = self.name
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.period = self.period?.copy() as? Period
        resource.participant = self.participant
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.managingOrganization = self.managingOrganization
        resource.telecom = self.telecom
        resource.note = self.note

        return resource
    }
}

// MARK: - CareTeamParticipant NSCopying

extension ModelsR4.CareTeamParticipant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CareTeamParticipant else {
            return self
        }

        resource.role = self.role
        resource.member = self.member?.copy() as? Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - CatalogEntry NSCopying

extension ModelsR4.CatalogEntry {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CatalogEntry else {
            return self
        }

        resource.identifier = self.identifier
        resource.type = self.type?.copy() as? CodeableConcept
        resource.orderable = self.orderable
        resource.referencedItem = self.referencedItem.copy() as! Reference
        resource.additionalIdentifier = self.additionalIdentifier
        resource.classification = self.classification
        resource.status = self.status
        resource.validityPeriod = self.validityPeriod?.copy() as? Period
        resource.validTo = self.validTo
        resource.lastUpdated = self.lastUpdated
        resource.additionalCharacteristic = self.additionalCharacteristic
        resource.additionalClassification = self.additionalClassification
        resource.relatedEntry = self.relatedEntry

        return resource
    }
}

// MARK: - CatalogEntryRelatedEntry NSCopying

extension ModelsR4.CatalogEntryRelatedEntry {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CatalogEntryRelatedEntry else {
            return self
        }

        resource.relationtype = self.relationtype
        resource.item = self.item.copy() as! Reference

        return resource
    }
}

// MARK: - ChargeItem NSCopying

extension ModelsR4.ChargeItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ChargeItem else {
            return self
        }

        resource.identifier = self.identifier
        resource.definitionUri = self.definitionUri
        resource.definitionCanonical = self.definitionCanonical
        resource.status = self.status
        resource.partOf = self.partOf
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.context = self.context?.copy() as? Reference
        resource.occurrence = self.occurrence
        resource.performer = self.performer
        resource.performingOrganization = self.performingOrganization?.copy() as? Reference
        resource.requestingOrganization = self.requestingOrganization?.copy() as? Reference
        resource.costCenter = self.costCenter?.copy() as? Reference
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.bodysite = self.bodysite
        resource.factorOverride = self.factorOverride
        resource.priceOverride = self.priceOverride?.copy() as? Money
        resource.overrideReason = self.overrideReason
        resource.enterer = self.enterer?.copy() as? Reference
        resource.enteredDate = self.enteredDate
        resource.reason = self.reason
        resource.service = self.service
        resource.product = self.product
        resource.account = self.account
        resource.note = self.note
        resource.supportingInformation = self.supportingInformation

        return resource
    }
}

// MARK: - ChargeItemDefinition NSCopying

extension ModelsR4.ChargeItemDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ChargeItemDefinition else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.title = self.title
        resource.derivedFromUri = self.derivedFromUri
        resource.partOf = self.partOf
        resource.replaces = self.replaces
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.code = self.code?.copy() as? CodeableConcept
        resource.instance = self.instance
        resource.applicability = self.applicability
        resource.propertyGroup = self.propertyGroup

        return resource
    }
}

// MARK: - ChargeItemDefinitionApplicability NSCopying

extension ModelsR4.ChargeItemDefinitionApplicability {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ChargeItemDefinitionApplicability else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.language = self.language
        resource.expression = self.expression

        return resource
    }
}

// MARK: - ChargeItemDefinitionPropertyGroup NSCopying

extension ModelsR4.ChargeItemDefinitionPropertyGroup {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ChargeItemDefinitionPropertyGroup else {
            return self
        }

        resource.applicability = self.applicability
        resource.priceComponent = self.priceComponent

        return resource
    }
}

// MARK: - ChargeItemDefinitionPropertyGroupPriceComponent NSCopying

extension ModelsR4.ChargeItemDefinitionPropertyGroupPriceComponent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ChargeItemDefinitionPropertyGroupPriceComponent else {
            return self
        }

        resource.type = self.type
        resource.code = self.code?.copy() as? CodeableConcept
        resource.factor = self.factor
        resource.amount = self.amount?.copy() as? Money

        return resource
    }
}

// MARK: - ChargeItemPerformer NSCopying

extension ModelsR4.ChargeItemPerformer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ChargeItemPerformer else {
            return self
        }

        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }
}

// MARK: - Claim NSCopying

extension ModelsR4.Claim {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Claim else {
            return self
        }

        resource.identifier = self.identifier
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
        resource.related = self.related
        resource.prescription = self.prescription?.copy() as? Reference
        resource.originalPrescription = self.originalPrescription?.copy() as? Reference
        resource.payee = self.payee?.copy() as? ClaimPayee
        resource.referral = self.referral?.copy() as? Reference
        resource.facility = self.facility?.copy() as? Reference
        resource.careTeam = self.careTeam
        resource.supportingInfo = self.supportingInfo
        resource.diagnosis = self.diagnosis
        resource.procedure = self.procedure
        resource.insurance = self.insurance
        resource.accident = self.accident?.copy() as? ClaimAccident
        resource.item = self.item
        resource.total = self.total?.copy() as? Money

        return resource
    }
}

// MARK: - ClaimAccident NSCopying

extension ModelsR4.ClaimAccident {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimAccident else {
            return self
        }

        resource.date = self.date
        resource.type = self.type?.copy() as? CodeableConcept
        resource.location = self.location

        return resource
    }
}

// MARK: - ClaimCareTeam NSCopying

extension ModelsR4.ClaimCareTeam {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimCareTeam else {
            return self
        }

        resource.sequence = self.sequence
        resource.provider = self.provider.copy() as! Reference
        resource.responsible = self.responsible
        resource.role = self.role?.copy() as? CodeableConcept
        resource.qualification = self.qualification?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ClaimDiagnosis NSCopying

extension ModelsR4.ClaimDiagnosis {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimDiagnosis else {
            return self
        }

        resource.sequence = self.sequence
        resource.diagnosis = self.diagnosis
        resource.type = self.type
        resource.onAdmission = self.onAdmission?.copy() as? CodeableConcept
        resource.packageCode = self.packageCode?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ClaimInsurance NSCopying

extension ModelsR4.ClaimInsurance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimInsurance else {
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
}

// MARK: - ClaimItem NSCopying

extension ModelsR4.ClaimItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimItem else {
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
        resource.modifier = self.modifier
        resource.programCode = self.programCode
        resource.serviced = self.serviced
        resource.location = self.location
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.subSite = self.subSite
        resource.encounter = self.encounter
        resource.detail = self.detail

        return resource
    }
}

// MARK: - ClaimItemDetail NSCopying

extension ModelsR4.ClaimItemDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimItemDetail else {
            return self
        }

        resource.sequence = self.sequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.programCode = self.programCode
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi
        resource.subDetail = self.subDetail

        return resource
    }
}

// MARK: - ClaimItemDetailSubDetail NSCopying

extension ModelsR4.ClaimItemDetailSubDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimItemDetailSubDetail else {
            return self
        }

        resource.sequence = self.sequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.programCode = self.programCode
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi

        return resource
    }
}

// MARK: - ClaimPayee NSCopying

extension ModelsR4.ClaimPayee {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimPayee else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.party = self.party?.copy() as? Reference

        return resource
    }
}

// MARK: - ClaimProcedure NSCopying

extension ModelsR4.ClaimProcedure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimProcedure else {
            return self
        }

        resource.sequence = self.sequence
        resource.type = self.type
        resource.date = self.date
        resource.procedure = self.procedure
        resource.udi = self.udi

        return resource
    }
}

// MARK: - ClaimRelated NSCopying

extension ModelsR4.ClaimRelated {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimRelated else {
            return self
        }

        resource.claim = self.claim?.copy() as? Reference
        resource.relationship = self.relationship?.copy() as? CodeableConcept
        resource.reference = self.reference?.copy() as? Identifier

        return resource
    }
}

// MARK: - ClaimResponse NSCopying

extension ModelsR4.ClaimResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponse else {
            return self
        }

        resource.identifier = self.identifier
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
        resource.item = self.item
        resource.addItem = self.addItem
        resource.adjudication = self.adjudication
        resource.total = self.total
        resource.payment = self.payment?.copy() as? ClaimResponsePayment
        resource.fundsReserve = self.fundsReserve?.copy() as? CodeableConcept
        resource.formCode = self.formCode?.copy() as? CodeableConcept
        resource.form = self.form?.copy() as? Attachment
        resource.processNote = self.processNote
        resource.communicationRequest = self.communicationRequest
        resource.insurance = self.insurance
        resource.error = self.error

        return resource
    }
}

// MARK: - ClaimResponseAddItem NSCopying

extension ModelsR4.ClaimResponseAddItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseAddItem else {
            return self
        }

        resource.itemSequence = self.itemSequence
        resource.detailSequence = self.detailSequence
        resource.subdetailSequence = self.subdetailSequence
        resource.provider = self.provider
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.programCode = self.programCode
        resource.serviced = self.serviced
        resource.location = self.location
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.subSite = self.subSite
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication
        resource.detail = self.detail

        return resource
    }
}

// MARK: - ClaimResponseAddItemDetail NSCopying

extension ModelsR4.ClaimResponseAddItemDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseAddItemDetail else {
            return self
        }

        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication
        resource.subDetail = self.subDetail

        return resource
    }
}

// MARK: - ClaimResponseAddItemDetailSubDetail NSCopying

extension ModelsR4.ClaimResponseAddItemDetailSubDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseAddItemDetailSubDetail else {
            return self
        }

        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication

        return resource
    }
}

// MARK: - ClaimResponseError NSCopying

extension ModelsR4.ClaimResponseError {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseError else {
            return self
        }

        resource.itemSequence = self.itemSequence
        resource.detailSequence = self.detailSequence
        resource.subDetailSequence = self.subDetailSequence
        resource.code = self.code.copy() as! CodeableConcept

        return resource
    }
}

// MARK: - ClaimResponseInsurance NSCopying

extension ModelsR4.ClaimResponseInsurance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseInsurance else {
            return self
        }

        resource.sequence = self.sequence
        resource.focal = self.focal
        resource.coverage = self.coverage.copy() as! Reference
        resource.businessArrangement = self.businessArrangement
        resource.claimResponse = self.claimResponse?.copy() as? Reference

        return resource
    }
}

// MARK: - ClaimResponseItem NSCopying

extension ModelsR4.ClaimResponseItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseItem else {
            return self
        }

        resource.itemSequence = self.itemSequence
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication
        resource.detail = self.detail

        return resource
    }
}

// MARK: - ClaimResponseItemAdjudication NSCopying

extension ModelsR4.ClaimResponseItemAdjudication {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseItemAdjudication else {
            return self
        }

        resource.category = self.category.copy() as! CodeableConcept
        resource.reason = self.reason?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Money
        resource.value = self.value

        return resource
    }
}

// MARK: - ClaimResponseItemDetail NSCopying

extension ModelsR4.ClaimResponseItemDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseItemDetail else {
            return self
        }

        resource.detailSequence = self.detailSequence
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication
        resource.subDetail = self.subDetail

        return resource
    }
}

// MARK: - ClaimResponseItemDetailSubDetail NSCopying

extension ModelsR4.ClaimResponseItemDetailSubDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseItemDetailSubDetail else {
            return self
        }

        resource.subDetailSequence = self.subDetailSequence
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication

        return resource
    }
}

// MARK: - ClaimResponsePayment NSCopying

extension ModelsR4.ClaimResponsePayment {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponsePayment else {
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
}

// MARK: - ClaimResponseProcessNote NSCopying

extension ModelsR4.ClaimResponseProcessNote {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseProcessNote else {
            return self
        }

        resource.number = self.number
        resource.type = self.type
        resource.text = self.text
        resource.language = self.language?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ClaimResponseTotal NSCopying

extension ModelsR4.ClaimResponseTotal {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimResponseTotal else {
            return self
        }

        resource.category = self.category.copy() as! CodeableConcept
        resource.amount = self.amount.copy() as! Money

        return resource
    }
}

// MARK: - ClaimSupportingInfo NSCopying

extension ModelsR4.ClaimSupportingInfo {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClaimSupportingInfo else {
            return self
        }

        resource.sequence = self.sequence
        resource.category = self.category.copy() as! CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.timing = self.timing
        resource.value = self.value
        resource.reason = self.reason?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ClinicalImpression NSCopying

extension ModelsR4.ClinicalImpression {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClinicalImpression else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.effective = self.effective
        resource.date = self.date
        resource.assessor = self.assessor?.copy() as? Reference
        resource.previous = self.previous?.copy() as? Reference
        resource.problem = self.problem
        resource.investigation = self.investigation
        resource.`protocol` = self.`protocol`
        resource.summary = self.summary
        resource.finding = self.finding
        resource.prognosisCodeableConcept = self.prognosisCodeableConcept
        resource.prognosisReference = self.prognosisReference
        resource.supportingInfo = self.supportingInfo
        resource.note = self.note

        return resource
    }
}

// MARK: - ClinicalImpressionFinding NSCopying

extension ModelsR4.ClinicalImpressionFinding {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClinicalImpressionFinding else {
            return self
        }

        resource.itemCodeableConcept = self.itemCodeableConcept?.copy() as? CodeableConcept
        resource.itemReference = self.itemReference?.copy() as? Reference
        resource.basis = self.basis

        return resource
    }
}

// MARK: - ClinicalImpressionInvestigation NSCopying

extension ModelsR4.ClinicalImpressionInvestigation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ClinicalImpressionInvestigation else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.item = self.item

        return resource
    }
}

// MARK: - CodeSystem NSCopying

extension ModelsR4.CodeSystem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CodeSystem else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
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
        resource.filter = self.filter
        resource.property = self.property
        resource.concept = self.concept

        return resource
    }
}

// MARK: - CodeSystemConcept NSCopying

extension ModelsR4.CodeSystemConcept {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CodeSystemConcept else {
            return self
        }

        resource.code = self.code
        resource.display = self.display
        resource.definition = self.definition
        resource.designation = self.designation
        resource.property = self.property
        resource.concept = self.concept

        return resource
    }
}

// MARK: - CodeSystemConceptDesignation NSCopying

extension ModelsR4.CodeSystemConceptDesignation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CodeSystemConceptDesignation else {
            return self
        }

        resource.language = self.language
        resource.use = self.use?.copy() as? Coding
        resource.value = self.value

        return resource
    }
}

// MARK: - CodeSystemConceptProperty NSCopying

extension ModelsR4.CodeSystemConceptProperty {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CodeSystemConceptProperty else {
            return self
        }

        resource.code = self.code
        resource.value = self.value

        return resource
    }
}

// MARK: - CodeSystemFilter NSCopying

extension ModelsR4.CodeSystemFilter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CodeSystemFilter else {
            return self
        }

        resource.code = self.code
        resource.description_fhir = self.description_fhir
        resource.`operator` = self.`operator`
        resource.value = self.value

        return resource
    }
}

// MARK: - CodeSystemProperty NSCopying

extension ModelsR4.CodeSystemProperty {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CodeSystemProperty else {
            return self
        }

        resource.code = self.code
        resource.uri = self.uri
        resource.description_fhir = self.description_fhir
        resource.type = self.type

        return resource
    }
}

// MARK: - CodeableConcept NSCopying

extension ModelsR4.CodeableConcept {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CodeableConcept else {
            return self
        }

        resource.coding = self.coding
        resource.text = self.text

        return resource
    }
}

// MARK: - Coding NSCopying

extension ModelsR4.Coding {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Coding else {
            return self
        }

        resource.system = self.system
        resource.version = self.version
        resource.code = self.code
        resource.display = self.display
        resource.userSelected = self.userSelected

        return resource
    }
}

// MARK: - Communication NSCopying

extension ModelsR4.Communication {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Communication else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn
        resource.partOf = self.partOf
        resource.inResponseTo = self.inResponseTo
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.category = self.category
        resource.priority = self.priority
        resource.medium = self.medium
        resource.subject = self.subject?.copy() as? Reference
        resource.topic = self.topic?.copy() as? CodeableConcept
        resource.about = self.about
        resource.encounter = self.encounter?.copy() as? Reference
        resource.sent = self.sent
        resource.received = self.received
        resource.recipient = self.recipient
        resource.sender = self.sender?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.payload = self.payload
        resource.note = self.note

        return resource
    }
}

// MARK: - CommunicationPayload NSCopying

extension ModelsR4.CommunicationPayload {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CommunicationPayload else {
            return self
        }

        resource.content = self.content

        return resource
    }
}

// MARK: - CommunicationRequest NSCopying

extension ModelsR4.CommunicationRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CommunicationRequest else {
            return self
        }

        resource.identifier = self.identifier
        resource.basedOn = self.basedOn
        resource.replaces = self.replaces
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.category = self.category
        resource.priority = self.priority
        resource.doNotPerform = self.doNotPerform
        resource.medium = self.medium
        resource.subject = self.subject?.copy() as? Reference
        resource.about = self.about
        resource.encounter = self.encounter?.copy() as? Reference
        resource.payload = self.payload
        resource.occurrence = self.occurrence
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.recipient = self.recipient
        resource.sender = self.sender?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.note = self.note

        return resource
    }
}

// MARK: - CommunicationRequestPayload NSCopying

extension ModelsR4.CommunicationRequestPayload {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CommunicationRequestPayload else {
            return self
        }

        resource.content = self.content

        return resource
    }
}

// MARK: - CompartmentDefinition NSCopying

extension ModelsR4.CompartmentDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CompartmentDefinition else {
            return self
        }

        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.purpose = self.purpose
        resource.code = self.code
        resource.search = self.search
        resource.resource = self.resource

        return resource
    }
}

// MARK: - CompartmentDefinitionResource NSCopying

extension ModelsR4.CompartmentDefinitionResource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CompartmentDefinitionResource else {
            return self
        }

        resource.code = self.code
        resource.param = self.param
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - Composition NSCopying

extension ModelsR4.Composition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Composition else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.status = self.status
        resource.type = self.type.copy() as! CodeableConcept
        resource.category = self.category
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.date = self.date
        resource.author = self.author
        resource.title = self.title
        resource.confidentiality = self.confidentiality
        resource.attester = self.attester
        resource.custodian = self.custodian?.copy() as? Reference
        resource.relatesTo = self.relatesTo
        resource.event = self.event
        resource.section = self.section

        return resource
    }
}

// MARK: - CompositionAttester NSCopying

extension ModelsR4.CompositionAttester {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CompositionAttester else {
            return self
        }

        resource.mode = self.mode
        resource.time = self.time
        resource.party = self.party?.copy() as? Reference

        return resource
    }
}

// MARK: - CompositionEvent NSCopying

extension ModelsR4.CompositionEvent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CompositionEvent else {
            return self
        }

        resource.code = self.code
        resource.period = self.period?.copy() as? Period
        resource.detail = self.detail

        return resource
    }
}

// MARK: - CompositionRelatesTo NSCopying

extension ModelsR4.CompositionRelatesTo {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CompositionRelatesTo else {
            return self
        }

        resource.code = self.code
        resource.target = self.target

        return resource
    }
}

// MARK: - CompositionSection NSCopying

extension ModelsR4.CompositionSection {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CompositionSection else {
            return self
        }

        resource.title = self.title
        resource.code = self.code?.copy() as? CodeableConcept
        resource.author = self.author
        resource.focus = self.focus?.copy() as? Reference
        resource.text = self.text?.copy() as? Narrative
        resource.mode = self.mode
        resource.orderedBy = self.orderedBy?.copy() as? CodeableConcept
        resource.entry = self.entry
        resource.emptyReason = self.emptyReason?.copy() as? CodeableConcept
        resource.section = self.section

        return resource
    }
}

// MARK: - ConceptMap NSCopying

extension ModelsR4.ConceptMap {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConceptMap else {
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
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.source = self.source
        resource.target = self.target
        resource.group = self.group

        return resource
    }
}

// MARK: - ConceptMapGroup NSCopying

extension ModelsR4.ConceptMapGroup {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConceptMapGroup else {
            return self
        }

        resource.source = self.source
        resource.sourceVersion = self.sourceVersion
        resource.target = self.target
        resource.targetVersion = self.targetVersion
        resource.element = self.element
        resource.unmapped = self.unmapped?.copy() as? ConceptMapGroupUnmapped

        return resource
    }
}

// MARK: - ConceptMapGroupElement NSCopying

extension ModelsR4.ConceptMapGroupElement {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConceptMapGroupElement else {
            return self
        }

        resource.code = self.code
        resource.display = self.display
        resource.target = self.target

        return resource
    }
}

// MARK: - ConceptMapGroupElementTarget NSCopying

extension ModelsR4.ConceptMapGroupElementTarget {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConceptMapGroupElementTarget else {
            return self
        }

        resource.code = self.code
        resource.display = self.display
        resource.equivalence = self.equivalence
        resource.comment = self.comment
        resource.dependsOn = self.dependsOn
        resource.product = self.product

        return resource
    }
}

// MARK: - ConceptMapGroupElementTargetDependsOn NSCopying

extension ModelsR4.ConceptMapGroupElementTargetDependsOn {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConceptMapGroupElementTargetDependsOn else {
            return self
        }

        resource.property = self.property
        resource.system = self.system
        resource.value = self.value
        resource.display = self.display

        return resource
    }
}

// MARK: - ConceptMapGroupUnmapped NSCopying

extension ModelsR4.ConceptMapGroupUnmapped {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConceptMapGroupUnmapped else {
            return self
        }

        resource.mode = self.mode
        resource.code = self.code
        resource.display = self.display
        resource.url = self.url

        return resource
    }
}

// MARK: - Condition NSCopying

extension ModelsR4.Condition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Condition else {
            return self
        }

        resource.identifier = self.identifier
        resource.clinicalStatus = self.clinicalStatus?.copy() as? CodeableConcept
        resource.verificationStatus = self.verificationStatus?.copy() as? CodeableConcept
        resource.category = self.category
        resource.severity = self.severity?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.bodySite = self.bodySite
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.onset = self.onset
        resource.abatement = self.abatement
        resource.recordedDate = self.recordedDate
        resource.recorder = self.recorder?.copy() as? Reference
        resource.asserter = self.asserter?.copy() as? Reference
        resource.stage = self.stage
        resource.evidence = self.evidence
        resource.note = self.note

        return resource
    }
}

// MARK: - ConditionEvidence NSCopying

extension ModelsR4.ConditionEvidence {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConditionEvidence else {
            return self
        }

        resource.code = self.code
        resource.detail = self.detail

        return resource
    }
}

// MARK: - ConditionStage NSCopying

extension ModelsR4.ConditionStage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConditionStage else {
            return self
        }

        resource.summary = self.summary?.copy() as? CodeableConcept
        resource.assessment = self.assessment
        resource.type = self.type?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - Consent NSCopying

extension ModelsR4.Consent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Consent else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.scope = self.scope.copy() as! CodeableConcept
        resource.category = self.category
        resource.patient = self.patient?.copy() as? Reference
        resource.dateTime = self.dateTime
        resource.performer = self.performer
        resource.organization = self.organization
        resource.source = self.source
        resource.policy = self.policy
        resource.policyRule = self.policyRule?.copy() as? CodeableConcept
        resource.verification = self.verification
        resource.provision = self.provision?.copy() as? ConsentProvision

        return resource
    }
}

// MARK: - ConsentPolicy NSCopying

extension ModelsR4.ConsentPolicy {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConsentPolicy else {
            return self
        }

        resource.authority = self.authority
        resource.uri = self.uri

        return resource
    }
}

// MARK: - ConsentProvision NSCopying

extension ModelsR4.ConsentProvision {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConsentProvision else {
            return self
        }

        resource.type = self.type
        resource.period = self.period?.copy() as? Period
        resource.actor = self.actor
        resource.action = self.action
        resource.securityLabel = self.securityLabel
        resource.purpose = self.purpose
        resource.`class` = self.`class`
        resource.code = self.code
        resource.dataPeriod = self.dataPeriod?.copy() as? Period
        resource.data = self.data
        resource.provision = self.provision

        return resource
    }
}

// MARK: - ConsentProvisionActor NSCopying

extension ModelsR4.ConsentProvisionActor {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConsentProvisionActor else {
            return self
        }

        resource.role = self.role.copy() as! CodeableConcept
        resource.reference = self.reference.copy() as! Reference

        return resource
    }
}

// MARK: - ConsentProvisionData NSCopying

extension ModelsR4.ConsentProvisionData {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConsentProvisionData else {
            return self
        }

        resource.meaning = self.meaning
        resource.reference = self.reference.copy() as! Reference

        return resource
    }
}

// MARK: - ConsentVerification NSCopying

extension ModelsR4.ConsentVerification {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ConsentVerification else {
            return self
        }

        resource.verified = self.verified
        resource.verifiedWith = self.verifiedWith?.copy() as? Reference
        resource.verificationDate = self.verificationDate

        return resource
    }
}

// MARK: - ContactDetail NSCopying

extension ModelsR4.ContactDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContactDetail else {
            return self
        }

        resource.name = self.name
        resource.telecom = self.telecom

        return resource
    }
}

// MARK: - ContactPoint NSCopying

extension ModelsR4.ContactPoint {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContactPoint else {
            return self
        }

        resource.system = self.system
        resource.value = self.value
        resource.use = self.use
        resource.rank = self.rank
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - Contract NSCopying

extension ModelsR4.Contract {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Contract else {
            return self
        }

        resource.identifier = self.identifier
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
        resource.subject = self.subject
        resource.authority = self.authority
        resource.domain = self.domain
        resource.site = self.site
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.alias = self.alias
        resource.author = self.author?.copy() as? Reference
        resource.scope = self.scope?.copy() as? CodeableConcept
        resource.topic = self.topic
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subType = self.subType
        resource.contentDefinition = self.contentDefinition?.copy() as? ContractContentDefinition
        resource.term = self.term
        resource.supportingInfo = self.supportingInfo
        resource.relevantHistory = self.relevantHistory
        resource.signer = self.signer
        resource.friendly = self.friendly
        resource.legal = self.legal
        resource.rule = self.rule
        resource.legallyBinding = self.legallyBinding

        return resource
    }
}

// MARK: - ContractContentDefinition NSCopying

extension ModelsR4.ContractContentDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractContentDefinition else {
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
}

// MARK: - ContractFriendly NSCopying

extension ModelsR4.ContractFriendly {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractFriendly else {
            return self
        }

        resource.content = self.content

        return resource
    }
}

// MARK: - ContractLegal NSCopying

extension ModelsR4.ContractLegal {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractLegal else {
            return self
        }

        resource.content = self.content

        return resource
    }
}

// MARK: - ContractRule NSCopying

extension ModelsR4.ContractRule {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractRule else {
            return self
        }

        resource.content = self.content

        return resource
    }
}

// MARK: - ContractSigner NSCopying

extension ModelsR4.ContractSigner {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractSigner else {
            return self
        }

        resource.type = self.type.copy() as! Coding
        resource.party = self.party.copy() as! Reference
        resource.signature = self.signature

        return resource
    }
}

// MARK: - ContractTerm NSCopying

extension ModelsR4.ContractTerm {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTerm else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.issued = self.issued
        resource.applies = self.applies?.copy() as? Period
        resource.topic = self.topic
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subType = self.subType?.copy() as? CodeableConcept
        resource.text = self.text
        resource.securityLabel = self.securityLabel
        resource.offer = self.offer.copy() as! ContractTermOffer
        resource.asset = self.asset
        resource.action = self.action
        resource.group = self.group

        return resource
    }
}

// MARK: - ContractTermAction NSCopying

extension ModelsR4.ContractTermAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermAction else {
            return self
        }

        resource.doNotPerform = self.doNotPerform
        resource.type = self.type.copy() as! CodeableConcept
        resource.subject = self.subject
        resource.intent = self.intent.copy() as! CodeableConcept
        resource.linkId = self.linkId
        resource.status = self.status.copy() as! CodeableConcept
        resource.context = self.context?.copy() as? Reference
        resource.contextLinkId = self.contextLinkId
        resource.occurrence = self.occurrence
        resource.requester = self.requester
        resource.requesterLinkId = self.requesterLinkId
        resource.performerType = self.performerType
        resource.performerRole = self.performerRole?.copy() as? CodeableConcept
        resource.performer = self.performer?.copy() as? Reference
        resource.performerLinkId = self.performerLinkId
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.reason = self.reason
        resource.reasonLinkId = self.reasonLinkId
        resource.note = self.note
        resource.securityLabelNumber = self.securityLabelNumber

        return resource
    }
}

// MARK: - ContractTermActionSubject NSCopying

extension ModelsR4.ContractTermActionSubject {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermActionSubject else {
            return self
        }

        resource.reference = self.reference
        resource.role = self.role?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ContractTermAsset NSCopying

extension ModelsR4.ContractTermAsset {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermAsset else {
            return self
        }

        resource.scope = self.scope?.copy() as? CodeableConcept
        resource.type = self.type
        resource.typeReference = self.typeReference
        resource.subtype = self.subtype
        resource.relationship = self.relationship?.copy() as? Coding
        resource.context = self.context
        resource.condition = self.condition
        resource.periodType = self.periodType
        resource.period = self.period
        resource.usePeriod = self.usePeriod
        resource.text = self.text
        resource.linkId = self.linkId
        resource.answer = self.answer
        resource.securityLabelNumber = self.securityLabelNumber
        resource.valuedItem = self.valuedItem

        return resource
    }
}

// MARK: - ContractTermAssetContext NSCopying

extension ModelsR4.ContractTermAssetContext {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermAssetContext else {
            return self
        }

        resource.reference = self.reference?.copy() as? Reference
        resource.code = self.code
        resource.text = self.text

        return resource
    }
}

// MARK: - ContractTermAssetValuedItem NSCopying

extension ModelsR4.ContractTermAssetValuedItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermAssetValuedItem else {
            return self
        }

        resource.entity = self.entity
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
}

// MARK: - ContractTermOffer NSCopying

extension ModelsR4.ContractTermOffer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermOffer else {
            return self
        }

        resource.identifier = self.identifier
        resource.party = self.party
        resource.topic = self.topic?.copy() as? Reference
        resource.type = self.type?.copy() as? CodeableConcept
        resource.decision = self.decision?.copy() as? CodeableConcept
        resource.decisionMode = self.decisionMode
        resource.answer = self.answer
        resource.text = self.text
        resource.linkId = self.linkId
        resource.securityLabelNumber = self.securityLabelNumber

        return resource
    }
}

// MARK: - ContractTermOfferAnswer NSCopying

extension ModelsR4.ContractTermOfferAnswer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermOfferAnswer else {
            return self
        }

        resource.value = self.value

        return resource
    }
}

// MARK: - ContractTermOfferParty NSCopying

extension ModelsR4.ContractTermOfferParty {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermOfferParty else {
            return self
        }

        resource.reference = self.reference
        resource.role = self.role.copy() as! CodeableConcept

        return resource
    }
}

// MARK: - ContractTermSecurityLabel NSCopying

extension ModelsR4.ContractTermSecurityLabel {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ContractTermSecurityLabel else {
            return self
        }

        resource.number = self.number
        resource.classification = self.classification.copy() as! Coding
        resource.category = self.category
        resource.control = self.control

        return resource
    }
}

// MARK: - Contributor NSCopying

extension ModelsR4.Contributor {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Contributor else {
            return self
        }

        resource.type = self.type
        resource.name = self.name
        resource.contact = self.contact

        return resource
    }
}

// MARK: - Count NSCopying

extension ModelsR4.Count {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Count else {
            return self
        }


        return resource
    }
}

// MARK: - Coverage NSCopying

extension ModelsR4.Coverage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Coverage else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.policyHolder = self.policyHolder?.copy() as? Reference
        resource.subscriber = self.subscriber?.copy() as? Reference
        resource.subscriberId = self.subscriberId
        resource.beneficiary = self.beneficiary.copy() as! Reference
        resource.dependent = self.dependent
        resource.relationship = self.relationship?.copy() as? CodeableConcept
        resource.period = self.period?.copy() as? Period
        resource.payor = self.payor
        resource.`class` = self.`class`
        resource.order = self.order
        resource.network = self.network
        resource.costToBeneficiary = self.costToBeneficiary
        resource.subrogation = self.subrogation
        resource.contract = self.contract

        return resource
    }
}

// MARK: - CoverageClass NSCopying

extension ModelsR4.CoverageClass {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageClass else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.value = self.value
        resource.name = self.name

        return resource
    }
}

// MARK: - CoverageCostToBeneficiary NSCopying

extension ModelsR4.CoverageCostToBeneficiary {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageCostToBeneficiary else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.value = self.value
        resource.exception = self.exception

        return resource
    }
}

// MARK: - CoverageCostToBeneficiaryException NSCopying

extension ModelsR4.CoverageCostToBeneficiaryException {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageCostToBeneficiaryException else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - CoverageEligibilityRequest NSCopying

extension ModelsR4.CoverageEligibilityRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityRequest else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.purpose = self.purpose
        resource.patient = self.patient.copy() as! Reference
        resource.serviced = self.serviced
        resource.created = self.created
        resource.enterer = self.enterer?.copy() as? Reference
        resource.provider = self.provider?.copy() as? Reference
        resource.insurer = self.insurer.copy() as! Reference
        resource.facility = self.facility?.copy() as? Reference
        resource.supportingInfo = self.supportingInfo
        resource.insurance = self.insurance
        resource.item = self.item

        return resource
    }
}

// MARK: - CoverageEligibilityRequestInsurance NSCopying

extension ModelsR4.CoverageEligibilityRequestInsurance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityRequestInsurance else {
            return self
        }

        resource.focal = self.focal
        resource.coverage = self.coverage.copy() as! Reference
        resource.businessArrangement = self.businessArrangement

        return resource
    }
}

// MARK: - CoverageEligibilityRequestItem NSCopying

extension ModelsR4.CoverageEligibilityRequestItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityRequestItem else {
            return self
        }

        resource.supportingInfoSequence = self.supportingInfoSequence
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService?.copy() as? CodeableConcept
        resource.modifier = self.modifier
        resource.provider = self.provider?.copy() as? Reference
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.facility = self.facility?.copy() as? Reference
        resource.diagnosis = self.diagnosis
        resource.detail = self.detail

        return resource
    }
}

// MARK: - CoverageEligibilityRequestItemDiagnosis NSCopying

extension ModelsR4.CoverageEligibilityRequestItemDiagnosis {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityRequestItemDiagnosis else {
            return self
        }

        resource.diagnosis = self.diagnosis

        return resource
    }
}

// MARK: - CoverageEligibilityRequestSupportingInfo NSCopying

extension ModelsR4.CoverageEligibilityRequestSupportingInfo {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityRequestSupportingInfo else {
            return self
        }

        resource.sequence = self.sequence
        resource.information = self.information.copy() as! Reference
        resource.appliesToAll = self.appliesToAll

        return resource
    }
}

// MARK: - CoverageEligibilityResponse NSCopying

extension ModelsR4.CoverageEligibilityResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityResponse else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.purpose = self.purpose
        resource.patient = self.patient.copy() as! Reference
        resource.serviced = self.serviced
        resource.created = self.created
        resource.requestor = self.requestor?.copy() as? Reference
        resource.request = self.request.copy() as! Reference
        resource.outcome = self.outcome
        resource.disposition = self.disposition
        resource.insurer = self.insurer.copy() as! Reference
        resource.insurance = self.insurance
        resource.preAuthRef = self.preAuthRef
        resource.form = self.form?.copy() as? CodeableConcept
        resource.error = self.error

        return resource
    }
}

// MARK: - CoverageEligibilityResponseError NSCopying

extension ModelsR4.CoverageEligibilityResponseError {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityResponseError else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept

        return resource
    }
}

// MARK: - CoverageEligibilityResponseInsurance NSCopying

extension ModelsR4.CoverageEligibilityResponseInsurance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityResponseInsurance else {
            return self
        }

        resource.coverage = self.coverage.copy() as! Reference
        resource.inforce = self.inforce
        resource.benefitPeriod = self.benefitPeriod?.copy() as? Period
        resource.item = self.item

        return resource
    }
}

// MARK: - CoverageEligibilityResponseInsuranceItem NSCopying

extension ModelsR4.CoverageEligibilityResponseInsuranceItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityResponseInsuranceItem else {
            return self
        }

        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService?.copy() as? CodeableConcept
        resource.modifier = self.modifier
        resource.provider = self.provider?.copy() as? Reference
        resource.excluded = self.excluded
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.network = self.network?.copy() as? CodeableConcept
        resource.unit = self.unit?.copy() as? CodeableConcept
        resource.term = self.term?.copy() as? CodeableConcept
        resource.benefit = self.benefit
        resource.authorizationRequired = self.authorizationRequired
        resource.authorizationSupporting = self.authorizationSupporting
        resource.authorizationUrl = self.authorizationUrl

        return resource
    }
}

// MARK: - CoverageEligibilityResponseInsuranceItemBenefit NSCopying

extension ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.CoverageEligibilityResponseInsuranceItemBenefit else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.allowed = self.allowed
        resource.used = self.used

        return resource
    }
}

// MARK: - DataRequirement NSCopying

extension ModelsR4.DataRequirement {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DataRequirement else {
            return self
        }

        resource.type = self.type
        resource.profile = self.profile
        resource.subject = self.subject
        resource.mustSupport = self.mustSupport
        resource.codeFilter = self.codeFilter
        resource.dateFilter = self.dateFilter
        resource.limit = self.limit
        resource.sort = self.sort

        return resource
    }
}

// MARK: - DataRequirementCodeFilter NSCopying

extension ModelsR4.DataRequirementCodeFilter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DataRequirementCodeFilter else {
            return self
        }

        resource.path = self.path
        resource.searchParam = self.searchParam
        resource.valueSet = self.valueSet
        resource.code = self.code

        return resource
    }
}

// MARK: - DataRequirementDateFilter NSCopying

extension ModelsR4.DataRequirementDateFilter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DataRequirementDateFilter else {
            return self
        }

        resource.path = self.path
        resource.searchParam = self.searchParam
        resource.value = self.value

        return resource
    }
}

// MARK: - DataRequirementSort NSCopying

extension ModelsR4.DataRequirementSort {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DataRequirementSort else {
            return self
        }

        resource.path = self.path
        resource.direction = self.direction

        return resource
    }
}

// MARK: - DetectedIssue NSCopying

extension ModelsR4.DetectedIssue {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DetectedIssue else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.code = self.code?.copy() as? CodeableConcept
        resource.severity = self.severity
        resource.patient = self.patient?.copy() as? Reference
        resource.identified = self.identified
        resource.author = self.author?.copy() as? Reference
        resource.implicated = self.implicated
        resource.evidence = self.evidence
        resource.detail = self.detail
        resource.reference = self.reference
        resource.mitigation = self.mitigation

        return resource
    }
}

// MARK: - DetectedIssueEvidence NSCopying

extension ModelsR4.DetectedIssueEvidence {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DetectedIssueEvidence else {
            return self
        }

        resource.code = self.code
        resource.detail = self.detail

        return resource
    }
}

// MARK: - DetectedIssueMitigation NSCopying

extension ModelsR4.DetectedIssueMitigation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DetectedIssueMitigation else {
            return self
        }

        resource.action = self.action.copy() as! CodeableConcept
        resource.date = self.date
        resource.author = self.author?.copy() as? Reference

        return resource
    }
}

// MARK: - Device NSCopying

extension ModelsR4.Device {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Device else {
            return self
        }

        resource.identifier = self.identifier
        resource.definition = self.definition?.copy() as? Reference
        resource.udiCarrier = self.udiCarrier
        resource.status = self.status
        resource.statusReason = self.statusReason
        resource.distinctIdentifier = self.distinctIdentifier
        resource.manufacturer = self.manufacturer
        resource.manufactureDate = self.manufactureDate
        resource.expirationDate = self.expirationDate
        resource.lotNumber = self.lotNumber
        resource.serialNumber = self.serialNumber
        resource.deviceName = self.deviceName
        resource.modelNumber = self.modelNumber
        resource.partNumber = self.partNumber
        resource.type = self.type?.copy() as? CodeableConcept
        resource.specialization = self.specialization
        resource.version = self.version
        resource.property = self.property
        resource.patient = self.patient?.copy() as? Reference
        resource.owner = self.owner?.copy() as? Reference
        resource.contact = self.contact
        resource.location = self.location?.copy() as? Reference
        resource.url = self.url
        resource.note = self.note
        resource.safety = self.safety
        resource.parent = self.parent?.copy() as? Reference

        return resource
    }
}

// MARK: - DeviceDefinition NSCopying

extension ModelsR4.DeviceDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceDefinition else {
            return self
        }

        resource.identifier = self.identifier
        resource.udiDeviceIdentifier = self.udiDeviceIdentifier
        resource.manufacturer = self.manufacturer
        resource.deviceName = self.deviceName
        resource.modelNumber = self.modelNumber
        resource.type = self.type?.copy() as? CodeableConcept
        resource.specialization = self.specialization
        resource.version = self.version
        resource.safety = self.safety
        resource.shelfLifeStorage = self.shelfLifeStorage
        resource.physicalCharacteristics = self.physicalCharacteristics?.copy() as? ProdCharacteristic
        resource.languageCode = self.languageCode
        resource.capability = self.capability
        resource.property = self.property
        resource.owner = self.owner?.copy() as? Reference
        resource.contact = self.contact
        resource.url = self.url
        resource.onlineInformation = self.onlineInformation
        resource.note = self.note
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.parentDevice = self.parentDevice?.copy() as? Reference
        resource.material = self.material

        return resource
    }
}

// MARK: - DeviceDefinitionCapability NSCopying

extension ModelsR4.DeviceDefinitionCapability {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceDefinitionCapability else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - DeviceDefinitionDeviceName NSCopying

extension ModelsR4.DeviceDefinitionDeviceName {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceDefinitionDeviceName else {
            return self
        }

        resource.name = self.name
        resource.type = self.type

        return resource
    }
}

// MARK: - DeviceDefinitionMaterial NSCopying

extension ModelsR4.DeviceDefinitionMaterial {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceDefinitionMaterial else {
            return self
        }

        resource.substance = self.substance.copy() as! CodeableConcept
        resource.alternate = self.alternate
        resource.allergenicIndicator = self.allergenicIndicator

        return resource
    }
}

// MARK: - DeviceDefinitionProperty NSCopying

extension ModelsR4.DeviceDefinitionProperty {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceDefinitionProperty else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.valueQuantity = self.valueQuantity
        resource.valueCode = self.valueCode

        return resource
    }
}

// MARK: - DeviceDefinitionSpecialization NSCopying

extension ModelsR4.DeviceDefinitionSpecialization {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceDefinitionSpecialization else {
            return self
        }

        resource.systemType = self.systemType
        resource.version = self.version

        return resource
    }
}

// MARK: - DeviceDefinitionUdiDeviceIdentifier NSCopying

extension ModelsR4.DeviceDefinitionUdiDeviceIdentifier {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceDefinitionUdiDeviceIdentifier else {
            return self
        }

        resource.deviceIdentifier = self.deviceIdentifier
        resource.issuer = self.issuer
        resource.jurisdiction = self.jurisdiction

        return resource
    }
}

// MARK: - DeviceDeviceName NSCopying

extension ModelsR4.DeviceDeviceName {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceDeviceName else {
            return self
        }

        resource.name = self.name
        resource.type = self.type

        return resource
    }
}

// MARK: - DeviceMetric NSCopying

extension ModelsR4.DeviceMetric {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceMetric else {
            return self
        }

        resource.identifier = self.identifier
        resource.type = self.type.copy() as! CodeableConcept
        resource.unit = self.unit?.copy() as? CodeableConcept
        resource.source = self.source?.copy() as? Reference
        resource.parent = self.parent?.copy() as? Reference
        resource.operationalStatus = self.operationalStatus
        resource.color = self.color
        resource.category = self.category
        resource.measurementPeriod = self.measurementPeriod?.copy() as? Timing
        resource.calibration = self.calibration

        return resource
    }
}

// MARK: - DeviceMetricCalibration NSCopying

extension ModelsR4.DeviceMetricCalibration {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceMetricCalibration else {
            return self
        }

        resource.type = self.type
        resource.state = self.state
        resource.time = self.time

        return resource
    }
}

// MARK: - DeviceProperty NSCopying

extension ModelsR4.DeviceProperty {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceProperty else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.valueQuantity = self.valueQuantity
        resource.valueCode = self.valueCode

        return resource
    }
}

// MARK: - DeviceRequest NSCopying

extension ModelsR4.DeviceRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceRequest else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn
        resource.priorRequest = self.priorRequest
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.status = self.status
        resource.intent = self.intent
        resource.priority = self.priority
        resource.code = self.code
        resource.parameter = self.parameter
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrence = self.occurrence
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.performerType = self.performerType?.copy() as? CodeableConcept
        resource.performer = self.performer?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.insurance = self.insurance
        resource.supportingInfo = self.supportingInfo
        resource.note = self.note
        resource.relevantHistory = self.relevantHistory

        return resource
    }
}

// MARK: - DeviceRequestParameter NSCopying

extension ModelsR4.DeviceRequestParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceRequestParameter else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.value = self.value

        return resource
    }
}

// MARK: - DeviceSpecialization NSCopying

extension ModelsR4.DeviceSpecialization {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceSpecialization else {
            return self
        }

        resource.systemType = self.systemType.copy() as! CodeableConcept
        resource.version = self.version

        return resource
    }
}

// MARK: - DeviceUdiCarrier NSCopying

extension ModelsR4.DeviceUdiCarrier {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceUdiCarrier else {
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
}

// MARK: - DeviceUseStatement NSCopying

extension ModelsR4.DeviceUseStatement {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceUseStatement else {
            return self
        }

        resource.identifier = self.identifier
        resource.basedOn = self.basedOn
        resource.status = self.status
        resource.subject = self.subject.copy() as! Reference
        resource.derivedFrom = self.derivedFrom
        resource.timing = self.timing
        resource.recordedOn = self.recordedOn
        resource.source = self.source?.copy() as? Reference
        resource.device = self.device.copy() as! Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.note = self.note

        return resource
    }
}

// MARK: - DeviceVersion NSCopying

extension ModelsR4.DeviceVersion {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DeviceVersion else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.component = self.component?.copy() as? Identifier
        resource.value = self.value

        return resource
    }
}

// MARK: - DiagnosticReport NSCopying

extension ModelsR4.DiagnosticReport {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DiagnosticReport else {
            return self
        }

        resource.identifier = self.identifier
        resource.basedOn = self.basedOn
        resource.status = self.status
        resource.category = self.category
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.effective = self.effective
        resource.issued = self.issued
        resource.performer = self.performer
        resource.resultsInterpreter = self.resultsInterpreter
        resource.specimen = self.specimen
        resource.result = self.result
        resource.imagingStudy = self.imagingStudy
        resource.media = self.media
        resource.conclusion = self.conclusion
        resource.conclusionCode = self.conclusionCode
        resource.presentedForm = self.presentedForm

        return resource
    }
}

// MARK: - DiagnosticReportMedia NSCopying

extension ModelsR4.DiagnosticReportMedia {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DiagnosticReportMedia else {
            return self
        }

        resource.comment = self.comment
        resource.link = self.link.copy() as! Reference

        return resource
    }
}

// MARK: - Distance NSCopying

extension ModelsR4.Distance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Distance else {
            return self
        }


        return resource
    }
}

// MARK: - DocumentManifest NSCopying

extension ModelsR4.DocumentManifest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DocumentManifest else {
            return self
        }

        resource.masterIdentifier = self.masterIdentifier?.copy() as? Identifier
        resource.identifier = self.identifier
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.created = self.created
        resource.author = self.author
        resource.recipient = self.recipient
        resource.source = self.source
        resource.description_fhir = self.description_fhir
        resource.content = self.content
        resource.related = self.related

        return resource
    }
}

// MARK: - DocumentManifestRelated NSCopying

extension ModelsR4.DocumentManifestRelated {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DocumentManifestRelated else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.ref = self.ref?.copy() as? Reference

        return resource
    }
}

// MARK: - DocumentReference NSCopying

extension ModelsR4.DocumentReference {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DocumentReference else {
            return self
        }

        resource.masterIdentifier = self.masterIdentifier?.copy() as? Identifier
        resource.identifier = self.identifier
        resource.status = self.status
        resource.docStatus = self.docStatus
        resource.type = self.type?.copy() as? CodeableConcept
        resource.category = self.category
        resource.subject = self.subject?.copy() as? Reference
        resource.date = self.date
        resource.author = self.author
        resource.authenticator = self.authenticator?.copy() as? Reference
        resource.custodian = self.custodian?.copy() as? Reference
        resource.relatesTo = self.relatesTo
        resource.description_fhir = self.description_fhir
        resource.securityLabel = self.securityLabel
        resource.content = self.content
        resource.context = self.context?.copy() as? DocumentReferenceContext

        return resource
    }
}

// MARK: - DocumentReferenceContent NSCopying

extension ModelsR4.DocumentReferenceContent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DocumentReferenceContent else {
            return self
        }

        resource.attachment = self.attachment.copy() as! Attachment
        resource.format = self.format?.copy() as? Coding

        return resource
    }
}

// MARK: - DocumentReferenceContext NSCopying

extension ModelsR4.DocumentReferenceContext {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DocumentReferenceContext else {
            return self
        }

        resource.encounter = self.encounter
        resource.event = self.event
        resource.period = self.period?.copy() as? Period
        resource.facilityType = self.facilityType?.copy() as? CodeableConcept
        resource.practiceSetting = self.practiceSetting?.copy() as? CodeableConcept
        resource.sourcePatientInfo = self.sourcePatientInfo?.copy() as? Reference
        resource.related = self.related

        return resource
    }
}

// MARK: - DocumentReferenceRelatesTo NSCopying

extension ModelsR4.DocumentReferenceRelatesTo {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DocumentReferenceRelatesTo else {
            return self
        }

        resource.code = self.code
        resource.target = self.target.copy() as! Reference

        return resource
    }
}

// MARK: - DomainResource NSCopying

extension ModelsR4.DomainResource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DomainResource else {
            return self
        }

        resource.text = self.text?.copy() as? Narrative
        resource.contained = self.contained
        resource.`extension` = self.`extension`
        resource.modifierExtension = self.modifierExtension

        return resource
    }
}

// MARK: - Dosage NSCopying

extension ModelsR4.Dosage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Dosage else {
            return self
        }

        resource.sequence = self.sequence
        resource.text = self.text
        resource.additionalInstruction = self.additionalInstruction
        resource.patientInstruction = self.patientInstruction
        resource.timing = self.timing?.copy() as? Timing
        resource.asNeeded = self.asNeeded
        resource.site = self.site?.copy() as? CodeableConcept
        resource.route = self.route?.copy() as? CodeableConcept
        resource.method = self.method?.copy() as? CodeableConcept
        resource.doseAndRate = self.doseAndRate
        resource.maxDosePerPeriod = self.maxDosePerPeriod?.copy() as? Ratio
        resource.maxDosePerAdministration = self.maxDosePerAdministration?.copy() as? Quantity
        resource.maxDosePerLifetime = self.maxDosePerLifetime?.copy() as? Quantity

        return resource
    }
}

// MARK: - DosageDoseAndRate NSCopying

extension ModelsR4.DosageDoseAndRate {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.DosageDoseAndRate else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.dose = self.dose
        resource.rate = self.rate

        return resource
    }
}

// MARK: - Duration NSCopying

extension ModelsR4.Duration {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Duration else {
            return self
        }


        return resource
    }
}

// MARK: - EffectEvidenceSynthesis NSCopying

extension ModelsR4.EffectEvidenceSynthesis {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EffectEvidenceSynthesis else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.note = self.note
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.synthesisType = self.synthesisType?.copy() as? CodeableConcept
        resource.studyType = self.studyType?.copy() as? CodeableConcept
        resource.population = self.population.copy() as! Reference
        resource.exposure = self.exposure.copy() as! Reference
        resource.exposureAlternative = self.exposureAlternative.copy() as! Reference
        resource.outcome = self.outcome.copy() as! Reference
        resource.sampleSize = self.sampleSize?.copy() as? EffectEvidenceSynthesisSampleSize
        resource.resultsByExposure = self.resultsByExposure
        resource.effectEstimate = self.effectEstimate
        resource.certainty = self.certainty

        return resource
    }
}

// MARK: - EffectEvidenceSynthesisCertainty NSCopying

extension ModelsR4.EffectEvidenceSynthesisCertainty {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EffectEvidenceSynthesisCertainty else {
            return self
        }

        resource.rating = self.rating
        resource.note = self.note
        resource.certaintySubcomponent = self.certaintySubcomponent

        return resource
    }
}

// MARK: - EffectEvidenceSynthesisCertaintyCertaintySubcomponent NSCopying

extension ModelsR4.EffectEvidenceSynthesisCertaintyCertaintySubcomponent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EffectEvidenceSynthesisCertaintyCertaintySubcomponent else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.rating = self.rating
        resource.note = self.note

        return resource
    }
}

// MARK: - EffectEvidenceSynthesisEffectEstimate NSCopying

extension ModelsR4.EffectEvidenceSynthesisEffectEstimate {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EffectEvidenceSynthesisEffectEstimate else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.type = self.type?.copy() as? CodeableConcept
        resource.variantState = self.variantState?.copy() as? CodeableConcept
        resource.value = self.value
        resource.unitOfMeasure = self.unitOfMeasure?.copy() as? CodeableConcept
        resource.precisionEstimate = self.precisionEstimate

        return resource
    }
}

// MARK: - EffectEvidenceSynthesisEffectEstimatePrecisionEstimate NSCopying

extension ModelsR4.EffectEvidenceSynthesisEffectEstimatePrecisionEstimate {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EffectEvidenceSynthesisEffectEstimatePrecisionEstimate else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.level = self.level
        resource.from = self.from
        resource.to = self.to

        return resource
    }
}

// MARK: - EffectEvidenceSynthesisResultsByExposure NSCopying

extension ModelsR4.EffectEvidenceSynthesisResultsByExposure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EffectEvidenceSynthesisResultsByExposure else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.exposureState = self.exposureState
        resource.variantState = self.variantState?.copy() as? CodeableConcept
        resource.riskEvidenceSynthesis = self.riskEvidenceSynthesis.copy() as! Reference

        return resource
    }
}

// MARK: - EffectEvidenceSynthesisSampleSize NSCopying

extension ModelsR4.EffectEvidenceSynthesisSampleSize {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EffectEvidenceSynthesisSampleSize else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.numberOfStudies = self.numberOfStudies
        resource.numberOfParticipants = self.numberOfParticipants

        return resource
    }
}

// MARK: - Element NSCopying

extension ModelsR4.Element: NSCopying {

    public func copy(with zone: NSZone? = nil) -> Any {
        let resource = ModelsR4.Element()

        resource.id = self.id
        resource.`extension` = self.`extension`

        return resource
    }
}

// MARK: - ElementDefinition NSCopying

extension ModelsR4.ElementDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinition else {
            return self
        }

        resource.path = self.path
        resource.representation = self.representation
        resource.sliceName = self.sliceName
        resource.sliceIsConstraining = self.sliceIsConstraining
        resource.label = self.label
        resource.code = self.code
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
        resource.type = self.type
        resource.defaultValue = self.defaultValue
        resource.meaningWhenMissing = self.meaningWhenMissing
        resource.orderMeaning = self.orderMeaning
        resource.fixed = self.fixed
        resource.pattern = self.pattern
        resource.example = self.example
        resource.minValue = self.minValue
        resource.maxValue = self.maxValue
        resource.maxLength = self.maxLength
        resource.condition = self.condition
        resource.constraint = self.constraint
        resource.mustSupport = self.mustSupport
        resource.isModifier = self.isModifier
        resource.isModifierReason = self.isModifierReason
        resource.isSummary = self.isSummary
        resource.binding = self.binding?.copy() as? ElementDefinitionBinding
        resource.mapping = self.mapping

        return resource
    }
}

// MARK: - ElementDefinitionBase NSCopying

extension ModelsR4.ElementDefinitionBase {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinitionBase else {
            return self
        }

        resource.path = self.path
        resource.min = self.min
        resource.max = self.max

        return resource
    }
}

// MARK: - ElementDefinitionBinding NSCopying

extension ModelsR4.ElementDefinitionBinding {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinitionBinding else {
            return self
        }

        resource.strength = self.strength
        resource.description_fhir = self.description_fhir
        resource.valueSet = self.valueSet

        return resource
    }
}

// MARK: - ElementDefinitionConstraint NSCopying

extension ModelsR4.ElementDefinitionConstraint {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinitionConstraint else {
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
}

// MARK: - ElementDefinitionExample NSCopying

extension ModelsR4.ElementDefinitionExample {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinitionExample else {
            return self
        }

        resource.label = self.label
        resource.value = self.value

        return resource
    }
}

// MARK: - ElementDefinitionMapping NSCopying

extension ModelsR4.ElementDefinitionMapping {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinitionMapping else {
            return self
        }

        resource.identity = self.identity
        resource.language = self.language
        resource.map = self.map
        resource.comment = self.comment

        return resource
    }
}

// MARK: - ElementDefinitionSlicing NSCopying

extension ModelsR4.ElementDefinitionSlicing {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinitionSlicing else {
            return self
        }

        resource.discriminator = self.discriminator
        resource.description_fhir = self.description_fhir
        resource.ordered = self.ordered
        resource.rules = self.rules

        return resource
    }
}

// MARK: - ElementDefinitionSlicingDiscriminator NSCopying

extension ModelsR4.ElementDefinitionSlicingDiscriminator {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinitionSlicingDiscriminator else {
            return self
        }

        resource.type = self.type
        resource.path = self.path

        return resource
    }
}

// MARK: - ElementDefinitionType NSCopying

extension ModelsR4.ElementDefinitionType {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ElementDefinitionType else {
            return self
        }

        resource.code = self.code
        resource.profile = self.profile
        resource.targetProfile = self.targetProfile
        resource.aggregation = self.aggregation
        resource.versioning = self.versioning

        return resource
    }
}

// MARK: - Encounter NSCopying

extension ModelsR4.Encounter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Encounter else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.statusHistory = self.statusHistory
        resource.`class` = self.`class`.copy() as! Coding
        resource.classHistory = self.classHistory
        resource.type = self.type
        resource.serviceType = self.serviceType?.copy() as? CodeableConcept
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.episodeOfCare = self.episodeOfCare
        resource.basedOn = self.basedOn
        resource.participant = self.participant
        resource.appointment = self.appointment
        resource.period = self.period?.copy() as? Period
        resource.length = self.length?.copy() as? Duration
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.diagnosis = self.diagnosis
        resource.account = self.account
        resource.hospitalization = self.hospitalization?.copy() as? EncounterHospitalization
        resource.location = self.location
        resource.serviceProvider = self.serviceProvider?.copy() as? Reference
        resource.partOf = self.partOf?.copy() as? Reference

        return resource
    }
}

// MARK: - EncounterClassHistory NSCopying

extension ModelsR4.EncounterClassHistory {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EncounterClassHistory else {
            return self
        }

        resource.`class` = self.`class`.copy() as! Coding
        resource.period = self.period.copy() as! Period

        return resource
    }
}

// MARK: - EncounterDiagnosis NSCopying

extension ModelsR4.EncounterDiagnosis {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EncounterDiagnosis else {
            return self
        }

        resource.condition = self.condition.copy() as! Reference
        resource.use = self.use?.copy() as? CodeableConcept
        resource.rank = self.rank

        return resource
    }
}

// MARK: - EncounterHospitalization NSCopying

extension ModelsR4.EncounterHospitalization {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EncounterHospitalization else {
            return self
        }

        resource.preAdmissionIdentifier = self.preAdmissionIdentifier?.copy() as? Identifier
        resource.origin = self.origin?.copy() as? Reference
        resource.admitSource = self.admitSource?.copy() as? CodeableConcept
        resource.reAdmission = self.reAdmission?.copy() as? CodeableConcept
        resource.dietPreference = self.dietPreference
        resource.specialCourtesy = self.specialCourtesy
        resource.specialArrangement = self.specialArrangement
        resource.destination = self.destination?.copy() as? Reference
        resource.dischargeDisposition = self.dischargeDisposition?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - EncounterLocation NSCopying

extension ModelsR4.EncounterLocation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EncounterLocation else {
            return self
        }

        resource.location = self.location.copy() as! Reference
        resource.status = self.status
        resource.physicalType = self.physicalType?.copy() as? CodeableConcept
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - EncounterParticipant NSCopying

extension ModelsR4.EncounterParticipant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EncounterParticipant else {
            return self
        }

        resource.type = self.type
        resource.period = self.period?.copy() as? Period
        resource.individual = self.individual?.copy() as? Reference

        return resource
    }
}

// MARK: - EncounterStatusHistory NSCopying

extension ModelsR4.EncounterStatusHistory {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EncounterStatusHistory else {
            return self
        }

        resource.status = self.status
        resource.period = self.period.copy() as! Period

        return resource
    }
}

// MARK: - Endpoint NSCopying

extension ModelsR4.Endpoint {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Endpoint else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.connectionType = self.connectionType.copy() as! Coding
        resource.name = self.name
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.contact = self.contact
        resource.period = self.period?.copy() as? Period
        resource.payloadType = self.payloadType
        resource.payloadMimeType = self.payloadMimeType
        resource.address = self.address
        resource.header = self.header

        return resource
    }
}

// MARK: - EnrollmentRequest NSCopying

extension ModelsR4.EnrollmentRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EnrollmentRequest else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.created = self.created
        resource.insurer = self.insurer?.copy() as? Reference
        resource.provider = self.provider?.copy() as? Reference
        resource.candidate = self.candidate?.copy() as? Reference
        resource.coverage = self.coverage?.copy() as? Reference

        return resource
    }
}

// MARK: - EnrollmentResponse NSCopying

extension ModelsR4.EnrollmentResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EnrollmentResponse else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.request = self.request?.copy() as? Reference
        resource.outcome = self.outcome
        resource.disposition = self.disposition
        resource.created = self.created
        resource.organization = self.organization?.copy() as? Reference
        resource.requestProvider = self.requestProvider?.copy() as? Reference

        return resource
    }
}

// MARK: - EpisodeOfCare NSCopying

extension ModelsR4.EpisodeOfCare {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EpisodeOfCare else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.statusHistory = self.statusHistory
        resource.type = self.type
        resource.diagnosis = self.diagnosis
        resource.patient = self.patient.copy() as! Reference
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.period = self.period?.copy() as? Period
        resource.referralRequest = self.referralRequest
        resource.careManager = self.careManager?.copy() as? Reference
        resource.team = self.team
        resource.account = self.account

        return resource
    }
}

// MARK: - EpisodeOfCareDiagnosis NSCopying

extension ModelsR4.EpisodeOfCareDiagnosis {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EpisodeOfCareDiagnosis else {
            return self
        }

        resource.condition = self.condition.copy() as! Reference
        resource.role = self.role?.copy() as? CodeableConcept
        resource.rank = self.rank

        return resource
    }
}

// MARK: - EpisodeOfCareStatusHistory NSCopying

extension ModelsR4.EpisodeOfCareStatusHistory {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EpisodeOfCareStatusHistory else {
            return self
        }

        resource.status = self.status
        resource.period = self.period.copy() as! Period

        return resource
    }
}

// MARK: - EventDefinition NSCopying

extension ModelsR4.EventDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EventDefinition else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.trigger = self.trigger

        return resource
    }
}

// MARK: - Evidence NSCopying

extension ModelsR4.Evidence {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Evidence else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.shortTitle = self.shortTitle
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.note = self.note
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.exposureBackground = self.exposureBackground.copy() as! Reference
        resource.exposureVariant = self.exposureVariant
        resource.outcome = self.outcome

        return resource
    }
}

// MARK: - EvidenceVariable NSCopying

extension ModelsR4.EvidenceVariable {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EvidenceVariable else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.shortTitle = self.shortTitle
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.note = self.note
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.type = self.type
        resource.characteristic = self.characteristic

        return resource
    }
}

// MARK: - EvidenceVariableCharacteristic NSCopying

extension ModelsR4.EvidenceVariableCharacteristic {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.EvidenceVariableCharacteristic else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.definition = self.definition
        resource.usageContext = self.usageContext
        resource.exclude = self.exclude
        resource.participantEffective = self.participantEffective
        resource.timeFromStart = self.timeFromStart?.copy() as? Duration
        resource.groupMeasure = self.groupMeasure

        return resource
    }
}

// MARK: - ExampleScenario NSCopying

extension ModelsR4.ExampleScenario {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenario else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.copyright = self.copyright
        resource.purpose = self.purpose
        resource.actor = self.actor
        resource.instance = self.instance
        resource.process = self.process
        resource.workflow = self.workflow

        return resource
    }
}

// MARK: - ExampleScenarioActor NSCopying

extension ModelsR4.ExampleScenarioActor {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenarioActor else {
            return self
        }

        resource.actorId = self.actorId
        resource.type = self.type
        resource.name = self.name
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - ExampleScenarioInstance NSCopying

extension ModelsR4.ExampleScenarioInstance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenarioInstance else {
            return self
        }

        resource.resourceId = self.resourceId
        resource.resourceType = self.resourceType
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.version = self.version
        resource.containedInstance = self.containedInstance

        return resource
    }
}

// MARK: - ExampleScenarioInstanceContainedInstance NSCopying

extension ModelsR4.ExampleScenarioInstanceContainedInstance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenarioInstanceContainedInstance else {
            return self
        }

        resource.resourceId = self.resourceId
        resource.versionId = self.versionId

        return resource
    }
}

// MARK: - ExampleScenarioInstanceVersion NSCopying

extension ModelsR4.ExampleScenarioInstanceVersion {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenarioInstanceVersion else {
            return self
        }

        resource.versionId = self.versionId
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - ExampleScenarioProcess NSCopying

extension ModelsR4.ExampleScenarioProcess {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenarioProcess else {
            return self
        }

        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.preConditions = self.preConditions
        resource.postConditions = self.postConditions
        resource.step = self.step

        return resource
    }
}

// MARK: - ExampleScenarioProcessStep NSCopying

extension ModelsR4.ExampleScenarioProcessStep {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenarioProcessStep else {
            return self
        }

        resource.process = self.process
        resource.pause = self.pause
        resource.operation = self.operation?.copy() as? ExampleScenarioProcessStepOperation
        resource.alternative = self.alternative

        return resource
    }
}

// MARK: - ExampleScenarioProcessStepAlternative NSCopying

extension ModelsR4.ExampleScenarioProcessStepAlternative {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenarioProcessStepAlternative else {
            return self
        }

        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.step = self.step

        return resource
    }
}

// MARK: - ExampleScenarioProcessStepOperation NSCopying

extension ModelsR4.ExampleScenarioProcessStepOperation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExampleScenarioProcessStepOperation else {
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
}

// MARK: - ExplanationOfBenefit NSCopying

extension ModelsR4.ExplanationOfBenefit {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefit else {
            return self
        }

        resource.identifier = self.identifier
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
        resource.related = self.related
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
        resource.preAuthRefPeriod = self.preAuthRefPeriod
        resource.careTeam = self.careTeam
        resource.supportingInfo = self.supportingInfo
        resource.diagnosis = self.diagnosis
        resource.procedure = self.procedure
        resource.precedence = self.precedence
        resource.insurance = self.insurance
        resource.accident = self.accident?.copy() as? ExplanationOfBenefitAccident
        resource.item = self.item
        resource.addItem = self.addItem
        resource.adjudication = self.adjudication
        resource.total = self.total
        resource.payment = self.payment?.copy() as? ExplanationOfBenefitPayment
        resource.formCode = self.formCode?.copy() as? CodeableConcept
        resource.form = self.form?.copy() as? Attachment
        resource.processNote = self.processNote
        resource.benefitPeriod = self.benefitPeriod?.copy() as? Period
        resource.benefitBalance = self.benefitBalance

        return resource
    }
}

// MARK: - ExplanationOfBenefitAccident NSCopying

extension ModelsR4.ExplanationOfBenefitAccident {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitAccident else {
            return self
        }

        resource.date = self.date
        resource.type = self.type?.copy() as? CodeableConcept
        resource.location = self.location

        return resource
    }
}

// MARK: - ExplanationOfBenefitAddItem NSCopying

extension ModelsR4.ExplanationOfBenefitAddItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitAddItem else {
            return self
        }

        resource.itemSequence = self.itemSequence
        resource.detailSequence = self.detailSequence
        resource.subDetailSequence = self.subDetailSequence
        resource.provider = self.provider
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.programCode = self.programCode
        resource.serviced = self.serviced
        resource.location = self.location
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.subSite = self.subSite
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication
        resource.detail = self.detail

        return resource
    }
}

// MARK: - ExplanationOfBenefitAddItemDetail NSCopying

extension ModelsR4.ExplanationOfBenefitAddItemDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitAddItemDetail else {
            return self
        }

        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication
        resource.subDetail = self.subDetail

        return resource
    }
}

// MARK: - ExplanationOfBenefitAddItemDetailSubDetail NSCopying

extension ModelsR4.ExplanationOfBenefitAddItemDetailSubDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitAddItemDetailSubDetail else {
            return self
        }

        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication

        return resource
    }
}

// MARK: - ExplanationOfBenefitBenefitBalance NSCopying

extension ModelsR4.ExplanationOfBenefitBenefitBalance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitBenefitBalance else {
            return self
        }

        resource.category = self.category.copy() as! CodeableConcept
        resource.excluded = self.excluded
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.network = self.network?.copy() as? CodeableConcept
        resource.unit = self.unit?.copy() as? CodeableConcept
        resource.term = self.term?.copy() as? CodeableConcept
        resource.financial = self.financial

        return resource
    }
}

// MARK: - ExplanationOfBenefitBenefitBalanceFinancial NSCopying

extension ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitBenefitBalanceFinancial else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.allowed = self.allowed
        resource.used = self.used

        return resource
    }
}

// MARK: - ExplanationOfBenefitCareTeam NSCopying

extension ModelsR4.ExplanationOfBenefitCareTeam {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitCareTeam else {
            return self
        }

        resource.sequence = self.sequence
        resource.provider = self.provider.copy() as! Reference
        resource.responsible = self.responsible
        resource.role = self.role?.copy() as? CodeableConcept
        resource.qualification = self.qualification?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ExplanationOfBenefitDiagnosis NSCopying

extension ModelsR4.ExplanationOfBenefitDiagnosis {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitDiagnosis else {
            return self
        }

        resource.sequence = self.sequence
        resource.diagnosis = self.diagnosis
        resource.type = self.type
        resource.onAdmission = self.onAdmission?.copy() as? CodeableConcept
        resource.packageCode = self.packageCode?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ExplanationOfBenefitInsurance NSCopying

extension ModelsR4.ExplanationOfBenefitInsurance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitInsurance else {
            return self
        }

        resource.focal = self.focal
        resource.coverage = self.coverage.copy() as! Reference
        resource.preAuthRef = self.preAuthRef

        return resource
    }
}

// MARK: - ExplanationOfBenefitItem NSCopying

extension ModelsR4.ExplanationOfBenefitItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitItem else {
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
        resource.modifier = self.modifier
        resource.programCode = self.programCode
        resource.serviced = self.serviced
        resource.location = self.location
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.subSite = self.subSite
        resource.encounter = self.encounter
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication
        resource.detail = self.detail

        return resource
    }
}

// MARK: - ExplanationOfBenefitItemAdjudication NSCopying

extension ModelsR4.ExplanationOfBenefitItemAdjudication {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitItemAdjudication else {
            return self
        }

        resource.category = self.category.copy() as! CodeableConcept
        resource.reason = self.reason?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Money
        resource.value = self.value

        return resource
    }
}

// MARK: - ExplanationOfBenefitItemDetail NSCopying

extension ModelsR4.ExplanationOfBenefitItemDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitItemDetail else {
            return self
        }

        resource.sequence = self.sequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.programCode = self.programCode
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication
        resource.subDetail = self.subDetail

        return resource
    }
}

// MARK: - ExplanationOfBenefitItemDetailSubDetail NSCopying

extension ModelsR4.ExplanationOfBenefitItemDetailSubDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitItemDetailSubDetail else {
            return self
        }

        resource.sequence = self.sequence
        resource.revenue = self.revenue?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.productOrService = self.productOrService.copy() as! CodeableConcept
        resource.modifier = self.modifier
        resource.programCode = self.programCode
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.unitPrice = self.unitPrice?.copy() as? Money
        resource.factor = self.factor
        resource.net = self.net?.copy() as? Money
        resource.udi = self.udi
        resource.noteNumber = self.noteNumber
        resource.adjudication = self.adjudication

        return resource
    }
}

// MARK: - ExplanationOfBenefitPayee NSCopying

extension ModelsR4.ExplanationOfBenefitPayee {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitPayee else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.party = self.party?.copy() as? Reference

        return resource
    }
}

// MARK: - ExplanationOfBenefitPayment NSCopying

extension ModelsR4.ExplanationOfBenefitPayment {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitPayment else {
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
}

// MARK: - ExplanationOfBenefitProcedure NSCopying

extension ModelsR4.ExplanationOfBenefitProcedure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitProcedure else {
            return self
        }

        resource.sequence = self.sequence
        resource.type = self.type
        resource.date = self.date
        resource.procedure = self.procedure
        resource.udi = self.udi

        return resource
    }
}

// MARK: - ExplanationOfBenefitProcessNote NSCopying

extension ModelsR4.ExplanationOfBenefitProcessNote {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitProcessNote else {
            return self
        }

        resource.number = self.number
        resource.type = self.type
        resource.text = self.text
        resource.language = self.language?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ExplanationOfBenefitRelated NSCopying

extension ModelsR4.ExplanationOfBenefitRelated {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitRelated else {
            return self
        }

        resource.claim = self.claim?.copy() as? Reference
        resource.relationship = self.relationship?.copy() as? CodeableConcept
        resource.reference = self.reference?.copy() as? Identifier

        return resource
    }
}

// MARK: - ExplanationOfBenefitSupportingInfo NSCopying

extension ModelsR4.ExplanationOfBenefitSupportingInfo {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitSupportingInfo else {
            return self
        }

        resource.sequence = self.sequence
        resource.category = self.category.copy() as! CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.timing = self.timing
        resource.value = self.value
        resource.reason = self.reason?.copy() as? Coding

        return resource
    }
}

// MARK: - ExplanationOfBenefitTotal NSCopying

extension ModelsR4.ExplanationOfBenefitTotal {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ExplanationOfBenefitTotal else {
            return self
        }

        resource.category = self.category.copy() as! CodeableConcept
        resource.amount = self.amount.copy() as! Money

        return resource
    }
}

// MARK: - Expression NSCopying

extension ModelsR4.Expression {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Expression else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.name = self.name
        resource.language = self.language
        resource.expression = self.expression
        resource.reference = self.reference

        return resource
    }
}

// MARK: - Extension NSCopying

extension ModelsR4.Extension {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Extension else {
            return self
        }

        resource.url = self.url
        resource.value = self.value

        return resource
    }
}

// MARK: - FHIRAbstractResource NSCopying

extension ModelsR4.FHIRAbstractResource: NSCopying {

    public func copy(with zone: NSZone? = nil) -> Any {
        let resource = ModelsR4.FHIRAbstractResource()


        return resource
    }
}

// MARK: - FamilyMemberHistory NSCopying

extension ModelsR4.FamilyMemberHistory {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.FamilyMemberHistory else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.status = self.status
        resource.dataAbsentReason = self.dataAbsentReason?.copy() as? CodeableConcept
        resource.patient = self.patient.copy() as! Reference
        resource.date = self.date
        resource.name = self.name
        resource.relationship = self.relationship.copy() as! CodeableConcept
        resource.sex = self.sex?.copy() as? CodeableConcept
        resource.born = self.born
        resource.age = self.age
        resource.estimatedAge = self.estimatedAge
        resource.deceased = self.deceased
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.note = self.note
        resource.condition = self.condition

        return resource
    }
}

// MARK: - FamilyMemberHistoryCondition NSCopying

extension ModelsR4.FamilyMemberHistoryCondition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.FamilyMemberHistoryCondition else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.outcome = self.outcome?.copy() as? CodeableConcept
        resource.contributedToDeath = self.contributedToDeath
        resource.onset = self.onset
        resource.note = self.note

        return resource
    }
}

// MARK: - Flag NSCopying

extension ModelsR4.Flag {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Flag else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.category = self.category
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.period = self.period?.copy() as? Period
        resource.encounter = self.encounter?.copy() as? Reference
        resource.author = self.author?.copy() as? Reference

        return resource
    }
}

// MARK: - Goal NSCopying

extension ModelsR4.Goal {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Goal else {
            return self
        }

        resource.identifier = self.identifier
        resource.lifecycleStatus = self.lifecycleStatus
        resource.achievementStatus = self.achievementStatus?.copy() as? CodeableConcept
        resource.category = self.category
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir.copy() as! CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.start = self.start
        resource.target = self.target
        resource.statusDate = self.statusDate
        resource.statusReason = self.statusReason
        resource.expressedBy = self.expressedBy?.copy() as? Reference
        resource.addresses = self.addresses
        resource.note = self.note
        resource.outcomeCode = self.outcomeCode
        resource.outcomeReference = self.outcomeReference

        return resource
    }
}

// MARK: - GoalTarget NSCopying

extension ModelsR4.GoalTarget {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.GoalTarget else {
            return self
        }

        resource.measure = self.measure?.copy() as? CodeableConcept
        resource.detail = self.detail
        resource.due = self.due

        return resource
    }
}

// MARK: - GraphDefinition NSCopying

extension ModelsR4.GraphDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.GraphDefinition else {
            return self
        }

        resource.url = self.url
        resource.version = self.version
        resource.name = self.name
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.start = self.start
        resource.profile = self.profile
        resource.link = self.link

        return resource
    }
}

// MARK: - GraphDefinitionLink NSCopying

extension ModelsR4.GraphDefinitionLink {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.GraphDefinitionLink else {
            return self
        }

        resource.path = self.path
        resource.sliceName = self.sliceName
        resource.min = self.min
        resource.max = self.max
        resource.description_fhir = self.description_fhir
        resource.target = self.target

        return resource
    }
}

// MARK: - GraphDefinitionLinkTarget NSCopying

extension ModelsR4.GraphDefinitionLinkTarget {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.GraphDefinitionLinkTarget else {
            return self
        }

        resource.type = self.type
        resource.params = self.params
        resource.profile = self.profile
        resource.compartment = self.compartment
        resource.link = self.link

        return resource
    }
}

// MARK: - GraphDefinitionLinkTargetCompartment NSCopying

extension ModelsR4.GraphDefinitionLinkTargetCompartment {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.GraphDefinitionLinkTargetCompartment else {
            return self
        }

        resource.use = self.use
        resource.code = self.code
        resource.rule = self.rule
        resource.expression = self.expression
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - Group NSCopying

extension ModelsR4.Group {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Group else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.type = self.type
        resource.actual = self.actual
        resource.code = self.code?.copy() as? CodeableConcept
        resource.name = self.name
        resource.quantity = self.quantity
        resource.managingEntity = self.managingEntity?.copy() as? Reference
        resource.characteristic = self.characteristic
        resource.member = self.member

        return resource
    }
}

// MARK: - GroupCharacteristic NSCopying

extension ModelsR4.GroupCharacteristic {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.GroupCharacteristic else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.value = self.value
        resource.exclude = self.exclude
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - GroupMember NSCopying

extension ModelsR4.GroupMember {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.GroupMember else {
            return self
        }

        resource.entity = self.entity.copy() as! Reference
        resource.period = self.period?.copy() as? Period
        resource.inactive = self.inactive

        return resource
    }
}

// MARK: - GuidanceResponse NSCopying

extension ModelsR4.GuidanceResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.GuidanceResponse else {
            return self
        }

        resource.requestIdentifier = self.requestIdentifier?.copy() as? Identifier
        resource.identifier = self.identifier
        resource.module = self.module
        resource.status = self.status
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrenceDateTime = self.occurrenceDateTime
        resource.performer = self.performer?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.note = self.note
        resource.evaluationMessage = self.evaluationMessage
        resource.outputParameters = self.outputParameters?.copy() as? Reference
        resource.result = self.result?.copy() as? Reference
        resource.dataRequirement = self.dataRequirement

        return resource
    }
}

// MARK: - HealthcareService NSCopying

extension ModelsR4.HealthcareService {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.HealthcareService else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.providedBy = self.providedBy?.copy() as? Reference
        resource.category = self.category
        resource.type = self.type
        resource.specialty = self.specialty
        resource.location = self.location
        resource.name = self.name
        resource.comment = self.comment
        resource.extraDetails = self.extraDetails
        resource.photo = self.photo?.copy() as? Attachment
        resource.telecom = self.telecom
        resource.coverageArea = self.coverageArea
        resource.serviceProvisionCode = self.serviceProvisionCode
        resource.eligibility = self.eligibility
        resource.program = self.program
        resource.characteristic = self.characteristic
        resource.communication = self.communication
        resource.referralMethod = self.referralMethod
        resource.appointmentRequired = self.appointmentRequired
        resource.availableTime = self.availableTime
        resource.notAvailable = self.notAvailable
        resource.availabilityExceptions = self.availabilityExceptions
        resource.endpoint = self.endpoint

        return resource
    }
}

// MARK: - HealthcareServiceAvailableTime NSCopying

extension ModelsR4.HealthcareServiceAvailableTime {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.HealthcareServiceAvailableTime else {
            return self
        }

        resource.daysOfWeek = self.daysOfWeek
        resource.allDay = self.allDay
        resource.availableStartTime = self.availableStartTime
        resource.availableEndTime = self.availableEndTime

        return resource
    }
}

// MARK: - HealthcareServiceEligibility NSCopying

extension ModelsR4.HealthcareServiceEligibility {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.HealthcareServiceEligibility else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.comment = self.comment

        return resource
    }
}

// MARK: - HealthcareServiceNotAvailable NSCopying

extension ModelsR4.HealthcareServiceNotAvailable {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.HealthcareServiceNotAvailable else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.during = self.during?.copy() as? Period

        return resource
    }
}

// MARK: - HumanName NSCopying

extension ModelsR4.HumanName {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.HumanName else {
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
}

// MARK: - Identifier NSCopying

extension ModelsR4.Identifier {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Identifier else {
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
}

// MARK: - ImagingStudy NSCopying

extension ModelsR4.ImagingStudy {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImagingStudy else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.modality = self.modality
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.started = self.started
        resource.basedOn = self.basedOn
        resource.referrer = self.referrer?.copy() as? Reference
        resource.interpreter = self.interpreter
        resource.endpoint = self.endpoint
        resource.numberOfSeries = self.numberOfSeries
        resource.numberOfInstances = self.numberOfInstances
        resource.procedureReference = self.procedureReference?.copy() as? Reference
        resource.procedureCode = self.procedureCode
        resource.location = self.location?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.note = self.note
        resource.description_fhir = self.description_fhir
        resource.series = self.series

        return resource
    }
}

// MARK: - ImagingStudySeries NSCopying

extension ModelsR4.ImagingStudySeries {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImagingStudySeries else {
            return self
        }

        resource.uid = self.uid
        resource.number = self.number
        resource.modality = self.modality.copy() as! Coding
        resource.description_fhir = self.description_fhir
        resource.numberOfInstances = self.numberOfInstances
        resource.endpoint = self.endpoint
        resource.bodySite = self.bodySite?.copy() as? Coding
        resource.laterality = self.laterality?.copy() as? Coding
        resource.specimen = self.specimen
        resource.started = self.started
        resource.performer = self.performer
        resource.instance = self.instance

        return resource
    }
}

// MARK: - ImagingStudySeriesInstance NSCopying

extension ModelsR4.ImagingStudySeriesInstance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImagingStudySeriesInstance else {
            return self
        }

        resource.uid = self.uid
        resource.sopClass = self.sopClass.copy() as! Coding
        resource.number = self.number
        resource.title = self.title

        return resource
    }
}

// MARK: - ImagingStudySeriesPerformer NSCopying

extension ModelsR4.ImagingStudySeriesPerformer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImagingStudySeriesPerformer else {
            return self
        }

        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }
}

// MARK: - Immunization NSCopying

extension ModelsR4.Immunization {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Immunization else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.vaccineCode = self.vaccineCode.copy() as! CodeableConcept
        resource.patient = self.patient.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrence = self.occurrence
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
        resource.performer = self.performer
        resource.note = self.note
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.isSubpotent = self.isSubpotent
        resource.subpotentReason = self.subpotentReason
        resource.education = self.education
        resource.programEligibility = self.programEligibility
        resource.fundingSource = self.fundingSource?.copy() as? CodeableConcept
        resource.reaction = self.reaction
        resource.protocolApplied = self.protocolApplied

        return resource
    }
}

// MARK: - ImmunizationEducation NSCopying

extension ModelsR4.ImmunizationEducation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImmunizationEducation else {
            return self
        }

        resource.documentType = self.documentType
        resource.reference = self.reference
        resource.publicationDate = self.publicationDate
        resource.presentationDate = self.presentationDate

        return resource
    }
}

// MARK: - ImmunizationEvaluation NSCopying

extension ModelsR4.ImmunizationEvaluation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImmunizationEvaluation else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.patient = self.patient.copy() as! Reference
        resource.date = self.date
        resource.authority = self.authority?.copy() as? Reference
        resource.targetDisease = self.targetDisease.copy() as! CodeableConcept
        resource.immunizationEvent = self.immunizationEvent.copy() as! Reference
        resource.doseStatus = self.doseStatus.copy() as! CodeableConcept
        resource.doseStatusReason = self.doseStatusReason
        resource.description_fhir = self.description_fhir
        resource.series = self.series
        resource.doseNumber = self.doseNumber
        resource.seriesDoses = self.seriesDoses

        return resource
    }
}

// MARK: - ImmunizationPerformer NSCopying

extension ModelsR4.ImmunizationPerformer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImmunizationPerformer else {
            return self
        }

        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }
}

// MARK: - ImmunizationProtocolApplied NSCopying

extension ModelsR4.ImmunizationProtocolApplied {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImmunizationProtocolApplied else {
            return self
        }

        resource.series = self.series
        resource.authority = self.authority?.copy() as? Reference
        resource.targetDisease = self.targetDisease
        resource.doseNumber = self.doseNumber
        resource.seriesDoses = self.seriesDoses

        return resource
    }
}

// MARK: - ImmunizationReaction NSCopying

extension ModelsR4.ImmunizationReaction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImmunizationReaction else {
            return self
        }

        resource.date = self.date
        resource.detail = self.detail?.copy() as? Reference
        resource.reported = self.reported

        return resource
    }
}

// MARK: - ImmunizationRecommendation NSCopying

extension ModelsR4.ImmunizationRecommendation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImmunizationRecommendation else {
            return self
        }

        resource.identifier = self.identifier
        resource.patient = self.patient.copy() as! Reference
        resource.date = self.date
        resource.authority = self.authority?.copy() as? Reference
        resource.recommendation = self.recommendation

        return resource
    }
}

// MARK: - ImmunizationRecommendationRecommendation NSCopying

extension ModelsR4.ImmunizationRecommendationRecommendation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImmunizationRecommendationRecommendation else {
            return self
        }

        resource.vaccineCode = self.vaccineCode
        resource.targetDisease = self.targetDisease?.copy() as? CodeableConcept
        resource.contraindicatedVaccineCode = self.contraindicatedVaccineCode
        resource.forecastStatus = self.forecastStatus.copy() as! CodeableConcept
        resource.forecastReason = self.forecastReason
        resource.dateCriterion = self.dateCriterion
        resource.description_fhir = self.description_fhir
        resource.series = self.series
        resource.doseNumber = self.doseNumber
        resource.seriesDoses = self.seriesDoses
        resource.supportingImmunization = self.supportingImmunization
        resource.supportingPatientInformation = self.supportingPatientInformation

        return resource
    }
}

// MARK: - ImmunizationRecommendationRecommendationDateCriterion NSCopying

extension ModelsR4.ImmunizationRecommendationRecommendationDateCriterion {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImmunizationRecommendationRecommendationDateCriterion else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.value = self.value

        return resource
    }
}

// MARK: - ImplementationGuide NSCopying

extension ModelsR4.ImplementationGuide {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuide else {
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
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.copyright = self.copyright
        resource.packageId = self.packageId
        resource.license = self.license
        resource.fhirVersion = self.fhirVersion
        resource.dependsOn = self.dependsOn
        resource.global = self.global
        resource.definition = self.definition?.copy() as? ImplementationGuideDefinition
        resource.manifest = self.manifest?.copy() as? ImplementationGuideManifest

        return resource
    }
}

// MARK: - ImplementationGuideDefinition NSCopying

extension ModelsR4.ImplementationGuideDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideDefinition else {
            return self
        }

        resource.grouping = self.grouping
        resource.resource = self.resource
        resource.page = self.page?.copy() as? ImplementationGuideDefinitionPage
        resource.parameter = self.parameter
        resource.template = self.template

        return resource
    }
}

// MARK: - ImplementationGuideDefinitionGrouping NSCopying

extension ModelsR4.ImplementationGuideDefinitionGrouping {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideDefinitionGrouping else {
            return self
        }

        resource.name = self.name
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - ImplementationGuideDefinitionPage NSCopying

extension ModelsR4.ImplementationGuideDefinitionPage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideDefinitionPage else {
            return self
        }

        resource.name = self.name
        resource.title = self.title
        resource.generation = self.generation
        resource.page = self.page

        return resource
    }
}

// MARK: - ImplementationGuideDefinitionParameter NSCopying

extension ModelsR4.ImplementationGuideDefinitionParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideDefinitionParameter else {
            return self
        }

        resource.code = self.code
        resource.value = self.value

        return resource
    }
}

// MARK: - ImplementationGuideDefinitionResource NSCopying

extension ModelsR4.ImplementationGuideDefinitionResource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideDefinitionResource else {
            return self
        }

        resource.reference = self.reference.copy() as! Reference
        resource.fhirVersion = self.fhirVersion
        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.example = self.example
        resource.groupingId = self.groupingId

        return resource
    }
}

// MARK: - ImplementationGuideDefinitionTemplate NSCopying

extension ModelsR4.ImplementationGuideDefinitionTemplate {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideDefinitionTemplate else {
            return self
        }

        resource.code = self.code
        resource.source = self.source
        resource.scope = self.scope

        return resource
    }
}

// MARK: - ImplementationGuideDependsOn NSCopying

extension ModelsR4.ImplementationGuideDependsOn {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideDependsOn else {
            return self
        }

        resource.uri = self.uri
        resource.packageId = self.packageId
        resource.version = self.version

        return resource
    }
}

// MARK: - ImplementationGuideGlobal NSCopying

extension ModelsR4.ImplementationGuideGlobal {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideGlobal else {
            return self
        }

        resource.type = self.type
        resource.profile = self.profile

        return resource
    }
}

// MARK: - ImplementationGuideManifest NSCopying

extension ModelsR4.ImplementationGuideManifest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideManifest else {
            return self
        }

        resource.rendering = self.rendering
        resource.resource = self.resource
        resource.page = self.page
        resource.image = self.image
        resource.other = self.other

        return resource
    }
}

// MARK: - ImplementationGuideManifestPage NSCopying

extension ModelsR4.ImplementationGuideManifestPage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideManifestPage else {
            return self
        }

        resource.name = self.name
        resource.title = self.title
        resource.anchor = self.anchor

        return resource
    }
}

// MARK: - ImplementationGuideManifestResource NSCopying

extension ModelsR4.ImplementationGuideManifestResource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ImplementationGuideManifestResource else {
            return self
        }

        resource.reference = self.reference.copy() as! Reference
        resource.example = self.example
        resource.relativePath = self.relativePath

        return resource
    }
}

// MARK: - InsurancePlan NSCopying

extension ModelsR4.InsurancePlan {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlan else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.type = self.type
        resource.name = self.name
        resource.alias = self.alias
        resource.period = self.period?.copy() as? Period
        resource.ownedBy = self.ownedBy?.copy() as? Reference
        resource.administeredBy = self.administeredBy?.copy() as? Reference
        resource.coverageArea = self.coverageArea
        resource.contact = self.contact
        resource.endpoint = self.endpoint
        resource.network = self.network
        resource.coverage = self.coverage
        resource.plan = self.plan

        return resource
    }
}

// MARK: - InsurancePlanContact NSCopying

extension ModelsR4.InsurancePlanContact {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanContact else {
            return self
        }

        resource.purpose = self.purpose?.copy() as? CodeableConcept
        resource.name = self.name?.copy() as? HumanName
        resource.telecom = self.telecom
        resource.address = self.address?.copy() as? Address

        return resource
    }
}

// MARK: - InsurancePlanCoverage NSCopying

extension ModelsR4.InsurancePlanCoverage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanCoverage else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.network = self.network
        resource.benefit = self.benefit

        return resource
    }
}

// MARK: - InsurancePlanCoverageBenefit NSCopying

extension ModelsR4.InsurancePlanCoverageBenefit {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanCoverageBenefit else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.requirement = self.requirement
        resource.limit = self.limit

        return resource
    }
}

// MARK: - InsurancePlanCoverageBenefitLimit NSCopying

extension ModelsR4.InsurancePlanCoverageBenefitLimit {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanCoverageBenefitLimit else {
            return self
        }

        resource.value = self.value?.copy() as? Quantity
        resource.code = self.code?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - InsurancePlanPlan NSCopying

extension ModelsR4.InsurancePlanPlan {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanPlan else {
            return self
        }

        resource.identifier = self.identifier
        resource.type = self.type?.copy() as? CodeableConcept
        resource.coverageArea = self.coverageArea
        resource.network = self.network
        resource.generalCost = self.generalCost
        resource.specificCost = self.specificCost

        return resource
    }
}

// MARK: - InsurancePlanPlanGeneralCost NSCopying

extension ModelsR4.InsurancePlanPlanGeneralCost {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanPlanGeneralCost else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.groupSize = self.groupSize
        resource.cost = self.cost?.copy() as? Money
        resource.comment = self.comment

        return resource
    }
}

// MARK: - InsurancePlanPlanSpecificCost NSCopying

extension ModelsR4.InsurancePlanPlanSpecificCost {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanPlanSpecificCost else {
            return self
        }

        resource.category = self.category.copy() as! CodeableConcept
        resource.benefit = self.benefit

        return resource
    }
}

// MARK: - InsurancePlanPlanSpecificCostBenefit NSCopying

extension ModelsR4.InsurancePlanPlanSpecificCostBenefit {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanPlanSpecificCostBenefit else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.cost = self.cost

        return resource
    }
}

// MARK: - InsurancePlanPlanSpecificCostBenefitCost NSCopying

extension ModelsR4.InsurancePlanPlanSpecificCostBenefitCost {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InsurancePlanPlanSpecificCostBenefitCost else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.applicability = self.applicability?.copy() as? CodeableConcept
        resource.qualifiers = self.qualifiers
        resource.value = self.value?.copy() as? Quantity

        return resource
    }
}

// MARK: - Invoice NSCopying

extension ModelsR4.Invoice {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Invoice else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.cancelledReason = self.cancelledReason
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.recipient = self.recipient?.copy() as? Reference
        resource.date = self.date
        resource.participant = self.participant
        resource.issuer = self.issuer?.copy() as? Reference
        resource.account = self.account?.copy() as? Reference
        resource.lineItem = self.lineItem
        resource.totalPriceComponent = self.totalPriceComponent
        resource.totalNet = self.totalNet?.copy() as? Money
        resource.totalGross = self.totalGross?.copy() as? Money
        resource.paymentTerms = self.paymentTerms
        resource.note = self.note

        return resource
    }
}

// MARK: - InvoiceLineItem NSCopying

extension ModelsR4.InvoiceLineItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InvoiceLineItem else {
            return self
        }

        resource.sequence = self.sequence
        resource.chargeItem = self.chargeItem
        resource.priceComponent = self.priceComponent

        return resource
    }
}

// MARK: - InvoiceLineItemPriceComponent NSCopying

extension ModelsR4.InvoiceLineItemPriceComponent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InvoiceLineItemPriceComponent else {
            return self
        }

        resource.type = self.type
        resource.code = self.code?.copy() as? CodeableConcept
        resource.factor = self.factor
        resource.amount = self.amount?.copy() as? Money

        return resource
    }
}

// MARK: - InvoiceParticipant NSCopying

extension ModelsR4.InvoiceParticipant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.InvoiceParticipant else {
            return self
        }

        resource.role = self.role?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }
}

// MARK: - Library NSCopying

extension ModelsR4.Library {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Library else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.type = self.type.copy() as! CodeableConcept
        resource.subject = self.subject
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.parameter = self.parameter
        resource.dataRequirement = self.dataRequirement
        resource.content = self.content

        return resource
    }
}

// MARK: - Linkage NSCopying

extension ModelsR4.Linkage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Linkage else {
            return self
        }

        resource.active = self.active
        resource.author = self.author?.copy() as? Reference
        resource.item = self.item

        return resource
    }
}

// MARK: - LinkageItem NSCopying

extension ModelsR4.LinkageItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.LinkageItem else {
            return self
        }

        resource.type = self.type
        resource.resource = self.resource.copy() as! Reference

        return resource
    }
}

// MARK: - List NSCopying

extension ModelsR4.List {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.List else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.mode = self.mode
        resource.title = self.title
        resource.code = self.code?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.date = self.date
        resource.source = self.source?.copy() as? Reference
        resource.orderedBy = self.orderedBy?.copy() as? CodeableConcept
        resource.note = self.note
        resource.entry = self.entry
        resource.emptyReason = self.emptyReason?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ListEntry NSCopying

extension ModelsR4.ListEntry {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ListEntry else {
            return self
        }

        resource.flag = self.flag?.copy() as? CodeableConcept
        resource.deleted = self.deleted
        resource.date = self.date
        resource.item = self.item.copy() as! Reference

        return resource
    }
}

// MARK: - Location NSCopying

extension ModelsR4.Location {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Location else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.operationalStatus = self.operationalStatus?.copy() as? Coding
        resource.name = self.name
        resource.alias = self.alias
        resource.description_fhir = self.description_fhir
        resource.mode = self.mode
        resource.type = self.type
        resource.telecom = self.telecom
        resource.address = self.address?.copy() as? Address
        resource.physicalType = self.physicalType?.copy() as? CodeableConcept
        resource.position = self.position?.copy() as? LocationPosition
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.partOf = self.partOf?.copy() as? Reference
        resource.hoursOfOperation = self.hoursOfOperation
        resource.availabilityExceptions = self.availabilityExceptions
        resource.endpoint = self.endpoint

        return resource
    }
}

// MARK: - LocationHoursOfOperation NSCopying

extension ModelsR4.LocationHoursOfOperation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.LocationHoursOfOperation else {
            return self
        }

        resource.daysOfWeek = self.daysOfWeek
        resource.allDay = self.allDay
        resource.openingTime = self.openingTime
        resource.closingTime = self.closingTime

        return resource
    }
}

// MARK: - LocationPosition NSCopying

extension ModelsR4.LocationPosition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.LocationPosition else {
            return self
        }

        resource.longitude = self.longitude
        resource.latitude = self.latitude
        resource.altitude = self.altitude

        return resource
    }
}

// MARK: - MarketingStatus NSCopying

extension ModelsR4.MarketingStatus {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MarketingStatus else {
            return self
        }

        resource.country = self.country.copy() as! CodeableConcept
        resource.jurisdiction = self.jurisdiction?.copy() as? CodeableConcept
        resource.status = self.status.copy() as! CodeableConcept
        resource.dateRange = self.dateRange.copy() as! Period
        resource.restoreDate = self.restoreDate

        return resource
    }
}

// MARK: - Measure NSCopying

extension ModelsR4.Measure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Measure else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.library = self.library
        resource.disclaimer = self.disclaimer
        resource.scoring = self.scoring?.copy() as? CodeableConcept
        resource.compositeScoring = self.compositeScoring?.copy() as? CodeableConcept
        resource.type = self.type
        resource.riskAdjustment = self.riskAdjustment
        resource.rateAggregation = self.rateAggregation
        resource.rationale = self.rationale
        resource.clinicalRecommendationStatement = self.clinicalRecommendationStatement
        resource.improvementNotation = self.improvementNotation?.copy() as? CodeableConcept
        resource.definition = self.definition
        resource.guidance = self.guidance
        resource.group = self.group
        resource.supplementalData = self.supplementalData

        return resource
    }
}

// MARK: - MeasureGroup NSCopying

extension ModelsR4.MeasureGroup {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureGroup else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.population = self.population
        resource.stratifier = self.stratifier

        return resource
    }
}

// MARK: - MeasureGroupPopulation NSCopying

extension ModelsR4.MeasureGroupPopulation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureGroupPopulation else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.criteria = self.criteria.copy() as! Expression

        return resource
    }
}

// MARK: - MeasureGroupStratifier NSCopying

extension ModelsR4.MeasureGroupStratifier {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureGroupStratifier else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.criteria = self.criteria?.copy() as? Expression
        resource.component = self.component

        return resource
    }
}

// MARK: - MeasureGroupStratifierComponent NSCopying

extension ModelsR4.MeasureGroupStratifierComponent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureGroupStratifierComponent else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.criteria = self.criteria.copy() as! Expression

        return resource
    }
}

// MARK: - MeasureReport NSCopying

extension ModelsR4.MeasureReport {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureReport else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.type = self.type
        resource.measure = self.measure
        resource.subject = self.subject?.copy() as? Reference
        resource.date = self.date
        resource.reporter = self.reporter?.copy() as? Reference
        resource.period = self.period.copy() as! Period
        resource.improvementNotation = self.improvementNotation?.copy() as? CodeableConcept
        resource.group = self.group
        resource.evaluatedResource = self.evaluatedResource

        return resource
    }
}

// MARK: - MeasureReportGroup NSCopying

extension ModelsR4.MeasureReportGroup {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureReportGroup else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.population = self.population
        resource.measureScore = self.measureScore?.copy() as? Quantity
        resource.stratifier = self.stratifier

        return resource
    }
}

// MARK: - MeasureReportGroupPopulation NSCopying

extension ModelsR4.MeasureReportGroupPopulation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureReportGroupPopulation else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.count = self.count
        resource.subjectResults = self.subjectResults?.copy() as? Reference

        return resource
    }
}

// MARK: - MeasureReportGroupStratifier NSCopying

extension ModelsR4.MeasureReportGroupStratifier {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureReportGroupStratifier else {
            return self
        }

        resource.code = self.code
        resource.stratum = self.stratum

        return resource
    }
}

// MARK: - MeasureReportGroupStratifierStratum NSCopying

extension ModelsR4.MeasureReportGroupStratifierStratum {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureReportGroupStratifierStratum else {
            return self
        }

        resource.value = self.value?.copy() as? CodeableConcept
        resource.component = self.component
        resource.population = self.population
        resource.measureScore = self.measureScore?.copy() as? Quantity

        return resource
    }
}

// MARK: - MeasureReportGroupStratifierStratumComponent NSCopying

extension ModelsR4.MeasureReportGroupStratifierStratumComponent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureReportGroupStratifierStratumComponent else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.value = self.value.copy() as! CodeableConcept

        return resource
    }
}

// MARK: - MeasureReportGroupStratifierStratumPopulation NSCopying

extension ModelsR4.MeasureReportGroupStratifierStratumPopulation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureReportGroupStratifierStratumPopulation else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.count = self.count
        resource.subjectResults = self.subjectResults?.copy() as? Reference

        return resource
    }
}

// MARK: - MeasureSupplementalData NSCopying

extension ModelsR4.MeasureSupplementalData {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MeasureSupplementalData else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.usage = self.usage
        resource.description_fhir = self.description_fhir
        resource.criteria = self.criteria.copy() as! Expression

        return resource
    }
}

// MARK: - Media NSCopying

extension ModelsR4.Media {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Media else {
            return self
        }

        resource.identifier = self.identifier
        resource.basedOn = self.basedOn
        resource.partOf = self.partOf
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.modality = self.modality?.copy() as? CodeableConcept
        resource.view = self.view?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.created = self.created
        resource.issued = self.issued
        resource.`operator` = self.`operator`?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.deviceName = self.deviceName
        resource.device = self.device?.copy() as? Reference
        resource.height = self.height
        resource.width = self.width
        resource.frames = self.frames
        resource.duration = self.duration
        resource.content = self.content.copy() as! Attachment
        resource.note = self.note

        return resource
    }
}

// MARK: - Medication NSCopying

extension ModelsR4.Medication {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Medication else {
            return self
        }

        resource.identifier = self.identifier
        resource.code = self.code?.copy() as? CodeableConcept
        resource.status = self.status
        resource.manufacturer = self.manufacturer?.copy() as? Reference
        resource.form = self.form?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Ratio
        resource.ingredient = self.ingredient
        resource.batch = self.batch?.copy() as? MedicationBatch

        return resource
    }
}

// MARK: - MedicationAdministration NSCopying

extension ModelsR4.MedicationAdministration {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationAdministration else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiates = self.instantiates
        resource.partOf = self.partOf
        resource.status = self.status
        resource.statusReason = self.statusReason
        resource.category = self.category?.copy() as? CodeableConcept
        resource.medication = self.medication
        resource.subject = self.subject.copy() as! Reference
        resource.context = self.context?.copy() as? Reference
        resource.supportingInformation = self.supportingInformation
        resource.effective = self.effective
        resource.performer = self.performer
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.request = self.request?.copy() as? Reference
        resource.device = self.device
        resource.note = self.note
        resource.dosage = self.dosage?.copy() as? MedicationAdministrationDosage
        resource.eventHistory = self.eventHistory

        return resource
    }
}

// MARK: - MedicationAdministrationDosage NSCopying

extension ModelsR4.MedicationAdministrationDosage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationAdministrationDosage else {
            return self
        }

        resource.text = self.text
        resource.site = self.site?.copy() as? CodeableConcept
        resource.route = self.route?.copy() as? CodeableConcept
        resource.method = self.method?.copy() as? CodeableConcept
        resource.dose = self.dose?.copy() as? Quantity
        resource.rate = self.rate

        return resource
    }
}

// MARK: - MedicationAdministrationPerformer NSCopying

extension ModelsR4.MedicationAdministrationPerformer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationAdministrationPerformer else {
            return self
        }

        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }
}

// MARK: - MedicationBatch NSCopying

extension ModelsR4.MedicationBatch {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationBatch else {
            return self
        }

        resource.lotNumber = self.lotNumber
        resource.expirationDate = self.expirationDate

        return resource
    }
}

// MARK: - MedicationDispense NSCopying

extension ModelsR4.MedicationDispense {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationDispense else {
            return self
        }

        resource.identifier = self.identifier
        resource.partOf = self.partOf
        resource.status = self.status
        resource.statusReason = self.statusReason
        resource.category = self.category?.copy() as? CodeableConcept
        resource.medication = self.medication
        resource.subject = self.subject?.copy() as? Reference
        resource.context = self.context?.copy() as? Reference
        resource.supportingInformation = self.supportingInformation
        resource.performer = self.performer
        resource.location = self.location?.copy() as? Reference
        resource.authorizingPrescription = self.authorizingPrescription
        resource.type = self.type?.copy() as? CodeableConcept
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.daysSupply = self.daysSupply?.copy() as? Quantity
        resource.whenPrepared = self.whenPrepared
        resource.whenHandedOver = self.whenHandedOver
        resource.destination = self.destination?.copy() as? Reference
        resource.receiver = self.receiver
        resource.note = self.note
        resource.dosageInstruction = self.dosageInstruction
        resource.substitution = self.substitution?.copy() as? MedicationDispenseSubstitution
        resource.detectedIssue = self.detectedIssue
        resource.eventHistory = self.eventHistory

        return resource
    }
}

// MARK: - MedicationDispensePerformer NSCopying

extension ModelsR4.MedicationDispensePerformer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationDispensePerformer else {
            return self
        }

        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference

        return resource
    }
}

// MARK: - MedicationDispenseSubstitution NSCopying

extension ModelsR4.MedicationDispenseSubstitution {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationDispenseSubstitution else {
            return self
        }

        resource.wasSubstituted = self.wasSubstituted
        resource.type = self.type?.copy() as? CodeableConcept
        resource.reason = self.reason
        resource.responsibleParty = self.responsibleParty

        return resource
    }
}

// MARK: - MedicationIngredient NSCopying

extension ModelsR4.MedicationIngredient {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationIngredient else {
            return self
        }

        resource.item = self.item
        resource.isActive = self.isActive
        resource.strength = self.strength?.copy() as? Ratio

        return resource
    }
}

// MARK: - MedicationKnowledge NSCopying

extension ModelsR4.MedicationKnowledge {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledge else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.status = self.status
        resource.manufacturer = self.manufacturer?.copy() as? Reference
        resource.doseForm = self.doseForm?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Quantity
        resource.synonym = self.synonym
        resource.relatedMedicationKnowledge = self.relatedMedicationKnowledge
        resource.associatedMedication = self.associatedMedication
        resource.productType = self.productType
        resource.monograph = self.monograph
        resource.ingredient = self.ingredient
        resource.preparationInstruction = self.preparationInstruction
        resource.intendedRoute = self.intendedRoute
        resource.cost = self.cost
        resource.monitoringProgram = self.monitoringProgram
        resource.administrationGuidelines = self.administrationGuidelines
        resource.medicineClassification = self.medicineClassification
        resource.packaging = self.packaging?.copy() as? MedicationKnowledgePackaging
        resource.drugCharacteristic = self.drugCharacteristic
        resource.contraindication = self.contraindication
        resource.regulatory = self.regulatory
        resource.kinetics = self.kinetics

        return resource
    }
}

// MARK: - MedicationKnowledgeAdministrationGuidelines NSCopying

extension ModelsR4.MedicationKnowledgeAdministrationGuidelines {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeAdministrationGuidelines else {
            return self
        }

        resource.dosage = self.dosage
        resource.indication = self.indication
        resource.patientCharacteristics = self.patientCharacteristics

        return resource
    }
}

// MARK: - MedicationKnowledgeAdministrationGuidelinesDosage NSCopying

extension ModelsR4.MedicationKnowledgeAdministrationGuidelinesDosage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeAdministrationGuidelinesDosage else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.dosage = self.dosage

        return resource
    }
}

// MARK: - MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics NSCopying

extension ModelsR4.MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics else {
            return self
        }

        resource.characteristic = self.characteristic
        resource.value = self.value

        return resource
    }
}

// MARK: - MedicationKnowledgeCost NSCopying

extension ModelsR4.MedicationKnowledgeCost {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeCost else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.source = self.source
        resource.cost = self.cost.copy() as! Money

        return resource
    }
}

// MARK: - MedicationKnowledgeDrugCharacteristic NSCopying

extension ModelsR4.MedicationKnowledgeDrugCharacteristic {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeDrugCharacteristic else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.value = self.value

        return resource
    }
}

// MARK: - MedicationKnowledgeIngredient NSCopying

extension ModelsR4.MedicationKnowledgeIngredient {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeIngredient else {
            return self
        }

        resource.item = self.item
        resource.isActive = self.isActive
        resource.strength = self.strength?.copy() as? Ratio

        return resource
    }
}

// MARK: - MedicationKnowledgeKinetics NSCopying

extension ModelsR4.MedicationKnowledgeKinetics {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeKinetics else {
            return self
        }

        resource.areaUnderCurve = self.areaUnderCurve
        resource.lethalDose50 = self.lethalDose50
        resource.halfLifePeriod = self.halfLifePeriod?.copy() as? Duration

        return resource
    }
}

// MARK: - MedicationKnowledgeMedicineClassification NSCopying

extension ModelsR4.MedicationKnowledgeMedicineClassification {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeMedicineClassification else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.classification = self.classification

        return resource
    }
}

// MARK: - MedicationKnowledgeMonitoringProgram NSCopying

extension ModelsR4.MedicationKnowledgeMonitoringProgram {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeMonitoringProgram else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.name = self.name

        return resource
    }
}

// MARK: - MedicationKnowledgeMonograph NSCopying

extension ModelsR4.MedicationKnowledgeMonograph {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeMonograph else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.source = self.source?.copy() as? Reference

        return resource
    }
}

// MARK: - MedicationKnowledgePackaging NSCopying

extension ModelsR4.MedicationKnowledgePackaging {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgePackaging else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.quantity = self.quantity?.copy() as? Quantity

        return resource
    }
}

// MARK: - MedicationKnowledgeRegulatory NSCopying

extension ModelsR4.MedicationKnowledgeRegulatory {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeRegulatory else {
            return self
        }

        resource.regulatoryAuthority = self.regulatoryAuthority.copy() as! Reference
        resource.substitution = self.substitution
        resource.schedule = self.schedule
        resource.maxDispense = self.maxDispense?.copy() as? MedicationKnowledgeRegulatoryMaxDispense

        return resource
    }
}

// MARK: - MedicationKnowledgeRegulatoryMaxDispense NSCopying

extension ModelsR4.MedicationKnowledgeRegulatoryMaxDispense {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeRegulatoryMaxDispense else {
            return self
        }

        resource.quantity = self.quantity.copy() as! Quantity
        resource.period = self.period?.copy() as? Duration

        return resource
    }
}

// MARK: - MedicationKnowledgeRegulatorySchedule NSCopying

extension ModelsR4.MedicationKnowledgeRegulatorySchedule {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeRegulatorySchedule else {
            return self
        }

        resource.schedule = self.schedule.copy() as! CodeableConcept

        return resource
    }
}

// MARK: - MedicationKnowledgeRegulatorySubstitution NSCopying

extension ModelsR4.MedicationKnowledgeRegulatorySubstitution {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeRegulatorySubstitution else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.allowed = self.allowed

        return resource
    }
}

// MARK: - MedicationKnowledgeRelatedMedicationKnowledge NSCopying

extension ModelsR4.MedicationKnowledgeRelatedMedicationKnowledge {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationKnowledgeRelatedMedicationKnowledge else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.reference = self.reference

        return resource
    }
}

// MARK: - MedicationRequest NSCopying

extension ModelsR4.MedicationRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationRequest else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.intent = self.intent
        resource.category = self.category
        resource.priority = self.priority
        resource.doNotPerform = self.doNotPerform
        resource.reported = self.reported
        resource.medication = self.medication
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.supportingInformation = self.supportingInformation
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.performer = self.performer?.copy() as? Reference
        resource.performerType = self.performerType?.copy() as? CodeableConcept
        resource.recorder = self.recorder?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.courseOfTherapyType = self.courseOfTherapyType?.copy() as? CodeableConcept
        resource.insurance = self.insurance
        resource.note = self.note
        resource.dosageInstruction = self.dosageInstruction
        resource.dispenseRequest = self.dispenseRequest?.copy() as? MedicationRequestDispenseRequest
        resource.substitution = self.substitution?.copy() as? MedicationRequestSubstitution
        resource.priorPrescription = self.priorPrescription?.copy() as? Reference
        resource.detectedIssue = self.detectedIssue
        resource.eventHistory = self.eventHistory

        return resource
    }
}

// MARK: - MedicationRequestDispenseRequest NSCopying

extension ModelsR4.MedicationRequestDispenseRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationRequestDispenseRequest else {
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
}

// MARK: - MedicationRequestDispenseRequestInitialFill NSCopying

extension ModelsR4.MedicationRequestDispenseRequestInitialFill {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationRequestDispenseRequestInitialFill else {
            return self
        }

        resource.quantity = self.quantity?.copy() as? Quantity
        resource.duration = self.duration?.copy() as? Duration

        return resource
    }
}

// MARK: - MedicationRequestSubstitution NSCopying

extension ModelsR4.MedicationRequestSubstitution {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationRequestSubstitution else {
            return self
        }

        resource.allowed = self.allowed
        resource.reason = self.reason?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - MedicationStatement NSCopying

extension ModelsR4.MedicationStatement {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicationStatement else {
            return self
        }

        resource.identifier = self.identifier
        resource.basedOn = self.basedOn
        resource.partOf = self.partOf
        resource.status = self.status
        resource.statusReason = self.statusReason
        resource.category = self.category?.copy() as? CodeableConcept
        resource.medication = self.medication
        resource.subject = self.subject.copy() as! Reference
        resource.context = self.context?.copy() as? Reference
        resource.effective = self.effective
        resource.dateAsserted = self.dateAsserted
        resource.informationSource = self.informationSource?.copy() as? Reference
        resource.derivedFrom = self.derivedFrom
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.note = self.note
        resource.dosage = self.dosage

        return resource
    }
}

// MARK: - MedicinalProduct NSCopying

extension ModelsR4.MedicinalProduct {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProduct else {
            return self
        }

        resource.identifier = self.identifier
        resource.type = self.type?.copy() as? CodeableConcept
        resource.domain = self.domain?.copy() as? Coding
        resource.combinedPharmaceuticalDoseForm = self.combinedPharmaceuticalDoseForm?.copy() as? CodeableConcept
        resource.legalStatusOfSupply = self.legalStatusOfSupply?.copy() as? CodeableConcept
        resource.additionalMonitoringIndicator = self.additionalMonitoringIndicator?.copy() as? CodeableConcept
        resource.specialMeasures = self.specialMeasures
        resource.paediatricUseIndicator = self.paediatricUseIndicator?.copy() as? CodeableConcept
        resource.productClassification = self.productClassification
        resource.marketingStatus = self.marketingStatus
        resource.pharmaceuticalProduct = self.pharmaceuticalProduct
        resource.packagedMedicinalProduct = self.packagedMedicinalProduct
        resource.attachedDocument = self.attachedDocument
        resource.masterFile = self.masterFile
        resource.contact = self.contact
        resource.clinicalTrial = self.clinicalTrial
        resource.name = self.name
        resource.crossReference = self.crossReference
        resource.manufacturingBusinessOperation = self.manufacturingBusinessOperation
        resource.specialDesignation = self.specialDesignation

        return resource
    }
}

// MARK: - MedicinalProductAuthorization NSCopying

extension ModelsR4.MedicinalProductAuthorization {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductAuthorization else {
            return self
        }

        resource.identifier = self.identifier
        resource.subject = self.subject?.copy() as? Reference
        resource.country = self.country
        resource.jurisdiction = self.jurisdiction
        resource.status = self.status?.copy() as? CodeableConcept
        resource.statusDate = self.statusDate
        resource.restoreDate = self.restoreDate
        resource.validityPeriod = self.validityPeriod?.copy() as? Period
        resource.dataExclusivityPeriod = self.dataExclusivityPeriod?.copy() as? Period
        resource.dateOfFirstAuthorization = self.dateOfFirstAuthorization
        resource.internationalBirthDate = self.internationalBirthDate
        resource.legalBasis = self.legalBasis?.copy() as? CodeableConcept
        resource.jurisdictionalAuthorization = self.jurisdictionalAuthorization
        resource.holder = self.holder?.copy() as? Reference
        resource.regulator = self.regulator?.copy() as? Reference
        resource.procedure = self.procedure?.copy() as? MedicinalProductAuthorizationProcedure

        return resource
    }
}

// MARK: - MedicinalProductAuthorizationJurisdictionalAuthorization NSCopying

extension ModelsR4.MedicinalProductAuthorizationJurisdictionalAuthorization {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductAuthorizationJurisdictionalAuthorization else {
            return self
        }

        resource.identifier = self.identifier
        resource.country = self.country?.copy() as? CodeableConcept
        resource.jurisdiction = self.jurisdiction
        resource.legalStatusOfSupply = self.legalStatusOfSupply?.copy() as? CodeableConcept
        resource.validityPeriod = self.validityPeriod?.copy() as? Period

        return resource
    }
}

// MARK: - MedicinalProductAuthorizationProcedure NSCopying

extension ModelsR4.MedicinalProductAuthorizationProcedure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductAuthorizationProcedure else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.type = self.type.copy() as! CodeableConcept
        resource.date = self.date
        resource.application = self.application

        return resource
    }
}

// MARK: - MedicinalProductContraindication NSCopying

extension ModelsR4.MedicinalProductContraindication {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductContraindication else {
            return self
        }

        resource.subject = self.subject
        resource.disease = self.disease?.copy() as? CodeableConcept
        resource.diseaseStatus = self.diseaseStatus?.copy() as? CodeableConcept
        resource.comorbidity = self.comorbidity
        resource.therapeuticIndication = self.therapeuticIndication
        resource.otherTherapy = self.otherTherapy
        resource.population = self.population

        return resource
    }
}

// MARK: - MedicinalProductContraindicationOtherTherapy NSCopying

extension ModelsR4.MedicinalProductContraindicationOtherTherapy {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductContraindicationOtherTherapy else {
            return self
        }

        resource.therapyRelationshipType = self.therapyRelationshipType.copy() as! CodeableConcept
        resource.medication = self.medication

        return resource
    }
}

// MARK: - MedicinalProductIndication NSCopying

extension ModelsR4.MedicinalProductIndication {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductIndication else {
            return self
        }

        resource.subject = self.subject
        resource.diseaseSymptomProcedure = self.diseaseSymptomProcedure?.copy() as? CodeableConcept
        resource.diseaseStatus = self.diseaseStatus?.copy() as? CodeableConcept
        resource.comorbidity = self.comorbidity
        resource.intendedEffect = self.intendedEffect?.copy() as? CodeableConcept
        resource.duration = self.duration?.copy() as? Quantity
        resource.otherTherapy = self.otherTherapy
        resource.undesirableEffect = self.undesirableEffect
        resource.population = self.population

        return resource
    }
}

// MARK: - MedicinalProductIndicationOtherTherapy NSCopying

extension ModelsR4.MedicinalProductIndicationOtherTherapy {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductIndicationOtherTherapy else {
            return self
        }

        resource.therapyRelationshipType = self.therapyRelationshipType.copy() as! CodeableConcept
        resource.medication = self.medication

        return resource
    }
}

// MARK: - MedicinalProductIngredient NSCopying

extension ModelsR4.MedicinalProductIngredient {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductIngredient else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.role = self.role.copy() as! CodeableConcept
        resource.allergenicIndicator = self.allergenicIndicator
        resource.manufacturer = self.manufacturer
        resource.specifiedSubstance = self.specifiedSubstance
        resource.substance = self.substance?.copy() as? MedicinalProductIngredientSubstance

        return resource
    }
}

// MARK: - MedicinalProductIngredientSpecifiedSubstance NSCopying

extension ModelsR4.MedicinalProductIngredientSpecifiedSubstance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductIngredientSpecifiedSubstance else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.group = self.group.copy() as! CodeableConcept
        resource.confidentiality = self.confidentiality?.copy() as? CodeableConcept
        resource.strength = self.strength

        return resource
    }
}

// MARK: - MedicinalProductIngredientSpecifiedSubstanceStrength NSCopying

extension ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrength {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrength else {
            return self
        }

        resource.presentation = self.presentation.copy() as! Ratio
        resource.presentationLowLimit = self.presentationLowLimit?.copy() as? Ratio
        resource.concentration = self.concentration?.copy() as? Ratio
        resource.concentrationLowLimit = self.concentrationLowLimit?.copy() as? Ratio
        resource.measurementPoint = self.measurementPoint
        resource.country = self.country
        resource.referenceStrength = self.referenceStrength

        return resource
    }
}

// MARK: - MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength NSCopying

extension ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength else {
            return self
        }

        resource.substance = self.substance?.copy() as? CodeableConcept
        resource.strength = self.strength.copy() as! Ratio
        resource.strengthLowLimit = self.strengthLowLimit?.copy() as? Ratio
        resource.measurementPoint = self.measurementPoint
        resource.country = self.country

        return resource
    }
}

// MARK: - MedicinalProductIngredientSubstance NSCopying

extension ModelsR4.MedicinalProductIngredientSubstance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductIngredientSubstance else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.strength = self.strength

        return resource
    }
}

// MARK: - MedicinalProductInteraction NSCopying

extension ModelsR4.MedicinalProductInteraction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductInteraction else {
            return self
        }

        resource.subject = self.subject
        resource.description_fhir = self.description_fhir
        resource.interactant = self.interactant
        resource.type = self.type?.copy() as? CodeableConcept
        resource.effect = self.effect?.copy() as? CodeableConcept
        resource.incidence = self.incidence?.copy() as? CodeableConcept
        resource.management = self.management?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - MedicinalProductInteractionInteractant NSCopying

extension ModelsR4.MedicinalProductInteractionInteractant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductInteractionInteractant else {
            return self
        }

        resource.item = self.item

        return resource
    }
}

// MARK: - MedicinalProductManufactured NSCopying

extension ModelsR4.MedicinalProductManufactured {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductManufactured else {
            return self
        }

        resource.manufacturedDoseForm = self.manufacturedDoseForm.copy() as! CodeableConcept
        resource.unitOfPresentation = self.unitOfPresentation?.copy() as? CodeableConcept
        resource.quantity = self.quantity.copy() as! Quantity
        resource.manufacturer = self.manufacturer
        resource.ingredient = self.ingredient
        resource.physicalCharacteristics = self.physicalCharacteristics?.copy() as? ProdCharacteristic
        resource.otherCharacteristics = self.otherCharacteristics

        return resource
    }
}

// MARK: - MedicinalProductManufacturingBusinessOperation NSCopying

extension ModelsR4.MedicinalProductManufacturingBusinessOperation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductManufacturingBusinessOperation else {
            return self
        }

        resource.operationType = self.operationType?.copy() as? CodeableConcept
        resource.authorisationReferenceNumber = self.authorisationReferenceNumber?.copy() as? Identifier
        resource.effectiveDate = self.effectiveDate
        resource.confidentialityIndicator = self.confidentialityIndicator?.copy() as? CodeableConcept
        resource.manufacturer = self.manufacturer
        resource.regulator = self.regulator?.copy() as? Reference

        return resource
    }
}

// MARK: - MedicinalProductName NSCopying

extension ModelsR4.MedicinalProductName {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductName else {
            return self
        }

        resource.productName = self.productName
        resource.namePart = self.namePart
        resource.countryLanguage = self.countryLanguage

        return resource
    }
}

// MARK: - MedicinalProductNameCountryLanguage NSCopying

extension ModelsR4.MedicinalProductNameCountryLanguage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductNameCountryLanguage else {
            return self
        }

        resource.country = self.country.copy() as! CodeableConcept
        resource.jurisdiction = self.jurisdiction?.copy() as? CodeableConcept
        resource.language = self.language.copy() as! CodeableConcept

        return resource
    }
}

// MARK: - MedicinalProductNameNamePart NSCopying

extension ModelsR4.MedicinalProductNameNamePart {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductNameNamePart else {
            return self
        }

        resource.part = self.part
        resource.type = self.type.copy() as! Coding

        return resource
    }
}

// MARK: - MedicinalProductPackaged NSCopying

extension ModelsR4.MedicinalProductPackaged {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductPackaged else {
            return self
        }

        resource.identifier = self.identifier
        resource.subject = self.subject
        resource.description_fhir = self.description_fhir
        resource.legalStatusOfSupply = self.legalStatusOfSupply?.copy() as? CodeableConcept
        resource.marketingStatus = self.marketingStatus
        resource.marketingAuthorization = self.marketingAuthorization?.copy() as? Reference
        resource.manufacturer = self.manufacturer
        resource.batchIdentifier = self.batchIdentifier
        resource.packageItem = self.packageItem

        return resource
    }
}

// MARK: - MedicinalProductPackagedBatchIdentifier NSCopying

extension ModelsR4.MedicinalProductPackagedBatchIdentifier {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductPackagedBatchIdentifier else {
            return self
        }

        resource.outerPackaging = self.outerPackaging.copy() as! Identifier
        resource.immediatePackaging = self.immediatePackaging?.copy() as? Identifier

        return resource
    }
}

// MARK: - MedicinalProductPackagedPackageItem NSCopying

extension ModelsR4.MedicinalProductPackagedPackageItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductPackagedPackageItem else {
            return self
        }

        resource.identifier = self.identifier
        resource.type = self.type.copy() as! CodeableConcept
        resource.quantity = self.quantity.copy() as! Quantity
        resource.material = self.material
        resource.alternateMaterial = self.alternateMaterial
        resource.device = self.device
        resource.manufacturedItem = self.manufacturedItem
        resource.packageItem = self.packageItem
        resource.physicalCharacteristics = self.physicalCharacteristics?.copy() as? ProdCharacteristic
        resource.otherCharacteristics = self.otherCharacteristics
        resource.shelfLifeStorage = self.shelfLifeStorage
        resource.manufacturer = self.manufacturer

        return resource
    }
}

// MARK: - MedicinalProductPharmaceutical NSCopying

extension ModelsR4.MedicinalProductPharmaceutical {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductPharmaceutical else {
            return self
        }

        resource.identifier = self.identifier
        resource.administrableDoseForm = self.administrableDoseForm.copy() as! CodeableConcept
        resource.unitOfPresentation = self.unitOfPresentation?.copy() as? CodeableConcept
        resource.ingredient = self.ingredient
        resource.device = self.device
        resource.characteristics = self.characteristics
        resource.routeOfAdministration = self.routeOfAdministration

        return resource
    }
}

// MARK: - MedicinalProductPharmaceuticalCharacteristics NSCopying

extension ModelsR4.MedicinalProductPharmaceuticalCharacteristics {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductPharmaceuticalCharacteristics else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - MedicinalProductPharmaceuticalRouteOfAdministration NSCopying

extension ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministration {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministration else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.firstDose = self.firstDose?.copy() as? Quantity
        resource.maxSingleDose = self.maxSingleDose?.copy() as? Quantity
        resource.maxDosePerDay = self.maxDosePerDay?.copy() as? Quantity
        resource.maxDosePerTreatmentPeriod = self.maxDosePerTreatmentPeriod?.copy() as? Ratio
        resource.maxTreatmentPeriod = self.maxTreatmentPeriod?.copy() as? Duration
        resource.targetSpecies = self.targetSpecies

        return resource
    }
}

// MARK: - MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies NSCopying

extension ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.withdrawalPeriod = self.withdrawalPeriod

        return resource
    }
}

// MARK: - MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod NSCopying

extension ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod else {
            return self
        }

        resource.tissue = self.tissue.copy() as! CodeableConcept
        resource.value = self.value.copy() as! Quantity
        resource.supportingInformation = self.supportingInformation

        return resource
    }
}

// MARK: - MedicinalProductSpecialDesignation NSCopying

extension ModelsR4.MedicinalProductSpecialDesignation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductSpecialDesignation else {
            return self
        }

        resource.identifier = self.identifier
        resource.type = self.type?.copy() as? CodeableConcept
        resource.intendedUse = self.intendedUse?.copy() as? CodeableConcept
        resource.indication = self.indication
        resource.status = self.status?.copy() as? CodeableConcept
        resource.date = self.date
        resource.species = self.species?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - MedicinalProductUndesirableEffect NSCopying

extension ModelsR4.MedicinalProductUndesirableEffect {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MedicinalProductUndesirableEffect else {
            return self
        }

        resource.subject = self.subject
        resource.symptomConditionEffect = self.symptomConditionEffect?.copy() as? CodeableConcept
        resource.classification = self.classification?.copy() as? CodeableConcept
        resource.frequencyOfOccurrence = self.frequencyOfOccurrence?.copy() as? CodeableConcept
        resource.population = self.population

        return resource
    }
}

// MARK: - MessageDefinition NSCopying

extension ModelsR4.MessageDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MessageDefinition else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.replaces = self.replaces
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.base = self.base
        resource.parent = self.parent
        resource.event = self.event
        resource.category = self.category
        resource.focus = self.focus
        resource.responseRequired = self.responseRequired
        resource.allowedResponse = self.allowedResponse
        resource.graph = self.graph

        return resource
    }
}

// MARK: - MessageDefinitionAllowedResponse NSCopying

extension ModelsR4.MessageDefinitionAllowedResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MessageDefinitionAllowedResponse else {
            return self
        }

        resource.message = self.message
        resource.situation = self.situation

        return resource
    }
}

// MARK: - MessageDefinitionFocus NSCopying

extension ModelsR4.MessageDefinitionFocus {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MessageDefinitionFocus else {
            return self
        }

        resource.code = self.code
        resource.profile = self.profile
        resource.min = self.min
        resource.max = self.max

        return resource
    }
}

// MARK: - MessageHeader NSCopying

extension ModelsR4.MessageHeader {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MessageHeader else {
            return self
        }

        resource.event = self.event
        resource.destination = self.destination
        resource.sender = self.sender?.copy() as? Reference
        resource.enterer = self.enterer?.copy() as? Reference
        resource.author = self.author?.copy() as? Reference
        resource.source = self.source.copy() as! MessageHeaderSource
        resource.responsible = self.responsible?.copy() as? Reference
        resource.reason = self.reason?.copy() as? CodeableConcept
        resource.response = self.response?.copy() as? MessageHeaderResponse
        resource.focus = self.focus
        resource.definition = self.definition

        return resource
    }
}

// MARK: - MessageHeaderDestination NSCopying

extension ModelsR4.MessageHeaderDestination {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MessageHeaderDestination else {
            return self
        }

        resource.name = self.name
        resource.target = self.target?.copy() as? Reference
        resource.endpoint = self.endpoint
        resource.receiver = self.receiver?.copy() as? Reference

        return resource
    }
}

// MARK: - MessageHeaderResponse NSCopying

extension ModelsR4.MessageHeaderResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MessageHeaderResponse else {
            return self
        }

        resource.identifier = self.identifier
        resource.code = self.code
        resource.details = self.details?.copy() as? Reference

        return resource
    }
}

// MARK: - MessageHeaderSource NSCopying

extension ModelsR4.MessageHeaderSource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MessageHeaderSource else {
            return self
        }

        resource.name = self.name
        resource.software = self.software
        resource.version = self.version
        resource.contact = self.contact?.copy() as? ContactPoint
        resource.endpoint = self.endpoint

        return resource
    }
}

// MARK: - Meta NSCopying

extension ModelsR4.Meta {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Meta else {
            return self
        }

        resource.versionId = self.versionId
        resource.lastUpdated = self.lastUpdated
        resource.source = self.source
        resource.profile = self.profile
        resource.security = self.security
        resource.tag = self.tag

        return resource
    }
}

// MARK: - MolecularSequence NSCopying

extension ModelsR4.MolecularSequence {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequence else {
            return self
        }

        resource.identifier = self.identifier
        resource.type = self.type
        resource.coordinateSystem = self.coordinateSystem
        resource.patient = self.patient?.copy() as? Reference
        resource.specimen = self.specimen?.copy() as? Reference
        resource.device = self.device?.copy() as? Reference
        resource.performer = self.performer?.copy() as? Reference
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.referenceSeq = self.referenceSeq?.copy() as? MolecularSequenceReferenceSeq
        resource.variant = self.variant
        resource.observedSeq = self.observedSeq
        resource.quality = self.quality
        resource.readCoverage = self.readCoverage
        resource.repository = self.repository
        resource.pointer = self.pointer
        resource.structureVariant = self.structureVariant

        return resource
    }
}

// MARK: - MolecularSequenceQuality NSCopying

extension ModelsR4.MolecularSequenceQuality {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequenceQuality else {
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
}

// MARK: - MolecularSequenceQualityRoc NSCopying

extension ModelsR4.MolecularSequenceQualityRoc {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequenceQualityRoc else {
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
}

// MARK: - MolecularSequenceReferenceSeq NSCopying

extension ModelsR4.MolecularSequenceReferenceSeq {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequenceReferenceSeq else {
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
}

// MARK: - MolecularSequenceRepository NSCopying

extension ModelsR4.MolecularSequenceRepository {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequenceRepository else {
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
}

// MARK: - MolecularSequenceStructureVariant NSCopying

extension ModelsR4.MolecularSequenceStructureVariant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequenceStructureVariant else {
            return self
        }

        resource.variantType = self.variantType?.copy() as? CodeableConcept
        resource.exact = self.exact
        resource.length = self.length
        resource.outer = self.outer?.copy() as? MolecularSequenceStructureVariantOuter
        resource.inner = self.inner?.copy() as? MolecularSequenceStructureVariantInner

        return resource
    }
}

// MARK: - MolecularSequenceStructureVariantInner NSCopying

extension ModelsR4.MolecularSequenceStructureVariantInner {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequenceStructureVariantInner else {
            return self
        }

        resource.start = self.start
        resource.end = self.end

        return resource
    }
}

// MARK: - MolecularSequenceStructureVariantOuter NSCopying

extension ModelsR4.MolecularSequenceStructureVariantOuter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequenceStructureVariantOuter else {
            return self
        }

        resource.start = self.start
        resource.end = self.end

        return resource
    }
}

// MARK: - MolecularSequenceVariant NSCopying

extension ModelsR4.MolecularSequenceVariant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.MolecularSequenceVariant else {
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
}

// MARK: - Money NSCopying

extension ModelsR4.Money {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Money else {
            return self
        }

        resource.value = self.value
        resource.currency = self.currency

        return resource
    }
}

// MARK: - NamingSystem NSCopying

extension ModelsR4.NamingSystem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NamingSystem else {
            return self
        }

        resource.name = self.name
        resource.status = self.status
        resource.kind = self.kind
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.responsible = self.responsible
        resource.type = self.type?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.usage = self.usage
        resource.uniqueId = self.uniqueId

        return resource
    }
}

// MARK: - NamingSystemUniqueId NSCopying

extension ModelsR4.NamingSystemUniqueId {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NamingSystemUniqueId else {
            return self
        }

        resource.type = self.type
        resource.value = self.value
        resource.preferred = self.preferred
        resource.comment = self.comment
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - Narrative NSCopying

extension ModelsR4.Narrative {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Narrative else {
            return self
        }

        resource.status = self.status
        resource.div = self.div

        return resource
    }
}

// MARK: - NutritionOrder NSCopying

extension ModelsR4.NutritionOrder {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NutritionOrder else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.instantiates = self.instantiates
        resource.status = self.status
        resource.intent = self.intent
        resource.patient = self.patient.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.dateTime = self.dateTime
        resource.orderer = self.orderer?.copy() as? Reference
        resource.allergyIntolerance = self.allergyIntolerance
        resource.foodPreferenceModifier = self.foodPreferenceModifier
        resource.excludeFoodModifier = self.excludeFoodModifier
        resource.oralDiet = self.oralDiet?.copy() as? NutritionOrderOralDiet
        resource.supplement = self.supplement
        resource.enteralFormula = self.enteralFormula?.copy() as? NutritionOrderEnteralFormula
        resource.note = self.note

        return resource
    }
}

// MARK: - NutritionOrderEnteralFormula NSCopying

extension ModelsR4.NutritionOrderEnteralFormula {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NutritionOrderEnteralFormula else {
            return self
        }

        resource.baseFormulaType = self.baseFormulaType?.copy() as? CodeableConcept
        resource.baseFormulaProductName = self.baseFormulaProductName
        resource.additiveType = self.additiveType?.copy() as? CodeableConcept
        resource.additiveProductName = self.additiveProductName
        resource.caloricDensity = self.caloricDensity?.copy() as? Quantity
        resource.routeofAdministration = self.routeofAdministration?.copy() as? CodeableConcept
        resource.administration = self.administration
        resource.maxVolumeToDeliver = self.maxVolumeToDeliver?.copy() as? Quantity
        resource.administrationInstruction = self.administrationInstruction

        return resource
    }
}

// MARK: - NutritionOrderEnteralFormulaAdministration NSCopying

extension ModelsR4.NutritionOrderEnteralFormulaAdministration {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NutritionOrderEnteralFormulaAdministration else {
            return self
        }

        resource.schedule = self.schedule?.copy() as? Timing
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.rate = self.rate

        return resource
    }
}

// MARK: - NutritionOrderOralDiet NSCopying

extension ModelsR4.NutritionOrderOralDiet {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NutritionOrderOralDiet else {
            return self
        }

        resource.type = self.type
        resource.schedule = self.schedule
        resource.nutrient = self.nutrient
        resource.texture = self.texture
        resource.fluidConsistencyType = self.fluidConsistencyType
        resource.instruction = self.instruction

        return resource
    }
}

// MARK: - NutritionOrderOralDietNutrient NSCopying

extension ModelsR4.NutritionOrderOralDietNutrient {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NutritionOrderOralDietNutrient else {
            return self
        }

        resource.modifier = self.modifier?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Quantity

        return resource
    }
}

// MARK: - NutritionOrderOralDietTexture NSCopying

extension ModelsR4.NutritionOrderOralDietTexture {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NutritionOrderOralDietTexture else {
            return self
        }

        resource.modifier = self.modifier?.copy() as? CodeableConcept
        resource.foodType = self.foodType?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - NutritionOrderSupplement NSCopying

extension ModelsR4.NutritionOrderSupplement {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.NutritionOrderSupplement else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.productName = self.productName
        resource.schedule = self.schedule
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.instruction = self.instruction

        return resource
    }
}

// MARK: - Observation NSCopying

extension ModelsR4.Observation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Observation else {
            return self
        }

        resource.identifier = self.identifier
        resource.basedOn = self.basedOn
        resource.partOf = self.partOf
        resource.status = self.status
        resource.category = self.category
        resource.code = self.code.copy() as! CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.focus = self.focus
        resource.encounter = self.encounter?.copy() as? Reference
        resource.effective = self.effective
        resource.issued = self.issued
        resource.performer = self.performer
        resource.value = self.value
        resource.dataAbsentReason = self.dataAbsentReason?.copy() as? CodeableConcept
        resource.interpretation = self.interpretation
        resource.note = self.note
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.method = self.method?.copy() as? CodeableConcept
        resource.specimen = self.specimen?.copy() as? Reference
        resource.device = self.device?.copy() as? Reference
        resource.referenceRange = self.referenceRange
        resource.hasMember = self.hasMember
        resource.derivedFrom = self.derivedFrom
        resource.component = self.component

        return resource
    }
}

// MARK: - ObservationComponent NSCopying

extension ModelsR4.ObservationComponent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ObservationComponent else {
            return self
        }

        resource.code = self.code.copy() as! CodeableConcept
        resource.value = self.value
        resource.dataAbsentReason = self.dataAbsentReason?.copy() as? CodeableConcept
        resource.interpretation = self.interpretation
        resource.referenceRange = self.referenceRange

        return resource
    }
}

// MARK: - ObservationDefinition NSCopying

extension ModelsR4.ObservationDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ObservationDefinition else {
            return self
        }

        resource.category = self.category
        resource.code = self.code.copy() as! CodeableConcept
        resource.identifier = self.identifier
        resource.permittedDataType = self.permittedDataType
        resource.multipleResultsAllowed = self.multipleResultsAllowed
        resource.method = self.method?.copy() as? CodeableConcept
        resource.preferredReportName = self.preferredReportName
        resource.quantitativeDetails = self.quantitativeDetails?.copy() as? ObservationDefinitionQuantitativeDetails
        resource.qualifiedInterval = self.qualifiedInterval
        resource.validCodedValueSet = self.validCodedValueSet?.copy() as? Reference
        resource.normalCodedValueSet = self.normalCodedValueSet?.copy() as? Reference
        resource.abnormalCodedValueSet = self.abnormalCodedValueSet?.copy() as? Reference
        resource.criticalCodedValueSet = self.criticalCodedValueSet?.copy() as? Reference

        return resource
    }
}

// MARK: - ObservationDefinitionQualifiedInterval NSCopying

extension ModelsR4.ObservationDefinitionQualifiedInterval {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ObservationDefinitionQualifiedInterval else {
            return self
        }

        resource.category = self.category
        resource.range = self.range?.copy() as? Range
        resource.context = self.context?.copy() as? CodeableConcept
        resource.appliesTo = self.appliesTo
        resource.gender = self.gender
        resource.age = self.age?.copy() as? Range
        resource.gestationalAge = self.gestationalAge?.copy() as? Range
        resource.condition = self.condition

        return resource
    }
}

// MARK: - ObservationDefinitionQuantitativeDetails NSCopying

extension ModelsR4.ObservationDefinitionQuantitativeDetails {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ObservationDefinitionQuantitativeDetails else {
            return self
        }

        resource.customaryUnit = self.customaryUnit?.copy() as? CodeableConcept
        resource.unit = self.unit?.copy() as? CodeableConcept
        resource.conversionFactor = self.conversionFactor
        resource.decimalPrecision = self.decimalPrecision

        return resource
    }
}

// MARK: - ObservationReferenceRange NSCopying

extension ModelsR4.ObservationReferenceRange {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ObservationReferenceRange else {
            return self
        }

        resource.low = self.low?.copy() as? Quantity
        resource.high = self.high?.copy() as? Quantity
        resource.type = self.type?.copy() as? CodeableConcept
        resource.appliesTo = self.appliesTo
        resource.age = self.age?.copy() as? Range
        resource.text = self.text

        return resource
    }
}

// MARK: - OperationDefinition NSCopying

extension ModelsR4.OperationDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OperationDefinition else {
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
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
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
        resource.parameter = self.parameter
        resource.overload = self.overload

        return resource
    }
}

// MARK: - OperationDefinitionOverload NSCopying

extension ModelsR4.OperationDefinitionOverload {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OperationDefinitionOverload else {
            return self
        }

        resource.parameterName = self.parameterName
        resource.comment = self.comment

        return resource
    }
}

// MARK: - OperationDefinitionParameter NSCopying

extension ModelsR4.OperationDefinitionParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OperationDefinitionParameter else {
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
        resource.referencedFrom = self.referencedFrom
        resource.part = self.part

        return resource
    }
}

// MARK: - OperationDefinitionParameterBinding NSCopying

extension ModelsR4.OperationDefinitionParameterBinding {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OperationDefinitionParameterBinding else {
            return self
        }

        resource.strength = self.strength
        resource.valueSet = self.valueSet

        return resource
    }
}

// MARK: - OperationDefinitionParameterReferencedFrom NSCopying

extension ModelsR4.OperationDefinitionParameterReferencedFrom {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OperationDefinitionParameterReferencedFrom else {
            return self
        }

        resource.source = self.source
        resource.sourceId = self.sourceId

        return resource
    }
}

// MARK: - OperationOutcome NSCopying

extension ModelsR4.OperationOutcome {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OperationOutcome else {
            return self
        }

        resource.issue = self.issue

        return resource
    }
}

// MARK: - OperationOutcomeIssue NSCopying

extension ModelsR4.OperationOutcomeIssue {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OperationOutcomeIssue else {
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
}

// MARK: - Organization NSCopying

extension ModelsR4.Organization {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Organization else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.type = self.type
        resource.name = self.name
        resource.alias = self.alias
        resource.telecom = self.telecom
        resource.address = self.address
        resource.partOf = self.partOf?.copy() as? Reference
        resource.contact = self.contact
        resource.endpoint = self.endpoint

        return resource
    }
}

// MARK: - OrganizationAffiliation NSCopying

extension ModelsR4.OrganizationAffiliation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OrganizationAffiliation else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.period = self.period?.copy() as? Period
        resource.organization = self.organization?.copy() as? Reference
        resource.participatingOrganization = self.participatingOrganization?.copy() as? Reference
        resource.network = self.network
        resource.code = self.code
        resource.specialty = self.specialty
        resource.location = self.location
        resource.healthcareService = self.healthcareService
        resource.telecom = self.telecom
        resource.endpoint = self.endpoint

        return resource
    }
}

// MARK: - OrganizationContact NSCopying

extension ModelsR4.OrganizationContact {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.OrganizationContact else {
            return self
        }

        resource.purpose = self.purpose?.copy() as? CodeableConcept
        resource.name = self.name?.copy() as? HumanName
        resource.telecom = self.telecom
        resource.address = self.address?.copy() as? Address

        return resource
    }
}

// MARK: - ParameterDefinition NSCopying

extension ModelsR4.ParameterDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ParameterDefinition else {
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
}

// MARK: - Parameters NSCopying

extension ModelsR4.Parameters {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Parameters else {
            return self
        }

        resource.parameter = self.parameter

        return resource
    }
}

// MARK: - ParametersParameter NSCopying

extension ModelsR4.ParametersParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ParametersParameter else {
            return self
        }

        resource.name = self.name
        resource.value = self.value
        resource.resource = self.resource
        resource.part = self.part

        return resource
    }
}

// MARK: - Patient NSCopying

extension ModelsR4.Patient {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Patient else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.name = self.name
        resource.telecom = self.telecom
        resource.gender = self.gender
        resource.birthDate = self.birthDate
        resource.deceased = self.deceased
        resource.address = self.address
        resource.maritalStatus = self.maritalStatus?.copy() as? CodeableConcept
        resource.multipleBirth = self.multipleBirth
        resource.photo = self.photo
        resource.contact = self.contact
        resource.communication = self.communication
        resource.generalPractitioner = self.generalPractitioner
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.link = self.link

        return resource
    }
}

// MARK: - PatientCommunication NSCopying

extension ModelsR4.PatientCommunication {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PatientCommunication else {
            return self
        }

        resource.language = self.language.copy() as! CodeableConcept
        resource.preferred = self.preferred

        return resource
    }
}

// MARK: - PatientContact NSCopying

extension ModelsR4.PatientContact {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PatientContact else {
            return self
        }

        resource.relationship = self.relationship
        resource.name = self.name?.copy() as? HumanName
        resource.telecom = self.telecom
        resource.address = self.address?.copy() as? Address
        resource.gender = self.gender
        resource.organization = self.organization?.copy() as? Reference
        resource.period = self.period?.copy() as? Period

        return resource
    }
}

// MARK: - PatientLink NSCopying

extension ModelsR4.PatientLink {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PatientLink else {
            return self
        }

        resource.other = self.other.copy() as! Reference
        resource.type = self.type

        return resource
    }
}

// MARK: - PaymentNotice NSCopying

extension ModelsR4.PaymentNotice {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PaymentNotice else {
            return self
        }

        resource.identifier = self.identifier
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
}

// MARK: - PaymentReconciliation NSCopying

extension ModelsR4.PaymentReconciliation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PaymentReconciliation else {
            return self
        }

        resource.identifier = self.identifier
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
        resource.detail = self.detail
        resource.formCode = self.formCode?.copy() as? CodeableConcept
        resource.processNote = self.processNote

        return resource
    }
}

// MARK: - PaymentReconciliationDetail NSCopying

extension ModelsR4.PaymentReconciliationDetail {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PaymentReconciliationDetail else {
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
}

// MARK: - PaymentReconciliationProcessNote NSCopying

extension ModelsR4.PaymentReconciliationProcessNote {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PaymentReconciliationProcessNote else {
            return self
        }

        resource.type = self.type
        resource.text = self.text

        return resource
    }
}

// MARK: - Period NSCopying

extension ModelsR4.Period {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Period else {
            return self
        }

        resource.start = self.start
        resource.end = self.end

        return resource
    }
}

// MARK: - Person NSCopying

extension ModelsR4.Person {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Person else {
            return self
        }

        resource.identifier = self.identifier
        resource.name = self.name
        resource.telecom = self.telecom
        resource.gender = self.gender
        resource.birthDate = self.birthDate
        resource.address = self.address
        resource.photo = self.photo?.copy() as? Attachment
        resource.managingOrganization = self.managingOrganization?.copy() as? Reference
        resource.active = self.active
        resource.link = self.link

        return resource
    }
}

// MARK: - PersonLink NSCopying

extension ModelsR4.PersonLink {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PersonLink else {
            return self
        }

        resource.target = self.target.copy() as! Reference
        resource.assurance = self.assurance

        return resource
    }
}

// MARK: - PlanDefinition NSCopying

extension ModelsR4.PlanDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PlanDefinition else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.subtitle = self.subtitle
        resource.type = self.type?.copy() as? CodeableConcept
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.library = self.library
        resource.goal = self.goal
        resource.action = self.action

        return resource
    }
}

// MARK: - PlanDefinitionAction NSCopying

extension ModelsR4.PlanDefinitionAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PlanDefinitionAction else {
            return self
        }

        resource.prefix = self.prefix
        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.textEquivalent = self.textEquivalent
        resource.priority = self.priority
        resource.code = self.code
        resource.reason = self.reason
        resource.documentation = self.documentation
        resource.goalId = self.goalId
        resource.subject = self.subject
        resource.trigger = self.trigger
        resource.condition = self.condition
        resource.input = self.input
        resource.output = self.output
        resource.relatedAction = self.relatedAction
        resource.timing = self.timing
        resource.participant = self.participant
        resource.type = self.type?.copy() as? CodeableConcept
        resource.groupingBehavior = self.groupingBehavior
        resource.selectionBehavior = self.selectionBehavior
        resource.requiredBehavior = self.requiredBehavior
        resource.precheckBehavior = self.precheckBehavior
        resource.cardinalityBehavior = self.cardinalityBehavior
        resource.definition = self.definition
        resource.transform = self.transform
        resource.dynamicValue = self.dynamicValue
        resource.action = self.action

        return resource
    }
}

// MARK: - PlanDefinitionActionCondition NSCopying

extension ModelsR4.PlanDefinitionActionCondition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PlanDefinitionActionCondition else {
            return self
        }

        resource.kind = self.kind
        resource.expression = self.expression?.copy() as? Expression

        return resource
    }
}

// MARK: - PlanDefinitionActionDynamicValue NSCopying

extension ModelsR4.PlanDefinitionActionDynamicValue {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PlanDefinitionActionDynamicValue else {
            return self
        }

        resource.path = self.path
        resource.expression = self.expression?.copy() as? Expression

        return resource
    }
}

// MARK: - PlanDefinitionActionParticipant NSCopying

extension ModelsR4.PlanDefinitionActionParticipant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PlanDefinitionActionParticipant else {
            return self
        }

        resource.type = self.type
        resource.role = self.role?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - PlanDefinitionActionRelatedAction NSCopying

extension ModelsR4.PlanDefinitionActionRelatedAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PlanDefinitionActionRelatedAction else {
            return self
        }

        resource.actionId = self.actionId
        resource.relationship = self.relationship
        resource.offset = self.offset

        return resource
    }
}

// MARK: - PlanDefinitionGoal NSCopying

extension ModelsR4.PlanDefinitionGoal {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PlanDefinitionGoal else {
            return self
        }

        resource.category = self.category?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir.copy() as! CodeableConcept
        resource.priority = self.priority?.copy() as? CodeableConcept
        resource.start = self.start?.copy() as? CodeableConcept
        resource.addresses = self.addresses
        resource.documentation = self.documentation
        resource.target = self.target

        return resource
    }
}

// MARK: - PlanDefinitionGoalTarget NSCopying

extension ModelsR4.PlanDefinitionGoalTarget {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PlanDefinitionGoalTarget else {
            return self
        }

        resource.measure = self.measure?.copy() as? CodeableConcept
        resource.detail = self.detail
        resource.due = self.due?.copy() as? Duration

        return resource
    }
}

// MARK: - Population NSCopying

extension ModelsR4.Population {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Population else {
            return self
        }

        resource.age = self.age
        resource.gender = self.gender?.copy() as? CodeableConcept
        resource.race = self.race?.copy() as? CodeableConcept
        resource.physiologicalCondition = self.physiologicalCondition?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - Practitioner NSCopying

extension ModelsR4.Practitioner {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Practitioner else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.name = self.name
        resource.telecom = self.telecom
        resource.address = self.address
        resource.gender = self.gender
        resource.birthDate = self.birthDate
        resource.photo = self.photo
        resource.qualification = self.qualification
        resource.communication = self.communication

        return resource
    }
}

// MARK: - PractitionerQualification NSCopying

extension ModelsR4.PractitionerQualification {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PractitionerQualification else {
            return self
        }

        resource.identifier = self.identifier
        resource.code = self.code.copy() as! CodeableConcept
        resource.period = self.period?.copy() as? Period
        resource.issuer = self.issuer?.copy() as? Reference

        return resource
    }
}

// MARK: - PractitionerRole NSCopying

extension ModelsR4.PractitionerRole {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PractitionerRole else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.period = self.period?.copy() as? Period
        resource.practitioner = self.practitioner?.copy() as? Reference
        resource.organization = self.organization?.copy() as? Reference
        resource.code = self.code
        resource.specialty = self.specialty
        resource.location = self.location
        resource.healthcareService = self.healthcareService
        resource.telecom = self.telecom
        resource.availableTime = self.availableTime
        resource.notAvailable = self.notAvailable
        resource.availabilityExceptions = self.availabilityExceptions
        resource.endpoint = self.endpoint

        return resource
    }
}

// MARK: - PractitionerRoleAvailableTime NSCopying

extension ModelsR4.PractitionerRoleAvailableTime {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PractitionerRoleAvailableTime else {
            return self
        }

        resource.daysOfWeek = self.daysOfWeek
        resource.allDay = self.allDay
        resource.availableStartTime = self.availableStartTime
        resource.availableEndTime = self.availableEndTime

        return resource
    }
}

// MARK: - PractitionerRoleNotAvailable NSCopying

extension ModelsR4.PractitionerRoleNotAvailable {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.PractitionerRoleNotAvailable else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.during = self.during?.copy() as? Period

        return resource
    }
}

// MARK: - Procedure NSCopying

extension ModelsR4.Procedure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Procedure else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn
        resource.partOf = self.partOf
        resource.status = self.status
        resource.statusReason = self.statusReason?.copy() as? CodeableConcept
        resource.category = self.category?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.performed = self.performed
        resource.recorder = self.recorder?.copy() as? Reference
        resource.asserter = self.asserter?.copy() as? Reference
        resource.performer = self.performer
        resource.location = self.location?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.bodySite = self.bodySite
        resource.outcome = self.outcome?.copy() as? CodeableConcept
        resource.report = self.report
        resource.complication = self.complication
        resource.complicationDetail = self.complicationDetail
        resource.followUp = self.followUp
        resource.note = self.note
        resource.focalDevice = self.focalDevice
        resource.usedReference = self.usedReference
        resource.usedCode = self.usedCode

        return resource
    }
}

// MARK: - ProcedureFocalDevice NSCopying

extension ModelsR4.ProcedureFocalDevice {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ProcedureFocalDevice else {
            return self
        }

        resource.action = self.action?.copy() as? CodeableConcept
        resource.manipulated = self.manipulated.copy() as! Reference

        return resource
    }
}

// MARK: - ProcedurePerformer NSCopying

extension ModelsR4.ProcedurePerformer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ProcedurePerformer else {
            return self
        }

        resource.function = self.function?.copy() as? CodeableConcept
        resource.actor = self.actor.copy() as! Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference

        return resource
    }
}

// MARK: - ProdCharacteristic NSCopying

extension ModelsR4.ProdCharacteristic {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ProdCharacteristic else {
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
        resource.image = self.image
        resource.scoring = self.scoring?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ProductShelfLife NSCopying

extension ModelsR4.ProductShelfLife {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ProductShelfLife else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.type = self.type.copy() as! CodeableConcept
        resource.period = self.period.copy() as! Quantity
        resource.specialPrecautionsForStorage = self.specialPrecautionsForStorage

        return resource
    }
}

// MARK: - Provenance NSCopying

extension ModelsR4.Provenance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Provenance else {
            return self
        }

        resource.target = self.target
        resource.occurred = self.occurred
        resource.recorded = self.recorded
        resource.policy = self.policy
        resource.location = self.location?.copy() as? Reference
        resource.reason = self.reason
        resource.activity = self.activity?.copy() as? CodeableConcept
        resource.agent = self.agent
        resource.entity = self.entity
        resource.signature = self.signature

        return resource
    }
}

// MARK: - ProvenanceAgent NSCopying

extension ModelsR4.ProvenanceAgent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ProvenanceAgent else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.role = self.role
        resource.who = self.who.copy() as! Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference

        return resource
    }
}

// MARK: - ProvenanceEntity NSCopying

extension ModelsR4.ProvenanceEntity {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ProvenanceEntity else {
            return self
        }

        resource.role = self.role
        resource.what = self.what.copy() as! Reference
        resource.agent = self.agent

        return resource
    }
}

// MARK: - Quantity NSCopying

extension ModelsR4.Quantity {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Quantity else {
            return self
        }

        resource.value = self.value
        resource.comparator = self.comparator
        resource.unit = self.unit
        resource.system = self.system
        resource.code = self.code

        return resource
    }
}

// MARK: - Questionnaire NSCopying

extension ModelsR4.Questionnaire {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Questionnaire else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.derivedFrom = self.derivedFrom
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subjectType = self.subjectType
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.code = self.code
        resource.item = self.item

        return resource
    }
}

// MARK: - QuestionnaireItem NSCopying

extension ModelsR4.QuestionnaireItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.QuestionnaireItem else {
            return self
        }

        resource.linkId = self.linkId
        resource.definition = self.definition
        resource.code = self.code
        resource.prefix = self.prefix
        resource.text = self.text
        resource.type = self.type
        resource.enableWhen = self.enableWhen
        resource.enableBehavior = self.enableBehavior
        resource.required = self.required
        resource.repeats = self.repeats
        resource.readOnly = self.readOnly
        resource.maxLength = self.maxLength
        resource.answerValueSet = self.answerValueSet
        resource.answerOption = self.answerOption
        resource.initial = self.initial
        resource.item = self.item

        return resource
    }
}

// MARK: - QuestionnaireItemAnswerOption NSCopying

extension ModelsR4.QuestionnaireItemAnswerOption {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.QuestionnaireItemAnswerOption else {
            return self
        }

        resource.value = self.value
        resource.initialSelected = self.initialSelected

        return resource
    }
}

// MARK: - QuestionnaireItemEnableWhen NSCopying

extension ModelsR4.QuestionnaireItemEnableWhen {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.QuestionnaireItemEnableWhen else {
            return self
        }

        resource.question = self.question
        resource.`operator` = self.`operator`
        resource.answer = self.answer

        return resource
    }
}

// MARK: - QuestionnaireItemInitial NSCopying

extension ModelsR4.QuestionnaireItemInitial {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.QuestionnaireItemInitial else {
            return self
        }

        resource.value = self.value

        return resource
    }
}

// MARK: - QuestionnaireResponse NSCopying

extension ModelsR4.QuestionnaireResponse {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.QuestionnaireResponse else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.basedOn = self.basedOn
        resource.partOf = self.partOf
        resource.questionnaire = self.questionnaire
        resource.status = self.status
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.authored = self.authored
        resource.author = self.author?.copy() as? Reference
        resource.source = self.source?.copy() as? Reference
        resource.item = self.item

        return resource
    }
}

// MARK: - QuestionnaireResponseItem NSCopying

extension ModelsR4.QuestionnaireResponseItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.QuestionnaireResponseItem else {
            return self
        }

        resource.linkId = self.linkId
        resource.definition = self.definition
        resource.text = self.text
        resource.answer = self.answer
        resource.item = self.item

        return resource
    }
}

// MARK: - QuestionnaireResponseItemAnswer NSCopying

extension ModelsR4.QuestionnaireResponseItemAnswer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.QuestionnaireResponseItemAnswer else {
            return self
        }

        resource.value = self.value
        resource.item = self.item

        return resource
    }
}

// MARK: - Range NSCopying

extension ModelsR4.Range {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Range else {
            return self
        }

        resource.low = self.low?.copy() as? Quantity
        resource.high = self.high?.copy() as? Quantity

        return resource
    }
}

// MARK: - Ratio NSCopying

extension ModelsR4.Ratio {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Ratio else {
            return self
        }

        resource.numerator = self.numerator?.copy() as? Quantity
        resource.denominator = self.denominator?.copy() as? Quantity

        return resource
    }
}

// MARK: - Reference NSCopying

extension ModelsR4.Reference {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Reference else {
            return self
        }

        resource.reference = self.reference
        resource.type = self.type
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.display = self.display

        return resource
    }
}

// MARK: - RelatedArtifact NSCopying

extension ModelsR4.RelatedArtifact {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RelatedArtifact else {
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
}

// MARK: - RelatedPerson NSCopying

extension ModelsR4.RelatedPerson {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RelatedPerson else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.patient = self.patient.copy() as! Reference
        resource.relationship = self.relationship
        resource.name = self.name
        resource.telecom = self.telecom
        resource.gender = self.gender
        resource.birthDate = self.birthDate
        resource.address = self.address
        resource.photo = self.photo
        resource.period = self.period?.copy() as? Period
        resource.communication = self.communication

        return resource
    }
}

// MARK: - RelatedPersonCommunication NSCopying

extension ModelsR4.RelatedPersonCommunication {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RelatedPersonCommunication else {
            return self
        }

        resource.language = self.language.copy() as! CodeableConcept
        resource.preferred = self.preferred

        return resource
    }
}

// MARK: - RequestGroup NSCopying

extension ModelsR4.RequestGroup {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RequestGroup else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn
        resource.replaces = self.replaces
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.status = self.status
        resource.intent = self.intent
        resource.priority = self.priority
        resource.code = self.code?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.authoredOn = self.authoredOn
        resource.author = self.author?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.note = self.note
        resource.action = self.action

        return resource
    }
}

// MARK: - RequestGroupAction NSCopying

extension ModelsR4.RequestGroupAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RequestGroupAction else {
            return self
        }

        resource.prefix = self.prefix
        resource.title = self.title
        resource.description_fhir = self.description_fhir
        resource.textEquivalent = self.textEquivalent
        resource.priority = self.priority
        resource.code = self.code
        resource.documentation = self.documentation
        resource.condition = self.condition
        resource.relatedAction = self.relatedAction
        resource.timing = self.timing
        resource.participant = self.participant
        resource.type = self.type?.copy() as? CodeableConcept
        resource.groupingBehavior = self.groupingBehavior
        resource.selectionBehavior = self.selectionBehavior
        resource.requiredBehavior = self.requiredBehavior
        resource.precheckBehavior = self.precheckBehavior
        resource.cardinalityBehavior = self.cardinalityBehavior
        resource.resource = self.resource?.copy() as? Reference
        resource.action = self.action

        return resource
    }
}

// MARK: - RequestGroupActionCondition NSCopying

extension ModelsR4.RequestGroupActionCondition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RequestGroupActionCondition else {
            return self
        }

        resource.kind = self.kind
        resource.expression = self.expression?.copy() as? Expression

        return resource
    }
}

// MARK: - RequestGroupActionRelatedAction NSCopying

extension ModelsR4.RequestGroupActionRelatedAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RequestGroupActionRelatedAction else {
            return self
        }

        resource.actionId = self.actionId
        resource.relationship = self.relationship
        resource.offset = self.offset

        return resource
    }
}

// MARK: - ResearchDefinition NSCopying

extension ModelsR4.ResearchDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ResearchDefinition else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.shortTitle = self.shortTitle
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.comment = self.comment
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.library = self.library
        resource.population = self.population.copy() as! Reference
        resource.exposure = self.exposure?.copy() as? Reference
        resource.exposureAlternative = self.exposureAlternative?.copy() as? Reference
        resource.outcome = self.outcome?.copy() as? Reference

        return resource
    }
}

// MARK: - ResearchElementDefinition NSCopying

extension ModelsR4.ResearchElementDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ResearchElementDefinition else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.shortTitle = self.shortTitle
        resource.subtitle = self.subtitle
        resource.status = self.status
        resource.experimental = self.experimental
        resource.subject = self.subject
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.comment = self.comment
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.usage = self.usage
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.library = self.library
        resource.type = self.type
        resource.variableType = self.variableType
        resource.characteristic = self.characteristic

        return resource
    }
}

// MARK: - ResearchElementDefinitionCharacteristic NSCopying

extension ModelsR4.ResearchElementDefinitionCharacteristic {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ResearchElementDefinitionCharacteristic else {
            return self
        }

        resource.definition = self.definition
        resource.usageContext = self.usageContext
        resource.exclude = self.exclude
        resource.unitOfMeasure = self.unitOfMeasure?.copy() as? CodeableConcept
        resource.studyEffectiveDescription = self.studyEffectiveDescription
        resource.studyEffective = self.studyEffective
        resource.studyEffectiveTimeFromStart = self.studyEffectiveTimeFromStart?.copy() as? Duration
        resource.studyEffectiveGroupMeasure = self.studyEffectiveGroupMeasure
        resource.participantEffectiveDescription = self.participantEffectiveDescription
        resource.participantEffective = self.participantEffective
        resource.participantEffectiveTimeFromStart = self.participantEffectiveTimeFromStart?.copy() as? Duration
        resource.participantEffectiveGroupMeasure = self.participantEffectiveGroupMeasure

        return resource
    }
}

// MARK: - ResearchStudy NSCopying

extension ModelsR4.ResearchStudy {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ResearchStudy else {
            return self
        }

        resource.identifier = self.identifier
        resource.title = self.title
        resource.`protocol` = self.`protocol`
        resource.partOf = self.partOf
        resource.status = self.status
        resource.primaryPurposeType = self.primaryPurposeType?.copy() as? CodeableConcept
        resource.phase = self.phase?.copy() as? CodeableConcept
        resource.category = self.category
        resource.focus = self.focus
        resource.condition = self.condition
        resource.contact = self.contact
        resource.relatedArtifact = self.relatedArtifact
        resource.keyword = self.keyword
        resource.location = self.location
        resource.description_fhir = self.description_fhir
        resource.enrollment = self.enrollment
        resource.period = self.period?.copy() as? Period
        resource.sponsor = self.sponsor?.copy() as? Reference
        resource.principalInvestigator = self.principalInvestigator?.copy() as? Reference
        resource.site = self.site
        resource.reasonStopped = self.reasonStopped?.copy() as? CodeableConcept
        resource.note = self.note
        resource.arm = self.arm
        resource.objective = self.objective

        return resource
    }
}

// MARK: - ResearchStudyArm NSCopying

extension ModelsR4.ResearchStudyArm {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ResearchStudyArm else {
            return self
        }

        resource.name = self.name
        resource.type = self.type?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - ResearchStudyObjective NSCopying

extension ModelsR4.ResearchStudyObjective {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ResearchStudyObjective else {
            return self
        }

        resource.name = self.name
        resource.type = self.type?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - ResearchSubject NSCopying

extension ModelsR4.ResearchSubject {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ResearchSubject else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.period = self.period?.copy() as? Period
        resource.study = self.study.copy() as! Reference
        resource.individual = self.individual.copy() as! Reference
        resource.assignedArm = self.assignedArm
        resource.actualArm = self.actualArm
        resource.consent = self.consent?.copy() as? Reference

        return resource
    }
}

// MARK: - Resource NSCopying

extension ModelsR4.Resource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Resource else {
            return self
        }

        resource.id = self.id
        resource.meta = self.meta?.copy() as? Meta
        resource.implicitRules = self.implicitRules
        resource.language = self.language

        return resource
    }
}

// MARK: - RiskAssessment NSCopying

extension ModelsR4.RiskAssessment {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RiskAssessment else {
            return self
        }

        resource.identifier = self.identifier
        resource.basedOn = self.basedOn?.copy() as? Reference
        resource.parent = self.parent?.copy() as? Reference
        resource.status = self.status
        resource.method = self.method?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrence = self.occurrence
        resource.condition = self.condition?.copy() as? Reference
        resource.performer = self.performer?.copy() as? Reference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.basis = self.basis
        resource.prediction = self.prediction
        resource.mitigation = self.mitigation
        resource.note = self.note

        return resource
    }
}

// MARK: - RiskAssessmentPrediction NSCopying

extension ModelsR4.RiskAssessmentPrediction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RiskAssessmentPrediction else {
            return self
        }

        resource.outcome = self.outcome?.copy() as? CodeableConcept
        resource.probability = self.probability
        resource.qualitativeRisk = self.qualitativeRisk?.copy() as? CodeableConcept
        resource.relativeRisk = self.relativeRisk
        resource.when = self.when
        resource.rationale = self.rationale

        return resource
    }
}

// MARK: - RiskEvidenceSynthesis NSCopying

extension ModelsR4.RiskEvidenceSynthesis {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RiskEvidenceSynthesis else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.note = self.note
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.copyright = self.copyright
        resource.approvalDate = self.approvalDate
        resource.lastReviewDate = self.lastReviewDate
        resource.effectivePeriod = self.effectivePeriod?.copy() as? Period
        resource.topic = self.topic
        resource.author = self.author
        resource.editor = self.editor
        resource.reviewer = self.reviewer
        resource.endorser = self.endorser
        resource.relatedArtifact = self.relatedArtifact
        resource.synthesisType = self.synthesisType?.copy() as? CodeableConcept
        resource.studyType = self.studyType?.copy() as? CodeableConcept
        resource.population = self.population.copy() as! Reference
        resource.exposure = self.exposure?.copy() as? Reference
        resource.outcome = self.outcome.copy() as! Reference
        resource.sampleSize = self.sampleSize?.copy() as? RiskEvidenceSynthesisSampleSize
        resource.riskEstimate = self.riskEstimate?.copy() as? RiskEvidenceSynthesisRiskEstimate
        resource.certainty = self.certainty

        return resource
    }
}

// MARK: - RiskEvidenceSynthesisCertainty NSCopying

extension ModelsR4.RiskEvidenceSynthesisCertainty {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RiskEvidenceSynthesisCertainty else {
            return self
        }

        resource.rating = self.rating
        resource.note = self.note
        resource.certaintySubcomponent = self.certaintySubcomponent

        return resource
    }
}

// MARK: - RiskEvidenceSynthesisCertaintyCertaintySubcomponent NSCopying

extension ModelsR4.RiskEvidenceSynthesisCertaintyCertaintySubcomponent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RiskEvidenceSynthesisCertaintyCertaintySubcomponent else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.rating = self.rating
        resource.note = self.note

        return resource
    }
}

// MARK: - RiskEvidenceSynthesisRiskEstimate NSCopying

extension ModelsR4.RiskEvidenceSynthesisRiskEstimate {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RiskEvidenceSynthesisRiskEstimate else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.type = self.type?.copy() as? CodeableConcept
        resource.value = self.value
        resource.unitOfMeasure = self.unitOfMeasure?.copy() as? CodeableConcept
        resource.denominatorCount = self.denominatorCount
        resource.numeratorCount = self.numeratorCount
        resource.precisionEstimate = self.precisionEstimate

        return resource
    }
}

// MARK: - RiskEvidenceSynthesisRiskEstimatePrecisionEstimate NSCopying

extension ModelsR4.RiskEvidenceSynthesisRiskEstimatePrecisionEstimate {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RiskEvidenceSynthesisRiskEstimatePrecisionEstimate else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.level = self.level
        resource.from = self.from
        resource.to = self.to

        return resource
    }
}

// MARK: - RiskEvidenceSynthesisSampleSize NSCopying

extension ModelsR4.RiskEvidenceSynthesisSampleSize {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.RiskEvidenceSynthesisSampleSize else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.numberOfStudies = self.numberOfStudies
        resource.numberOfParticipants = self.numberOfParticipants

        return resource
    }
}

// MARK: - SampledData NSCopying

extension ModelsR4.SampledData {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SampledData else {
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
}

// MARK: - Schedule NSCopying

extension ModelsR4.Schedule {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Schedule else {
            return self
        }

        resource.identifier = self.identifier
        resource.active = self.active
        resource.serviceCategory = self.serviceCategory
        resource.serviceType = self.serviceType
        resource.specialty = self.specialty
        resource.actor = self.actor
        resource.planningHorizon = self.planningHorizon?.copy() as? Period
        resource.comment = self.comment

        return resource
    }
}

// MARK: - SearchParameter NSCopying

extension ModelsR4.SearchParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SearchParameter else {
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
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
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
        resource.component = self.component

        return resource
    }
}

// MARK: - SearchParameterComponent NSCopying

extension ModelsR4.SearchParameterComponent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SearchParameterComponent else {
            return self
        }

        resource.definition = self.definition
        resource.expression = self.expression

        return resource
    }
}

// MARK: - ServiceRequest NSCopying

extension ModelsR4.ServiceRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ServiceRequest else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn
        resource.replaces = self.replaces
        resource.requisition = self.requisition?.copy() as? Identifier
        resource.status = self.status
        resource.intent = self.intent
        resource.category = self.category
        resource.priority = self.priority
        resource.doNotPerform = self.doNotPerform
        resource.code = self.code?.copy() as? CodeableConcept
        resource.orderDetail = self.orderDetail
        resource.quantity = self.quantity
        resource.subject = self.subject.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.occurrence = self.occurrence
        resource.asNeeded = self.asNeeded
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.performerType = self.performerType?.copy() as? CodeableConcept
        resource.performer = self.performer
        resource.locationCode = self.locationCode
        resource.locationReference = self.locationReference
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.insurance = self.insurance
        resource.supportingInfo = self.supportingInfo
        resource.specimen = self.specimen
        resource.bodySite = self.bodySite
        resource.note = self.note
        resource.patientInstruction = self.patientInstruction
        resource.relevantHistory = self.relevantHistory

        return resource
    }
}

// MARK: - Signature NSCopying

extension ModelsR4.Signature {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Signature else {
            return self
        }

        resource.type = self.type
        resource.when = self.when
        resource.who = self.who.copy() as! Reference
        resource.onBehalfOf = self.onBehalfOf?.copy() as? Reference
        resource.targetFormat = self.targetFormat
        resource.sigFormat = self.sigFormat
        resource.data = self.data

        return resource
    }
}

// MARK: - Slot NSCopying

extension ModelsR4.Slot {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Slot else {
            return self
        }

        resource.identifier = self.identifier
        resource.serviceCategory = self.serviceCategory
        resource.serviceType = self.serviceType
        resource.specialty = self.specialty
        resource.appointmentType = self.appointmentType?.copy() as? CodeableConcept
        resource.schedule = self.schedule.copy() as! Reference
        resource.status = self.status
        resource.start = self.start
        resource.end = self.end
        resource.overbooked = self.overbooked
        resource.comment = self.comment

        return resource
    }
}

// MARK: - Specimen NSCopying

extension ModelsR4.Specimen {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Specimen else {
            return self
        }

        resource.identifier = self.identifier
        resource.accessionIdentifier = self.accessionIdentifier?.copy() as? Identifier
        resource.status = self.status
        resource.type = self.type?.copy() as? CodeableConcept
        resource.subject = self.subject?.copy() as? Reference
        resource.receivedTime = self.receivedTime
        resource.parent = self.parent
        resource.request = self.request
        resource.collection = self.collection?.copy() as? SpecimenCollection
        resource.processing = self.processing
        resource.container = self.container
        resource.condition = self.condition
        resource.note = self.note

        return resource
    }
}

// MARK: - SpecimenCollection NSCopying

extension ModelsR4.SpecimenCollection {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SpecimenCollection else {
            return self
        }

        resource.collector = self.collector?.copy() as? Reference
        resource.collected = self.collected
        resource.duration = self.duration?.copy() as? Duration
        resource.quantity = self.quantity?.copy() as? Quantity
        resource.method = self.method?.copy() as? CodeableConcept
        resource.bodySite = self.bodySite?.copy() as? CodeableConcept
        resource.fastingStatus = self.fastingStatus

        return resource
    }
}

// MARK: - SpecimenContainer NSCopying

extension ModelsR4.SpecimenContainer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SpecimenContainer else {
            return self
        }

        resource.identifier = self.identifier
        resource.description_fhir = self.description_fhir
        resource.type = self.type?.copy() as? CodeableConcept
        resource.capacity = self.capacity?.copy() as? Quantity
        resource.specimenQuantity = self.specimenQuantity?.copy() as? Quantity
        resource.additive = self.additive

        return resource
    }
}

// MARK: - SpecimenDefinition NSCopying

extension ModelsR4.SpecimenDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SpecimenDefinition else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.typeCollected = self.typeCollected?.copy() as? CodeableConcept
        resource.patientPreparation = self.patientPreparation
        resource.timeAspect = self.timeAspect
        resource.collection = self.collection
        resource.typeTested = self.typeTested

        return resource
    }
}

// MARK: - SpecimenDefinitionTypeTested NSCopying

extension ModelsR4.SpecimenDefinitionTypeTested {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SpecimenDefinitionTypeTested else {
            return self
        }

        resource.isDerived = self.isDerived
        resource.type = self.type?.copy() as? CodeableConcept
        resource.preference = self.preference
        resource.container = self.container?.copy() as? SpecimenDefinitionTypeTestedContainer
        resource.requirement = self.requirement
        resource.retentionTime = self.retentionTime?.copy() as? Duration
        resource.rejectionCriterion = self.rejectionCriterion
        resource.handling = self.handling

        return resource
    }
}

// MARK: - SpecimenDefinitionTypeTestedContainer NSCopying

extension ModelsR4.SpecimenDefinitionTypeTestedContainer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SpecimenDefinitionTypeTestedContainer else {
            return self
        }

        resource.material = self.material?.copy() as? CodeableConcept
        resource.type = self.type?.copy() as? CodeableConcept
        resource.cap = self.cap?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.capacity = self.capacity?.copy() as? Quantity
        resource.minimumVolume = self.minimumVolume
        resource.additive = self.additive
        resource.preparation = self.preparation

        return resource
    }
}

// MARK: - SpecimenDefinitionTypeTestedContainerAdditive NSCopying

extension ModelsR4.SpecimenDefinitionTypeTestedContainerAdditive {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SpecimenDefinitionTypeTestedContainerAdditive else {
            return self
        }

        resource.additive = self.additive

        return resource
    }
}

// MARK: - SpecimenDefinitionTypeTestedHandling NSCopying

extension ModelsR4.SpecimenDefinitionTypeTestedHandling {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SpecimenDefinitionTypeTestedHandling else {
            return self
        }

        resource.temperatureQualifier = self.temperatureQualifier?.copy() as? CodeableConcept
        resource.temperatureRange = self.temperatureRange?.copy() as? Range
        resource.maxDuration = self.maxDuration?.copy() as? Duration
        resource.instruction = self.instruction

        return resource
    }
}

// MARK: - SpecimenProcessing NSCopying

extension ModelsR4.SpecimenProcessing {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SpecimenProcessing else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.procedure = self.procedure?.copy() as? CodeableConcept
        resource.additive = self.additive
        resource.time = self.time

        return resource
    }
}

// MARK: - StructureDefinition NSCopying

extension ModelsR4.StructureDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureDefinition else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.keyword = self.keyword
        resource.fhirVersion = self.fhirVersion
        resource.mapping = self.mapping
        resource.kind = self.kind
        resource.abstract = self.abstract
        resource.context = self.context
        resource.contextInvariant = self.contextInvariant
        resource.type = self.type
        resource.baseDefinition = self.baseDefinition
        resource.derivation = self.derivation
        resource.snapshot = self.snapshot?.copy() as? StructureDefinitionSnapshot
        resource.differential = self.differential?.copy() as? StructureDefinitionDifferential

        return resource
    }
}

// MARK: - StructureDefinitionContext NSCopying

extension ModelsR4.StructureDefinitionContext {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureDefinitionContext else {
            return self
        }

        resource.type = self.type
        resource.expression = self.expression

        return resource
    }
}

// MARK: - StructureDefinitionDifferential NSCopying

extension ModelsR4.StructureDefinitionDifferential {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureDefinitionDifferential else {
            return self
        }

        resource.element = self.element

        return resource
    }
}

// MARK: - StructureDefinitionMapping NSCopying

extension ModelsR4.StructureDefinitionMapping {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureDefinitionMapping else {
            return self
        }

        resource.identity = self.identity
        resource.uri = self.uri
        resource.name = self.name
        resource.comment = self.comment

        return resource
    }
}

// MARK: - StructureDefinitionSnapshot NSCopying

extension ModelsR4.StructureDefinitionSnapshot {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureDefinitionSnapshot else {
            return self
        }

        resource.element = self.element

        return resource
    }
}

// MARK: - StructureMap NSCopying

extension ModelsR4.StructureMap {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMap else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.structure = self.structure
        resource.`import` = self.`import`
        resource.group = self.group

        return resource
    }
}

// MARK: - StructureMapGroup NSCopying

extension ModelsR4.StructureMapGroup {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMapGroup else {
            return self
        }

        resource.name = self.name
        resource.extends = self.extends
        resource.typeMode = self.typeMode
        resource.documentation = self.documentation
        resource.input = self.input
        resource.rule = self.rule

        return resource
    }
}

// MARK: - StructureMapGroupInput NSCopying

extension ModelsR4.StructureMapGroupInput {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMapGroupInput else {
            return self
        }

        resource.name = self.name
        resource.type = self.type
        resource.mode = self.mode
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - StructureMapGroupRule NSCopying

extension ModelsR4.StructureMapGroupRule {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMapGroupRule else {
            return self
        }

        resource.name = self.name
        resource.source = self.source
        resource.target = self.target
        resource.rule = self.rule
        resource.dependent = self.dependent
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - StructureMapGroupRuleDependent NSCopying

extension ModelsR4.StructureMapGroupRuleDependent {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMapGroupRuleDependent else {
            return self
        }

        resource.name = self.name
        resource.variable = self.variable

        return resource
    }
}

// MARK: - StructureMapGroupRuleSource NSCopying

extension ModelsR4.StructureMapGroupRuleSource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMapGroupRuleSource else {
            return self
        }

        resource.context = self.context
        resource.min = self.min
        resource.max = self.max
        resource.type = self.type
        resource.defaultValue = self.defaultValue
        resource.element = self.element
        resource.listMode = self.listMode
        resource.variable = self.variable
        resource.condition = self.condition
        resource.check = self.check
        resource.logMessage = self.logMessage

        return resource
    }
}

// MARK: - StructureMapGroupRuleTarget NSCopying

extension ModelsR4.StructureMapGroupRuleTarget {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMapGroupRuleTarget else {
            return self
        }

        resource.context = self.context
        resource.contextType = self.contextType
        resource.element = self.element
        resource.variable = self.variable
        resource.listMode = self.listMode
        resource.listRuleId = self.listRuleId
        resource.transform = self.transform
        resource.parameter = self.parameter

        return resource
    }
}

// MARK: - StructureMapGroupRuleTargetParameter NSCopying

extension ModelsR4.StructureMapGroupRuleTargetParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMapGroupRuleTargetParameter else {
            return self
        }

        resource.value = self.value

        return resource
    }
}

// MARK: - StructureMapStructure NSCopying

extension ModelsR4.StructureMapStructure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.StructureMapStructure else {
            return self
        }

        resource.url = self.url
        resource.mode = self.mode
        resource.alias = self.alias
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - Subscription NSCopying

extension ModelsR4.Subscription {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Subscription else {
            return self
        }

        resource.status = self.status
        resource.contact = self.contact
        resource.end = self.end
        resource.reason = self.reason
        resource.criteria = self.criteria
        resource.error = self.error
        resource.channel = self.channel.copy() as! SubscriptionChannel

        return resource
    }
}

// MARK: - SubscriptionChannel NSCopying

extension ModelsR4.SubscriptionChannel {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubscriptionChannel else {
            return self
        }

        resource.type = self.type
        resource.endpoint = self.endpoint
        resource.payload = self.payload
        resource.header = self.header

        return resource
    }
}

// MARK: - Substance NSCopying

extension ModelsR4.Substance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Substance else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.category = self.category
        resource.code = self.code.copy() as! CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.instance = self.instance
        resource.ingredient = self.ingredient

        return resource
    }
}

// MARK: - SubstanceAmount NSCopying

extension ModelsR4.SubstanceAmount {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceAmount else {
            return self
        }

        resource.amount = self.amount
        resource.amountType = self.amountType?.copy() as? CodeableConcept
        resource.amountText = self.amountText
        resource.referenceRange = self.referenceRange?.copy() as? SubstanceAmountReferenceRange

        return resource
    }
}

// MARK: - SubstanceAmountReferenceRange NSCopying

extension ModelsR4.SubstanceAmountReferenceRange {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceAmountReferenceRange else {
            return self
        }

        resource.lowLimit = self.lowLimit?.copy() as? Quantity
        resource.highLimit = self.highLimit?.copy() as? Quantity

        return resource
    }
}

// MARK: - SubstanceIngredient NSCopying

extension ModelsR4.SubstanceIngredient {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceIngredient else {
            return self
        }

        resource.quantity = self.quantity?.copy() as? Ratio
        resource.substance = self.substance

        return resource
    }
}

// MARK: - SubstanceInstance NSCopying

extension ModelsR4.SubstanceInstance {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceInstance else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.expiry = self.expiry
        resource.quantity = self.quantity?.copy() as? Quantity

        return resource
    }
}

// MARK: - SubstanceNucleicAcid NSCopying

extension ModelsR4.SubstanceNucleicAcid {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceNucleicAcid else {
            return self
        }

        resource.sequenceType = self.sequenceType?.copy() as? CodeableConcept
        resource.numberOfSubunits = self.numberOfSubunits
        resource.areaOfHybridisation = self.areaOfHybridisation
        resource.oligoNucleotideType = self.oligoNucleotideType?.copy() as? CodeableConcept
        resource.subunit = self.subunit

        return resource
    }
}

// MARK: - SubstanceNucleicAcidSubunit NSCopying

extension ModelsR4.SubstanceNucleicAcidSubunit {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceNucleicAcidSubunit else {
            return self
        }

        resource.subunit = self.subunit
        resource.sequence = self.sequence
        resource.length = self.length
        resource.sequenceAttachment = self.sequenceAttachment?.copy() as? Attachment
        resource.fivePrime = self.fivePrime?.copy() as? CodeableConcept
        resource.threePrime = self.threePrime?.copy() as? CodeableConcept
        resource.linkage = self.linkage
        resource.sugar = self.sugar

        return resource
    }
}

// MARK: - SubstanceNucleicAcidSubunitLinkage NSCopying

extension ModelsR4.SubstanceNucleicAcidSubunitLinkage {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceNucleicAcidSubunitLinkage else {
            return self
        }

        resource.connectivity = self.connectivity
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name
        resource.residueSite = self.residueSite

        return resource
    }
}

// MARK: - SubstanceNucleicAcidSubunitSugar NSCopying

extension ModelsR4.SubstanceNucleicAcidSubunitSugar {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceNucleicAcidSubunitSugar else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name
        resource.residueSite = self.residueSite

        return resource
    }
}

// MARK: - SubstancePolymer NSCopying

extension ModelsR4.SubstancePolymer {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstancePolymer else {
            return self
        }

        resource.`class` = self.`class`?.copy() as? CodeableConcept
        resource.geometry = self.geometry?.copy() as? CodeableConcept
        resource.copolymerConnectivity = self.copolymerConnectivity
        resource.modification = self.modification
        resource.monomerSet = self.monomerSet
        resource.`repeat` = self.`repeat`

        return resource
    }
}

// MARK: - SubstancePolymerMonomerSet NSCopying

extension ModelsR4.SubstancePolymerMonomerSet {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstancePolymerMonomerSet else {
            return self
        }

        resource.ratioType = self.ratioType?.copy() as? CodeableConcept
        resource.startingMaterial = self.startingMaterial

        return resource
    }
}

// MARK: - SubstancePolymerMonomerSetStartingMaterial NSCopying

extension ModelsR4.SubstancePolymerMonomerSetStartingMaterial {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstancePolymerMonomerSetStartingMaterial else {
            return self
        }

        resource.material = self.material?.copy() as? CodeableConcept
        resource.type = self.type?.copy() as? CodeableConcept
        resource.isDefining = self.isDefining
        resource.amount = self.amount?.copy() as? SubstanceAmount

        return resource
    }
}

// MARK: - SubstancePolymerRepeat NSCopying

extension ModelsR4.SubstancePolymerRepeat {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstancePolymerRepeat else {
            return self
        }

        resource.numberOfUnits = self.numberOfUnits
        resource.averageMolecularFormula = self.averageMolecularFormula
        resource.repeatUnitAmountType = self.repeatUnitAmountType?.copy() as? CodeableConcept
        resource.repeatUnit = self.repeatUnit

        return resource
    }
}

// MARK: - SubstancePolymerRepeatRepeatUnit NSCopying

extension ModelsR4.SubstancePolymerRepeatRepeatUnit {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstancePolymerRepeatRepeatUnit else {
            return self
        }

        resource.orientationOfPolymerisation = self.orientationOfPolymerisation?.copy() as? CodeableConcept
        resource.repeatUnit = self.repeatUnit
        resource.amount = self.amount?.copy() as? SubstanceAmount
        resource.degreeOfPolymerisation = self.degreeOfPolymerisation
        resource.structuralRepresentation = self.structuralRepresentation

        return resource
    }
}

// MARK: - SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation NSCopying

extension ModelsR4.SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation else {
            return self
        }

        resource.degree = self.degree?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? SubstanceAmount

        return resource
    }
}

// MARK: - SubstancePolymerRepeatRepeatUnitStructuralRepresentation NSCopying

extension ModelsR4.SubstancePolymerRepeatRepeatUnitStructuralRepresentation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstancePolymerRepeatRepeatUnitStructuralRepresentation else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.representation = self.representation
        resource.attachment = self.attachment?.copy() as? Attachment

        return resource
    }
}

// MARK: - SubstanceProtein NSCopying

extension ModelsR4.SubstanceProtein {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceProtein else {
            return self
        }

        resource.sequenceType = self.sequenceType?.copy() as? CodeableConcept
        resource.numberOfSubunits = self.numberOfSubunits
        resource.disulfideLinkage = self.disulfideLinkage
        resource.subunit = self.subunit

        return resource
    }
}

// MARK: - SubstanceProteinSubunit NSCopying

extension ModelsR4.SubstanceProteinSubunit {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceProteinSubunit else {
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
}

// MARK: - SubstanceReferenceInformation NSCopying

extension ModelsR4.SubstanceReferenceInformation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceReferenceInformation else {
            return self
        }

        resource.comment = self.comment
        resource.gene = self.gene
        resource.geneElement = self.geneElement
        resource.classification = self.classification
        resource.target = self.target

        return resource
    }
}

// MARK: - SubstanceReferenceInformationClassification NSCopying

extension ModelsR4.SubstanceReferenceInformationClassification {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceReferenceInformationClassification else {
            return self
        }

        resource.domain = self.domain?.copy() as? CodeableConcept
        resource.classification = self.classification?.copy() as? CodeableConcept
        resource.subtype = self.subtype
        resource.source = self.source

        return resource
    }
}

// MARK: - SubstanceReferenceInformationGene NSCopying

extension ModelsR4.SubstanceReferenceInformationGene {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceReferenceInformationGene else {
            return self
        }

        resource.geneSequenceOrigin = self.geneSequenceOrigin?.copy() as? CodeableConcept
        resource.gene = self.gene?.copy() as? CodeableConcept
        resource.source = self.source

        return resource
    }
}

// MARK: - SubstanceReferenceInformationGeneElement NSCopying

extension ModelsR4.SubstanceReferenceInformationGeneElement {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceReferenceInformationGeneElement else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.element = self.element?.copy() as? Identifier
        resource.source = self.source

        return resource
    }
}

// MARK: - SubstanceReferenceInformationTarget NSCopying

extension ModelsR4.SubstanceReferenceInformationTarget {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceReferenceInformationTarget else {
            return self
        }

        resource.target = self.target?.copy() as? Identifier
        resource.type = self.type?.copy() as? CodeableConcept
        resource.interaction = self.interaction?.copy() as? CodeableConcept
        resource.organism = self.organism?.copy() as? CodeableConcept
        resource.organismType = self.organismType?.copy() as? CodeableConcept
        resource.amount = self.amount
        resource.amountType = self.amountType?.copy() as? CodeableConcept
        resource.source = self.source

        return resource
    }
}

// MARK: - SubstanceSourceMaterial NSCopying

extension ModelsR4.SubstanceSourceMaterial {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSourceMaterial else {
            return self
        }

        resource.sourceMaterialClass = self.sourceMaterialClass?.copy() as? CodeableConcept
        resource.sourceMaterialType = self.sourceMaterialType?.copy() as? CodeableConcept
        resource.sourceMaterialState = self.sourceMaterialState?.copy() as? CodeableConcept
        resource.organismId = self.organismId?.copy() as? Identifier
        resource.organismName = self.organismName
        resource.parentSubstanceId = self.parentSubstanceId
        resource.parentSubstanceName = self.parentSubstanceName
        resource.countryOfOrigin = self.countryOfOrigin
        resource.geographicalLocation = self.geographicalLocation
        resource.developmentStage = self.developmentStage?.copy() as? CodeableConcept
        resource.fractionDescription = self.fractionDescription
        resource.organism = self.organism?.copy() as? SubstanceSourceMaterialOrganism
        resource.partDescription = self.partDescription

        return resource
    }
}

// MARK: - SubstanceSourceMaterialFractionDescription NSCopying

extension ModelsR4.SubstanceSourceMaterialFractionDescription {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSourceMaterialFractionDescription else {
            return self
        }

        resource.fraction = self.fraction
        resource.materialType = self.materialType?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - SubstanceSourceMaterialOrganism NSCopying

extension ModelsR4.SubstanceSourceMaterialOrganism {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSourceMaterialOrganism else {
            return self
        }

        resource.family = self.family?.copy() as? CodeableConcept
        resource.genus = self.genus?.copy() as? CodeableConcept
        resource.species = self.species?.copy() as? CodeableConcept
        resource.intraspecificType = self.intraspecificType?.copy() as? CodeableConcept
        resource.intraspecificDescription = self.intraspecificDescription
        resource.author = self.author
        resource.hybrid = self.hybrid?.copy() as? SubstanceSourceMaterialOrganismHybrid
        resource.organismGeneral = self.organismGeneral?.copy() as? SubstanceSourceMaterialOrganismOrganismGeneral

        return resource
    }
}

// MARK: - SubstanceSourceMaterialOrganismAuthor NSCopying

extension ModelsR4.SubstanceSourceMaterialOrganismAuthor {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSourceMaterialOrganismAuthor else {
            return self
        }

        resource.authorType = self.authorType?.copy() as? CodeableConcept
        resource.authorDescription = self.authorDescription

        return resource
    }
}

// MARK: - SubstanceSourceMaterialOrganismHybrid NSCopying

extension ModelsR4.SubstanceSourceMaterialOrganismHybrid {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSourceMaterialOrganismHybrid else {
            return self
        }

        resource.maternalOrganismId = self.maternalOrganismId
        resource.maternalOrganismName = self.maternalOrganismName
        resource.paternalOrganismId = self.paternalOrganismId
        resource.paternalOrganismName = self.paternalOrganismName
        resource.hybridType = self.hybridType?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - SubstanceSourceMaterialOrganismOrganismGeneral NSCopying

extension ModelsR4.SubstanceSourceMaterialOrganismOrganismGeneral {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSourceMaterialOrganismOrganismGeneral else {
            return self
        }

        resource.kingdom = self.kingdom?.copy() as? CodeableConcept
        resource.phylum = self.phylum?.copy() as? CodeableConcept
        resource.`class` = self.`class`?.copy() as? CodeableConcept
        resource.order = self.order?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - SubstanceSourceMaterialPartDescription NSCopying

extension ModelsR4.SubstanceSourceMaterialPartDescription {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSourceMaterialPartDescription else {
            return self
        }

        resource.part = self.part?.copy() as? CodeableConcept
        resource.partLocation = self.partLocation?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - SubstanceSpecification NSCopying

extension ModelsR4.SubstanceSpecification {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecification else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.type = self.type?.copy() as? CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept
        resource.domain = self.domain?.copy() as? CodeableConcept
        resource.description_fhir = self.description_fhir
        resource.source = self.source
        resource.comment = self.comment
        resource.moiety = self.moiety
        resource.property = self.property
        resource.referenceInformation = self.referenceInformation?.copy() as? Reference
        resource.structure = self.structure?.copy() as? SubstanceSpecificationStructure
        resource.code = self.code
        resource.name = self.name
        resource.molecularWeight = self.molecularWeight
        resource.relationship = self.relationship
        resource.nucleicAcid = self.nucleicAcid?.copy() as? Reference
        resource.polymer = self.polymer?.copy() as? Reference
        resource.protein = self.protein?.copy() as? Reference
        resource.sourceMaterial = self.sourceMaterial?.copy() as? Reference

        return resource
    }
}

// MARK: - SubstanceSpecificationFHIRString NSCopying

extension ModelsR4.SubstanceSpecificationFHIRString {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationFHIRString else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept
        resource.statusDate = self.statusDate
        resource.comment = self.comment
        resource.source = self.source

        return resource
    }
}

// MARK: - SubstanceSpecificationMoiety NSCopying

extension ModelsR4.SubstanceSpecificationMoiety {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationMoiety else {
            return self
        }

        resource.role = self.role?.copy() as? CodeableConcept
        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name
        resource.stereochemistry = self.stereochemistry?.copy() as? CodeableConcept
        resource.opticalActivity = self.opticalActivity?.copy() as? CodeableConcept
        resource.molecularFormula = self.molecularFormula
        resource.amount = self.amount

        return resource
    }
}

// MARK: - SubstanceSpecificationName NSCopying

extension ModelsR4.SubstanceSpecificationName {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationName else {
            return self
        }

        resource.name = self.name
        resource.type = self.type?.copy() as? CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept
        resource.preferred = self.preferred
        resource.language = self.language
        resource.domain = self.domain
        resource.jurisdiction = self.jurisdiction
        resource.synonym = self.synonym
        resource.translation = self.translation
        resource.official = self.official
        resource.source = self.source

        return resource
    }
}

// MARK: - SubstanceSpecificationNameOfficial NSCopying

extension ModelsR4.SubstanceSpecificationNameOfficial {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationNameOfficial else {
            return self
        }

        resource.authority = self.authority?.copy() as? CodeableConcept
        resource.status = self.status?.copy() as? CodeableConcept
        resource.date = self.date

        return resource
    }
}

// MARK: - SubstanceSpecificationProperty NSCopying

extension ModelsR4.SubstanceSpecificationProperty {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationProperty else {
            return self
        }

        resource.category = self.category?.copy() as? CodeableConcept
        resource.code = self.code?.copy() as? CodeableConcept
        resource.parameters = self.parameters
        resource.definingSubstance = self.definingSubstance
        resource.amount = self.amount

        return resource
    }
}

// MARK: - SubstanceSpecificationRelationship NSCopying

extension ModelsR4.SubstanceSpecificationRelationship {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationRelationship else {
            return self
        }

        resource.substance = self.substance
        resource.relationship = self.relationship?.copy() as? CodeableConcept
        resource.isDefining = self.isDefining
        resource.amount = self.amount
        resource.amountRatioLowLimit = self.amountRatioLowLimit?.copy() as? Ratio
        resource.amountType = self.amountType?.copy() as? CodeableConcept
        resource.source = self.source

        return resource
    }
}

// MARK: - SubstanceSpecificationStructure NSCopying

extension ModelsR4.SubstanceSpecificationStructure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationStructure else {
            return self
        }

        resource.stereochemistry = self.stereochemistry?.copy() as? CodeableConcept
        resource.opticalActivity = self.opticalActivity?.copy() as? CodeableConcept
        resource.molecularFormula = self.molecularFormula
        resource.molecularFormulaByMoiety = self.molecularFormulaByMoiety
        resource.isotope = self.isotope
        resource.molecularWeight = self.molecularWeight?.copy() as? SubstanceSpecificationStructureIsotopeMolecularWeight
        resource.source = self.source
        resource.representation = self.representation

        return resource
    }
}

// MARK: - SubstanceSpecificationStructureIsotope NSCopying

extension ModelsR4.SubstanceSpecificationStructureIsotope {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationStructureIsotope else {
            return self
        }

        resource.identifier = self.identifier?.copy() as? Identifier
        resource.name = self.name?.copy() as? CodeableConcept
        resource.substitution = self.substitution?.copy() as? CodeableConcept
        resource.halfLife = self.halfLife?.copy() as? Quantity
        resource.molecularWeight = self.molecularWeight?.copy() as? SubstanceSpecificationStructureIsotopeMolecularWeight

        return resource
    }
}

// MARK: - SubstanceSpecificationStructureIsotopeMolecularWeight NSCopying

extension ModelsR4.SubstanceSpecificationStructureIsotopeMolecularWeight {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationStructureIsotopeMolecularWeight else {
            return self
        }

        resource.method = self.method?.copy() as? CodeableConcept
        resource.type = self.type?.copy() as? CodeableConcept
        resource.amount = self.amount?.copy() as? Quantity

        return resource
    }
}

// MARK: - SubstanceSpecificationStructureRepresentation NSCopying

extension ModelsR4.SubstanceSpecificationStructureRepresentation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SubstanceSpecificationStructureRepresentation else {
            return self
        }

        resource.type = self.type?.copy() as? CodeableConcept
        resource.representation = self.representation
        resource.attachment = self.attachment?.copy() as? Attachment

        return resource
    }
}

// MARK: - SupplyDelivery NSCopying

extension ModelsR4.SupplyDelivery {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SupplyDelivery else {
            return self
        }

        resource.identifier = self.identifier
        resource.basedOn = self.basedOn
        resource.partOf = self.partOf
        resource.status = self.status
        resource.patient = self.patient?.copy() as? Reference
        resource.type = self.type?.copy() as? CodeableConcept
        resource.suppliedItem = self.suppliedItem?.copy() as? SupplyDeliverySuppliedItem
        resource.occurrence = self.occurrence
        resource.supplier = self.supplier?.copy() as? Reference
        resource.destination = self.destination?.copy() as? Reference
        resource.receiver = self.receiver

        return resource
    }
}

// MARK: - SupplyDeliverySuppliedItem NSCopying

extension ModelsR4.SupplyDeliverySuppliedItem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SupplyDeliverySuppliedItem else {
            return self
        }

        resource.quantity = self.quantity?.copy() as? Quantity
        resource.item = self.item

        return resource
    }
}

// MARK: - SupplyRequest NSCopying

extension ModelsR4.SupplyRequest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SupplyRequest else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.category = self.category?.copy() as? CodeableConcept
        resource.priority = self.priority
        resource.item = self.item
        resource.quantity = self.quantity.copy() as! Quantity
        resource.parameter = self.parameter
        resource.occurrence = self.occurrence
        resource.authoredOn = self.authoredOn
        resource.requester = self.requester?.copy() as? Reference
        resource.supplier = self.supplier
        resource.reasonCode = self.reasonCode
        resource.reasonReference = self.reasonReference
        resource.deliverFrom = self.deliverFrom?.copy() as? Reference
        resource.deliverTo = self.deliverTo?.copy() as? Reference

        return resource
    }
}

// MARK: - SupplyRequestParameter NSCopying

extension ModelsR4.SupplyRequestParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.SupplyRequestParameter else {
            return self
        }

        resource.code = self.code?.copy() as? CodeableConcept
        resource.value = self.value

        return resource
    }
}

// MARK: - Task NSCopying

extension ModelsR4.Task {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Task else {
            return self
        }

        resource.identifier = self.identifier
        resource.instantiatesCanonical = self.instantiatesCanonical
        resource.instantiatesUri = self.instantiatesUri
        resource.basedOn = self.basedOn
        resource.groupIdentifier = self.groupIdentifier?.copy() as? Identifier
        resource.partOf = self.partOf
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
        resource.performerType = self.performerType
        resource.owner = self.owner?.copy() as? Reference
        resource.location = self.location?.copy() as? Reference
        resource.reasonCode = self.reasonCode?.copy() as? CodeableConcept
        resource.reasonReference = self.reasonReference?.copy() as? Reference
        resource.insurance = self.insurance
        resource.note = self.note
        resource.relevantHistory = self.relevantHistory
        resource.restriction = self.restriction?.copy() as? TaskRestriction
        resource.input = self.input
        resource.output = self.output

        return resource
    }
}

// MARK: - TaskInput NSCopying

extension ModelsR4.TaskInput {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TaskInput else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.value = self.value

        return resource
    }
}

// MARK: - TaskOutput NSCopying

extension ModelsR4.TaskOutput {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TaskOutput else {
            return self
        }

        resource.type = self.type.copy() as! CodeableConcept
        resource.value = self.value

        return resource
    }
}

// MARK: - TaskRestriction NSCopying

extension ModelsR4.TaskRestriction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TaskRestriction else {
            return self
        }

        resource.repetitions = self.repetitions
        resource.period = self.period?.copy() as? Period
        resource.recipient = self.recipient

        return resource
    }
}

// MARK: - TerminologyCapabilities NSCopying

extension ModelsR4.TerminologyCapabilities {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilities else {
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
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.kind = self.kind
        resource.software = self.software?.copy() as? TerminologyCapabilitiesSoftware
        resource.implementation = self.implementation?.copy() as? TerminologyCapabilitiesImplementation
        resource.lockedDate = self.lockedDate
        resource.codeSystem = self.codeSystem
        resource.expansion = self.expansion?.copy() as? TerminologyCapabilitiesExpansion
        resource.codeSearch = self.codeSearch
        resource.validateCode = self.validateCode?.copy() as? TerminologyCapabilitiesValidateCode
        resource.translation = self.translation?.copy() as? TerminologyCapabilitiesTranslation
        resource.closure = self.closure?.copy() as? TerminologyCapabilitiesClosure

        return resource
    }
}

// MARK: - TerminologyCapabilitiesClosure NSCopying

extension ModelsR4.TerminologyCapabilitiesClosure {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesClosure else {
            return self
        }

        resource.translation = self.translation

        return resource
    }
}

// MARK: - TerminologyCapabilitiesCodeSystem NSCopying

extension ModelsR4.TerminologyCapabilitiesCodeSystem {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesCodeSystem else {
            return self
        }

        resource.uri = self.uri
        resource.version = self.version
        resource.subsumption = self.subsumption

        return resource
    }
}

// MARK: - TerminologyCapabilitiesCodeSystemVersion NSCopying

extension ModelsR4.TerminologyCapabilitiesCodeSystemVersion {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesCodeSystemVersion else {
            return self
        }

        resource.code = self.code
        resource.isDefault = self.isDefault
        resource.compositional = self.compositional
        resource.language = self.language
        resource.filter = self.filter
        resource.property = self.property

        return resource
    }
}

// MARK: - TerminologyCapabilitiesCodeSystemVersionFilter NSCopying

extension ModelsR4.TerminologyCapabilitiesCodeSystemVersionFilter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesCodeSystemVersionFilter else {
            return self
        }

        resource.code = self.code
        resource.op = self.op

        return resource
    }
}

// MARK: - TerminologyCapabilitiesExpansion NSCopying

extension ModelsR4.TerminologyCapabilitiesExpansion {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesExpansion else {
            return self
        }

        resource.hierarchical = self.hierarchical
        resource.paging = self.paging
        resource.incomplete = self.incomplete
        resource.parameter = self.parameter
        resource.textFilter = self.textFilter

        return resource
    }
}

// MARK: - TerminologyCapabilitiesExpansionParameter NSCopying

extension ModelsR4.TerminologyCapabilitiesExpansionParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesExpansionParameter else {
            return self
        }

        resource.name = self.name
        resource.documentation = self.documentation

        return resource
    }
}

// MARK: - TerminologyCapabilitiesImplementation NSCopying

extension ModelsR4.TerminologyCapabilitiesImplementation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesImplementation else {
            return self
        }

        resource.description_fhir = self.description_fhir
        resource.url = self.url

        return resource
    }
}

// MARK: - TerminologyCapabilitiesSoftware NSCopying

extension ModelsR4.TerminologyCapabilitiesSoftware {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesSoftware else {
            return self
        }

        resource.name = self.name
        resource.version = self.version

        return resource
    }
}

// MARK: - TerminologyCapabilitiesTranslation NSCopying

extension ModelsR4.TerminologyCapabilitiesTranslation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesTranslation else {
            return self
        }

        resource.needsMap = self.needsMap

        return resource
    }
}

// MARK: - TerminologyCapabilitiesValidateCode NSCopying

extension ModelsR4.TerminologyCapabilitiesValidateCode {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TerminologyCapabilitiesValidateCode else {
            return self
        }

        resource.translations = self.translations

        return resource
    }
}

// MARK: - TestReport NSCopying

extension ModelsR4.TestReport {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReport else {
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
        resource.participant = self.participant
        resource.setup = self.setup?.copy() as? TestReportSetup
        resource.test = self.test
        resource.teardown = self.teardown?.copy() as? TestReportTeardown

        return resource
    }
}

// MARK: - TestReportParticipant NSCopying

extension ModelsR4.TestReportParticipant {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportParticipant else {
            return self
        }

        resource.type = self.type
        resource.uri = self.uri
        resource.display = self.display

        return resource
    }
}

// MARK: - TestReportSetup NSCopying

extension ModelsR4.TestReportSetup {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportSetup else {
            return self
        }

        resource.action = self.action

        return resource
    }
}

// MARK: - TestReportSetupAction NSCopying

extension ModelsR4.TestReportSetupAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportSetupAction else {
            return self
        }

        resource.operation = self.operation?.copy() as? TestReportSetupActionOperation
        resource.assert = self.assert?.copy() as? TestReportSetupActionAssert

        return resource
    }
}

// MARK: - TestReportSetupActionAssert NSCopying

extension ModelsR4.TestReportSetupActionAssert {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportSetupActionAssert else {
            return self
        }

        resource.result = self.result
        resource.message = self.message
        resource.detail = self.detail

        return resource
    }
}

// MARK: - TestReportSetupActionOperation NSCopying

extension ModelsR4.TestReportSetupActionOperation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportSetupActionOperation else {
            return self
        }

        resource.result = self.result
        resource.message = self.message
        resource.detail = self.detail

        return resource
    }
}

// MARK: - TestReportTeardown NSCopying

extension ModelsR4.TestReportTeardown {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportTeardown else {
            return self
        }

        resource.action = self.action

        return resource
    }
}

// MARK: - TestReportTeardownAction NSCopying

extension ModelsR4.TestReportTeardownAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportTeardownAction else {
            return self
        }

        resource.operation = self.operation.copy() as! TestReportSetupActionOperation

        return resource
    }
}

// MARK: - TestReportTest NSCopying

extension ModelsR4.TestReportTest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportTest else {
            return self
        }

        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.action = self.action

        return resource
    }
}

// MARK: - TestReportTestAction NSCopying

extension ModelsR4.TestReportTestAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestReportTestAction else {
            return self
        }

        resource.operation = self.operation?.copy() as? TestReportSetupActionOperation
        resource.assert = self.assert?.copy() as? TestReportSetupActionAssert

        return resource
    }
}

// MARK: - TestScript NSCopying

extension ModelsR4.TestScript {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScript else {
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
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.origin = self.origin
        resource.destination = self.destination
        resource.metadata = self.metadata?.copy() as? TestScriptMetadata
        resource.fixture = self.fixture
        resource.profile = self.profile
        resource.variable = self.variable
        resource.setup = self.setup?.copy() as? TestScriptSetup
        resource.test = self.test
        resource.teardown = self.teardown?.copy() as? TestScriptTeardown

        return resource
    }
}

// MARK: - TestScriptDestination NSCopying

extension ModelsR4.TestScriptDestination {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptDestination else {
            return self
        }

        resource.index = self.index
        resource.profile = self.profile.copy() as! Coding

        return resource
    }
}

// MARK: - TestScriptFixture NSCopying

extension ModelsR4.TestScriptFixture {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptFixture else {
            return self
        }

        resource.autocreate = self.autocreate
        resource.autodelete = self.autodelete
        resource.resource = self.resource?.copy() as? Reference

        return resource
    }
}

// MARK: - TestScriptMetadata NSCopying

extension ModelsR4.TestScriptMetadata {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptMetadata else {
            return self
        }

        resource.link = self.link
        resource.capability = self.capability

        return resource
    }
}

// MARK: - TestScriptMetadataCapability NSCopying

extension ModelsR4.TestScriptMetadataCapability {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptMetadataCapability else {
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
}

// MARK: - TestScriptMetadataLink NSCopying

extension ModelsR4.TestScriptMetadataLink {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptMetadataLink else {
            return self
        }

        resource.url = self.url
        resource.description_fhir = self.description_fhir

        return resource
    }
}

// MARK: - TestScriptOrigin NSCopying

extension ModelsR4.TestScriptOrigin {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptOrigin else {
            return self
        }

        resource.index = self.index
        resource.profile = self.profile.copy() as! Coding

        return resource
    }
}

// MARK: - TestScriptSetup NSCopying

extension ModelsR4.TestScriptSetup {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptSetup else {
            return self
        }

        resource.action = self.action

        return resource
    }
}

// MARK: - TestScriptSetupAction NSCopying

extension ModelsR4.TestScriptSetupAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptSetupAction else {
            return self
        }

        resource.operation = self.operation?.copy() as? TestScriptSetupActionOperation
        resource.assert = self.assert?.copy() as? TestScriptSetupActionAssert

        return resource
    }
}

// MARK: - TestScriptSetupActionAssert NSCopying

extension ModelsR4.TestScriptSetupActionAssert {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptSetupActionAssert else {
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
}

// MARK: - TestScriptSetupActionOperation NSCopying

extension ModelsR4.TestScriptSetupActionOperation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptSetupActionOperation else {
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
        resource.requestHeader = self.requestHeader
        resource.requestId = self.requestId
        resource.responseId = self.responseId
        resource.sourceId = self.sourceId
        resource.targetId = self.targetId
        resource.url = self.url

        return resource
    }
}

// MARK: - TestScriptSetupActionOperationRequestHeader NSCopying

extension ModelsR4.TestScriptSetupActionOperationRequestHeader {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptSetupActionOperationRequestHeader else {
            return self
        }

        resource.field = self.field
        resource.value = self.value

        return resource
    }
}

// MARK: - TestScriptTeardown NSCopying

extension ModelsR4.TestScriptTeardown {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptTeardown else {
            return self
        }

        resource.action = self.action

        return resource
    }
}

// MARK: - TestScriptTeardownAction NSCopying

extension ModelsR4.TestScriptTeardownAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptTeardownAction else {
            return self
        }

        resource.operation = self.operation.copy() as! TestScriptSetupActionOperation

        return resource
    }
}

// MARK: - TestScriptTest NSCopying

extension ModelsR4.TestScriptTest {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptTest else {
            return self
        }

        resource.name = self.name
        resource.description_fhir = self.description_fhir
        resource.action = self.action

        return resource
    }
}

// MARK: - TestScriptTestAction NSCopying

extension ModelsR4.TestScriptTestAction {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptTestAction else {
            return self
        }

        resource.operation = self.operation?.copy() as? TestScriptSetupActionOperation
        resource.assert = self.assert?.copy() as? TestScriptSetupActionAssert

        return resource
    }
}

// MARK: - TestScriptVariable NSCopying

extension ModelsR4.TestScriptVariable {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TestScriptVariable else {
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
}

// MARK: - Timing NSCopying

extension ModelsR4.Timing {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.Timing else {
            return self
        }

        resource.event = self.event
        resource.`repeat` = self.`repeat`?.copy() as? TimingRepeat
        resource.code = self.code?.copy() as? CodeableConcept

        return resource
    }
}

// MARK: - TimingRepeat NSCopying

extension ModelsR4.TimingRepeat {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TimingRepeat else {
            return self
        }

        resource.bounds = self.bounds
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
}

// MARK: - TriggerDefinition NSCopying

extension ModelsR4.TriggerDefinition {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.TriggerDefinition else {
            return self
        }

        resource.type = self.type
        resource.name = self.name
        resource.timing = self.timing
        resource.data = self.data
        resource.condition = self.condition?.copy() as? Expression

        return resource
    }
}

// MARK: - UsageContext NSCopying

extension ModelsR4.UsageContext {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.UsageContext else {
            return self
        }

        resource.code = self.code.copy() as! Coding
        resource.value = self.value

        return resource
    }
}

// MARK: - ValueSet NSCopying

extension ModelsR4.ValueSet {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSet else {
            return self
        }

        resource.url = self.url
        resource.identifier = self.identifier
        resource.version = self.version
        resource.name = self.name
        resource.title = self.title
        resource.status = self.status
        resource.experimental = self.experimental
        resource.date = self.date
        resource.publisher = self.publisher
        resource.contact = self.contact
        resource.description_fhir = self.description_fhir
        resource.useContext = self.useContext
        resource.jurisdiction = self.jurisdiction
        resource.immutable = self.immutable
        resource.purpose = self.purpose
        resource.copyright = self.copyright
        resource.compose = self.compose?.copy() as? ValueSetCompose
        resource.expansion = self.expansion?.copy() as? ValueSetExpansion

        return resource
    }
}

// MARK: - ValueSetCompose NSCopying

extension ModelsR4.ValueSetCompose {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSetCompose else {
            return self
        }

        resource.lockedDate = self.lockedDate
        resource.inactive = self.inactive
        resource.include = self.include
        resource.exclude = self.exclude

        return resource
    }
}

// MARK: - ValueSetComposeInclude NSCopying

extension ModelsR4.ValueSetComposeInclude {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSetComposeInclude else {
            return self
        }

        resource.system = self.system
        resource.version = self.version
        resource.concept = self.concept
        resource.filter = self.filter
        resource.valueSet = self.valueSet

        return resource
    }
}

// MARK: - ValueSetComposeIncludeConcept NSCopying

extension ModelsR4.ValueSetComposeIncludeConcept {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSetComposeIncludeConcept else {
            return self
        }

        resource.code = self.code
        resource.display = self.display
        resource.designation = self.designation

        return resource
    }
}

// MARK: - ValueSetComposeIncludeConceptDesignation NSCopying

extension ModelsR4.ValueSetComposeIncludeConceptDesignation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSetComposeIncludeConceptDesignation else {
            return self
        }

        resource.language = self.language
        resource.use = self.use?.copy() as? Coding
        resource.value = self.value

        return resource
    }
}

// MARK: - ValueSetComposeIncludeFilter NSCopying

extension ModelsR4.ValueSetComposeIncludeFilter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSetComposeIncludeFilter else {
            return self
        }

        resource.property = self.property
        resource.op = self.op
        resource.value = self.value

        return resource
    }
}

// MARK: - ValueSetExpansion NSCopying

extension ModelsR4.ValueSetExpansion {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSetExpansion else {
            return self
        }

        resource.identifier = self.identifier
        resource.timestamp = self.timestamp
        resource.total = self.total
        resource.offset = self.offset
        resource.parameter = self.parameter
        resource.contains = self.contains

        return resource
    }
}

// MARK: - ValueSetExpansionContains NSCopying

extension ModelsR4.ValueSetExpansionContains {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSetExpansionContains else {
            return self
        }

        resource.system = self.system
        resource.abstract = self.abstract
        resource.inactive = self.inactive
        resource.version = self.version
        resource.code = self.code
        resource.display = self.display
        resource.designation = self.designation
        resource.contains = self.contains

        return resource
    }
}

// MARK: - ValueSetExpansionParameter NSCopying

extension ModelsR4.ValueSetExpansionParameter {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.ValueSetExpansionParameter else {
            return self
        }

        resource.name = self.name
        resource.value = self.value

        return resource
    }
}

// MARK: - VerificationResult NSCopying

extension ModelsR4.VerificationResult {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.VerificationResult else {
            return self
        }

        resource.target = self.target
        resource.targetLocation = self.targetLocation
        resource.need = self.need?.copy() as? CodeableConcept
        resource.status = self.status
        resource.statusDate = self.statusDate
        resource.validationType = self.validationType?.copy() as? CodeableConcept
        resource.validationProcess = self.validationProcess
        resource.frequency = self.frequency?.copy() as? Timing
        resource.lastPerformed = self.lastPerformed
        resource.nextScheduled = self.nextScheduled
        resource.failureAction = self.failureAction?.copy() as? CodeableConcept
        resource.primarySource = self.primarySource
        resource.attestation = self.attestation?.copy() as? VerificationResultAttestation
        resource.validator = self.validator

        return resource
    }
}

// MARK: - VerificationResultAttestation NSCopying

extension ModelsR4.VerificationResultAttestation {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.VerificationResultAttestation else {
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
}

// MARK: - VerificationResultPrimarySource NSCopying

extension ModelsR4.VerificationResultPrimarySource {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.VerificationResultPrimarySource else {
            return self
        }

        resource.who = self.who?.copy() as? Reference
        resource.type = self.type
        resource.communicationMethod = self.communicationMethod
        resource.validationStatus = self.validationStatus?.copy() as? CodeableConcept
        resource.validationDate = self.validationDate
        resource.canPushUpdates = self.canPushUpdates?.copy() as? CodeableConcept
        resource.pushTypeAvailable = self.pushTypeAvailable

        return resource
    }
}

// MARK: - VerificationResultValidator NSCopying

extension ModelsR4.VerificationResultValidator {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.VerificationResultValidator else {
            return self
        }

        resource.organization = self.organization.copy() as! Reference
        resource.identityCertificate = self.identityCertificate
        resource.attestationSignature = self.attestationSignature?.copy() as? Signature

        return resource
    }
}

// MARK: - VisionPrescription NSCopying

extension ModelsR4.VisionPrescription {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.VisionPrescription else {
            return self
        }

        resource.identifier = self.identifier
        resource.status = self.status
        resource.created = self.created
        resource.patient = self.patient.copy() as! Reference
        resource.encounter = self.encounter?.copy() as? Reference
        resource.dateWritten = self.dateWritten
        resource.prescriber = self.prescriber.copy() as! Reference
        resource.lensSpecification = self.lensSpecification

        return resource
    }
}

// MARK: - VisionPrescriptionLensSpecification NSCopying

extension ModelsR4.VisionPrescriptionLensSpecification {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.VisionPrescriptionLensSpecification else {
            return self
        }

        resource.product = self.product.copy() as! CodeableConcept
        resource.eye = self.eye
        resource.sphere = self.sphere
        resource.cylinder = self.cylinder
        resource.axis = self.axis
        resource.prism = self.prism
        resource.add = self.add
        resource.power = self.power
        resource.backCurve = self.backCurve
        resource.diameter = self.diameter
        resource.duration = self.duration?.copy() as? Quantity
        resource.color = self.color
        resource.brand = self.brand
        resource.note = self.note

        return resource
    }
}

// MARK: - VisionPrescriptionLensSpecificationPrism NSCopying

extension ModelsR4.VisionPrescriptionLensSpecificationPrism {

    override public func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy() as? ModelsR4.VisionPrescriptionLensSpecificationPrism else {
            return self
        }

        resource.amount = self.amount
        resource.base = self.base

        return resource
    }
}
