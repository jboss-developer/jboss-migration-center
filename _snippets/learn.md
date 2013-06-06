Learn About Red Hat JBoss Enterprise Application Platform 
=========================================================
<a id="pageTop"/>
Red Hat JBoss Enterprise Application Platform 6 is a fast, secure, powerful application platform built upon open standards, and compliant with the Java™ Enterprise Edition 6 specification.  It provides an innovative modular, cloud-ready architecture, powerful management and automation, and world class developer productivity.  JBoss EAP 6 leverages the JBoss Application Server and adds enterprise features for high-availability clustering, caching, messaging, transactions and a full web services stack. It also includes  a new modular class loading system, and a Management Console and Management Command Line Interface. 

Red Hat JBoss Enterprise Application Platform 6 is ideal for a wide range of applications from HTML5 mobile applications to highly transactional applications that utilize the JEE programming approach. Learn about the following JBoss EAP features and components:

[Directory structure](#directoryStructure)
[Modular class loading](#modularClassLoading)
[Messaging](#messaging) 
[Distributed caching](#distributedCaching)

[Management Console](#managementConsole)
[High-availability clustering](#HighAvailabilityClustering)
[Logging](#logging)
[JPA](#jpa)
[JAX-RS](#jaxRS)
[CDI](#cdi)
[Security](#security)

  
Directory structure
-------------------
<a id="directoryStructure"/>
Learn about JBoss EAP 6's simplified directory structure. The link below provides a good overview of the layout of the distribution, the server directory structure, and the key configuration files. 

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Installation_Guide/index.html#Installation_Structure)

Modular class loading
---------------------
<a id="modularClassLoading"/>
The new modular structure allows for services to be enabled only when required, significantly increasing start up speed.  This system provides more flexibility and control than the traditional system of hierarchical class loaders. Developers have fine-grained control of the classes available to their applications, and can configure a deployment to ignore classes provided by the application server in favor of their own.

The modular class loader separates all Java classes into logical groups called modules. Each module can define dependencies on other modules in order to have the classes from that module added to its own class path. Because each deployed JAR and WAR file is treated as a module, developers can control the contents of their application's class path by adding module configuration to their application. 

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Development_Guide/index.html#Overview_of_Class_Loading_and_Modules-1)

Messaging
---------
<a id="messaging"/>
HornetQ is the JMS provider for JBoss EAP 6. It is an asynchronous messaging system and a fully compliant JMS 1.1 API. It provides all the power of JMS without some of its complexity. The core API also provides some features like "send acknowledgements" which are unavailable using the JMS API.  

HornetQ provides a fully functional JCA adaptor that can be used in any JEE compliant application server to integrate HornetQ so it can be used for consuming messages via Message Driven Beans (MDBs), or for sending messages in Enterprise JavaBeans or servlets.

[Read more](href=>"http://docs.jboss.org/hornetq/2.2.2.Final/user-manual/en/html_single/#messaging-concepts)

Distributed caching
-------------------
<a id="distributedCaching"/>
The Infinispan service provides a CacheManager in JNDI which you can use in your application. The Infinispan subsystem configuration defines multiple cache managers, each identified by a name. As with AS6, cache managers can have 1 or more aliases.

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Development_Guide/index.html#sect-Second-Level_Caches)

Management Console and Management Command Line Interface
--------------------------------------------------------
<a id="managementConsole"/>
The Management Console and Management Command Line Interface removes the need to edit XML configuration files by hand, adding the ability to script and automate tasks. Administrators have the option of using the enhanced web console, Java APIs, HTTP APIs, or the command line tool, for managing servers. These new features can be used to develop secure, powerful, and scalable Java EE applications quickly. 
[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Administration_and_Configuration_Guide/index.html#Manage_the_Application_Server1)

High-availability clustering
----------------------------
<a id="HighAvailabilityClustering"/>
Clustering is a key feature in Java EE application servers. It allows you to add more server hardware to handle more requests, to make your application fail-safe, and to make more efficient use of the database server. With JBoss Clustering's fail-over, load-balancing and distributed deployment features, it provides the means to develop large, scalable robust applications.

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Administration_and_Configuration_Guide/index.html#About_High-Availability_and_Load_Balancing_Clusters)

Logging
-------
<a id="logging"/>
The JBoss LogManager provides the application logging framework.  It is an extension of the J2SE logging libraries.  The framework supports Apache Commons Logging, SLF4J, Apache log4j, and Java SE Logging.

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Development_Guide/index.html#chap-Logging_for_Developers)

JPA
-------
<a id="jpa"/>
Hibernate provides JBoss EAP 6 with a complete Java Persistence solution. It is 100% compliant with the Java Persistence 2.0 specification and provides additional features to the specification.

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Development_Guide/index.html#About_Hibernate_Core)

Hibernate Validator is the JBoss EAP 6's implementation of Bean Validation. It is 100% compliant with JSR 303 - Bean Validation and is the reference implementation of the JSR.

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Development_Guide/index.html#sect-Bean_Validation)

JAX-RS
------
<a id="jaxRS"/>
RESTEasy is the JBoss EAP 6's implementation of JAX-RS. It provides support for building web services using REST, through the use of annotations. These annotations simplify the process of mapping Java objects to web resources.

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Development_Guide/index.html#chap-JAX-RS_Web_Services)

CDI
-----
<a id="cdi"/>
Contexts and Dependency Injection (CDI) introduces the ability to inject dependencies in a type-safe way. CDI is define by JSR-299. Weld is the reference implementation of JSR-299, and is provided in JBoss EAP 6.

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Development_Guide/index.html#Overview_of_CDI)

Security
--------
<a id="security"/>
PicketBox is a security framework that provides authentication, authorization, auditing and mapping capabilities to java applications within JBoss EAP6. Our security domain implements Java Authentication and Authorization Service (JAAS) declarative security.  

A security domain is used to configure where and how your users are authenticated. 

A login module implements a security domain's principal authentication and role-mapping behavior. JBoss EAP 6 ships out-of-the-box with a large collection of login modules, Database, Certificate, Ldap and Kerberos to name a few.

[Read more](https://access.redhat.com/site/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html-single/Development_Guide/index.html#About_Security_Domains)

[[TOP]] (#pageTop)
