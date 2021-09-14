//  Copyright (c) 2021 D4L data4life gGmbH
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
//  Provenance.swift
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Provenance)
//

import Foundation

/**
Who, What, When for a set of resources.

Provenance of a resource is a record that describes entities and processes involved in producing and delivering or
otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling
trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become
important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence
in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the
artifact been legally authenticated), all of which may impact security, privacy, and trust policies.
*/
open class Provenance: DomainResource {
	override open class var resourceType: String {
		get { return "Provenance" }
	}

    private static var keyPaths: [String: PartialKeyPath<Provenance>] = [

        "activity" : \Provenance.activity,
        "agent" : \Provenance.agent,
        "entity" : \Provenance.entity,
        "location" : \Provenance.location,
        "period" : \Provenance.period,
        "policy" : \Provenance.policy,
        "reason" : \Provenance.reason,
        "recorded" : \Provenance.recorded,
        "signature" : \Provenance.signature,
        "target" : \Provenance.target
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = Provenance.keyPaths[name] as? KeyPath<Provenance, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = Provenance.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Activity that occurred.
	public var activity: Coding?

	/// Actor involved.
	public var agent: [ProvenanceAgent]?

	/// An entity used in this activity.
	public var entity: [ProvenanceEntity]?

	/// Where the activity occurred, if relevant.
	public var location: Reference?

	/// When the activity occurred.
	public var period: Period?

	/// Policy or plan the activity was defined by.
	public var policy: [String]?

	/// Reason the activity is occurring.
	public var reason: [Coding]?

	/// When the activity was recorded / updated.
	public var recorded: Instant?

	/// Signature on target.
	public var signature: [Signature]?

	/// Target Reference(s) (usually version specific).
	public var target: [Reference]?

	enum ProvenanceKeys: String, CodingKey {
		case activity
		case agent
		case entity
		case location
		case period
		case policy
		case reason
		case recorded
		case signature
		case target
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(agent: [ProvenanceAgent], recorded: Instant, target: [Reference]) {
		self.init()
		self.agent = agent
		self.recorded = recorded
		self.target = target
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ProvenanceKeys.self)
		if let items = agent {
			try container.encodeArray(items, forKey: .agent)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("agent")
		}
		if let item = recorded {
			try container.encode(item, forKey: .recorded)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("recorded")
		}
		if let items = target {
			try container.encodeArray(items, forKey: .target)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("target")
		}
		try container.encodeIfPresent(activity, forKey: .activity)
		try container.encodeArrayIfPresent(entity, forKey: .entity)
		try container.encodeIfPresent(location, forKey: .location)
		try container.encodeIfPresent(period, forKey: .period)
		try container.encodeArrayIfPresent(policy, forKey: .policy)
		try container.encodeArrayIfPresent(reason, forKey: .reason)
		try container.encodeArrayIfPresent(signature, forKey: .signature)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ProvenanceKeys.self)
		agent = try container.decodeArray([ProvenanceAgent].self, forKey: .agent)
		recorded = try container.decode(Instant.self, forKey: .recorded)
		target = try container.decodeArray([Reference].self, forKey: .target)
		activity = try container.decodeIfPresent(Coding.self, forKey: .activity)
		entity = try container.decodeArrayIfPresent([ProvenanceEntity].self, forKey: .entity)
		location = try container.decodeIfPresent(Reference.self, forKey: .location)
		period = try container.decodeIfPresent(Period.self, forKey: .period)
		policy = try container.decodeArrayIfPresent([String].self, forKey: .policy)
		reason = try container.decodeArrayIfPresent([Coding].self, forKey: .reason)
		signature = try container.decodeArrayIfPresent([Signature].self, forKey: .signature)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? Provenance else {
            return false
        }

		return	activity == object.activity &&
			agent == object.agent &&
			entity == object.entity &&
			location == object.location &&
			period == object.period &&
			policy == object.policy &&
			reason == object.reason &&
			recorded == object.recorded &&
			signature == object.signature &&
			target == object.target &&
			super.equal(to: to)
	}
}

