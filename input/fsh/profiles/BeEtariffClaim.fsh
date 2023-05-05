Profile: BeEtariffClaim
Parent: Claim
Id: be-etariff-claim
Title: "MyCareNet Etariff Claim BE profile"
Description: "Claim profile for use in the different Etariff flows from MyCareNet"
* careTeam 0..* MS
* careTeam ^slicing.discriminator.type = #value
* careTeam ^slicing.discriminator.path = "role.coding.code"
* careTeam ^slicing.description = "Slice based on the role.coding.code type"
* careTeam ^slicing.rules = #open
* careTeam contains
    primary 1..1 MS and
    other 0..* MS
* careTeam[primary].role.coding.system = "http://terminology.hl7.org/CodeSystem/claimcareteamrole"
* careTeam[primary].role.coding.code = #primary
* careTeam[other].role.coding.system = "http://terminology.hl7.org/CodeSystem/claimcareteamrole"
* careTeam[other].role.coding.code = #other
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
//* extension contains BeExtEtariffSupplement named supplement 0..1 MS
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.rules = #open
* identifier 0.. MS
* identifier contains etariffid 0..1 MS
* identifier[etariffid].system = $etariffid (exactly)
* identifier[etariffid].value 1..1
* insurance 1..1 MS
* insurance.coverage 1..1 MS
* insurance.coverage.display = "use of mandatory insurance coverage, no further details provided here."
* insurance.coverage.display 1..1 MS
* insurance.focal = true
* insurance.focal 1..1 MS
* insurance.sequence = 1
* insurance.sequence 1..1 MS
* item 1..* MS
* item.bodySite 0..1 MS
* item.bodySite.coding 0..1 MS
* item.bodySite.coding.code 1..1 MS
* item.bodySite.coding.system 1..1 MS
* item.bodySite.extension contains BeExtLaterality named bodyLaterality 0..1 MS
* item.bodySite.extension[bodyLaterality].valueCoding from BeVSBasicLaterality
* item.bodySite from be-vs-bodysite (required)
* item.bodySite.MS
* item.careTeamSequence 0..* MS
//* item.extension contains BeExtEtariffItemPatientIdentityDocument named eid 0..1 MS
//* item.extension contains BeExtEtariffItemPreAuthRef named preAuthRef 0..1 MS
//* item.extension contains BeExtEtariffItemSupplement named supplement 0..1 MS
* item.informationSequence 0..* MS
* item.informationSequence MS
* item.locationReference 0..1 MS
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
* supportingInfo.category 1..1 MS
* supportingInfo.category.coding 1..1 MS
* supportingInfo.category.coding.code 1..1 MS
* supportingInfo.category.coding.system 1..1 MS
* supportingInfo.code 1..1 MS
* supportingInfo.code.coding 1..1 MS
* supportingInfo.code.coding.code 1..1 MS
* supportingInfo.code.coding.system 1..1 MS
* supportingInfo.code.MS
* supportingInfo.sequence 1..1 MS
* supportingInfo.valueReference MS
* total 0..1 MS // zero only cancel
* type 1..1 MS
* type.coding 1..1
* type.coding 1..1 MS
* type.coding.code 1..
* type.coding.code 1..1 MS
* type.coding.system 1..
* type.coding.system 1..1 MS
* use = #predetermination
* use 1..1 MS
