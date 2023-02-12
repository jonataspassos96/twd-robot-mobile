*** Settings ***
Resource    ../resources/base.robot


*** Test Cases ***
Deve abrir a tela principal
    Open Application    http://localhost:4724
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${ANDROID_DEVICE_NAME}
    ...    app=${ANDROID_APP}

    Wait Until Page Contains    Training Wheels Protocol
    Wait Until Page Contains    Mobile Version

    Close Test Application
