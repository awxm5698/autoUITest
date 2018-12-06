# -*- coding: utf-8 -*-

import os
from robot.libraries.BuiltIn import BuiltIn
from appium import webdriver
from AppiumLibrary.locators import ElementFinder
import time

class MyAppiumLibrary(object):
    applib = None
    
    def __init__(self, alias='AppiumLibrary'):
        self.alias = alias
        # self.ef = ElementFinder()
        self._element_finder = ElementFinder()
        self._bi = BuiltIn()

    def _current_application(self):
        if self.applib is None:
            self.applib = BuiltIn().get_library_instance(self.alias)
        return self.applib._current_application()

    def scroll_ios(self,direction):
        driver = self._current_application()
        driver.execute_script("mobile: scroll", {'direction': direction})

    def swipe_drag(self,start_x,start_y,end_x,end_y,duration=1):
        driver = self._current_application()
        width = driver.get_window_size()['width']
        height = driver.get_window_size()['height']
        fromX = float(start_x) / 100 * width
        toX = float(end_x) / 100 * width
        fromY = float(start_y) / 100 * height
        toY = float(end_y) / 100 * height
        driver.execute_script("mobile:dragFromToForDuration",
                              {"duration":duration,"element":None,
                              "fromX":int(fromX),"fromY":int(fromY),
                              "toX":int(toX),"toY":int(toY)})

    def tap_point(self,x,y):
        driver = self._current_application()
        width = driver.get_window_size()['width']
        height = driver.get_window_size()['height']
        x = float(x) / 100 * width
        y = float(y) / 100 * height
        driver.execute_script("mobile: tap", {"y": int(y),"x": int(x),"duration": 50})
        print("tap point (" +str(x)+ ","+ str(y)+  ")")

    def swipe_ios(self,direction):
        driver = self._current_application()
        driver.execute_script("mobile: swipe", {"direction":direction})

    def tap_search_element(self,locator):
        driver = self._current_application()
        ele = self._element_finder.find(driver, locator, None)
        width = driver.get_window_size()['width']
        height = driver.get_window_size()['height']
        x = ele[0].location["x"] + 5
        y = ele[0].location["y"] + 5
        if y < 0:
            y = height - 50 + y
        driver.execute_script("mobile: tap", {"y": y,"x": x,"duration": 50})
        print("tap '"+locator+ "' on point ("+str(x)+","+str(y)+")")

