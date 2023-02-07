require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem11
    def get_table_cell(url,row,column)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        get_tr = driver.find_elements(:tag_name => 'tr')[row]
        puts get_tr.find_elements(:tag_name => 'td')[column].text
        sleep(2)
        driver.quit()
    end
end

url = "https://the-internet.herokuapp.com/tables"
row = 3
column = 3
prob = Problem11.new()
prob.get_table_cell(url,row,column)