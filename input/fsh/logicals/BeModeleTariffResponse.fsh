Logical: BeModeleTariffResponse
Description: "Response for tariff request by careprovider"
* insurer 1..1 Identifier "Identification of the insurer"
* patient 1..1 Identifier "Patient identification"
* holderCode1 1..1 CodeableConcept "holder code 1"
* holderCode2 1..1 CodeableConcept "holder code 2"
* tariffRequestType 1..1 CodeableConcept "Identification of the type of tariff request"
* service 1..* BackboneElement "List of services"
* service.provider 1..1 Identifier "Provider ID"
* service.identifier 1..1 Identifier "(pseudo-)nomenclature code of the service that was performed."
* service.date  0..1 dateTime "Date on which the service was performed."
* service.tariff 0..1 BackboneElement "Tariff"
* service.tariff.fee 1..1 Money "Legal fee for the service  (reimbursement amount + co-payment). The AO will provide the unit price, regardless of the rules for applying the nomenclature."
* service.tariff.reimbursement 1..1 Money "Amount paid by insurer"
* service.tariff.patientFee 1..1 Money "Personal co-payment paid by the patient"
* service.tariff.commitment 1..1 Identifier "Approval number of the tariff commitment that the service provider must indicate in its billing."
* service.refusal 0..1 BackboneElement "Refusal of the service requested"
* service.refusal.reason 1..1 CodeableConcept "code for refusal of intervention by the AO for the requested service

The possible values are as follows. 
001 Renewal period not yet expired 
002 () Maximum number of services already reached within the authorised period (and/or no exemption granted)*
003 () Benefit is no longer authorised (already reimbursed) for this location (tooth, quadrant, ..)* 
004 L600 value reached for the authorised period
005 No MC/CTD agreement registered for the requested service
006 Tariff consultation is not allowed for this benefit as it requires TTR approval as per reimbursement conditions. 
007 Tariff consultation is not allowed for this service as the tariff is dependent on other services being billed at the same time.
008 Precondition not met.
009 Nomenclature code cannot be certified on this date
010 () Service cannot be combined with another service*
In certain cases (), the AO will indicate the nomenclature code and the date of the service received by the patient which justifies the refusal of reimbursement of the service requested.*"
* service.refusal.serviceIdentifier 0..1 CodeableConcept "Nomenclature code of the service justifying the refusal"
* service.refusal.serviceDate 0..1 dateTime "Date of the service justifying the refusal"