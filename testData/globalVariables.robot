*** Variables ***
${url}            http://localhost:4723/wd/hub
&{android}        platformName=Android    platformVersion=7.1    deviceName=12344321    appPackage=com.samsclub.workstation    appActivity=com.workstation.container.HomeActivity    # Android真机参数
&{ios}            platformName=IOS    platformVersion=11.4    deviceName=iPhone 8    udid=814a1571f1e06199a7a4f9f105c64f47d263e640    app=com.apple.calculator    xcodeOrgId=CYUKJ2F69S    xcodeSigningId=iPhone Developer
...               # ios真机参数
&{iPad}           platformName=IOS    platformVersion=11.4    deviceName=iPad (6th generation)    app=com.apple.calculator    udid=bee52027618ed616af580eddb094dbd815b6c8a9    # iPad真机参数
&{iosSimulator}    alias=MyiPhone    platformName=IOS    platformVersion=12.0    deviceName=iPhone 8    app=com.apple.mobilesafari    automationName=XCUITest    # ios模拟器参数
&{iPadSimulator}    alias=MyiPad    platformName=IOS    platformVersion=12.0    deviceName=iPad Air    app=com.apple.mobilesafari    automationName=XCUITest    # iPad模拟器参数
