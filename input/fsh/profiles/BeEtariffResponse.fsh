Profile: BeEtariffResponse
Parent: Bundle
Id: be-etariff-response
Title: "MyCareNet eTariff Response Bundle BE profile"
Description: "Profile for the response of an eTariff in the MyCareNet flows."
* id 1.. MS
* type MS
* type = #message
* timestamp 1.. MS
* entry 2..
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.description = "Slice based on the entry.resource type"
* entry ^slicing.rules = #open
* entry contains
    messageHeader 1..1 MS and
    practitioner 0..1 MS and
    practitionerRole 0..1 MS and
    organization 1..2 MS and
    patient 0..1 MS and
    claimresponse 0..1 MS and
    coverage 0..1 MS and
    operationOutcome 0..1 MS
* entry[messageHeader].fullUrl 1..
* entry[messageHeader].resource 1..
* entry[messageHeader].resource only BeMyCareNetMessageHeader
* entry[practitioner].fullUrl 1..
* entry[practitioner].resource 1..
* entry[practitioner].resource only BePractitioner
* entry[practitionerRole].fullUrl 1..
* entry[practitionerRole].resource 1..
* entry[practitionerRole].resource only BePractitionerRole
* entry[organization].fullUrl 1..
* entry[organization].resource 1..
* entry[organization].resource only BeOrganization
* entry[patient].fullUrl 1..
* entry[patient].resource 1..
* entry[patient].resource only BePatient
* entry[claimresponse].fullUrl 1..
* entry[claimresponse].resource 1..
* entry[claimresponse].resource only BeEtariffClaimResponse
* entry[operationOutcome].fullUrl 1..
* entry[operationOutcome].resource 1..
* entry[operationOutcome].resource only OperationOutcome
* entry[coverage].fullUrl 1..
* entry[coverage].resource 1..
* entry[coverage].resource only BeEtariffCoverage
