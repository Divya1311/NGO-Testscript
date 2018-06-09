Given("when im in home page") do
  $driver.get 'http://localhost:3000/admins'
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

When("i click on edit icon") do
  $driver.find_element(:xpath, "//span[@ style='visibility: visible;']//svg[@class='svg-icon']").click()
  sleep 2
end

Then("system will display the edit screen") do
   # Write code here that turns the phrase above into concrete actions
end

Then("edit the firstname of user{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("click on edit icon") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("edit the lastname of user{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("edit the gender of user{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("edit the Mobileno of user{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("edit the email of user{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("edit the usertype of user{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("edit the image of user{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

