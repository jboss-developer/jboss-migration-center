Application
-----------

Class loading, use of standardized EJB JNDI namespaces, and configuration changes in JBoss EAP 6 will impact almost every application. It is suggested you review the information provided in the [Migration Guide](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Migration_Guide/index.html) located on the [Customer Portal](https://access.redhat.com/site/documentation/JBoss_Enterprise_Application_Platform/) before you migrate your application.  

You should also be aware that some features that were available in previous releases of JBoss EAP may be deprecated or no longer supported. For a comprehensive list, refer to the Unsupported Features section of the [Release Notes](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.2/html-single/6.2.0_Release_Notes/index.html#idm86029952) for JBoss EAP 6 located on the [Customer Portal](https://access.redhat.com/site/documentation/JBoss_Enterprise_Application_Platform/).

<br/>

Server Configuration
--------------------

JMS
: HornetQ, is the new ultra high performance enterprise grade messaging system in JBoss EAP 6.  It replaces JBossMQ in JBoss EAP 4.2.0 and JBoss Messaging in JBoss EAP 4.2.1. The server configuration attributes for HornetQ are different from both JBossMQ and JBoss Messaging.  Section [2.5 of the HornetQ User Guide](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/5/html-single/HornetQ_User_Guide/index.html#idm56911320) defines the relationship between the new and old attributes.

