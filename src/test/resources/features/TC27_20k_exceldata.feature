@20k_exceldata
@entiretest
Feature: TC_02 Import .xlsx File of 20 K Prospect 

Scenario: 00 Change the Time Zone to UTC
Given the user turns on the server using valid credentials
  When the user sets the time zone to UTC on the server
    And the user turns off the server
    
Scenario: 01 Delete all existing documents in MongoDB
Given the user initializes the MongoDB connection
    When the user deletes all existing documents from the collection
    Then no documents should exist in the collection
    And the user closes the MongoDB connection
    
Scenario: 02 Change the Time Zone to UTC
Given the user turns on the server using valid credentials
    When the user sets the time zone to UTC on the server
    And the user turns off the server
     
Scenario: 03 To upload an Excel in the Direct Import Page
Given The user logs in the Zeitblast application with "super admin" credentials
    When The user navigate to the direct import page from the home page
    And The user upload the excel file "Testdata20.xlsx" in the import file field   
    And The user import the excel file by clicking the import button
    Then The excel file has to be imported
    Then The user should observe a success message confirming the file of 20K prospects uploaded successfully
    And The user logs out from the Zeitblast application