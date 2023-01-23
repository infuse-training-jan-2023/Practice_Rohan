require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem3
    def  click_Button()
        driver = Selenium::WebDriver.for :chrome

        driver.get("https://www.google.com/")
        driver.find_element(:class, 'gb_n').click
        sleep(2)
        driver.quit()
    end
end

Problem3.new.click_Button()