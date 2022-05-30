require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "driver/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

Given("I click one article records") do
    driver.navigate.to 'http://localhost:3000/'
    driver.manage.window.maximize
    sleep(2)
    driver.find_element(:class, 'view_article').click
    sleep(2)
end

When("I Delete article record") do
    sleep(2)
    driver.find_element(:class, 'delete_btn').click
    sleep(2)
    driver.switch_to.alert.accept
end

Then("Navigate back to articles") do
    driver.navigate.to 'http://localhost:3000/'
end