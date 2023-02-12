*** Settings ***
Resource            ../resources/base.robot
Library             ../.venv/lib/python3.9/site-packages/robot/libraries/XML.py

Test Setup          Open Test Application
Test Teardown       Close Test Application


*** Variables ***
${SPINNER}          id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}     class=android.widget.ListView


*** Test Cases ***
Deve selecionar o perfil QA
    Go To SignUp Form

    Choice Job    QA

Deve selecionar o perfil DevOps
    Go To SignUp Form

    Choice Job    DevOps


*** Keywords ***
Choice Job
    [Arguments]    ${target}

    Click Element    ${SPINNER}
    Wait Until Element Is Visible    ${LIST_OPTIONS}
    Click Text    ${target}
    Element Text Should Be    id=android:id/text1    ${target}
