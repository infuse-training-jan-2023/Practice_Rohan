require_relative "peachesandcreamTest"

class AutomationTest

    def initialize
        @testObject = Peachesand_and_Cream_test.new()
        @url = "https://peachesandcream.in/"
        @wait_seconds = 2
    end
    
    def navigate()
        puts @testObject.navigate_to_Browser_getURL(@url)
        puts @testObject.maximize_browser()
        @testObject.wait(@wait_seconds)
    end

    def search_Product()
        puts @testObject.browser_scroll()
        @testObject.wait(@wait_seconds)
        element = @testObject.find_web_element({:xpath=> '//*[@id="shopify-section-footer"]/footer/div[1]/div/div[2]/div/ul/li[1]/a'})
        puts @testObject.click_button(element)
        @testObject.wait(@wait_seconds)
        puts @testObject.enter_Data({:xpath=> '//*[@id="MainContent"]/div/div/div/div/form/div/div/input[1]'},"cream")
        @testObject.wait(@wait_seconds)
        search = @testObject.find_web_element({:xpath=> '//*[@id="MainContent"]/div[1]/div/div/div/form/div/button'})
        @testObject.click_button(search)
        @testObject.wait(@wait_seconds)
        next_page = @testObject.find_web_element({:xpath=> '//*[@id="MainContent"]/ul[2]/li[3]/a'})
        @testObject.click_button(next_page)
        click_product = @testObject.find_web_element({:xpath=> '//*[@id="MainContent"]/ul[1]/li[1]/div/a'})
        @testObject.click_button(click_product)
        @testObject.wait(@wait_seconds)
        add_to_cart = @testObject.find_web_element({:xpath=> '//*[@id="product_form_7203387572374"]/div[3]/div/button'})
        @testObject.click_button(add_to_cart)
        @testObject.wait(@wait_seconds)
        buy_now = @testObject.find_web_element({:xpath=> '//*[@id="product_form_7203387572374"]/div[3]/div/div/div/div/div/button[1]'})
        @testObject.click_button(buy_now)
        puts @testObject.wait(@wait_seconds)
        puts @testObject.previous_page()
        element = @testObject.find_web_elements({:class=> 'site-header__cart'})
        @testObject.click_button(element[0])
        @testObject.previous_page()
        @testObject.wait(@wait_seconds)
    end 

    def contact_form()
        contact_button = @testObject.find_web_element({:xpath=> '//*[@id="shopify-section-footer"]/footer/div[1]/div/div[2]/div/ul/li[2]/a'})
        @testObject.click_button(contact_button)
        @testObject.wait(@wait_seconds)
        @testObject.enter_Data({:id=> 'ContactForm-name'},"jack")
        @testObject.enter_Data({:id=> 'ContactForm-email'},"jack@gmail.com")
        @testObject.enter_Data({:id=> 'ContactForm-phone'},"9765890987")
        @testObject.enter_Data({:id=> 'ContactForm-message'},"Hello")
        @testObject.wait(@wait_seconds)
        submit_button = @testObject.find_web_element({:xpath=> '//*[@id="ContactForm"]/input[4]'})
        @testObject.click_button(submit_button)
        @testObject.wait(@wait_seconds)
        home_page = @testObject.find_web_element({:xpath=> '//*[@id="SiteNav"]/li[1]/a'})
        @testObject.click_button(home_page)
        @testObject.wait(@wait_seconds)
        puts @testObject.close_browser()
    end
end

automation = AutomationTest.new()
automation.navigate()
automation.search_Product()
automation.contact_form()




# def main()
#     testObject = Peachesand_and_Cream_test.new()
#     # url = ("https://peachesandcream.in/")
#     url = ("http://127.0.0.1:5500/index.html")
#     web_id = {:xpath=> '//*[@id="SiteNav"]/li[2]/a/span'}

#     puts testObject.navigate_to_Browser_getURL(url)
#     puts testObject.wait(2)
#     puts testObject.navigate_to_Browser_getTitle()
#     puts testObject.wait(2)
#     puts testObject.maximize_browser()
#     puts testObject.wait(2)
#     # puts testObject.find_web_element(web_id)
#     # puts testObject.wait(2)
#     # puts testObject.click_button({:xpath=> '//*[@id="shopify-section-header"]/div[3]/header/div/div[2]/div/a[1]'})
#     # puts testObject.wait(2)
#     # puts testObject.enter_Data({:id=>'CustomerEmail'},"rohan@gmail.com")
#     # puts testObject.wait(2)
#     # puts testObject.close_browser()

#     puts testObject.enter_Data({:id=> 'fname'},"Rohan")
#     puts testObject.wait(2)
#     puts testObject.dropdown({:name=> 'country'},'Canada')
#     # testObject.dropdown()
#     puts testObject.wait(2)
# end
# main()
