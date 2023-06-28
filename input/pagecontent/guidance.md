The aim of the CIN's etariff project is to provide healthcare providers with a service for consulting the tariff for services to be billed. The OA will calculate the tariff on the basis of the information provided by the care provider and the information it has on the patient.
By consulting the tariff, the care provider obtains all the information needed to prepare his bill.

One use case is offered

- the provider requests the tariff for one or more services from the insurance organisation

 
The process is as follows:
1. The provider enters his tariff consultation criteria via his software or via the Web Application.

2. The provider sends the request to the MyCareNet system.

3. The MyCareNet system forwards the request to the insurer to which the patient is affiliated on the date of the service.

4. If a problem occurs during transmission of the message to the insurance organization by the MyCareNet system, the latter will send the message back to the sender with information about the errors encountered.

5. The insurance organization's IT system receives the message and performs primary checks (message validity). If the message is incorrect (in its structure), it is sent back to the sender with information about the errors encountered.

6. If the message is structurally correct, it is processed by the insurance organization. It then sends back a response containing the tariffs corresponding to the request criteria.