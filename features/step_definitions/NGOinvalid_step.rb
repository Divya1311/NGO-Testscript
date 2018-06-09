Then("navigate to login screen") do
  $driver.get 'http://localhost:3000/'
  sleep 2
end

Then("enter valid username and password") do
  element=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  element.click()
  element.send_keys("pachid12@gmail.com")
  sleep 2
  element2=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
  element2.click()
  element2.send_keys(5212)
  sleep 2
end 

Then("click on log button") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[4]/div/div/button").click()
  sleep 3
end  

Then("click on Add user icon") do
  $driver.find_element(:css, ".six.wide.column.px3>span>div>button").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
end

Then("leave the firstname field as blank") do
  $driver.find_element(:xpath, "//input[contains(@placeholder, 'Enter your firstname')]").send_keys("") # Write code here that turns the phrase above into concrete actions
end

When("cliks save buttons") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("system will throw error message") do
  element=$driver.find_element(:xpath, "//div[contains(text(), 'Enter your firstname...')]") # Write code here that turns the phrase above into concrete actions
  puts (element).displayed?
  actualValue=element
  expectedValue="Enter your firstname..."
  puts (actualValue==expectedValue)? "Firstname validation mesage is correct" : "Firstname error message incorrect"
end

When("i enter the firstname") do
  $driver.find_element(:xpath, "//input[contains(@placeholder, 'Enter your firstname')]").send_keys("Test") # Write code here that turns the phrase above into concrete actions
end

When("i leave the lastname field as blank") do
  sleep 2
  $driver.find_element(:xpath, "//input[contains(@placeholder, 'Enter your lastname')]").send_keys("") # Write code here that turns the phrase above into concrete actions
end

When("click save button") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("throw the error message") do
   element1=$driver.find_element(:xpath, "//div[contains(text(), 'Enter your lastname...')]") # Write code here that turns the phrase above into concrete actions
  puts (element1).displayed?
  actualValue=element1
  expectedValue="Enter your lastname...*"
  puts (actualValue==expectedValue)? "Lasttname validation mesage is correct" : "Lasttname error message incorrect"# Write code here that turns the phrase above into concrete actions
end

When("i enter lastname") do
$driver.find_element(:xpath, "//input[contains(@placeholder, 'Enter your lastname')]").send_keys("user2")
sleep 2
end	

When("i left to enter the gender") do
$driver.find_element(:xpath, "//div[@class='ui fluid selection dropdown']").send_keys("")
end

When("i click on save button") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("system should throw the error message") do
begin
	
rescue Exception => e
	
element2=$driver.find_element(:xpath, "//div[contains(text(), 'Select your gender...*')]") # Write code here that turns the phrase above into concrete actions
  puts (element2).displayed?
  actualValue=element2
  expectedValue="Select your gender...*"
  puts (actualValue==expectedValue)? "Gender validation mesage is correct" : "Gender error message incorrect"# Write code here that turns the phrase above into concrete actions
end
end

When("i enter the gender") do
  element3=$driver.find_element(:xpath, "//div[@class='ui fluid selection dropdown']")
  element3.click
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[1]/div[3]/div/div/div[2]/div[2]").click
  sleep 2
    # Write code here that turns the phrase above into concrete actions
end

Then("leave the usertype field as blank") do
  $driver.find_element(:xpath, "//input[@type='date']").send_keys("") # Write code here that turns the phrase above into concrete actions
end

When("clicks save button") do
 $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("system throws the error mesage") do
  element9=$driver.find_element(:xpath, "//div[contains(text(), 'Enter user type...')]") # Write code here that turns the phrase above into concrete actions
  #element2=$driver.find_element(:xpath, "//div[contains(text(), 'Select your gender...*')]") # Write code here that turns the phrase above into concrete actions
  puts (element9).displayed?
  actualValue=element9
  expectedValue="Enter user type...*"
  puts (actualValue==expectedValue)? "Usertype validation mesage is correct" : "Usertype error message incorrect"# Write code here that turns the phrase above into concrete actions
end

Then("enter the usertype") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[1]/div/div/i").click()
  sleep 2
  type=$driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[1]/div/div/div[2]") # Write code here that turns the phrase above into concrete actions

  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[1]/div/div/div[2]/div[1]/span").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("leave the mobile field as blank") do
  $driver.find_element(:xpath, "//input[@placeholder='Enter your mobile number']").send_keys("") # Write code here that turns the phrase above into concrete actions