extension Provenance {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? Provenance else {
            return self
        }

        resource.activity = self.activity?.copy(with: zone) as? Coding
        resource.agent = self.agent?.compactMap { $0.copy(with: zone) as? ProvenanceAgent }
        resource.entity = self.entity?.compactMap { $0.copy(with: zone) as? ProvenanceEntity }
        resource.location = self.location?.copy(with: zone) as? Reference
        resource.period = self.period?.copy(with: zone) as? Period
        resource.policy = self.policy
        resource.reason = self.reason?.compactMap { $0.copy(with: zone) as? Coding }
        resource.recorded = self.recorded
        resource.signature = self.signature?.compactMap { $0.copy(with: zone) as? Signature }
        resource.target = self.target?.compactMap { $0.copy(with: zone) as? Reference }

        return resource
    }
}

/**
Actor involved.

An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity
taking place.
*/
open class ProvenanceAgent: BackboneElement {
	override open class var resourceType: String {
		get { return "ProvenanceAgent" }
	}

    private static var keyPaths: [String: PartialKeyPath<ProvenanceAgent>] = [

        "onBehalfOfReference" : \ProvenanceAgent.onBehalfOfReference,
        "onBehalfOfUri" : \ProvenanceAgent.onBehalfOfUri,
        "relatedAgentType" : \ProvenanceAgent.relatedAgentType,
        "role" : \ProvenanceAgent.role,
        "whoReference" : \ProvenanceAgent.whoReference,
        "whoUri" : \ProvenanceAgent.whoUri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ProvenanceAgent.keyPaths[name] as? KeyPath<ProvenanceAgent, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ProvenanceAgent.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Who the agent is representing.
	public var onBehalfOfReference: Reference?

	/// Who the agent is representing.
	public var onBehalfOfUri: String?

	/// Type of relationship between agents.
	public var relatedAgentType: CodeableConcept?

	/// What the agents role was.
	public var role: [CodeableConcept]?

	/// Who participated.
	public var whoReference: Reference?

	/// Who participated.
	public var whoUri: String?

	enum ProvenanceAgentKeys: String, CodingKey {
		case onBehalfOfReference
		case onBehalfOfUri
		case relatedAgentType
		case role
		case whoReference
		case whoUri
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(who: Any) {
		self.init()
		if let value = who as? String {
			self.whoUri = value
		} else if let value = who as? Reference {
			self.whoReference = value
		} else {
			debugPrint("Type “\(Swift.type(of: who))” for property “\(who)” is invalid, ignoring")
		}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ProvenanceAgentKeys.self)
		try container.encodeIfPresent(whoReference, forKey: .whoReference)
		try container.encodeIfPresent(whoUri, forKey: .whoUri)
		try container.encodeIfPresent(onBehalfOfReference, forKey: .onBehalfOfReference)
		try container.encodeIfPresent(onBehalfOfUri, forKey: .onBehalfOfUri)
		try container.encodeIfPresent(relatedAgentType, forKey: .relatedAgentType)
		try container.encodeArrayIfPresent(role, forKey: .role)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ProvenanceAgentKeys.self)
		whoReference = try container.decodeIfPresent(Reference.self, forKey: .whoReference)
		whoUri = try container.decodeIfPresent(String.self, forKey: .whoUri)
		onBehalfOfReference = try container.decodeIfPresent(Reference.self, forKey: .onBehalfOfReference)
		onBehalfOfUri = try container.decodeIfPresent(String.self, forKey: .onBehalfOfUri)
		relatedAgentType = try container.decodeIfPresent(CodeableConcept.self, forKey: .relatedAgentType)
		role = try container.decodeArrayIfPresent([CodeableConcept].self, forKey: .role)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ProvenanceAgent else {
            return false
        }

		return	onBehalfOfReference == object.onBehalfOfReference &&
			onBehalfOfUri == object.onBehalfOfUri &&
			relatedAgentType == object.relatedAgentType &&
			role == object.role &&
			whoReference == object.whoReference &&
			whoUri == object.whoUri &&
			super.equal(to: to)
	}
}

