require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem10
    def get_Table_First_Column
        driver = Selenium::WebDriver.for :chrome

        driver.get("https://computer-database.gatling.io/computers")

        thead = driver.find_element(:tag_name, 'thead')
        tdTag = thead.find_element(:tag_name, 'tr')
        thTag = tdTag.find_elements(:tag_name, 'th')
        puts thTag[0].text

        tbody = driver.find_element(:tag_name, 'tbody')
        tdTag = tbody.find_elements(:tag_name, 'tr')

        tdTag.each do |e|
            tdData = e.find_elements(:tag_name, 'td')
            puts tdData[0].text
        end
        sleep(2)
        driver.quit()
    end
end   

Problem10.new.get_Table_First_Column()
