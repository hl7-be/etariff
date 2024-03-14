Invariant: be-inv-toothnumber
Description: "A toothnumber SHALL NOT occur in general practice"
Severity: #error
Expression: "Claim.subType.coding.code = 'generalpractice' implies (Claim.item.bodySite.empty() or  Claim.item.bodySite.coding.memberOf('https://www.ehealth.fgov.be/standards/fhir/mycarenet/ValueSet/be-vs-toothnumber-bodysite').not())"