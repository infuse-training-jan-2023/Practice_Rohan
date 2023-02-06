require 'test/unit'
require_relative "AutomationFrameWork"
require_relative 'DriverFile'

class FormTest < Test::Unit::TestCase
    attr_accessor:framework, :driver, :url

    def setup
        @driver=SeleniumWebDriver.new.create_driver()
        @framework = AutomationFamework.new(@driver)
        @url = "file:///app/index.html"
        # @url = "http://127.0.0.1:5500/index.html"
    end

    def test_get_url
        assert_equal("file:///app/index.html",framework.navigate_to_browser(url))
    end

    def test_get_wrong_url
        assert_equal("Url not found",framework.navigate_to_browser(''))
    end
    
    def test_get_title
        driver.get(url)
        assert_equal("Student-form",framework.get_browser_title())
    end

    def test_find_element
        driver.get(url)
        element = framework.find_web_element({:xpath=> '/html/body/h3'})
        assert_equal("Contact Form",element.text)
    end

    def test_find_element_not_found
        driver.get(url)
        element = framework.find_web_element({:xpath=> '/html/body/h2'})
        assert_equal("Unable to locate",element)
    end

    def test_instance
        assert framework.instance_of? AutomationFamework
    end

    def test_maximize_browser
        driver.get(url)
        assert_equal("Maximized Browser",framework.maximize_browser())
    end

    def test_enter_fname
        driver.get(url)
        assert_equal("entered",framework.enter_Data({:id=> 'fname'},"Rohan"))
    end

    def test_enter_fname_invalid_identifier
        driver.get(url)
        assert_equal("Unable to Enter Data",framework.enter_Data({:id=> 'name'},"Rohan"))
    end

    def test_dropdown
        driver.get(url)
        assert_equal("Found Text",framework.dropdown({:name=> 'country'},'Canada'),"Unable to Find") 
    end

    def test_dropdown_invalid_identifier
        driver.get(url)
        assert_equal("Unable to Find",framework.dropdown({:name=> 'try'},'Canada')) 
    end

    def test_sleep
        driver.get(url)
        assert_equal("sleep for #{2}",framework.wait(2)) 
    end

    def test_sleep_invalid_input
        driver.get(url)
        assert_equal("Unable to Sleep",framework.wait(p)) 
    end

    def test_enter_data_textarea
        driver.get(url)
        assert_equal("entered",framework.enter_Data({:class=> 'message'},"hello world"))
    end

    def test_enter_data_message_invalid_identifier
        driver.get(url)
        assert_equal("Unable to Enter Data",framework.enter_Data({:class=> 'msage'},"hello world"))
    end

    def test_enter_data_lname
        driver.get(url) 
        assert_equal("entered",framework.enter_Data({:xpath=> '//*[@id="lname"]'},"hello world"))
    end

    def test_enter_data_lname_invalid_identifier
        driver.get(url) 
        assert_equal("Unable to Enter Data",framework.enter_Data({:xpath=> '//[@id="lname"]'},"hello world"))
    end

    def test_submit_form
        driver.get(url)
        framework.driver.find_element(:id=> 'fname').send_keys "rohan"
        framework.driver.find_element(:id=> 'lname').send_keys "vishwakarma"
        framework.driver.find_element(:id=> 'subject').send_keys "hello world"
        element = framework.driver.find_element(:id=> 'submit')
        assert_equal("Submit",framework.driver.find_element(:id=> 'submit').text) 
        assert_equal("clicked",framework.click_button(element)) 
        sleep(2)
    end
end

