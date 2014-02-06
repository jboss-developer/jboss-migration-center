JBoss EAP 6 is based upon a new server architecture and there are new implementations of several JBoss Enterprise Application Platform components. Here are the areas to which you will want to pay particular attention as you migrate your applications.  


Application
-----------

Class loading, use of standardized EJB JNDI namespaces, and configuration changes in JBoss EAP 6 will impact almost every application. It is suggested you review the information provided in the [Migration Guide](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.2/html-single/Migration_Guide/index.html) located on the [Customer Portal](https://access.redhat.com/site/documentation/JBoss_Enterprise_Application_Platform/) before you migrate your application.  

You should also be aware that some features that were available in previous releases of JBoss EAP may be deprecated or no longer supported. For a comprehensive list, refer to the Unsupported Features section of the [Release Notes](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.2/html-single/6.2.0_Release_Notes/index.html#idm86029952) for JBoss EAP 6 located on the [Customer Portal](https://access.redhat.com/site/documentation/JBoss_Enterprise_Application_Platform/).

<br/>

Server Configuration 
--------------------
       
Server configuration files
: JBoss EAP 6 server's architecture has changed.  The microkernel has been rewritten. The directory structure is different, and most importantly the server configuration file structure is different both for standalone and clustered configurations. The [AS 7 Quick Tour Guide](https://docs.jboss.org/author/display/AS7/Getting+Started+Guide#GettingStartedGuide-AS7AQuickTour) provides a good overview of the layout of the distribution, the server directory structure, and the key configuration files. The JBoss Enterprise Application Platform [Migration Guide](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.2/html-single/Migration_Guide/index.html) located on the [Customer Portal](https://access.redhat.com/site/documentation/JBoss_Enterprise_Application_Platform/) can assist you in the migration your JBoss EAP 5 applications.
            
Caching
: Infinispan provides the caching facility in JBoss EAP 6.  It replaces JBoss Cache which is provided in JBoss EAP 5. There is no 1-to-1 mapping of the server configuration attributes between these two components, however the, [Configuration Migration Tools](https://docs.jboss.org/author/display/ISPN/Configuration+Migration+Tools) section of the, "Infinispan 5.2", guide provides directions for migrating the settings.

JPA
: Hibernate 4 is the default persistence component in JBoss EAP 6. There may be application changes needed to use this version of Hibernate. You may need to make changes to your application to conform to JPA 2.0, replace the second level cache to use Infinipan, make adjustments to your definition of a CLOB, change the return type of  projections in org.hibernate.criterion, or make changes to the application's persistence configuration file.  Review the ["Hibernate and JPA Changes" section of the "JBoss Enterprise Application Platform 6 Migration Guide"](https://access.redhat.com/knowledge/docs/en-US/JBoss_Enterprise_Application_Platform/6.2/html/Migration_Guide/sect-Hibernate_and_JPA_Changes.html), and make the necessary changes.
 

  Alternatively you can install Hibernate 3 as a module and declare it be used by your application instead. [How to use Hibernate 3 as JPA provider in JBoss AS7](http://badr-elhouari.blogspot.com/2011/10/how-to-use-hibernate-3-as-jpa-provider.html) describes how to do this.

JAX-RS
: RESTEasy is the default JAX-RS implementation in JBoss EAP 6. If you have an application that's using RESTEasy you should remove all the RESTEasy configuration settings from its web.xml file.  The ["JAX-RS and RESTEasy Changes" section in the "JBoss Enterprise Application Platform 6 Migration Guide"](https://access.redhat.com/site/documentation//en-US/JBoss_Enterprise_Application_Platform/6.2/html/Migration_Guide/sect-JAX-RS_and_RESTEasy_Changes.html) describes the actions to take.
