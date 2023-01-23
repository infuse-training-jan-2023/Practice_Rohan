require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem4
    def click_Button()

        driver = Selenium::WebDriver.for :chrome

        driver.get("https://demo.automationtesting.in/Register.html")
        driver.find_elements(:name, 'radiooptions')[0].click
        driver.find_element(:id, 'checkbox1').click
        driver.find_element(:id, 'checkbox2').click

        sleep(2)
        driver.quit()
    end
end

Problem4.new.click_Button()
