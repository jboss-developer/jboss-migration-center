Discover
========

Once you have a good understanding of your [migration goals](#{site.base_url}/migration-drivers), have put together a [migration plan](#{site.base_url}/migration-lanning), and feel comfortable with [Red Hat JBoss Enterprsie Application Platform](#{site.base_url}/learn), the following tools will help you discover any possible issues that you will need to take into account as you are migrating your application or setting up your server environments.

All of the tools on this page are being developed by the open source community and are protected either under the <a href="http://www.eclipse.org/org/documents/epl-v10.html">Eclipse Public License</a> or the <a href="http://www.apache.org/licenses">Apache License</a>. They are not developed  or supported by Red Hat Software.  You may choose to either download the executable, or go to the project site where you can download the code, read more about the projects, contribute to the code development and participate in the forums.

Windup
------

Windup is a tool to simplify Java application migrations. Running from the command line, the tool analyzes artifacts from Java applications and produces an HTML report highlighting areas that require changes. The analyzer is driven by customizable and extendable rules to provide information to assist the developer in migrating applications. It's initial focus is Java EE applications but the Windup design and rule organization is general enough to allow Windup to be used for practically any kind of migration.  

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


<br />

JBoss Configuration Migration Tool (Early Access)
-------------------------------------------------

The JBoss Configuration Migration Tool is an early access project. This tool analyzes and migrates JBoss EAP 5 server configuration data to your JBoss EAP 6 installation.  This tool also supports migrating server data from AS 5 to AS 6. Future versions will use Windup to analyze server configurations for migrating from proprietary platforms (IBM, Oracle) to JBoss EAP 6.

<div class="row">
  <div class="span4 pagination-centered">
    <img src="" />
  </div>
  <div class="span4 pagination-centered">
    <a href="https://repository.jboss.org/nexus/content/repositories/releases/org/jboss/migr/as/AsMigrator/0.9.4/AsMigrator-0.9.4.jar" class="btn btn-discover">Download Migration Tool</a>
  </div>
  <div class="span4 pagination-centered">
    <a href="http://github.com/OndraZizka/jboss-migration" class="btn btn-discover"> Config Tool Project Site</a>
  </div>
</div>

