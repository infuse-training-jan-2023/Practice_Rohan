require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem8
  def slider()
    driver = Selenium::WebDriver.for :chrome
    url= "https://www.globalsqa.com/demo-site/sliders/#Steps"
    driver.get(url)
    iframe =driver.find_element(:css,'iframe.lazyloaded')
    driver.switch_to.frame(iframe)
    slider = driver.find_element(:tag_name,'span')
    left = slider.send_keys(:arrow_left).to_i
    right = slider.send_keys(:arrow_right).to_i
    driver.action.drag_and_drop_by(slider, left,right).perform
    sleep(10)
    driver.quit()
  end
end

prob = Problem8.new()
prob.slider()

