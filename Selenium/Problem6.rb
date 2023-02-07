require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem6
    def list_dropdowns(url)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        dropdown = driver.find_elements(:tag_name, 'select')[1]
        choose = Selenium::WebDriver::Support::Select.new(dropdown)
        puts choose.options.map(&:text)
        sleep(2)
        driver.quit()
    end
end

url = "https://letcode.in/forms"
prob=Problem6.new()
prob.list_dropdowns(url)
