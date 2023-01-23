require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"
class Problem11
    def get_table_cell()
    driver = Selenium::WebDriver.for :chrome

    driver.get("https://the-internet.herokuapp.com/tables")

    tr = driver.find_elements(:tag_name => 'tr')[3]
    td = tr.find_elements(:tag_name => 'td')[3]
    cell = td.text
    puts cell

    sleep(2)
    driver.quit()
    end
end

Problem11.new.get_table_cell()