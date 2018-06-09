Feature: To validate the NGO form with valid data

Scenario: To validate the NGO form
Given when i am in home page
When i enter valid email id
When i enter valid password
Then click on login button1
Then check Logo is displayed
Then check menus is displayed
Then check search textbox is displayed
Then check add user icon and menu icon is displayed

Scenario: To validate the Add new user
When i click on add new user icon
Then Enter the Firstname
Then enter the lastname
Then enter gender
Then enter DOB
Then enter Mobileno
Then enter email id
Then enter type
Then enter country
Then enter state
Then enter city
Then enter pincode 
Then enter address
And click on saves button
