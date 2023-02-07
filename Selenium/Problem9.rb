require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem9
    def get_table_header(url)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        get_table_header = driver.find_elements(:tag_name => 'tr')[0]
        return get_table_header.text
        sleep(2)
        driver.quit()
    end
end

url = "https://cosmocode.io/automation-practice-webtable/"
prob = Problem9.new()
puts prob.get_table_header(url)

