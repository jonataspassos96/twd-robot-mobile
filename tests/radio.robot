*** Settings ***
Resource            ../resources/base.robot

Test Setup          Open Test Application
Test Teardown       Close Test Application


*** Test Cases ***
Deve selecionar a opção Python
    Go To Radio Buttons

    ${python}=    Set Variable    xpath=//android.widget.RadioButton[contains(@text, 'Python')]

    Click Element    ${python}
    Wait Until Element Is Visible    ${python}
    Element Attribute Should Match    ${python}    checked    true
