When("enter valid username and pwd") do
  $driver.get 'http://localhost:3000/'
  sleep 3 # Write code here that turns the phrase above into concrete actio

 element=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[1]/div")
 element.click()
 element.send_keys("pachid12@gmail.com")
 sleep 2

 element2=$driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[2]/div/div")
 element2.click()
 sleep 2
 element2.send_keys(5212)
 sleep 2

 $driver.find_element(:xpath, ".//*[@id='login-container']/div/div[2]/form/div[4]/div/div/button").click()
 sleep 3
end 

When("i am in Add new group screen") do
  $driver.find_element(:xpath, "//a[contains(text(), 'Groups')]").click()
  sleep 2
  $driver.find_element(:css, ".six.wide.column.px3>span>div>button").click()
  sleep 3 # Write code here that turns the phrase above into concrete actions
end  

Then("enter group name") do
  $driver.find_element(:xpath, "//input[contains(@placeholder, 'Enter group name...')]").send_keys("Testgroup_8")
  sleep 2
end

Then("enter group description") do
  $driver.find_element(:xpath, "//textarea[contains(@placeholder, 'Enter group description...')]").send_keys("Test purpose: Test NGO")
  sleep 2
end  

Then("enter user name in search bar") do
  $driver.find_element(:xpath, "//input[@autocomplete='off']").send_keys("Test") # Write code here that turns the phrase above into concrete actions
end

Then("check all the users are listed") do
  element=$driver.find_element(:xpath, "//div[@class='results transition visible']//div[@class='result']")
  puts "Members are listed in search list: #{(element).displayed?}"
  puts element.text
   # Write code here that turns the phrase above into concrete actions
end

Then("select the users from the list") do
  $driver.find_element(:xpath, "//div[contains(text(),  'testuser testuser_016')]").click()
  sleep 2
  $driver.find_element(:xpath, "//input[@autocomplete='off']").send_keys("Test")
  element1=$driver.find_element(:xpath, "//div[@class='results transition visible']//div[@class='result']")
  $driver.find_element(:xpath, "//div[contains(text(),  'test user15')]").click()
  sleep 2
  $driver.find_element(:xpath, "//input[@autocomplete='off']").send_keys("Test")
  element2=$driver.find_element(:xpath, "//div[@class='results transition visible']//div[@class='result']")
  $driver.find_element(:xpath, "//div[contains(text(),  'Test user04')]").click()
  sleep 2# Write code here that turns the phrase above into concrete actions
end

And("clicks save btn") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("click on edit icon will display the corresponding screen") do
  element1=$driver.find_element(:xpath, "//div[@class='row H3 my1']//div[contains(text(), 'Testgroup_006')]")
  $driver.action.click(element1).perform()
  sleep 3
  $driver.find_element(:xpath, "//span[@style='padding: 0px 1rem;']").click()# Write code here that turns the phrase above into concrete actions
  sleep 3
end

Then("delete the members from the group") do
  $driver.find_element(:xpath, "//i[@class='delete icon' and @aria-hidden='true']").click()
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='childrens']/main/div/div/div[2]/div[2]/div/div[2]/div[2]/div[3]/i").click()
  sleep 3   # Write code here that turns the phrase above into concrete actions
end

Then("click on save button") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
end

Then("click on edit icon to add members") do
  element2=$driver.find_element(:xpath, "//div[@class='row H3 my1']//div[contains(text(), 'Testgroup_005')]")
  $driver.action.click(element2).perform()
  sleep 3
  $driver.find_element(:xpath, "//span[@style='padding: 0px 1rem;']").click()# Write code here that turns the phrase above into concrete actions
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

Then("enter name in search bar") do
  $driver.find_element(:xpath, "//input[@autocomplete='off']").send_keys("Test") # Write code here that turns the phrase above into concrete actions
 # Write code here that turns the phrase above into concrete actions
end

Then("select the values from the list") do
  $driver.find_element(:xpath, "//div[contains(text(),  'Test user13')]").click()
  sleep 2
  $driver.find_element(:xpath, "//input[@autocomplete='off']").send_keys("Test")
  $driver.find_element(:xpath, "//div[contains(text(),  'test user12')]").click()
  sleep 2
  $driver.find_element(:xpath, "//input[@autocomplete='off']").send_keys("Test")
  $driver.find_element(:xpath, "//div[contains(text(),  'test user11')]").click()
  sleep 2
   # Write code here that turns the phrase above into concrete actions
end

Then("click on save button") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions # Write code here that turns the phrase above into concrete actions
end