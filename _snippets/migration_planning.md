Migration Planning
==================

Every migration project, no matter the size or scope, requires detailed planning to ensure success. It is important to look at all facets of your IT environment. Understand the risks, savings, and cost structure of your migration project. This information will enable you to accurately project net improvements and realize actual return on your IT investment.  

The considerations and processes detailed here are designed to help you identify migration opportunities, examine the risks associated with various migration scenarios, create a standard migration process, and help develop a comprehensive strategic migration plan.  

Prior to formal planning, an organization must acknowledge the motivations behind the migration, as well as understand the advantages and disadvantages to each potential migration scenario. Lacking this understanding, organizations may be unprepared for decisions and trade-offs that must be made throughout the planning process. Once motivations are clear, organizations should step through each of the four phases of the strategic migration process detailed here. Those phases are: 

1. Perform an application and infrastructure analysis.
2. Measure organizational readiness.
3. Develop a strategic migration plan
4. Implement the migration plan 

Phase I: Application and Infrastructure Analysis
------------------------------------------------

To ensure that business services are not disrupted in an unplanned fashion, a detailed  application and infrastructure assessment is needed. The purpose of this analysis is to create a document package for each application, with sufficient understanding of its current footprint, to evolve a clear, orderly, measurable migration strategy.

The document package consistes of the following documents.  

* Application Contacts 
* Infrastructure Analysis
* Application Dependencies
* Application Assessment
* Migration Plan

### Application Contacts ###

During the initial assessment phase of each application it is important to capture the names of all current stakeholders that will enable key decisions pertaining to the software and hardware infrastructure involved in the migration. The table below illustrates a useful set of information about key stakeholders for an application.  Usually these stakeholders will be involved in the planning, building and testing of components during the migration process and sign-off at the end of each phase.  

Below is an example of information you will want to collect.  

[application_contacts.odt](#{site.base_url}/forms/application_contacts.odt)

#{partial("tables/application_contacts.html")}

### Infrastructure analysis ###

The infrastructure includes the full ecosystem in which the application server operates. This analysis is an inventory of the existing servers, network infrastructure, and applications. It sets a baseline of existing functionality and load capacity.

Below is an example of information you will want to collect 

[infrastructure_analysis.odt]({site.base_url}/forms/infrastructure_analysis.odt)

#{partial("tables/infrastructure_analysis.html")}


### Application Dependencies ###

In order to be aware of the full scope of migration, it is important to assess what technologies are currently used by the applications and their migration targets. The typical enterprise application makes use of several technologies for security, caching, clustering, and injection. These technologies are largely hidden from the average application developer and they might not be aware of them, but they can have a major impact on the performance and scalability of the application.  

This information will help prioritize and schedule migration activities and breakdown the program into smaller more manageable work packages.  

Below is an example of information you will want to collect 

[application_interdependencies.odt](#{site.base_url}/forms/application_interdependencies.odt)

#{partial("tables/application_interdependencies.html")}

### Application Assessment ###
   
An assessment of the source code of each application to be migrated should be made to determine its readiness to run in the new environment.  The code should be inspected for proprietary libraries, adherence to Java EE component specification standards, conflicting configuration requirements, etc. 

Further analysis may be needed to determine how best to address identified technology gaps, find open source alternatives to proprietary APIs, and solutions to configuration conflicts.  This information will enable you to scope the engineering time and effort required to migrate an application.  
   
Windup is a free open source tool that can help with this assessment. It will analyze your code and generates a report that identifies known issues. In addition the report provides an estimate of effort required to make code changes and where appropriate, offers suggestions for replacement code. [  LINK TO DISCOVER PAGE HERE ???? ] 

It is helpful to maintain a spreadsheet of this information. It is a good reference document to share and it can be used to generate more detailed project plans and to track project progress.  

[application_assessment.odt](#{site.base_url}/forms/application_assessment.odt)

#{partial("tables/application_assessment.html")}

Phase II: Organizational Readiness
----------------------------------

Organizational factors will generally prevail over technical factors. Technical factors can be easily delineated and addressed. Organizational factors lie beneath the surface and can derail efforts. Seemingly small hurdles can become insurmountable if the organization is unprepared or unwilling to address them. Without a plan for addressing issues, the organization can quickly become focused on minor shortcomings and overlook major opportunities for migrating to open source.  

The first step in addressing organizational risk factors is to analyze organizational issues and risks. This will provide a roadmap for preparing the organization for the migration. Organizational readiness factors include.  

Training and knowledge gaps
: * Is the staff knowledgeable about the technology or merely comfortable with existing tools?  
  * Has the organization adopted a process for developing and deploying software?  

Workload factors
: * Will the current staff have time to perform current workload tasks and also participate in training and migration work?  
  * Will there be sufficient hardware to deploy and test new servers before putting them into production?  

Cultural factors
: * Bottom-up versus top-down decision making
  * High quality versus low cost
  * Leading versus trailing edge

Budget
: * CAPEX versus OPEX
  * TCO versus ROI

Taking these considerations into account for the migration plan will avoid unpleasant surprises and produce a successful migration.  

A strength, weakness, opportunity and threats (SWOT) analysis can help define the organizational readiness. It basically helps the organization match up strengths and weakness, opportunities and threats, and then develop a plan to leverage strengths to overcome weaknesses.  
    
A strength, weakness, opportunity and threats (SWOT) analysis can help define the organizational readiness. It basically helps the organization match up strengths and weakness, opportunities and threats, and then develop a plan to leverage strengths to overcome weaknesses.  

Phase III: Migration Plan
-------------------------
    
Once the analysis is complete, migration bundles can be created based upon a careful evaluation of their logical interdependencies and business priorities. 

Each migration bundle should have a list of participating applications, implementation teams, and stakeholders who will sign off on work at the end of each phase.  
    
[migration_plan.odt](#{site.base_url}/forms/migration_plan.odt)

#{partial("tables/migration_plan.html")}

Phase IV: Migration Plan Implementation 
---------------------------------------

[THIS SECTION SEEMS LIKE A GOOD PLACE TO PRESENT THE NEW MODEL, DEVELOPE FOR FREE,  .... GO TO PRODUCTION WITH A LICENSE. ] 

When performing a migration is it important to use a standard operating environment (SOE) upon which to migrate. An SOE is an organization’s standard implementation of the core operating system and middleware components. It should include the base operating system, the JEE container, custom configurations, standard applications used within an organization, software updates, and service packs.  
   
Once an migration bundle has been identified, a standardized configuration based on an SOE approach can be created for rapid and consistent deployment. An SOE configuration consists of a set of tested hardware, tested software,  and configurations deployed within a JBoss environment. The SOE configuration should be fully aligned to your technical and business requirements. It will dramatically reduce deployment time, simplify maintenance, increase stability, and reduce support and management costs.  

For each phase of a migration bundle's implementation from engineering implementation through,  QA validation and production deployment the appropriate stakeholder should review the work and signed-off on the phrase.  

