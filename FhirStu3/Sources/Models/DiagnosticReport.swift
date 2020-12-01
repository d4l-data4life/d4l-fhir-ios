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

//
//  DiagnosticReport.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport)
//

import Foundation

/**
A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as formatted
reports.

The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and locations,
and/or specimens derived from these. The report includes clinical context such as requesting and provider information,
and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic
reports.
*/
open class DiagnosticReport: DomainResource {
	override open class var resourceType: String {
		get { return "DiagnosticReport" }
	}

    private static var keyPaths: [String: PartialKeyPath<DiagnosticReport>] = [

        "basedOn" : \DiagnosticReport.basedOn,
        "category" : \DiagnosticReport.category,
        "code" : \DiagnosticReport.code,
        "codedDiagnosis" : \DiagnosticReport.codedDiagnosis,
        "conclusion" : \DiagnosticReport.conclusion,
        "context" : \DiagnosticReport.context,
        "effectiveDateTime" : \DiagnosticReport.effectiveDateTime,
        "effectivePeriod" : \DiagnosticReport.effectivePeriod,
        "identifier" : \DiagnosticReport.identifier,
        "image" : \DiagnosticReport.image,
        "imagingStudy" : \DiagnosticReport.imagingStudy,
        "issued" : \DiagnosticReport.issued,
        "performer" : \DiagnosticReport.performer,
        "presentedForm" : \DiagnosticReport.presentedForm,
        "result" : \DiagnosticReport.result,
        "specimen" : \DiagnosticReport.specimen,
        "status" : \DiagnosticReport.status,
        "subject" : \DiagnosticReport.subject
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DiagnosticReport.keyPaths[name] as? KeyPath<DiagnosticReport, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DiagnosticReport.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// What was requested.
	public var basedOn: [Reference]?

	/// Service category.
	public var category: CodeableConcept?

	/// Name/Code for this diagnostic report.
	public var code: CodeableConcept?

	/// Codes for the conclusion.
	public var codedDiagnosis: [CodeableConcept]?

	/// Clinical Interpretation of test results.
	public var conclusion: String?

	/// Health care event when test ordered.
	public var context: Reference?

	/// Clinically relevant time/time-period for report.
	public var effectiveDateTime: DateTime?

	/// Clinically relevant time/time-period for report.
	public var effectivePeriod: Period?

	/// Business identifier for report.
	public var identifier: [Identifier]?

	/// Key images associated with this report.
	public var image: [DiagnosticReportImage]?

	/// Reference to full details of imaging associated with the diagnostic report.
	public var imagingStudy: [Reference]?

	/// DateTime this version was released.
	public var issued: Instant?

	/// Participants in producing the report.
	public var performer: [DiagnosticReportPerformer]?

	/// Entire report as issued.
	public var presentedForm: [Attachment]?

	/// Observations - simple, or complex nested groups.
	public var result: [Reference]?

	/// Specimens this report is based on.
	public var specimen: [Reference]?

	/// The status of the diagnostic report as a whole.
	public var status: DiagnosticReportStatus?

	/// The subject of the report - usually, but not always, the patient.
	public var subject: Reference?

	enum DiagnosticReportKeys: String, CodingKey {
		case basedOn
		case category
		case code
		case codedDiagnosis
		case conclusion
		case context
		case effectiveDateTime
		case effectivePeriod
		case identifier
		case image
		case imagingStudy
		case issued
		case performer
		case presentedForm
		case result
		case specimen
		case status
		case subject
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(code: CodeableConcept, status: DiagnosticReportStatus) {
		self.init()
		self.code = code
		self.status = status
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DiagnosticReportKeys.self)
		if let item = code {
			try container.encode(item, forKey: .code)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("code")
		}
		if let item = status {
			try container.encode(item, forKey: .status)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("status")
		}
		try container.encodeArrayIfPresent(basedOn, forKey: .basedOn)
		try container.encodeIfPresent(category, forKey: .category)
		try container.encodeArrayIfPresent(codedDiagnosis, forKey: .codedDiagnosis)
		try container.encodeIfPresent(conclusion, forKey: .conclusion)
		try container.encodeIfPresent(context, forKey: .context)
		try container.encodeIfPresent(effectiveDateTime, forKey: .effectiveDateTime)
		try container.encodeIfPresent(effectivePeriod, forKey: .effectivePeriod)
		try container.encodeArrayIfPresent(identifier, forKey: .identifier)
		try container.encodeArrayIfPresent(image, forKey: .image)
		try container.encodeArrayIfPresent(imagingStudy, forKey: .imagingStudy)
		try container.encodeIfPresent(issued, forKey: .issued)
		try container.encodeArrayIfPresent(performer, forKey: .performer)
		try container.encodeArrayIfPresent(presentedForm, forKey: .presentedForm)
		try container.encodeArrayIfPresent(result, forKey: .result)
		try container.encodeArrayIfPresent(specimen, forKey: .specimen)
		try container.encodeIfPresent(subject, forKey: .subject)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DiagnosticReportKeys.self)
		code = try container.decode(CodeableConcept.self, forKey: .code)
		status = try container.decode(DiagnosticReportStatus.self, forKey: .status)
		basedOn = try container.decodeArrayIfPresent([Reference].self, forKey: .basedOn)
		category = try container.decodeIfPresent(CodeableConcept.self, forKey: .category)
		codedDiagnosis = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .codedDiagnosis)
		conclusion = try container.decodeIfPresent(String.self, forKey: .conclusion)
		context = try container.decodeIfPresent(Reference.self, forKey: .context)
		effectiveDateTime = try container.decodeIfPresent(DateTime.self, forKey: .effectiveDateTime)
		effectivePeriod = try container.decodeIfPresent(Period.self, forKey: .effectivePeriod)
		identifier = try container.decodeArrayIfPresent([Identifier].self, forKey: .identifier)
		image = try container.decodeArrayIfPresent([DiagnosticReportImage].self, forKey: .image)
		imagingStudy = try container.decodeArrayIfPresent([Reference].self, forKey: .imagingStudy)
		issued = try container.decodeIfPresent(Instant.self, forKey: .issued)
		performer = try container.decodeArrayIfPresent([DiagnosticReportPerformer].self, forKey: .performer)
		presentedForm = try container.decodeArrayIfPresent([Attachment].self, forKey: .presentedForm)
		result = try container.decodeArrayIfPresent([Reference].self, forKey: .result)
		specimen = try container.decodeArrayIfPresent([Reference].self, forKey: .specimen)
		subject = try container.decodeIfPresent(Reference.self, forKey: .subject)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DiagnosticReport else {
            return false
        }

