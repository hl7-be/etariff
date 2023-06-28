Extension: BeExtEtariffAdjudicationRefusalserviceidentifier
Id: be-ext-etariff-adjudication-refusalserviceidentifier
Title: "BeExtEtariffAdjudicationRefusalserviceidentifier"
Description: "Id of the preauthorization of the item"
* valueCodeableConcept 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/be-ns-nihdi-nomenclature"
* ^context.type = #element
* ^context.expression = "ClaimResponse.addItem.adjudication"
