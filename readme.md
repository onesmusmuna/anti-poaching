# **Anti-Poaching Effort Management System Report**

**Github Link**  
[https://github.com/onesmusmuna/anti-poaching](https://github.com/onesmusmuna/anti-poaching)

1. # **Introduction**

Kenya’s wildlife faces severe threats from poaching, illegal wildlife trafficking, and habitat destruction. Despite ongoing conservation efforts, the efficiency of anti-poaching operations is limited by issues such as uncoordinated patrol schedules, delayed incident reporting, and poor wildlife monitoring. These constraints hinder proactive responses and leave protected species at high risk.

2. # **Problem Statement**

Poaching remains one of the biggest threats to wildlife conservation in Kenya. Key challenges include:

* Limited coordination among patrol teams  
* Delayed incident reporting  
* Inefficient wildlife monitoring systems

# **3\. Project Description**

The Anti-Poaching Effort Management System aims to create a centralized database that will enhance wildlife conservation efforts in Kenya by improving data management, communication, and coordination.

# **4\. Scope**

* Develop a secure, scalable database for patrol schedules, incident reports, and wildlife monitoring.  
* Integrate real-time data collection and reporting.  
* Enable data-driven strategies for resource deployment.  
* Support collaboration among rangers, conservationists, and law enforcement.

# 5\. Key Objectives

* Improve patrol coordination.  
* Enhance data accuracy and standardization.  
* Facilitate real-time communication.  
* Strengthen wildlife monitoring capabilities.

# 6\. Stakeholders

* Wildlife Rangers  
* Wildlife Reserve Managers  
* Government Conservation Agencies (e.g., KWS)  
* Law Enforcement & Anti-Poaching Units  
* Conservation Organizations & NGOs  
* Researchers & Ecologists

# 7\. Database Schema

The system utilizes structured relational database tables as follows:

* Ranger (Ranger\_ID, Name, Contact\_Number, Rank, Assigned\_Area)  
* Patrol (Patrol\_ID, Start\_time, End\_time, Area\_covered, Ranger\_ID)  
* Incident (Incident\_ID, Date, Time, Location, Type, Severity, Description, Ranger\_ID)  
* Report (Report\_ID, Suspect\_Description, Evidence\_Collected, Action\_Taken, Incident\_ID)  
* Protected\_Area (Protected\_Area\_ID, Name, Location, Area\_Size, Threat\_Level)  
* WildLife (WildLife\_ID, Species\_Name, Population\_Count, Conservation\_Status, Protected\_Area\_ID)

# 8\. Sample Queries

* Retrieve all rangers.  
* Get wildlife species marked as 'Vulnerable'.  
* Find severe incidents.  
* Update and delete records.  
* Perform joins to associate incidents with rangers and protected areas.  
* Use subqueries to identify rangers assigned to specific areas.

# 9\. Results and Impact

The system will improve the efficiency of anti-poaching operations by ensuring timely patrols, accurate data collection, and centralized reporting. It will support conservation goals by identifying high-risk areas, enabling real-time collaboration, and promoting data-driven policy decisions.

# 10\. Alignment with SDG 15

This initiative supports Sustainable Development Goal 15 – Life on Land, by helping protect and restore wildlife habitats and combating poaching through technology-driven conservation.

# 11\. Conclusion

The Anti-Poaching Effort Management System is a critical tool in the fight against wildlife crime. Through effective coordination, real-time data management, and collaboration, the system contributes meaningfully to wildlife conservation efforts in Kenya.

