Given("i am in login page") do
  $driver.get 'http://localhost:3000/'
  sleep 2
  # Write code here that turns the phrase above into concrete actions
end

Then("check availability of all objects in login screen") do
  #pending # Write code here that turns the phrase above into concrete actions
end

When("i enter valid username") do
  $driver.navigate().refresh()
  ele1=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  ele1.click() 
  ele1.send_keys("pachid12@gmai")
  sleep 2# Write code here that turns the phrase above into concrete actions
end

When("i enter invalid pwd") do
 ele2=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
 ele2.click()
 sleep 2
 ele2.send_keys(15212)
 sleep 2
end 

Then("clicks on loginn button") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[4]/div/div/button").click()
  sleep 3
  $driver.find_element(:xpath, "//button[@class='ui green inverted button' and @role='button']").click
  sleep 3
  #To clear the email and password fields
end

=begin
Then("verify the error message") do
  ele3=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  ele3.click()
  sleep 3
  ele3.clear
  sleep 3
  ele4=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
  ele4.click()
  ele4.clear
end
=end 

When("i enter invalid username") do
  element13=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  element13.click
  element13.clear
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div").send_keys("pachid12@gmail.")
  sleep 2 # Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
end

When("enter invalid password1") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div").clear
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div").send_keys("A15212@123")
  sleep 2# Write code here that turns the phrase above into concrete actions
end

And("click on login button") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[4]/div/div/button").click()
  sleep 3
  $driver.find_element(:xpath, "//button[@class='ui green inverted button' and @role='button']").click
  sleep 3
    #To clear the email and password
end

=begin
Then("verify error message") do
  popupMessage1=$driver.switch_to.alert() 
  getPopupMessage1=popupMessage1.text 
  puts getPopupMessage1 
  popupMessage1.accept() 
  sleep 3
  actualMessage1= "Oops! Invalid password"
  puts (actualMessage1==getPopupMessage1)? "Error message is correct" : "Error message is incorrect"
  sleep 2
end 
=end

Then("leave the email and password field as blank") do
  ele5=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  ele5.click()
  ele5.clear
  ele6=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
  ele6.click()
  ele6.clear
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div").send_keys("pachid12")
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div").send_keys()
 # Write code here that turns the phrase above into concrete actions
end

And("clicks on login button") do
   $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[4]/div/div/button").click()
  sleep 3
  $driver.find_element(:xpath, "//button[@class='ui green inverted button' and @role='button']").click
  sleep 2
  ele7=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  ele7.click()
  ele7.clear
  ele8=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
  ele8.click()
  ele8.clear
end

=begin
Then("verify the error mesage") do
  popupMessage2=$driver.switch_to.alert() 
  getPopupMessage2=popupMessage2.text 
  puts getPopupMessage2 
  popupMessage2.accept() 
  sleep 3
  actualMessage2= "Oops! Invalid password"
  puts (actualMessage2==getPopupMessage2)? "Error message is correct" : "Error message is incorrect"
  sleep 2
end  
=end

Then("enter valid emailid") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div").send_keys("pachid12@gmail.com")
  sleep 2
 # Write code here that turns the phrase above into concrete actions
end

Then("enter invalid password") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div").send_keys("Asdf3456")
 # Write code here that turns the phrase above into concrete actions
end

And("click login button") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[4]/div/div/button").click()
  sleep 3
  $driver.find_element(:xpath, "//button[@class='ui green inverted button' and @role='button']").click
  sleep 2
  ele9=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  ele9.click()
  ele9.clear
  ele10=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
  ele10.click()
  ele10.clear
end 

=begin
Then("verify the error msg") do
  popupMessage3=$driver.switch_to.alert() 
  getPopupMessage3=popupMessage3.text 
  puts getPopupMessage3 
  popupMessage3.accept() 
  sleep 3
  actualMessage3= "Oops! Invalid password"
  puts (actualMessage3==getPopupMessage3)? "Error message is correct" : "Error message is incorrect"
  sleep 2# Write code here that turns the phrase above into concrete actions
end 
=end

Then("enter invalid email") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div").send_keys("pachid12@gm")
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("enters valid password") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div").send_keys(5212)
 # Wr # Write code here that turns the phrase above into concrete actions
end

Then("clik on login buton") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[4]/div/div/button").click()
  sleep 3
  $driver.find_element(:xpath, "//button[@class='ui green inverted button' and @role='button']").click
  sleep 2
  ele11=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  ele11.click()
  ele11.clear
  ele12=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
  ele12.click()
  ele12.clear
end

=begin
Then("verifi error message") do
  popupMessage4=$driver.switch_to.alert() 
  getPopupMessage4=popupMessage4.text 
  puts getPopupMessage4
  popupMessage4.accept() 
  sleep 3
  actualMessage4= "Oops! Invalid password"
  puts (actualMessage4==getPopupMessage3)? "Error message is correct" : "Error message is incorrect"
  sleep 3 # Write code here that turns the phrase above into concrete actions
end 
=end
