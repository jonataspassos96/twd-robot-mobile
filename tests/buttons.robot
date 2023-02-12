*** Settings ***
Resource            ../resources/base.robot

Test Setup          Open Test Application
Test Teardown       Close Test Application


*** Test Cases ***
Deve realizar um clique simples
    [Tags]    short
    Go To Short Click

    Click Text    CLIQUE AQUI

    Wait Until Page Contains    Isso é um clique simples

Deve realizar um clique longo
    [Tags]    long
    Go To Long Click

    Long Press    id=io.qaninja.android.twp:id/long_click    1000

    Wait Until Page Contains    CLIQUE LONGO OK
