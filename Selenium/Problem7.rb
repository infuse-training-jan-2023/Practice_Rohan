require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem7
    def select_option(url)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        dropdown = driver.find_element(:name=> "dropdown")
        choose = Selenium::WebDriver::Support::Select.new(dropdown)
        choose.select_by(:index,3)
        return choose.selected_options[0].text
        sleep(2)
        driver.quit()
    end
end

url = "https://testpages.herokuapp.com/styled/basic-html-form-test.html"
prob = Problem7.new()
puts prob.select_option(url)
