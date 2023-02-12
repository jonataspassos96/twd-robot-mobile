*** Settings ***
Resource            ../resources/base.robot

Test Setup          Open Test Application
Test Teardown       Close Test Application


*** Test Cases ***
Deve marcar a opção Robot Framework
    Go To CheckBox

    ${python}=    Set Variable    xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]

    Click Element    ${python}
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match    ${python}    checked    true
