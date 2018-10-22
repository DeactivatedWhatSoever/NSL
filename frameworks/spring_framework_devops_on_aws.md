# Spring Framework DevOps on AWS


## Externalizing Properties

### Section Overview

- Runtime properties. No hard coding database username or password and ip addresses etc. 

### Property Source

- The application.properties in the resource file. This file represents all the settings of the application environment. It’s server address, database environments, or some global configurations.

	- We need this to actually configure Spring to an environment that we want. Also, we can change the properties at runtime! Which is a really really cool thing to do.

### Spring Environment Properties

- We can create any sort of properties inside the file. You can override the defaults when you specify environment variables in bootRun!

	- Spring environment interface -> This can be injected into classes. You can get the properties from that  object. We can build various Spring environments with Spring environment properties.

### Using Multiple Properties Files

- You can have a lot of property files. For other environments like local, dev, staging, prod, etc. Use @PropertySource to actually manipulate the properties.

	- There are multiple ways to set multiple property files. Well, one way is using @PropertySources annotation. The reason this came out is to actually create multiple environments. 

### Spring Boot Application Properties

- These are the predefined Spring Boot Application properties. Like port number, servers, you can check them over [here.](https://docs.spring.io/spring-boot/docs/current/reference/html/common-application-properties.html)

	- These are needed to make the users of Spring Boot more convenient when building applications. You can just check the link on the other node and see what you can actually configure. 

### Property Hierarchy

- You can find the hierarchy of properties over [here](https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-external-config.html). If you have the know about the hierarchies, then you can decide whether when to use the property in what order. For example, the command line interface goes way first if you just inject it from the command line. That will give you some great advantage in production.

## Using Spring Profiles

### Section Overview

- Spring Profiles are for making specific environments for applications. Like local, dev, staging, production, etc. Learning how to set Spring profiles and how to use them.

### Using Spring Profiles

- You can name your profiles whatever you want. Use the @Profile annotation and put in the profile to explicitly make that bean dependent to that profile.

### Setting the Active Profile for Testing

- If you don’t have a active profile set, the default profile will get wired in. But if you put in a profile that doesn’t exist, it will result in an exception. 

	- You can also put in an array inside the profile annotation.

### Setting the Active Profile at Runtime

- Why set the active profile in runtime? And how? Well you can put in environment variables like spring.profiles.active with a list of active profiles inside. Also you can just put it inside the properties file. Remember the hierarchy!

### Spring Boot Profile Properties

- Application-{profile}.properties -> You can set the profiles like this. So put in the active profile, then it’ll go for the application properties that you specified.

### Spring Boot Profiles with YAML

- You can use the yaml style and properties together. But people tend to use only one style since it will be hard to maintain if you use too many styles. It’s just preference, so choose one you like!

## Using a MySQL Datasource

## Continuous Integration

## Setting Up Artifactory

## Virtualized Cloud Deployment

## Amazon RDS

