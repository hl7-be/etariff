Profile: BeEtariffClaimResponse
Parent: ClaimResponse
Id: be-etariff-claimresponse
Title: "MyCareNet Etariff Claim Response BE profile"
Description: "Claimresponse profile for use in the different Etariff flows from MyCareNet."
* addItem.extension contains 
    BeExtItemReimbursement named reimbursement 0..1 MS and
    BeExtItemPatientFee named patientFee 0..1 MS and
    BeExtEtariffItemCommitment named commitment 0..1 MS
* addItem.adjudication.extension contains
    BeExtEtariffAdjudicationRefusalserviceidentifier named refusalId 0..1 MS and
    BeExtEtariffAdjudicationRefusalservicedate named refusalDate 0..1 MS

* ^status = #active
* addItem 1..* MS
* addItem.adjudication 1..1 MS
* addItem.adjudication.category 1..1 MS
* addItem.adjudication.category.coding 1..1 MS
* addItem.adjudication.category.coding.code 1..1 MS
* addItem.adjudication.category.coding.system 1..1 MS
* addItem.adjudication.extension[refusalDate] 0..1 MS
* addItem.adjudication.extension[refusalDate].valueDate 1..1 MS
* addItem.adjudication.extension[refusalId] 0..1 MS
* addItem.adjudication.extension[refusalId].valueCodeableConcept 1..1 MS
* addItem.adjudication.extension[refusalId].valueCodeableConcept.coding.code 1..1 MS
* addItem.adjudication.extension[refusalId].valueCodeableConcept.coding 1..1 MS
* addItem.adjudication.extension[refusalId].valueCodeableConcept.coding.system 1..1 MS
* addItem.adjudication.category from BeVSDecisionValues (extensible) 
* addItem.adjudication.reason from BeVSRefusalValues (extensible)
* addItem.extension[commitment] 0..1 MS
* addItem.extension[commitment].valueString 1..1 MS
* addItem.extension[patientFee] 0..1 MS
* addItem.extension[patientFee].valueMoney 1..1 MS
* addItem.extension[patientFee].valueMoney.currency 1..1 MS
* addItem.extension[patientFee].valueMoney.value 1..1 MS
* addItem.extension[reimbursement] 0..1 MS
* addItem.extension[reimbursement].valueMoney 1..1 MS
* addItem.extension[reimbursement].valueMoney.currency 1..1 MS
* addItem.extension[reimbursement].valueMoney.value 1..1 MS
* addItem.itemSequence 1..1 MS
* addItem.net 0..1 MS
* addItem.net.currency 1..1 MS
* addItem.net.value 1..1 MS
* addItem.productOrService 1..1 MS
* addItem.productOrService.coding 1..1 MS
* addItem.productOrService.coding.code 1..1 MS
* addItem.productOrService.coding.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/be-ns-nihdi-nomenclature"
* addItem.productOrService.coding.system 1..1 MS
* addItem.provider 1..1 MS
* addItem.provider only Reference(BePractitionerRole)
* addItem.quantity 0..1 MS
* addItem.quantity.value 1..1 MS
* addItem.servicedDate 0..1 MS
* addItem.unitPrice 0..1 MS
* addItem.unitPrice.currency 1..1 MS
* addItem.unitPrice.value 1..1 MS
* created 1..1 MS
* id 1..1 MS
* insurance 1..1 MS
* insurance.coverage 1..1 MS
* insurance.coverage only Reference(BeMyCareNetCoverage)
* insurer 1..1 MS
* insurer only Reference(BeOrganization)
* outcome 1..1 MS
* patient 1..1 MS
* patient only Reference(BePatient)
* requestor 1..1 MS
* requestor only Reference(BeOrganization or BePractitionerRole)
* requestor.reference 1..
* status 1..1 MS
* subType 1..1 MS
* subType from BeVSEtariffTypes (extensible)
* subType.coding 1..1 MS
* subType.coding.code 1..1 MS
* subType.coding.system 1..1 MS
* type 1..1 MS
* type.coding 1..1 MS
* type.coding.code 1..1 MS
* type.coding.system 1..1 MS
* use = #predetermination
* use 1..1 MS
//* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#professional



