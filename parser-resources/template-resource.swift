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
//  {{ profile.targetname }}.swift
//
//  Generated from FHIR {{ info.version }} ({{ profile.url }})
//

import Foundation
{% for klass in classes %}

/**
{{ klass.short|wordwrap(width=120, wrapstring="\n") }}.
{%- if klass.formal %}

{{ klass.formal|wordwrap(width=120, wrapstring="\n") }}
{%- endif %}
*/
open class {{ klass.name }}: {{ klass.superclass.name|default('FHIRAbstractBase') }} {
	{%- if klass.resource_type %}
	override open class var resourceType: String {
		get { return "{{ klass.resource_type }}" }
	}
	{% endif %}

    private static var keyPaths: [String: PartialKeyPath<{{ klass.name }}>] = [
        {% for prop in klass.properties %}
        "{{ prop.name }}" : \{{ klass.name }}.{{ prop.name }}{%- if not loop.last %},{% endif -%}
        {% else %}
        :
        {%- endfor %}
    ]

    public override subscript<T>(_ name: String) -> T? {
        if let superProperty: T = super[name] {
            return superProperty
        } else if let keyPath = {{ klass.name }}.keyPaths[name] as? KeyPath<{{ klass.name }}, T?> {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

    public override subscript(untyped name: String) -> Any? {
        if let superProperty = super[untyped: name] {
            return superProperty
        } else if let keyPath = {{ klass.name }}.keyPaths[name] {
            return self[keyPath: keyPath]
        } else {
            return nil
        }
    }

	{%- for prop in klass.properties %}
	{%- if prop.enum %}
	/// {{ prop.formal|wordwrap(width=112, wrapstring="\n	/// ") }}
	{%- if prop.enum.restricted_to %}
	/// Only use: {{ prop.enum.restricted_to }}
	{%- endif %}
	{%- else %}
	/// {{ prop.short|wordwrap(width=112, wrapstring="\n	/// ") }}.
	{%- endif %}
	public var {{ prop.name }}: {% if prop.is_array %}[{% endif %}{{ prop.enum.name or prop.class_name }}{% if prop.is_array %}]{% endif %}?
	{% endfor -%}

	{% if klass.properties %}
	enum {{ klass.name }}Keys: String, CodingKey {
		{%- for prop in klass.properties %}
		case {{ prop.name }} {%- if prop.name == "description_fhir" %} = "description" {%- endif %} {%- if prop.name == "specimenContainer" %} = "container" {%- endif %} {%- if prop.name == "repeat_fhir" %} = "repeat" {%- endif %} {%- if prop.name == "extension_fhir" %} = "extension" {%- endif %}
		{%- endfor %}
	}
	{%- endif %}
	{% if klass.has_nonoptional %}
	/** Public initializer, taking all required properties as arguments. */
	convenience public init(
	{%- for nonop in klass.nonexpanded_nonoptionals %}
		{%- if not loop.first %}, {% endif -%}
		{%- if nonop.one_of_many -%}
		{{ nonop.one_of_many }}: Any
		{%- else -%}
		{{ nonop.name }}: {% if nonop.is_array %}[{% endif %}{{ nonop.enum.name or nonop.class_name }}{% if nonop.is_array %}]{% endif %}
		{%- endif -%}
	{%- endfor -%}
	) {
		self.init()
	{%- for nonop in klass.nonexpanded_nonoptionals %}
		{%- if nonop.one_of_many %}{% for expanded in klass.expanded_nonoptionals[nonop.one_of_many] %}
		{% if not loop.first %}else {% endif -%}
		if let value = {{ nonop.one_of_many }} as? {{ expanded.class_name }} {
			self.{{ expanded.name }} = value
		}
		{%- endfor %}
		else {
			debugPrint("Type “\(Swift.type(of: {{ nonop.one_of_many }}))” for property “\({{ nonop.one_of_many }})” is invalid, ignoring")
		}
		{%- else %}
		self.{{ nonop.name }} = {{ nonop.name }}
		{%- endif %}
	{%- endfor %}
	}

	/** Required initializer, used for NSCopying conformance only */
	required public init() {
      	super.init()
    }

	{%- else %}
	required public init() {
      	super.init()
    }
	{% endif -%}

	{% if klass.properties %}

	override open func encode(to encoder: Encoder) throws {
		try super.encode(to: encoder)
		var container = encoder.container(keyedBy: {{ klass.name }}Keys.self)

		{%- for prop in klass.properties %}
		{%- if prop.nonoptional %}

		{%- if prop.one_of_many %}
		{%- if prop.is_array %}
		try container.encodeArrayIfPresent({{ prop.name }}, forKey: .{{ prop.name }})
		{%- else %}
		try container.encodeIfPresent({{ prop.name }}, forKey: .{{ prop.name }})
		{%- endif %}
		{%- else %}

		{%- if prop.is_array %}
		if let items = {{ prop.name }} {
			try container.encodeArray(items, forKey: .{{ prop.name }})
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("{{ prop.name }}")
		}
		{%- else %}
		if let item = {{ prop.name }} {
			try container.encode(item, forKey: .{{ prop.name }})
		} else {
			throw Data4LifeFHIRError.missingRequiredProperty("{{ prop.name }}")
		}
		{%- endif %}

		{%- endif %}

		{%- endif %}
		{%- endfor %}

		{%- for prop in klass.properties %}
		{%- if prop.nonoptional %} {%- else %}
		{%- if prop.is_array %}
		try container.encodeArrayIfPresent({{ prop.name }}, forKey: .{{ prop.name }})
		{%- else %}
		try container.encodeIfPresent({{ prop.name }}, forKey: .{{ prop.name }})
		{%- endif %}
		{%- endif %}
		{%- endfor %}
	}

	public required init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy:  {{ klass.name }}Keys.self)

		{%- for prop in klass.properties %}
		{%- if prop.nonoptional %}

		{%- if prop.one_of_many %}
		{%- if prop.is_array %}
		{{ prop.name }} = try container.decodeArrayIfPresent([{{ prop.enum.name or prop.class_name }}].self, forKey: .{{ prop.name }})
		{%- else %}
		{{ prop.name }} = try container.decodeIfPresent({{ prop.enum.name or prop.class_name }}.self, forKey: .{{ prop.name }})
		{%- endif %}
		{%- else %}
		{%- if prop.is_array %}
		{{ prop.name }} = try container.decodeArray([{{ prop.enum.name or prop.class_name }}].self, forKey: .{{ prop.name }})
		{%- else %}
		{{ prop.name }} = try container.decode({{ prop.enum.name or prop.class_name }}.self, forKey: .{{ prop.name }})
		{%- endif %}
		{%- endif %}
		{%- endif %}
		{%- endfor %}

		{%- for prop in klass.properties %}
		{%- if prop.nonoptional %} {%- else %}
		{%- if prop.is_array %}
    {%- if (klass.name == 'DomainResource') and (prop.name == 'contained') %}
        if let resources = try container.decodeIfPresent([AnyResource].self, forKey: .contained) {
            contained = resources.map { $0.resource }
        }
    {%- else %}
		{{ prop.name }} = try container.decodeArrayIfPresent([{{ prop.enum.name or prop.class_name }}].self, forKey: .{{ prop.name }})
    {%- endif %}
		{%- else %}
		{{ prop.name }} = try container.decodeIfPresent({{ prop.enum.name or prop.class_name }}.self, forKey: .{{ prop.name }})
		{%- endif %}
		{%- endif %}
		{%- endfor %}

		try super.init(from: decoder)
	}
{%- else %}
    public required init(from decoder: Decoder) throws {
    	try super.init(from: decoder)
    }

