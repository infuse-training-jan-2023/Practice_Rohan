require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem1 
    def navigate_to_Browser()
        driver = Selenium::WebDriver.for :chrome

        driver.get("https://www.google.com/")
        driver.manage.window.maximize
        sleep(5)
        driver.quit()
    end
end

Problem1.new.navigate_to_Browser()