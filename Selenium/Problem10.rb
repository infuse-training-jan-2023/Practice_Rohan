require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem10
    def get_table_first_column
        driver = Selenium::WebDriver.for :chrome
        url = "https://computer-database.gatling.io/computers"
        driver.get(url)
        thead = driver.find_element(:tag_name, 'thead')
        tdTag = thead.find_element(:tag_name, 'tr')
        first_column_header = tdTag.find_elements(:tag_name, 'th')
        puts first_column_header[0].text
        get_tbody = driver.find_element(:tag_name, 'tbody')
        get_all_tr_tag = get_tbody.find_elements(:tag_name, 'tr')
        get_all_tr_tag.each do |e|
            first_column_text = e.find_elements(:tag_name, 'td')
            puts first_column_text[0].text
        end
        sleep(2)
        driver.quit()
    end
end   

prob =Problem10.new()
prob.get_table_first_column()