    override open func encode(to encoder: Encoder) throws {
    	try super.encode(to: encoder)
    }
{%- endif %}
{%- if klass.properties %}

	override func equal(to: FHIRAbstractBase) -> Bool {
        guard let object = to as? {{ klass.name }} else {
            return false
        }

		return {%- for prop in klass.properties %}	{{ prop.name }} == object.{{ prop.name }} {%- if not loop.last %} &&
		{% endif -%}{%- endfor %} &&
			super.equal(to: to)
	}
{%- endif %}
}

extension {{ klass.name }} {
    public override func copy(with zone: NSZone? = nil) -> Any {
        guard let resource = super.copy(with: zone) as? {{ klass.name }} else {
            return self
        }

        {% for prop in klass.properties %}
        {%- if prop.is_array %}
        {%- if prop.class_name == "String" or prop.class_name == "Double" or prop.class_name == "Int" or prop.class_name == "DateTime" or prop.class_name == "Instant" or prop.class_name == "FHIRDate" or prop.class_name == "FHIRTime" or prop.class_name == "URL" or prop.class_name == "Float" or prop.class_name == "Bool" %}
        resource.{{ prop.name }} = self.{{ prop.name }}
        {%- else %}
        resource.{{ prop.name }} = self.{{ prop.name }}?.compactMap { $0.copy(with: zone) as? {{ prop.class_name }} }
        {%- endif %}
        {%- else %}
        {%- if prop.class_name == "String" or prop.class_name == "Double" or prop.class_name == "Int" or prop.class_name == "DateTime" or prop.class_name == "Instant" or prop.class_name == "FHIRDate" or prop.class_name == "FHIRTime" or prop.class_name == "URL" or prop.class_name == "Float" or prop.class_name == "Bool" %}
        resource.{{ prop.name }} = self.{{ prop.name }}
        {%- else %}
        resource.{{ prop.name }} = self.{{ prop.name }}?.copy(with: zone) as? {{ prop.class_name }}
        {%- endif %}
        {%- endif %}
		{%- endfor %}

        return resource
    }
}

{% endfor %}
