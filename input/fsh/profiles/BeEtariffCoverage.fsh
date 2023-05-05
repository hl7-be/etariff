Profile: BeEtariffCoverage
Parent: Coverage
Id: be-etariff-coverage
Title: "MyCareNet Etariff Coverage BE profile"
Description: "Coverage profile for use in the different Etariff flows from MyCareNet"
* id 1..1 MS
* status 1..1 MS
* type 1..1 MS
* type.coding 1..1 MS
* type.coding.system 1..1 MS
* type.coding.code 1..1 MS
* beneficiary 1..1 MS
* beneficiary only Reference(BePatient)
* payor 1..1 MS
* payor only Reference(BeOrganization)
* class 1..* MS
* class.type 1..1 MS
* class.type.coding 1..1 MS
* class.type.coding.system 1..1 MS
* class.type.coding.code 1..1 MS
* class.value 1..1 MS

