This is an arquillian tutorial case described in http://arquillian.org/guides/getting_started/, however for webogic 12.2 and 12.3, if we use managed container, it always fails as:
>>>>> 
java.lang.NullPointerException
    at org.jboss.arquillian.container.wls.WebLogicServerControl.isServerRunning(WebLogicServerControl.java:81)
    at org.jboss.arquillian.container.wls.jmx.FullJMXManagedContainer.start(FullJMXManagedContainer.java:50)
    at org.jboss.arquillian.container.wls.managed_12_1_2.WebLogicContainer.start(WebLogicContainer.java:52)
    ...
<<<<<

So I do a little change in arquillian-wls-common 1.0.2.Final-SNAPSHOT, besides an local weblogic jar – wlthint3client is depended, which is needs to install in local maven repository.


1) Test remote container, it needs to start a Weblogic server from other termial.
$ mvn -P arquillian-wls-remote clean test

2) Test managed container
$ mvn -P arquillian-wls-managed clean test
