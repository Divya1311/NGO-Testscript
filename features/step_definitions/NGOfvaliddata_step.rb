Given("when i am in home page") do
	
  $driver.get 'http://localhost:3000/'
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

When("i enter valid email id") do
  element=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
  element.click()
  element.send_keys("pachid12@gmail.com")
  sleep 2
end

When("i enter valid password") do
 element2=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
 element2.click()
 sleep 2
 element2.send_keys(5212)
 sleep 2
end 

Then("click on login button1") do
  $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[4]/div/div/button").click()
  sleep 3
end

Then("check Logo is displayed") do
  element1=$driver.find_element(:css, ".col.col-3>img")
  if (element1).displayed?
  puts "Logo is displayed"
  else puts "Logo is not displayed"
  end # Write code here that turns the phrase above into concrete actions
end

Then("check menus is displayed") do
   element2=$driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[1]/div[1]/div/div[2]")
  if (element2).displayed?
  puts "Menus is displayed"
  else puts "Menus is not displayed"
  end# Write code here that turns the phrase above into concrete actions
end

Then("check search textbox is displayed") do
  element3=$driver.find_element(:class, "prompt")
  if (element3).displayed?
  puts "Searchbox is displayed"
  else puts "Searchbox is not displayed"
  end 
end

Then("check add user icon and menu icon is displayed") do
element4=$driver.find_element(:css, ".six.wide.column.px3>span>div>button")
element5=$driver.find_element(:xpath, "//button[@type='button']")
  if (element4 && element5).displayed?
  puts "Adduser,Addgroup icons are displayed"
  else puts "Adduser, Addgroup icons are not displayed"
  end
end

Then("check page navigation is displayed") do
element6=$driver.find_element(:class, "ui pagination pagination menu")
  if (element6).displayed?
  puts "Adduser icon is displayed"
  else puts "Adduser icon is not displayed"
  end
end

When("i click on add new user icon") do
  $driver.find_element(:css, ".six.wide.column.px3>span>div>button").click() # Write code here that turns the phrase above into concrete actions
end

Then("Enter the Firstname") do 
$driver.find_element(:xpath, "//input[contains(@placeholder, 'Enter your firstname')]").send_keys("Test") # Write code here that turns the phrase above into concrete actions
end

Then("enter the lastname") do
  $driver.find_element(:xpath, "//input[contains(@placeholder,'Enter your lastname')]").send_keys("user1")# Write code here that turns the phrase above into concrete actions
sleep 2
end

Then("enter gender") do
  element7=$driver.find_element(:xpath, "//div[@class='ui fluid selection dropdown']")
  element7.click
  sleep 2
  gender=$driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[1]/div[3]/div/div/div[2]")
  gender1=gender.find_elements(:tag_name, "span")
   puts gender1.size

  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[1]/div[3]/div/div/div[2]/div[2]").click
  sleep 2#rite code here that turns the phrase above into concrete actions
end

Then("enter DOB") do
  #$driver.find_element(:xpath, "//input[@type='date']").send_keys(12/01/1990)# Write code here that turns the phrase above into concrete actions
end

Then("enter Mobileno") do
  $driver.find_element(:xpath, "//input[@placeholder='Enter your mobile number']").send_keys(9087987654) # Write code here that turns the phrase above into concrete actions
end

Then("enter email id") do
  $driver.find_element(:xpath, "//input[@type='email']").send_keys("test@gmail.com") # Write code here that turns the phrase above into concrete actions
end

Then("enter type") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[1]/div/div/i").click()
  sleep 2
  type=$driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[1]/div/div/div[2]") # Write code here that turns the phrase above into concrete actions
  usertype1=type.find_elements(:tag_name, "span")
  puts usertype1.size()

  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[1]/div/div/div[2]/div[1]/span").click()
  sleep 2
end

Then("enter country") do
 $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[2]/div/div").click()
  sleep 2
  country=$driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[2]/div/div/div[2]") # Write code here that turns the phrase above into concrete actions
  country1=country.find_elements(:tag_name, "span")
  puts country1.size()

  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[2]/div/div/div[2]/div[101]/span").click()
  sleep 2#$driver.find_element(:, "") # Write code here that turns the phrase above into concrete actions
end

Then("enter state") do 
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[3]/div/div").click()
  sleep 2
  state=$driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[3]/div/div/div[2]") # Write code here that turns the phrase above into concrete actions
  state1=state.find_elements(:tag_name, "span")
  puts state1.size()

  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[3]/div[3]/div/div/div[2]/div[35]").click()
  sleep 2#$driver #$driver.find_element(:, "") # Write code here that turns the phrase above into concrete actions
end

Then("enter city") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[4]/span[2]/span[1]/div/div").click()
  sleep 2
  city=$driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[4]/span[2]/span[1]/div/div/div[2]") # Write code here that turns the phrase above into concrete actions
  city1=city.find_elements(:tag_name, "span")
  puts city1.size()
  city1.each do |i|
    if i.attribute("text")
      i.click
      sleep 2
    end
  end

  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[2]/form/div[4]/span[2]/span[1]/div/div/div[2]/div[883]").click()
  sleep 2#$driver#$driver.find_element(:, "") # Write code here that turns the phrase above into concrete actions
end

Then("enter pincode") do
  $driver.find_element(:xpath, "//input[@placeholder='Enter pincode']").send_keys(600097) # Write code here that turns the phrase above into concrete actions
end

Then("enter address") do
  $driver.find_element(:xpath, "//input[@placeholder='Enter address']").send_keys("125a,J.D.Road") # Write code here that turns the phrase above into concrete actions
end

Then("click on saves button") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end


