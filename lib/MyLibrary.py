# -*- coding: utf-8 -*-

import os
from robot.libraries.BuiltIn import BuiltIn
from appium import webdriver
from AppiumLibrary.locators import ElementFinder
import time

class MyLibrary(object):
    applib = None
    
    def __init__(self, alias='AppiumLibrary'):
        self.alias = alias
        self.ef = ElementFinder()

    def _current_application(self):
        if self.applib is None:
            self.applib = BuiltIn().get_library_instance(self.alias)
        return self.applib._current_application()

    def swipe_scroll(self,direction):
        driver = self._current_application()
        driver.execute_script("mobile: scroll", {'direction': direction})

    def swipe_drag(self,start_x,start_y,end_x,end_y,duration=1000):
        driver = self._current_application()
        width = driver.get_window_size()['width']
        height = driver.get_window_size()['height']
        fromX = float(start_x) / 100 * width
        toX = float(end_x) / 100 * width
        fromY = float(start_y) / 100 * height
        toY = float(end_y) / 100 * height
        driver.execute_script("mobile:dragFromToForDuration",
                              {"duration":duration,"element":None,
                               "fromX":int(fromX),"fromY":int(fromY),"toX":int(toX),"toY":int(toY)})
        
    def swipe_swipe(self,direction):
        driver = self._current_application()
        driver.execute_script("mobile: swipe", {"direction":direction})
