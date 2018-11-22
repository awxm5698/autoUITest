*** Settings ***
Resource          ../testData/globalVariables.robot
Library           AppiumLibrary

*** Keywords ***
open
    [Arguments]    ${name}    ${noReset}    # 参数Andorid/ios/iPad/iosSimulator/iPadSimulator | true/false
    [Documentation]    ${name} \ \ \ # andorid/ios/iPad/iosSimulator/iPadSimulator,模拟器/真机参数设置请前往 \ ../testData/globalVariables.robot
    ...
    ...
    ...    ${noReset} \ \ \ # true--noRest|false--reset 是否重置app
    Comment    Run keyword if    '${name}'=='android'    openAndroid
    ...    ELSE IF    '${name}'=='ios'    openIos
    ...    ELSE IF    '${name}'=='iPad'    openiPad
    ...    ELSE IF    '${name}'=='ios_s'    openIosSimulator
    ...    ELSE IF    '${name}'=='iPad_s'    openiPadSimulator
    runkeyword    open${name}    ${noReset}

openAndroid
    [Arguments]    ${noReset}    # true--noRest|false--reset
    open Application    ${ip}:${port}/wd/hub    noReset=${noReset}    &{android}
    sleep    2

openIos
    [Arguments]    ${noReset}    # true--noRest|false--reset
    Open Application    ${url}    noReset=${noReset}    &{ios}
    sleep    2

openIosSimulator
    [Arguments]    ${noReset}    # true--noRest|false--reset
    Open Application    ${url}    noReset=${noReset}    &{iosSimulator}
    sleep    2

openIpad
    [Arguments]    ${noReset}    # true--noRest|false--reset
    Open Application    ${url}    noReset=${noReset}    &{iPad}
    sleep    2
    LANDSCAPE

openIpadSimylator
    [Arguments]    ${noReset}    # true--noRest|false--reset
    Open Application    ${url}    noReset=${noReset}    &{iPadSimulator}
    sleep    2
    LANDSCAPE