end

When("clicks on save buton") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2   # Write code here that turns the phrase above into concrete actions
end

Then("system will throw the error message") do
  element6=$driver.find_element(:xpath, "//div[contains(text(), 'Enter your 10 digit mobile number...')]")# Write code here that turns the phrase above into concrete actions
  puts (element6).displayed?
  actualValue=element6
  expectedValue="Enter your 10 digit mobile number...*"
  puts (actualValue==expectedValue)? "Mobile validation mesage is correct" : "Mobile error message incorrect"#element3=$driver.find_element(:xpath, "//div[@class='ui fluid selection dropdown']")
  
end

Then("enter invalid mobile no") do
 $driver.find_element(:xpath, "//input[@placeholder='Enter your mobile number']").send_keys(90879876) # Write code here that turns the phrase above into concrete actions
 sleep 3#(actualValue==expectedValue)? "Mobile validation mesage is correct" : "Mobile error message incorrect"#element3=$driver.find_element(:xpath, "//div[@class='ui fluid selection dropdown']")
end

Then("leave the email field as blank") do
  $driver.find_element(:xpath, "//input[@type='email']").send_keys("") # Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
  sleep 3
end

When("clicks save buton") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("system will display the error message") do
  element7=$driver.find_element(:xpath, "//div[contains(text(), 'Enter your valid Email Id...')]")# Write code here that turns the phrase above into concrete actions
  puts (element7).displayed?
  actualValue=element7
  expectedValue="Enter your valid Email Id...*"
  puts (actualValue==expectedValue)? "Email validation mesage is correct" : "Email validation error message incorrect"#element3=$driver.find_element(:xpath, "//div[@class='ui fluid selection dropdown']")
end

Then("clear the mobileno field") do
  $driver.find_element(:xpath, "//input[@placeholder='Enter your mobile number']").clear()
  sleep 2   # Write code here that turns the phrase above into concrete actions
end

Then("enter already registered mobileno") do
  $driver.find_element(:xpath, "//input[@placeholder='Enter your mobile number']").send_keys(9751591099)
  sleep 2 
  $driver.find_element(:xpath, "//input[@type='email']").send_keys("dhivyass@gmail.com")
  sleep 2  # Write code here that turns the phrase above into concrete actions
end

And("click on savee button") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("will display the message as mobileno registered already") do
   element10=$driver.find_element(:css, ".ui.small.modal.transition.visible.active")
   puts (element10).displayed?
   sleep 2
   expectedValue="This Information 9751591099already exist"
   element11=$driver.find_element(:xpath, "//div[contains(text(), 'This Information 9751591099already exist')]")
   actualValue=element11
   puts (actualValue==expectedValue)? "Already registered mobile error mesage is correct" : "laready regstd, mobile error message is incorrect"
end

Then("clear the email and mobile field") do
  $driver.find_element(:xpath, "//input[@placeholder='Enter your mobile number']").clear()
  sleep 2 
  $driver.find_element(:xpath, "//input[@type='email']").clear()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("enter already registered email") do
  $driver.find_element(:xpath, "//input[@placeholder='Enter your mobile number']").send_keys(975153099)
  sleep 2 
  $driver.find_element(:xpath, "//input[@type='email']").send_keys("dhivyakss@gmail.com")
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

And("click on save buton") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("will display the message as already email is registered") do
   element12=$driver.find_element(:css, ".ui.small.modal.transition.visible.active.warning_modal")
   puts "Already registered email message is displayed: #{(element12).displayed?}"
   sleep 2
   expectedValue="This Information dhivyakss@gmail.com already exist"
   element13=$driver.find_element(:xpath, "//div[contains(text(), 'This Information dhivyakss@gmail.com already exist')]")
   actualValue=element13
   puts (actualValue==expectedValue)? "Already registered email error mesage is correct" : "Already regstd, email error message is incorrect"
end

Then("clear the emailid") do
  $driver.find_element(:xpath, "//input[@type='email']").clear()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("enter the valid email") do
  $driver.find_element(:xpath, "//input[@type='email']").send_keys("test19@gmail.com")
  sleep 2# Write code here that turns the phrase above into concrete actions
end

And("clik on save buton") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("system will save and display the user list screen") do
  puts "display the home page"
   # Write code here that turns the phrase above into concrete actions
end