extension ProvenanceAgent {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ProvenanceAgent else {
            return self
        }

        resource.onBehalfOfReference = self.onBehalfOfReference?.copy(with: zone) as? Reference
        resource.onBehalfOfUri = self.onBehalfOfUri
        resource.relatedAgentType = self.relatedAgentType?.copy(with: zone) as? CodeableConcept
        resource.role = self.role?.compactMap { $0.copy(with: zone) as? CodeableConcept }
        resource.whoReference = self.whoReference?.copy(with: zone) as? Reference
        resource.whoUri = self.whoUri

        return resource
    }
}

/**
An entity used in this activity.
*/
open class ProvenanceEntity: BackboneElement {
	override open class var resourceType: String {
		get { return "ProvenanceEntity" }
	}

    private static var keyPaths: [String: PartialKeyPath<ProvenanceEntity>] = [

        "agent" : \ProvenanceEntity.agent,
        "role" : \ProvenanceEntity.role,
        "whatIdentifier" : \ProvenanceEntity.whatIdentifier,
        "whatReference" : \ProvenanceEntity.whatReference,
        "whatUri" : \ProvenanceEntity.whatUri
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = ProvenanceEntity.keyPaths[name] as? KeyPath<ProvenanceEntity, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = ProvenanceEntity.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }
	/// Entity is attributed to this agent.
	public var agent: [ProvenanceAgent]?

	/// How the entity was used during the activity.
	public var role: ProvenanceEntityRole?

	/// Identity of entity.
	public var whatIdentifier: Identifier?

	/// Identity of entity.
	public var whatReference: Reference?

	/// Identity of entity.
	public var whatUri: String?

	enum ProvenanceEntityKeys: String, CodingKey {
		case agent
		case role
		case whatIdentifier
		case whatReference
		case whatUri
	}

	/** Public initializer, taking all required properties as arguments. */
	convenience public init(role: ProvenanceEntityRole, what: Any) {
		self.init()
		self.role = role
		if let value = what as? String {
			self.whatUri = value
		} else if let value = what as? Reference {
			self.whatReference = value
		} else if let value = what as? Identifier {
			self.whatIdentifier = value
		} else {
			debugPrint("Type “\(Swift.type(of: what))” for property “\(what)” is invalid, ignoring")
		}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: ProvenanceEntityKeys.self)
		if let item = role {
			try container.encode(item, forKey: .role)
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("role")
		}
		try container.encodeIfPresent(whatIdentifier, forKey: .whatIdentifier)
		try container.encodeIfPresent(whatReference, forKey: .whatReference)
		try container.encodeIfPresent(whatUri, forKey: .whatUri)
		try container.encodeArrayIfPresent(agent, forKey: .agent)
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  ProvenanceEntityKeys.self)
		role = try container.decode(ProvenanceEntityRole.self, forKey: .role)
		whatIdentifier = try container.decodeIfPresent(Identifier.self, forKey: .whatIdentifier)
		whatReference = try container.decodeIfPresent(Reference.self, forKey: .whatReference)
		whatUri = try container.decodeIfPresent(String.self, forKey: .whatUri)
		agent = try container.decodeArrayIfPresent([ProvenanceAgent].self, forKey: .agent)

		try super.init(from: decoder)
	}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? ProvenanceEntity else {
            return false
        }

		return	agent == object.agent &&
			role == object.role &&
			whatIdentifier == object.whatIdentifier &&
			whatReference == object.whatReference &&
			whatUri == object.whatUri &&
			super.equal(to: to)
	}
}

extension ProvenanceEntity {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? ProvenanceEntity else {
            return self
        }

        resource.agent = self.agent?.compactMap { $0.copy(with: zone) as? ProvenanceAgent }
        resource.role = self.role
        resource.whatIdentifier = self.whatIdentifier?.copy(with: zone) as? Identifier
        resource.whatReference = self.whatReference?.copy(with: zone) as? Reference
        resource.whatUri = self.whatUri

        return resource
    }
}
