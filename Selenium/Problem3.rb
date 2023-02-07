require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem3
    def click_button(url)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        driver.find_element(:class, 'gb_n').click
        sleep(2)
        driver.quit()
    end
end
url = "https://www.google.com/"
prob = Problem3.new()
prob.click_button(url)