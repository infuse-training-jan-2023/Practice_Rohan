require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem8
  def slider(url)
    driver = Selenium::WebDriver.for :chrome
    driver.get(url)
    iframe =driver.find_element(:css,'iframe.lazyloaded')
    driver.switch_to.frame(iframe)
    slider = driver.find_element(:tag_name,'span')
    slider.send_keys(:arrow_left)
    slider.send_keys(:arrow_right)
    sleep(10)
    driver.quit()
  end
end

url= "https://www.globalsqa.com/demo-site/sliders/#Steps"
prob = Problem8.new()
prob.slider(url)

