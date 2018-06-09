Feature: To validate the Add members into the group

Scenario: To validate add members into the group functionality
When enter valid username and pwd
When i am in Add new group screen
Then enter group name
Then enter group description
Then enter user name in search bar
Then check all the users are listed
And select the users from the list
And clicks save btn

Scenario: To validate can delete or add more members into the group
Then click on edit icon will display the corresponding screen
Then delete the members from the group
Then click on save button
Then click on edit icon to add members
Then enter name in search bar
Then select the values from the list
Then click on save button
