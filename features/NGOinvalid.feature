Feature: To validate ngo with invalid inputs

Scenario: To validate ngo with invalid inputs
Then navigate to login screen
Then enter valid username and password
Then click on log button
Then click on Add user icon
Then leave the firstname field as blank
When cliks save buttons
Then system will throw error message
When i enter the firstname
When i leave the lastname field as blank
When click save button
Then throw the error message
When i enter lastname
When i left to enter the gender
When i click on save button
Then system should throw the error message

Scenario: To validate gender
When i enter the gender

Scenario: To validate the usertype
Then leave the usertype field as blank
When clicks save button
Then system throws the error mesage
And enter the usertype

Scenario: To validate the mobileno and email
Then leave the mobile field as blank
When clicks on save buton
Then system will throw the error message
And enter invalid mobile no 
Then leave the email field as blank
When clicks save buton
Then system will display the error message

Scenario: To verify the mobile no is already registered
Then clear the mobileno field
Then enter already registered mobileno
And click on savee button
Then will display the message as mobileno registered already

Scenario: To verify the email is already registered
Then clear the email and mobile field
Then enter already registered email
And click on save buton
Then will display the message as already email is registered

Scenario: to save the user detail into database with valid mobileno and emailid
Then clear the emailid
Then enter the valid email
And clik on save buton
Then system will save and display the user list screen