		return	basedOn == object.basedOn &&
			category == object.category &&
			code == object.code &&
			codedDiagnosis == object.codedDiagnosis &&
			conclusion == object.conclusion &&
			context == object.context &&
			effectiveDateTime == object.effectiveDateTime &&
			effectivePeriod == object.effectivePeriod &&
			identifier == object.identifier &&
			image == object.image &&
			imagingStudy == object.imagingStudy &&
			issued == object.issued &&
			performer == object.performer &&
			presentedForm == object.presentedForm &&
			result == object.result &&
			specimen == object.specimen &&
			status == object.status &&
			subject == object.subject &&
			super.equal(to: to)
	}
}

extension DiagnosticReport {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DiagnosticReport else {
            return self
        }

        resource.basedOn = self.basedOn?.compactMap { $0.copy(with: zone) as? Reference }
        resource.category = self.category?.copy(with: zone) as? CodeableConcept
        resource.code = self.code?.copy(with: zone) as? CodeableConcept
        resource.codedDiagnosis = self.codedDiagnosis?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.conclusion = self.conclusion
        resource.context = self.context?.copy(with: zone) as? Reference
        resource.effectiveDateTime = self.effectiveDateTime
        resource.effectivePeriod = self.effectivePeriod?.copy(with: zone) as? Period
        resource.identifier = self.identifier?.compactMap { $0.copy(with: zone) as? Identifier }
        resource.image = self.image?.compactMap { $0.copy(with: zone) as? DiagnosticReportImage }
        resource.imagingStudy = self.imagingStudy?.compactMap { $0.copy(with: zone) as? Reference }
        resource.issued = self.issued
        resource.performer = self.performer?.compactMap { $0.copy(with: zone) as? DiagnosticReportPerformer }
        resource.presentedForm = self.presentedForm?.compactMap { $0.copy(with: zone) as? Attachment }
        resource.result = self.result?.compactMap { $0.copy(with: zone) as? Reference }
        resource.specimen = self.specimen?.compactMap { $0.copy(with: zone) as? Reference }
        resource.status = self.status
        resource.subject = self.subject?.copy(with: zone) as? Reference

