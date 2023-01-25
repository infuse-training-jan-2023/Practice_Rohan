require 'test/unit'
require_relative "peachesandcreamTest"

class Ecommerce < Test::Unit::TestCase
    
    def test_instance
        assert Peachesand_and_Cream_test.new().instance_of? Peachesand_and_Cream_test
    end

    def test_url
        url='http://127.0.0.1:5500/index.html'
        assert_equal("The URL of the page is: http://127.0.0.1:5500/index.html",Peachesand_and_Cream_test.new().navigate_to_Browser_getURL(url),"Wrong URL: #{url}")
    end

    def test_maximize_browser
        url='http://127.0.0.1:5500/index.html'
        assert_equal("Maximized Browser",Peachesand_and_Cream_test.new().maximize_browser())
    end

    def test_enter_Data
        enterValue = Peachesand_and_Cream_test.new()
        enterValue.navigate_to_Browser_getURL('http://127.0.0.1:5500/index.html')  
        assert_equal("entered",enterValue.enter_Data({:id=> 'fname'},"Rohan"))
    end

    def test_click_button
        enterValue = Peachesand_and_Cream_test.new()
        enterValue.navigate_to_Browser_getURL('http://127.0.0.1:5500/index.html') 
        element = enterValue.find_web_element({:xpath=> '/html/body/div/form/input[3]'})
        assert_equal("clicked",enterValue.click_button(element),"Unable to Click") 
    end

    def test_dropdown
        enterValue = Peachesand_and_Cream_test.new()
        enterValue.navigate_to_Browser_getURL('http://127.0.0.1:5500/index.html') 
        assert_equal("Found Text",enterValue.dropdown({:name=> 'country'},'Canada'),"Unable to Find") 

    end

    def test_sleep
        enterValue = Peachesand_and_Cream_test.new()
        enterValue.navigate_to_Browser_getURL('http://127.0.0.1:5500/index.html') 
        assert_equal("Unable to Sleep",enterValue.wait(p)) 
    end

    def test_class_element
        enterValue = Peachesand_and_Cream_test.new()
        enterValue.navigate_to_Browser_getURL('http://127.0.0.1:5500/index.html')  
        assert_equal("entered",enterValue.enter_Data({:class=> 'message'},"hello world"))
    end

    def test_xpath_element
        enterValue = Peachesand_and_Cream_test.new()
        enterValue.navigate_to_Browser_getURL('http://127.0.0.1:5500/index.html')  
        assert_equal("entered",enterValue.enter_Data({:xpath=> '//*[@id="lname"]'},"hello world"))
    end
end

