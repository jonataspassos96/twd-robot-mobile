*** Settings ***
Resource    helpers.robot


*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_DEVICE_NAME}          Pixel 3a
${ANDROID_APP}                  ${EXECDIR}/app/twp.apk
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_PLATFORM_VERSION}     %{ANDROID_PLATFORM_VERSION=11}


*** Keywords ***
Open Test Application
    Set Appium Timeout    5
    Open Application    http://localhost:4724
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${ANDROID_DEVICE_NAME}
    ...    app=${ANDROID_APP}
    Get Started

Close Test Application
    Capture Page Screenshot

    Close Application
