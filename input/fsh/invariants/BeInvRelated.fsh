Invariant: be-inv-related
Description: "A related/relative service SHALL NOT occur in general practice"
Severity: #error
Expression: "Claim.subType.coding.code = 'generalpractice' implies Claim.supportingInfo.code.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/mycarenet/NamingSystem/be-ns-claim-related-claim').empty()"