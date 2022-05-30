require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "driver/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

Given("I am on the articles list") do
    driver.navigate.to 'http://localhost:3000/'
    driver.manage.window.maximize
end

When("I click Create Articles") do
    driver.find_element(:class, 'create_article').click
    sleep(2)
    driver.find_element(:id, 'article_title').send_keys('Article1')
    driver.find_element(:id, 'article_body').send_keys('This is a sample article body...')
    driver.find_element(:name, 'commit').click
    sleep(2)
    driver.navigate.to 'http://localhost:3000/'
end

Then("Redirect to new articles") do
    pending
end