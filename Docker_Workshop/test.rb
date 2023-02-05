require 'test/unit'
require_relative "AutomationFrameWork"
require_relative 'DriverFile'

class FormTest < Test::Unit::TestCase

    def test_get_url
        url="file:///app/index.html"
        # url = "http://127.0.0.1:5500/index.html"
        framework = AutomationFamework.new()
        assert_equal("file:///app/index.html",framework.navigate_to_browser(url))
    end

    def test_get_wrong_url
        url="file:///app/index.html"
        # url = "http://127.0.0.1:5500/index.html"
        framework = AutomationFamework.new()
        assert_equal("Url not found",framework.navigate_to_browser(''))
    end
    
    def test_get_title
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("Student-form",framework.get_browser_title())
    end

    def test_find_element
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        element = framework.find_web_element({:xpath=> '/html/body/h3'})
        assert_equal("Contact Form",element.text)
    end

    def test_find_element_not_found
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        element = framework.find_web_element({:xpath=> '/html/body/h2'})
        assert_equal("Unable to locate",element)
    end

    def test_instance
        assert AutomationFamework.new().instance_of? AutomationFamework
    end

    def test_maximize_browser
        assert_equal("Maximized Browser",AutomationFamework.new().maximize_browser())
    end

    def test_enter_fname
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("entered",framework.enter_Data({:id=> 'fname'},"Rohan"))
    end

    def test_enter_fname_invalid_identifier
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("Unable to Enter Data",framework.enter_Data({:id=> 'name'},"Rohan"))
    end

    def test_dropdown
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("Found Text",framework.dropdown({:name=> 'country'},'Canada'),"Unable to Find") 
    end

    def test_dropdown_invalid_identifier
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("Unable to Find",framework.dropdown({:name=> 'try'},'Canada')) 
    end

    def test_sleep
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("sleep for #{2}",framework.wait(2)) 
    end

    def test_sleep_invalid_input
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("Unable to Sleep",framework.wait(p)) 
    end

    def test_enter_data_textarea
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("entered",framework.enter_Data({:class=> 'message'},"hello world"))
    end

    def test_enter_data_message_invalid_identifier
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        assert_equal("Unable to Enter Data",framework.enter_Data({:class=> 'msage'},"hello world"))
    end

    def test_enter_data_lname
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html") 
        assert_equal("entered",framework.enter_Data({:xpath=> '//*[@id="lname"]'},"hello world"))
    end

    def test_enter_data_lname_invalid_identifier
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html") 
        assert_equal("Unable to Enter Data",framework.enter_Data({:xpath=> '//[@id="lname"]'},"hello world"))
    end

    def test_submit_form
        driver = SeleniumWebDriver.new.create_driver()
        framework = AutomationFamework.new()
        framework.driver.get("file:///app/index.html")
        # framework.driver.get("http://127.0.0.1:5500/index.html")
        framework.driver.find_element(:id=> 'fname').send_keys "rohan"
        framework.driver.find_element(:id=> 'lname').send_keys "vishwakarma"
        framework.driver.find_element(:id=> 'subject').send_keys "hello world"
        element = framework.driver.find_element(:id=> 'submit')
        assert_equal("Submit",framework.driver.find_element(:id=> 'submit').text) 
        assert_equal("clicked",framework.click_button(element)) 
        sleep(2)
    end
end

