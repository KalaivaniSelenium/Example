@todaymessagesendcount
@entiretest


Feature: TC_18 Message send count in Market and Limit Module, and in the header should be correct

Scenario: 00 Change the Time Zone to UTC
Given the user turns on the server using valid credentials
    When the user sets the time zone to UTC on the server
    And the user turns off the server
 
Scenario: 01 Delete all existing documents in MongoDB
    Given the user initializes the MongoDB connection
    When the user changes the value of initial message
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
    And The user upload the excel file "AutomationData100.xlsx" in the import file field
    And The user import the excel file by clicking the import button
    Then The excel file has to be imported
    And The user logs out from the Zeitblast application

Scenario: 04 Changing the Time Zone to market hours (8:00 AM EST)
  Given the user turns on the server using valid credentials
  When the EST timing is adjusted for today
    Then the user turns off the server
    
Scenario: 05 To Send Message to the Prospects
 Given The user logs in the Zeitblast application with "super admin" credentials
    When The user creates a new market
     Then The user should observe a success message confirming the creation of the new market
     And The user adds an outbound number in the existing market
    Then The user should observe a success message confirming the outbound number is added 
    And The user creates a new campaign and enters the campaign name and selects the market 
    Then The user should observe a success message confirming the creation of the new campaign
    And The user assigns the prospects to the created campaign in the direct import page
    Then The user should observe a success message confirming the prospects assigned to the campaign
    And The user creates a batch by selecting the campaign, choosing the message template, and adding the batch size
    And The user sends a message to the prospects who were added in the batch
     Then The User is navigated to the Inbox page
      Then The User should be able to navigate the Settings page
      And The initial message count in the header and the message count in the messages send today should be same
    And The user logs out from the Zeitblast application
   
Scenario: 06 Change the Time Zone to UTC
    Given the user turns on the server using valid credentials
    When the user sets the time zone to UTC on the server
    And the user turns off the server