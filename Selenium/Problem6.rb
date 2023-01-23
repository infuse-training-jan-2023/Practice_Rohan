require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem6
    def list_dropdowns()
        driver = Selenium::WebDriver.for :chrome

        driver.get("https://letcode.in/forms")

        sel = driver.find_elements(:tag_name, 'select')
        sel.each do |e|
            if (!e.text.include?("+"))
                puts e.text
            end
        end

        sleep(2)
        driver.quit()
    end
end

Problem6.new.list_dropdowns()
