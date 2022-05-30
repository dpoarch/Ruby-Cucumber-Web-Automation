require 'selenium-webdriver'

def generate_activation_code(size = 6)
    charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
end


Selenium::WebDriver::Chrome.driver_path = "driver/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.navigate.to 'http://localhost:3000/'
driver.manage.window.maximize
sleep(2)
driver.find_element(:class, 'view_article').click
sleep(4)
driver.find_element(:class, 'delete_btn').click
sleep(2)
driver.switch_to.alert.accept

sleep(5)