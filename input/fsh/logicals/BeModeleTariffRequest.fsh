Logical: BeModeleTariffRequest
Description: "Tariff request by care provider"
* serviceProvider 1..1 Identifier "NIHDI N° of the service provider/organization requesting the tariff"
* patient 1..1 Identifier "Patient identification"
* tariffRequestType 1..1 CodeableConcept "Identification of the type of tariff request"
* service 1..* BackboneElement "List of services"
* service.provider 1..1 BackboneElement "Provider"
* service.provider.identifier 1..1 Identifier "INAMI number of the provider"
* service.identifier 1..1 Identifier "(pseudo-) service nomenclature code"
* service.related 0..1 Identifier "related service" """The relative service must be completed when the reimbursement of the service depends on the performance of another service.
It is the latter which must be mentioned as a relative benefit."""
* service.toothNumber 0..1 CodeableConcept "The services for which a tooth number must be mentioned are indicated in the list of tariffs for dental services published on the NIHDI website"
* service.identical 0..1 positiveInt "identical services" """For certain services, the rules of application of the nomenclature provide for a maximum number of services in a certain period. In certain cases, the nomenclature also provides for derogations from this maximum number.
Such waivers may be communicated in this area. The supporting documents for the derogation are made available to the insurers for subsequent checks.
This zone is also used to indicate that it is indeed a second (or third or following) identical service on the same day for services without maximum rules (e.g. consultations or visits from general practitioners).
Values: See 'Electronic invoicing instructions' (RT50Z23)"""
* service.date 1..1 dateTime "Date of service"
* service.auxiliaryProvider 0..1 BackboneElement "Auxiliary provider"
* service.auxiliaryProvider.GMF 0..1 Identifier "Identification Physician holding the patient's GMF.Mentioned when the concept 'G' is applied, i.e. when the doctor who certifies has access to the data of the patient's GMF but is not the holder of it."