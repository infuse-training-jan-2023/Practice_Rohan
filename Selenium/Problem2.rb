require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem2
    def get_title()
        driver = Selenium::WebDriver.for :chrome
        url = "https://www.google.com/"
        driver.get(url)
        puts " Title: #{driver.title}"
        driver.quit()
    end
end
prob = Problem2.new()
prob.get_title()