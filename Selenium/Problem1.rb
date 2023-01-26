require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem1 
    def navigate_to_browser()
        driver = Selenium::WebDriver.for :chrome
        url = "https://www.google.com/"
        driver.get(url)
        driver.manage.window.maximize
        sleep(2)
        driver.quit()
    end
end

prob = Problem1.new()
prob.navigate_to_browser()