require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem4
    def click_button(url)
        driver = Selenium::WebDriver.for :chrome
        driver.get(url)
        radion_button = driver.find_elements(:name, 'radiooptions')
        radion_button.each do |element|
            if element.attribute('value') == "Male"
                element.click
            end
        end
        driver.find_element(:id, 'checkbox1').click
        driver.find_element(:id, 'checkbox2').click
        sleep(2)
        driver.quit()
    end
end

prob = Problem4.new()
url ="https://demo.automationtesting.in/Register.html"
prob.click_button(url)
