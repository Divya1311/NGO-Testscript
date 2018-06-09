Feature: To validate the login functionality

Scenario: To validate the login with valid data
Given i am in login page
Then check availability of all objects in login screen
When i enter valid username
When i enter invalid pwd
Then clicks on loginn button
Then verify the error message

Scenario: To validate the login with invalid data
When i enter invalid username
When enter invalid password1
And click on login button
Then verify error message
Then leave the email and password field as blank
And clicks on login button
Then verify the error mesage
Then enter valid emailid
Then enter invalid password
And click login button
Then verify the error msg
Then enter invalid email
Then enters valid password
Then clik on login buton
Then verifi error message
