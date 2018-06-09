Given("when i am in homepage") do
 $driver.get 'http://localhost:3000/' # Write code here that turns the phrase above into concrete actions
end

When("i click on groups menu") do
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

  $driver.find_element(:xpath, "//a[contains(text(), 'Groups')]").click()
  sleep 2
   # Write code here that turns the phrase above into concrete actions
end

Then("click on Add icon") do
 $driver.find_element(:css, ".six.wide.column.px3>span>div>button").click()
 sleep 3 # Write code here that turns the phrase above into concrete actions
end

Then("enter groupname") do
  #$driver.find_element(:xpath, "//input[@placeholder='Enter group name...']").send_keys("testgroup_010") # Write code here that turns the phrase above into concrete actions
  $driver.find_element(:xpath, "//*[@placeholder='Enter group name...' or @type='text']").send_keys("Testgroup_010") # Write code here that turns the phrase above into concrete actions
sleep 3
end

Then("enter description") do
  $driver.find_element(:xpath, "//textarea[contains(@placeholder, 'Enter group description...')]").send_keys("Test purpose: Test NGO")
  sleep 2
end

Then("add team members") do
  $driver.find_element(:xpath, "//input[@class='prompt' or @placeholder='Add users']").send_keys("test")
  sleep 2
  element=$driver.find_element(:xpath, "//div[@class='results transition visible']//div[@class='result']")
  $driver.find_element(:xpath, "//div[contains(text(), 'test user12')]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

And("clk save buton") do
  $driver.find_element(:xpath, ".//*[@id='root']/div/div/div/div/div/div[2]/div[2]/main/div/div/div[1]/div[2]/div/button[2]").click()
  sleep 2 # Write code here that turns the phrase above into concrete actions
end


