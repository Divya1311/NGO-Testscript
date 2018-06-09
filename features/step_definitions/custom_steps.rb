require 'selenium-cucumber'
=begin
caps=Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options =>{detach:true})

driver=Selenium::WebDriver.for :chrome, desired_capabilities: caps

$driver.manage().window().maximize()

$driver.get('http://localhost:3000/admins')
=end

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code