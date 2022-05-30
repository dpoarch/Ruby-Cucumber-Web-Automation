require 'selenium-webdriver'

def generate_activation_code(size = 6)
    charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
end


Selenium::WebDriver::Chrome.driver_path = "driver/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.navigate.to 'http://localhost:3000/'
driver.manage.window.maximize

# Create new article
driver.find_element(:class, 'create_article').click
sleep(2)
driver.find_element(:id, 'article_title').send_keys('Article1 - ' + generate_activation_code())
driver.find_element(:id, 'article_body').send_keys('This is a sample article body - '+generate_activation_code())
driver.find_element(:name, 'commit').click
sleep(2)
driver.navigate.to 'http://localhost:3000/'

sleep(5)