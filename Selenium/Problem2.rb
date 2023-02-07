require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem2
    def get_title(url)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        puts " Title: #{driver.title}"
        driver.quit()
    end
end

url = "https://www.google.com/"
prob = Problem2.new()
prob.get_title(url)