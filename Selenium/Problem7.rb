require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem7
    def select_option()
        driver = Selenium::WebDriver.for :chrome
        driver.get("https://testpages.herokuapp.com/styled/basic-html-form-test.html")
        sel = driver.find_elements(:tag_name => "option")
        sel.each do |opt|
            if opt.text == "Drop Down Item 1"
                opt.click
                puts opt.text
            end
        end
        sleep(2)
        driver.quit()
    end
end

Problem7.new.select_option()
