require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem5
    def search(url)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        driver.find_element(:name, 'search_query').send_keys "Ruby"
        driver.find_element(:id, 'search-icon-legacy').click
        sleep(2)
        driver.quit()
    end
end

url = "https://www.youtube.com/"
prob = Problem5.new()
prob.search(url)
