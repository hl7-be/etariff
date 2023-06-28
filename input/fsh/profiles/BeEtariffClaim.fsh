Profile: BeEtariffClaim
Parent: Claim
Id: be-etariff-claim
Title: "MyCareNet Etariff Claim BE profile"
Description: "Claim profile for use in the different Etariff flows from MyCareNet"
* obeys be-inv-gmf-holder and be-inv-related and be-inv-toothnumber
* careTeam 1..* MS
* careTeam.provider 1..1 MS
* careTeam.provider.identifier 1..1 MS
* careTeam.provider.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* careTeam.provider.identifier.system 1..1 MS
* careTeam.provider.identifier.value 1..1 MS
* careTeam.qualification 1..1 MS
* careTeam.qualification.coding 1..1 MS
* careTeam.qualification.coding.system 1..1 MS
* careTeam.qualification.coding.code 1..1 MS
* careTeam.qualification from BeVSCdHcParty (required)
* careTeam.role 1..1 MS
* careTeam.role.coding 1..1 MS
* careTeam.role.coding.system 1..1 MS
* careTeam.role.coding.code 1..1 MS
* careTeam.sequence 1..1 MS
* created 1..1 MS
* enterer 1..1 MS
* enterer only Reference(BePractitionerRole)
* insurance.coverage.display = "use of mandatory insurance coverage, no further details provided here."
* insurance.focal = true
* insurance.sequence = 1
* item 1..* MS
* item.bodySite 0..1 MS
* item.bodySite.coding 0..1 MS
* item.bodySite.coding.code 1..1 MS
* item.bodySite.coding.system 1..1 MS
//* item.bodySite.extension contains BeExtLaterality named bodyLaterality 0..1 MS
//* item.bodySite.extension[bodyLaterality].valueCoding from BeVSBasicLaterality
* item.bodySite from be-vs-bodysite (required)
* item.careTeamSequence 1..* MS
* item.informationSequence 0..* MS
* item.informationSequence MS
* item.productOrService 1..1 MS
* item.productOrService.coding 1..1 MS
* item.productOrService.coding.code 1..1 MS
* item.productOrService.coding.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/be-ns-nihdi-nomenclature"
* item.productOrService.coding.system 1..1 MS
* item.productOrService MS
* item.sequence 1..1 MS
* item.servicedDate 1..1 MS
* patient 1..1 MS
* patient only Reference(BePatient)
* priority 1..1 MS
* priority.coding = http://terminology.hl7.org/CodeSystem/processpriority#stat
* priority.coding 1..1 MS
* priority.coding.code 1..1 MS
* priority.coding.system 1..1 MS
* provider 1..1 MS
* provider only Reference(BePractitionerRole or BeOrganization)
* status = #active
* subType 1..1 MS
* subType.coding 1..1 MS
* subType.coding.code 1..1 MS
* subType.coding.system 1..1 MS
* subType from BeVSEtariffTypes (extensible)
* supportingInfo 0..* MS
* supportingInfo.code MS
* supportingInfo.valueReference MS
* type 1..1 MS
* type.coding 1..1
* type.coding 1..1 MS
* type.coding.code 1..
* type.coding.code 1..1 MS
* type.coding.system 1..
* type.coding.system 1..1 MS
* use = #predetermination
* use 1..1 MS
* total 0..0 
