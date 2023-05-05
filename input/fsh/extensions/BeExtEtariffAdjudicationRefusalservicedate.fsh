Extension: BeExtEtariffAdjudicationRefusalservicedate
Id: be-ext-etariff-adjudication-refusalservicedate
Title: "BeExtEtariffAdjudicationRefusalservicedate"
Description: "Date of the refusal service"
* value[x] 1..1 MS
* value[x] only dateTime
* ^context.type = #element
* ^context.expression = "ClaimResponse.addItem.adjudication"

