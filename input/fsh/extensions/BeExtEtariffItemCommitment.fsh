//be-ext-prescription-requester-standard
Extension: BeExtEtariffItemCommitment
Id: be-ext-etariff-item-commitment
Title: "BeExtEtariffItemCommitment"
Description: "tariff commitment number"
* value[x] 1..1 MS
* value[x] only string
* ^context.type = #element
* ^context.expression = "ClaimResponse.addItem"