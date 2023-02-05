require_relative "DriverFile"
class AutomationFamework
    attr_accessor:driver

    def initialize
        @driver = SeleniumWebDriver.new.create_driver()
    end

    def navigate_to_browser(url)
        begin
            driver.get(url)
            return driver.current_url
        rescue
            return "Url not found"
        end
    end

    def maximize_browser()
        driver.manage.window.maximize
        return "Maximized Browser"
    end

    def get_browser_title()
        return driver.title
    end

    def find_web_element(web_id)
        begin
            return driver.find_element(web_id)
        rescue
            return "Unable to locate"
        end
    end

    def find_web_elements(web_id)
        begin
            return driver.find_elements(web_id)
        rescue
            return "Unable to locate"
        end
    end

    def click_button(element)
        begin
            element.click
            return "clicked"
        rescue
            return "Unable to Click"
        end
    end

    def enter_Data(web_id,data)
        begin
            driver.find_element(web_id).send_keys "#{data}"
            return "entered"
        rescue
            return "Unable to Enter Data"
        end
    end

    def dropdown(select_tag,option)
        begin  
            dropdown = driver.find_element(select_tag)
            choose = Selenium::WebDriver::Support::Select.new(dropdown)
            choose.select_by(:text, option)
            return "Found Text"
        rescue
            return "Unable to Find"
        end
    end

    def wait(value)
        begin
            sleep(value)
            return "sleep for #{value}"
        rescue
            return "Unable to Sleep"
        end
    end

    def explicit_wait(value)
        begin
           return Selenium::WebDriver::Wait.new(:timeout => value)
        rescue
            return "unable to find element"
        end
    end

    def previous_page()
        driver.navigate.back
        return "back to previous Page"
    end

    def browser_scroll()
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
        return "Scroll to bottom"
    end

    def close_browser()
        driver.close
        return "Closed"
    end
end
