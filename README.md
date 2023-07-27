# Coders_Creepers_RestAssuerd_API
This is an Automation Testing Project to test Rest Assured application interfaces for LMS. Primarily, LMS is divided into 5 Modules. Those modules are named as Program, Program Batch, User, Assignment and Assignment submission. All the modules are interconnected. Below is the Automation Project Implementation overview.

pom.xml - This file is utilised to store all project related dependencies.

Feature Folder - This folder is collection of feature files. In these files we have added positive and negative scenarios with description of tests using Given When And Then keywords.

EndUrls.properties - All project URLs are stored in this file.

enums - this package has Env_Var class where all ids are stored. Values in environment variables are overridden from post requests.

TestData - This folder is utilised to store excel sheet for data driven testing. Data is stored in seperate sheets for each module.

api.Payloads - This package has pojo classes. Java pojo functionality is used to create request bodies. Request bodies are created using class variables and their Getter and Setters. 

api.CRUDOperations - This package has all classes which does post, get, put and delete CRUD API operations. URLs are read from EndUrls.properties file using java ResourceBundle. Payloads are passed from Actions to CRUDOperations. CRUDOperations are reused for positive and negative scenarios. URI path parameter are extracted from request URI.

api.Actions - This folder has all test cases actions classes. Request bodies are created by calling payloads and all CRUD operations are called in these classes. Response values are stored in environment variables. These environment variables used for chaining between modules. Status code verification codes are also written in these classes to verify response status code.

api.Step_Definitions - This package has classes which maps to feature files. This is where all the test actions are called. For data driven testing, data is read from excel sheet and passed to actions.

api.utilities - Common utility classes are provided in this folder. Excel reader code is added to read data from excel sheet. Loggerload provides additional info in logs.

TestRunner - The test runner file contains the path of the feature file and step definition file that we want to execute.

