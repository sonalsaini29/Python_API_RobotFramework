from Resources.Variables import login_url
from selenium import webdriver
from selenium.webdriver import Chrome
from selenium.webdriver.common.keys import Keys

class LoginPage():
    def login_config(self):
        chrome_driver_path = '/Users/sonal/Code/WebDemo-master/docs/chromedriver'
        chrome_options = webdriver.ChromeOptions()
        chrome_options.add_argument('--headless')
        chrome_options.add_argument('--start-maximized')
        chrome_options.add_argument('--disable-extensions')
        chrome_options.add_argument('--disable-popup-blocking')
        driver = webdriver.Chrome(options=chrome_options)
        return self.driver