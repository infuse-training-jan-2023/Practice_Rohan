require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem8
  def slider()
    driver = Selenium::WebDriver.for :chrome
    driver.get("https://www.globalsqa.com/demo-site/sliders/#Steps")
    iframe =driver.find_element(:css,'iframe.lazyloaded')
    driver.switch_to.frame(iframe)
    slider = driver.find_element(:tag_name,'span')
    driver.action.key_down(:control).perform
    driver.action.drag_and_drop_by(slider, 100,250).perform
    driver.quit()
  end
end

Problem8.new.slider()

