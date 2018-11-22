*** Settings ***
Library           AppiumLibrary
Library           ../lib/MyLibrary.py
Library           ../lib/AppiumLibraryExtender.py

*** Keywords ***
login
    [Arguments]    ${user}    ${psd}
    [Documentation]    需要传入用户名和登录密码
    click element    com.samsclub.workstation:id/item_iv_icon
    sleep    3
    Comment    ${s}    get source
    Comment    Log Many    ${s}
    Comment    click text    请输入登录账号
    input text    //android.view.ViewGroup//android.widget.EditText[1]    ${user}
    Hide Keyboard
    Comment    click text    请输入登录密码
    input text    //android.view.ViewGroup//android.widget.EditText[2]    ${psd}
    Hide Keyboard
    sleep    2
    Comment    click element    //android.view.ViewGroup//android.view.ViewGroup//android.view.ViewGroup//android.view.ViewGroup//android.view.ViewGroup//android.view.ViewGroup
    Comment    click element    //android.view.ViewGroup//android.view.ViewGroup//android.view.ViewGroup//android.view.ViewGroup//android.view.ViewGroup//android.view.ViewGroup
    click text    登 \ 录
    sleep    2
    click text    登 \ 录

logOut
    click text    我相关的
    sleep    1
    click Text    Log Out
    Wait Until Page Contains    登 \ 录    3

createNewApplication
    Comment    click element    com.samsclub.workstation:id/item_iv_icon
    #Wait Until Page Contains Element    //android.widget.TextView[1]    5
    #click element    ((//android.view.ViewGroup)[12]//*)[1]
    Wait Until Page Contains    新建
    click text    新建
    sleep    1
    Swipe By Percent    50    70    50    10    2000
    sleep    1
    click text    调休
    sleep    1
    Swipe By Percent    50    70    50    10    2000
    Swipe By Percent    50    70    50    10    2000
    click text    请添加
    sleep    2
    Comment    click element    (//android.view.ViewGroup//android.widget.TextView)[6]
    click text    Ke Qi
    sleep    2
    click text    立即提交
