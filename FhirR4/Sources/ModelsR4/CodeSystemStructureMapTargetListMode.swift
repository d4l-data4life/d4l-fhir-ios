//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
//  Copyright 2020 Apple Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.



/**
 If field is a list, how to manage the production.
 
 URL: http://hl7.org/fhir/map-target-list-mode
 ValueSet: http://hl7.org/fhir/ValueSet/map-target-list-mode
 */
public enum StructureMapTargetListMode: String, FHIRPrimitiveType {
	
	/// when the target list is being assembled, the items for this rule go first. If more than one rule defines a first
	/// item (for a given instance of mapping) then this is an error.
	case first = "first"
	
	/// the target instance is shared with the target instances generated by another rule (up to the first common n
	/// items, then create new ones).
	case share = "share"
	
	/// when the target list is being assembled, the items for this rule go last. If more than one rule defines a last
	/// item (for a given instance of mapping) then this is an error.
	case last = "last"
	
	/// re-use the first item in the list, and keep adding content to it.
	case collate = "collate"
}
