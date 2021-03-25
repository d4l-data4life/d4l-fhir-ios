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
//  {{ class.name }}Tests.swift
//
//  Generated from FHIR {{ info.version }}
//

import XCTest
import Data4LifeFHIR

class {{ class.name }}Tests: XCTestCase {

	var decoder: JSONDecoder {
        JSONDecoder()
    }

    var bundle: Bundle {
        Bundle.test
    }

    {% for tcase in tests %}

	func test{{ class.name }}{{ loop.index }}() {
        do {
            let data = try bundle.loadJSONData(named: "{{ tcase.filename }}")
            let instance = try decoder.decode({{ class.name }}.self, from: data)
            try runEncodableAndEqualityChecks(instance)
			run{{ class.name }}{{ loop.index }}(instance)
        } catch {
            XCTFail(error.localizedDescription)
        }
	}

	func run{{ class.name }}{{ loop.index }}(_ inst: {{ class.name }}) {
		{%- for onetest in tcase.tests %}
		{%- if onetest.enum %}
		XCTAssertEqual(inst.{{ onetest.path }}, {{ onetest.enum }}(rawValue: "{{ onetest.value|replace('"', '\\"') }}")!)
		{%- else %}{% if "String" == onetest.klass.name %}
		XCTAssertEqual(inst.{{ onetest.path }}, "{{ onetest.value|replace('"', '\\"') }}")
		{%- else %}{% if "Float" == onetest.klass.name %}
		XCTAssertEqual(inst.{{ onetest.path }}, {{ onetest.value }})
		{%- else %}{% if "Int" == onetest.klass.name %}
		XCTAssertEqual(inst.{{ onetest.path }}, {{ onetest.value }})
		{%- else %}{% if "Bool" == onetest.klass.name %}
		XCTAssertEqual(inst.{{ onetest.path }}, {% if onetest.value %}true{% else %}false{% endif %})
		{%- else %}{% if "Date" == onetest.klass.name or "DateTime" == onetest.klass.name or "Instant" == onetest.klass.name %}
		XCTAssertEqual(inst.{{ onetest.path }}{% if not onetest.array_item %}?{% endif %}.description, "{{ onetest.value }}")
		{%- else %}{% if "URL" == onetest.klass.name %}
		XCTAssertEqual(inst.{{ onetest.path }}{% if not onetest.array_item %}?{% endif %}.absoluteString, "{{ onetest.value }}")
		{%- else %}{% if "Base64Binary" == onetest.klass.name %}
		XCTAssertEqual(inst.{{ onetest.path }}, Base64Binary(value: "{{ onetest.value }}"))
		{%- else %}
		// Don't know how to create unit test for "{{ onetest.path }}", which is a {{ onetest.klass.name }}
		{%- endif %}{% endif %}{% endif %}{% endif %}{% endif %}{% endif %}{% endif %}{% endif %}
		{%- endfor %}
	}
{%- endfor %}
}
