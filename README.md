# Business-Process-Modelling

# Description: 
Eagle Airliner Corp. is a major US airline headquartered in Palm springs, California. This airline has more than 53,000 employees as of December 2016, and operates more than 3,900 departures a day during peak travel season. This airline has scheduled services to 101 destinations in the United States and eight additional countries. This airline carried nearly 120 million checked suitcases last year, collecting $25 in fees, each way, for most domestic bags. For that price, fliers expect their suitcase to be waiting on the carousel when they arrive destination.

# Case Description:
The case is a scenario where passengers are worried if their baggage will reach the destination in time along with the same flight. The only way that the Eagle Airline Corp. can deal with this issue is by incorporating a centralized tracking mechanism which allows airline personnel and passengers to track their baggage in real time. This process involves various actors such as boarding associate, security officer, sorting associate, id associate and transport operator. 

# Process Name: We propose the process “Deliver Baggage” as our project. 
# Triggering Event: The process starts when the Passenger “Checks-in Baggage”. 
# Specific Results: Baggage is successfully delivered to passenger.
# Customer: Passenger

# As-Is Process: 
The boarding associate receives baggage from passengers at the Eagle Airline Corp. counter and “Checks-in baggage” where the associate tags each bag which triggers the process. It then passes through the TSA security officer who “scan’s baggage” to issue security clearance for the next stage. Then the sorting associate “sort’s baggage” as per destination airport and the Id associate “identifies baggage” corresponding to the flight number it relates to. The transport operator “transports baggage” into the container and loads the baggage on to the flight. When the flight reaches the destination then the transfer associate “transfers baggage” onto to the carousel, where the passenger collects the baggage.

# Issues:
In the As-is process, the Eagle Airline Corp. is unable to track the location of baggage and provide these details to passengers in real time. To do so, it must follow a sequence of steps along the chain of three associates to get the information. Also, there is no information to assess the number of bags checked in at the counter to those boarded in to the flight. Hence, when a passenger raises a request for lost baggage after reaching the destination, the Eagle Airline Corp. support personnel from the destination airport follows up with the personnel from origin airport to find the status of the baggage which is time consuming. If the personnel at origin airport finds the missing baggage at the origin airport, then s/he ships the baggage in a different flight and later the Eagle Airline Corp. bears the expenses to send the baggage for the home delivery. If the Eagle Airline Corp. is unable to find the missing baggage, then it should pay the baggage liability claim to the passenger. This proves to be costly for the Eagle Airline Corp.

# Improvement:
The enhanced process aims to address the operational delay of existing baggage handling system and resolving the lost baggage requests from the passenger in an efficient manner. We propose the following changes to the existing processes:
1.Deploying the Radio Frequency Identification (RFID) tracking system technology to identify and track the baggage of the passenger starting from the check-in counter.
2.Cut down the hand offs at every stage and replace it with RFID scanners for scanning the baggage at screening, sorting and identifying stages.
3.Integrating the workflow of the baggage handling system with a centralised database allowing the Airline staff and the passenger to track baggage in real time.

# To-Be process:
The process starts when passenger “Checks-in baggage”. Manual efforts are reduced by replacing the associates with RFID scanners at each stage to provide the tracking status of the baggage. A centralised database is created to integrate the workflow of the baggage handling system by tracking the RFID tagged to each baggage. A computerized control mechanism is used to route the baggage from the TSA security check stage to the identifying stage by scanning the RFID. A control check is included at the final conveyor while transferring the baggage into the flight, which scans the RFID of each baggage and determines if it is boarding the correct flight or not. An indication would be raised if the baggage is boarding a different flight than it is ought to. At the destination airport the baggage is unloaded and transferred to the delivery point where passenger collects the baggage.

# Conclusion:
By following the enhanced process, the Eagle Airline Corp. can reduce the number of misplaced baggage at airports and can also track the last location of misplaced baggage. In return, improves the customer service and customer satisfaction by enabling passengers and airline personnel to track the baggage in real time through mobile app and safely deliver the baggage to passenger. By tracking the number of requests from passengers regarding missing baggage and analysing the time taken to load and unload the baggage into the flight, the Eagle Airline Corp. can monitor the efficiency of the enhanced process. 
