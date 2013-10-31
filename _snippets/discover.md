Discover
========

Once you have a good understanding of your [migration goals](#{site.base_url}/migration-drivers), have put together a [migration plan](#{site.base_url}/migration-planning), and feel comfortable with [Red Hat
<sup>&reg;</sup> JBoss<sup>&reg;</sup> Enterprise  Application Platform](#{site.base_url}/learn), the following tools will help you discover any possible issues that you will need to take into account as you are migrating your application or setting up your server environments.

All of the tools on this page are being developed by the open source community and are protected either under the <a href="http://www.eclipse.org/org/documents/epl-v10.html" target="_blank">Eclipse Public License</a> or the <a href="http://www.apache.org/licenses" target="_blank">Apache License</a>. They are not developed  or supported by Red Hat Software.  You may choose to either download the executable, or go to the project site where you can download the code, read more about the projects, contribute to the code development and participate in the forums.

<br/>

Windup
------

Windup is a tool to simplify Java <sup>&reg;</sup> application migrations. Running from the command line, the tool analyzes artifacts from Java applications and produces an HTML report highlighting areas that require changes. The analyzer is driven by customizable and extendable rules to provide information to assist the developer in migrating applications. It's initial focus is Java EE applications but the Windup design and rule organization is general enough to allow Windup to be used for practically any kind of migration.  

### How Does it Work? ###

Windup is comprised of resource interrogators. These interrogators look for common resources and highlight technologies and known “trouble spots” in migrating applications. The goal of Windup is to provide a high level view into relevant technologies in use within the application, and provide a consumable report for organizations to estimate, document, and migrate JEE applications to JBoss.



<div class="row product-links">
  <div class="span4 pagination-centered">
    <img src="http://static.jboss.org/images/windup/windup-logo.png" />
  </div>
  <div class="span4 pagination-centered">
    <a href="http://windup.jboss.org/download.html" class="btn btn-discover">Download Windup</a>
  </div>
  <div class="span4 pagination-centered">
    <a href="http://windup.jboss.org/" class="btn btn-discover">Windup Project Site</a>
  </div>
</div>


<br/><br/>

WindRide
-------------------------------------------------

WindRide is a JBoss server configuration migration tool.  It assists in migrating JBoss EAP 5, AS 5, or AS 6 server configuration to JBoss EAP 6, AS7, or WildFly 8.  The tool analyzes the server configuration files, produces a Windup style HTML report highlighting areas that require changes, and performs the migration.  This short <a href="https://www.youtube.com/watch?v=xEWaXgpLJ4k" >video</a> provides a demonstration of the tool.

WindRide provides an externalized rules facility that enables users to provide new migration rules.

### How Does it Work? ###

WindRide consists of a set of migrators.  A migrator contains the logic to indentify a configuration element in the source server, report the finding, and perform the action to migrate the data.

Externalized rules enable the user to add migration rules without any recompilation of WindRide.  The migration rules are provided in an XML file that is processed by WindRide.  Learn how to create your own rules on this <a href="https://github.com/OndraZizka/jboss-migration/wiki/Migrator-Definition-Rules" >page</a> and from this <a href="http://www.youtube.com/watch?v=2j0Ap-VsmW4" >video</a>

<div class="row">
  <div class="span4 pagination-centered">
    <img src="" />
  </div>
  <div class="span4 pagination-centered">
    <a href="https://repository.jboss.org/nexus/content/repositories/releases/org/jboss/migr/as/WindRide/1.0.0/WindRide-1.0.0.jar" class="btn btn-discover">Download WindRide</a>
  </div>
  <div class="span4 pagination-centered">
    <a href="http://github.com/OndraZizka/jboss-migration" class="btn btn-discover"> WindRide Project Site</a>
  </div>
</div>


<br/><br/>

TUBAME 
------
TUBAME is a set of Eclipse* plugins that assists in migrating Java EE applications to Red Hat JBoss Enterprise Application Platform (JBoss EAP) 6.   
The heart of TUBAME is an  external, customizable rules file.  TUBAME analyzes the source code based on the set of rules provided in the rules file.  
The  results are saved and subsequently formatted and displayed in the KnowledgeBase Search Tool perspective.


The report that is generated is displayed in a custom Eclipse perspective in which the developer can quickly:

* see the list of issues,
* jump to the section of source code containing the issue(s), and
* view advice for how to resolve the issue(s).

A customized Eclipse editor is included with TUBAME to allow the developer to easily customize the rules file.

Currently, TUBAME provides rules for updating Red Hat JBoss Enterprise Application Platform 4 applications to JBoss EAP 6.

*Eclipse Indigo 3.7

<div class="row">
  <div class="span4 pagination-centered">
    <img src="#{site.base_url}/images/TUBAME.png" height="150" width="150"/>
  </div>
  <div class="span4 pagination-centered">
    <a href="https://github.com/TUBAME/migration-tool/releases" class="btn btn-discover">TUBAME Plugins</a>
  </div>
  <div class="span4 pagination-centered">
    <a href="https://github.com/TUBAME/migration-tool" class="btn btn-discover"> TUBAME Project Site</a>
  </div>
</div>

