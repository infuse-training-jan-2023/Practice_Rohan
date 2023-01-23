require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem9
    def get_Table_Header()
        driver = Selenium::WebDriver.for :chrome

        driver.get("https://cosmocode.io/automation-practice-webtable/")

        trTag = driver.find_elements(:tag_name => 'tr')[0]
        puts trTag.text

        sleep(2)
        driver.quit()
    end
end

Problem9.new.get_Table_Header()
