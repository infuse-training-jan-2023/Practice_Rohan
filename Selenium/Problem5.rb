require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem5
    def search()
        driver = Selenium::WebDriver.for :chrome
        driver.get("https://www.youtube.com/")

        driver.find_element(:name, 'search_query').send_keys "Ruby"
        driver.find_element(:id, 'search-icon-legacy').click

        sleep(2)
        driver.quit()
    end
end

Problem5.new.search()
