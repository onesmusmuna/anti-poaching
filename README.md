# **Anti-Poaching Effort Management System Report**

**Github Link**  
[https://github.com/onesmusmuna/anti-poaching](https://github.com/onesmusmuna/anti-poaching)

## **1\. Introduction**

Kenya’s wildlife is under constant threat from poaching, illegal trafficking, and habitat loss. While there have been many conservation efforts over the years, a lot of these fall short due to challenges like poorly coordinated patrols, slow incident reporting, and outdated monitoring systems. These issues make it hard to respond quickly and effectively—leaving endangered species vulnerable.

## **2\. The Problem**

Poaching continues to be a serious challenge for wildlife conservation in Kenya. The main issues we’re dealing with include:

* Poor coordination between patrol teams  
* Delays in reporting incidents  
* Inconsistent or inefficient wildlife monitoring

These problems make it harder to protect animals before it’s too late.

## **3\. About the Project**

We’re building the Anti-Poaching Effort Management System to tackle these problems head-on. It’s a centralized platform designed to make wildlife conservation more effective by improving how we manage information, coordinate teams, and communicate on the ground.

## **4\. What the system will do**

Here’s what we’re aiming to build:

* A secure and scalable database that stores patrol schedules, incident reports, and wildlife monitoring data  
* Real-time tools for collecting and reporting information  
* Smart analytics to help deploy resources more effectively  
* A collaborative hub for rangers, conservationists, and law enforcement to work together more easily

## 5\. Goals of the project

Our main objectives are to:

* Make patrol coordination smoother and more efficient  
  Improve how we collect and standardize data  
* Enable faster, real-time communication  
* Boost our wildlife tracking and monitoring abilities

## 6\. Who’s involved

This system is meant to support a wide range of people working in conservation:

* Wildlife Rangers  
* Reserve Managers  
  Government conservation agencies like KWS  
  Anti-poaching and law enforcement units  
* NGOs and other conservation groups  
  Researchers and ecologists

## 7\. How the Data Is Organized

We’ll use a structured database to organize everything. Here’s a quick look at the main tables:

* Ranger (Ranger\_ID, Name, Contact\_Number, Rank, Assigned\_Area)  
* Patrol (Patrol\_ID, Start\_time, End\_time, Area\_covered, Ranger\_ID)  
* Incident (Incident\_ID, Date, Time, Location, Type, Severity, Description, Ranger\_ID)  
* Report (Report\_ID, Suspect\_Description, Evidence\_Collected, Action\_Taken, Incident\_ID)  
* Protected\_Area (Protected\_Area\_ID, Name, Location, Area\_Size, Threat\_Level)  
* WildLife (WildLife\_ID, Species\_Name, Population\_Count, Conservation\_Status, Protected\_Area\_ID)

## 8\. What You Can Do with It

Here are some examples of how the system will be used:

* Pull up a list of all registered rangers  
* Find out which wildlife species are listed as “Vulnerable”  
* Identify high-severity incidents quickly  
* Update or delete old records as needed  
* Link incidents to specific rangers or areas  
* Use advanced filters to check which rangers are assigned where

## 9\. What We Hope to Achieve

With this system, we expect anti-poaching efforts to become faster, more accurate, and better coordinated. It’ll help identify risk zones, encourage better teamwork in the field, and lead to smarter decision-making that’s backed by data. In short, it’s about doing more—and doing it better—to protect our wildlife.

## 10\. Supporting SDG 15 – Life on Land

This project directly supports Sustainable Development Goal 15, which focuses on protecting, restoring, and promoting life on land. By using technology to fight poaching and protect natural habitats, we’re contributing to a healthier, more sustainable planet.

## 11\. Conclusion

The Anti-Poaching Effort Management System isn’t just another database—it’s a vital tool in the fight to save Kenya’s wildlife. Through better coordination, real-time data sharing, and strong partnerships, this system has the potential to make a real difference in conservation efforts across the country.
