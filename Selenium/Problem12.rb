require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

class Problem12
    attr_accessor:driver

    def initialize
        @driver = Selenium::WebDriver.for :chrome
    end

    def navigate_to_browser()
        driver.get("https://www.ebay.com/")
        driver.manage.window.maximize
        puts "The URL of the page is: #{driver.current_url}"
        puts "The title of the page is: #{driver.title}"
    end

    def search_by_catergory()
        sel = driver.find_element(:id, 'gh-cat')
        options = sel.find_elements(:tag_name => 'option')
        options.each do |element|
            if element.text == 'Books'
                element.click
                driver.find_element(:id, 'gh-btn').click
                sleep(2)
                driver.find_element(:id, 's0-27-9-0-1[0]-0-1[0]-0-12-next').click
                sleep(2)
                button = driver.find_elements(:class,'b-textlink--parent')[2]
                button.click
                sleep(2)
                driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
                sleep(2)
                driver.navigate.back
                sleep(2)
                driver.navigate.back
                sleep(2)
                return
            end
        end
    end

    def get_all_categories_details()
        divTag = driver.find_element(:id, 'gh-cat-box')
        select = divTag.find_element(:tag_name, 'select')
        options = select.find_elements(:tag_name => 'option')
        options.each do |option|
            puts option.text    
        end
    end

    def search_products()
        sel = driver.find_element(:id, 'gh-cat')
        options = sel.find_elements(:tag_name => 'option')
        options.each do |element|
            if element.text == 'All Categories'
                element.click
            end
        end
        driver.find_element(:name, '_nkw').send_keys "watch for Men"
        driver.find_element(:id, 'gh-btn').click
        sleep(2)
        container = driver.find_element(:class,'srp-results')
        select_watch = container.find_elements(:tag_name,'li')[20]
        select_watch.click
        sleep(5)
    end

    def close_browser()
        driver.quit()
    end
end

prob = Problem12.new()
prob.navigate_to_browser()
puts prob.search_by_catergory()
prob.get_all_categories_details()
prob.search_products()
prob.close_browser()
