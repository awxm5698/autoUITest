*** Settings ***
Resource          ../keywords/openApp.robot
Resource          ../keywords/commomKeywords.robot

*** Test Cases ***
01
    open    android    true
    login    admin    admin
    sleep    1
    createNewApplication
    sleep    1
    logOut
