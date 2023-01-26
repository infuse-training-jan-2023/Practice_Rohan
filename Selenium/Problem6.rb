require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem6
    def list_dropdowns()
        driver = Selenium::WebDriver.for :chrome
        url = "https://letcode.in/forms"
        driver.get(url)
        country_name = driver.find_elements(:tag_name, 'select')[1]
        choose = country_name.find_elements(:tag_name, 'option')
        choose.each do|e|
            puts e.text
        end
        sleep(2)
        driver.quit()
    end
end

prob=Problem6.new()
prob.list_dropdowns()
