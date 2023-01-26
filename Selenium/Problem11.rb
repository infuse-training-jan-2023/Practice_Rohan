require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"
class Problem11
    def get_table_cell()
        driver = Selenium::WebDriver.for :chrome
        url = "https://the-internet.herokuapp.com/tables"
        driver.get(url)
        get_tr = driver.find_elements(:tag_name => 'tr')[3]
        get_td = get_tr.find_elements(:tag_name => 'td')[3]
        puts get_td.text
        sleep(2)
        driver.quit()
    end
end
prob = Problem11.new()
prob.get_table_cell()