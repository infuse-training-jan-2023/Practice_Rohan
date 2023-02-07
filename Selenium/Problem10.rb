require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem10
    def get_table_first_column(url)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        thead = driver.find_element(:tag_name, 'thead')
        puts first_column_header = thead.find_elements(:tag_name, 'th')[0].text
        get_tbody = driver.find_element(:tag_name, 'tbody')
        get_all_tr_tag = get_tbody.find_elements(:tag_name, 'tr')
        get_all_tr_tag.each do |element|
            puts element.find_elements(:tag_name, 'td')[0].text
        end
        sleep(2)
        driver.quit()
    end
end   

url = "https://computer-database.gatling.io/computers"
prob = Problem10.new()
prob.get_table_first_column(url)