        return resource
    }
}

/**
Key images associated with this report.

A list of key images associated with this report. The images are generally created during the diagnostic process, and
may be directly of the patient, or of treated specimens (i.e. slides of interest).
*/
open class DiagnosticReportImage: BackboneElement {
	override open class var resourceType: String {
		get { return "DiagnosticReportImage" }
	}

    private static var keyPaths: [String: PartialKeyPath<DiagnosticReportImage>] = [

        "comment" : \DiagnosticReportImage.comment,
        "link" : \DiagnosticReportImage.link
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DiagnosticReportImage.keyPaths[name] as? KeyPath<DiagnosticReportImage, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DiagnosticReportImage.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Comment about the image (e.g. explanation).
	public var comment: String?

	/// Reference to the image source.
	public var link: Reference?

	enum DiagnosticReportImageKeys: String, CodingKey {
		case comment
		case link
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(link: Reference) {
		self.init()
		self.link = link
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DiagnosticReportImageKeys.self)
		if let item = link {
			try container.encode(item, forKey: .link)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("link")
		}
		try container.encodeIfPresent(comment, forKey: .comment)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DiagnosticReportImageKeys.self)
		link = try container.decode(Reference.self, forKey: .link)
		comment = try container.decodeIfPresent(String.self, forKey: .comment)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DiagnosticReportImage else {
            return false
        }

		return	comment == object.comment &&
			link == object.link &&
			super.equal(to: to)
	}
}

extension DiagnosticReportImage {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DiagnosticReportImage else {
            return self
        }

        resource.comment = self.comment
        resource.link = self.link?.copy(with: zone) as? Reference

        return resource
    }
}

/**
Participants in producing the report.

Indicates who or what participated in producing the report.
*/
open class DiagnosticReportPerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "DiagnosticReportPerformer" }
	}

    private static var keyPaths: [String: PartialKeyPath<DiagnosticReportPerformer>] = [

        "actor" : \DiagnosticReportPerformer.actor,
        "role" : \DiagnosticReportPerformer.role
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = DiagnosticReportPerformer.keyPaths[name] as? KeyPath<DiagnosticReportPerformer, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = DiagnosticReportPerformer.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Practitioner or Organization  participant.
	public var actor: Reference?

	/// Type of performer.
	public var role: CodeableConcept?

	enum DiagnosticReportPerformerKeys: String, CodingKey {
		case actor
		case role
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(actor: Reference) {
		self.init()
		self.actor = actor
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: DiagnosticReportPerformerKeys.self)
		if let item = actor {
			try container.encode(item, forKey: .actor)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("actor")
		}
		try container.encodeIfPresent(role, forKey: .role)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  DiagnosticReportPerformerKeys.self)
		actor = try container.decode(Reference.self, forKey: .actor)
		role = try container.decodeIfPresent(CodeableConcept.self, forKey: .role)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? DiagnosticReportPerformer else {
            return false
        }

		return	actor == object.actor &&
			role == object.role &&
			super.equal(to: to)
	}
}

extension DiagnosticReportPerformer {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? DiagnosticReportPerformer else {
            return self
        }

        resource.actor = self.actor?.copy(with: zone) as? Reference
        resource.role = self.role?.copy(with: zone) as? CodeableConcept

        return resource
    }
}
