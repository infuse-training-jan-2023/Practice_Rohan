require 'selenium-webdriver' 

class SeleniumWebDriver

    def create_driver
        Selenium::WebDriver::Chrome.driver_path = '/opt/chromedriver-109.0.5414.74/chromedriver'
        #  Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--headless')
        options.add_argument('--no-sandbox')
        options.add_argument('--disable-dev-shm-usage')
        options.add_argument('--window-size=1920,1080')
        driver = Selenium::WebDriver.for :chrome ,options: options
        #driver = Selenium::WebDriver.for :chrome 
        return driver
    end

end

