require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path = "C:\\selenium\\Driver\\chromedriver.exe"

driver = Selenium::WebDriver.for :chrome
class Problem12
    def navigate_to_Browser_getURL(driver)
        driver.get("https://www.ebay.com/")
        driver.manage.window.maximize
        puts "The URL of the page is: #{driver.current_url}"
    end

    def get_browser_Title(driver)
        if driver.title != 'Electronics, Cars, Fashion, Collectibles & More | eBay'
            return "title Not Found"
        else    
            return "The title of the page is: #{driver.title}"
        end
    end

    def search_By_Catergory(driver)
        sel = driver.find_element(:id, 'gh-cat')
        options = sel.find_elements(:tag_name => 'option')
        options.each do |element|
            if element.text == 'Books'
                element.click
                driver.find_element(:id, 'gh-btn').click
                sleep(2)
                driver.find_element(:id, 's0-27-9-0-1[0]-0-1[0]-0-12-next').click
                sleep(2)

                aTag = driver.find_element(:xpath,'//*[@id="s0-16-12_2-0-1[0]-0-0"]/ul/li[3]/a').click
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

    def get_All_categories_Details(driver)
        divTag = driver.find_element(:id, 'gh-cat-box')
        select = divTag.find_element(:tag_name, 'select')
        options = select.find_elements(:tag_name => 'option')
        options.each do |option|
            puts option.text    
        end
    end

    def search_Products(driver)
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
        return select_watch.click
    end
    
    def close_browser(driver)
        driver.quit()
    end
end
prob = Problem12.new()

prob.navigate_to_Browser_getURL(driver)
puts prob.get_browser_Title(driver)
puts prob.search_By_Catergory(driver)
prob.get_All_categories_Details(driver)
puts prob.search_Products(driver)
prob.close_browser(driver)
