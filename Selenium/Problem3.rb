require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem3
    def click_button()
        driver = Selenium::WebDriver.for :chrome
        url = "https://www.google.com/"
        driver.get(url)
        driver.find_element(:class, 'gb_n').click
        sleep(2)
        driver.quit()
    end
end

prob = Problem3.new()
prob.click_button()