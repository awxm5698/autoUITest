*** Settings ***
Resource          ../keywords/openApp.robot

*** Test Cases ***
01
    open    iosSimulator    true
    close application
