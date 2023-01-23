require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem2
    def get_Title()
        driver = Selenium::WebDriver.for :chrome

        driver.get("https://www.google.com/")
        puts " Title: #{driver.title}"
        sleep(5)
        driver.quit()
    end
end

Problem2.new.get_Title()