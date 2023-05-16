Invariant: be-inv-gmf-holder
Description: "GMF holder CAN only occur in a GP's attestation"
Severity: #error
Expression: "Claim.subType.coding.where(code = 'generalpractice').empty() implies Claim.careTeam.where(role.coding.code = 'other').where(qualification.coding.code = 'persphysician').empty()"