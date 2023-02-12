*** Settings ***
Resource            ../resources/base.robot
Library             ../.venv/lib/python3.9/site-packages/robot/libraries/XML.py

Test Setup          Open Test Application
Test Teardown       Close Test Application


*** Variables ***
${BTN_REMOVE}       id=io.qaninja.android.twp:id/btnRemove


*** Test Cases ***
Deve remover o capitão América
    Go To Avenger List

    Swipe By Percent    88.88    18.22    47.22    18.22

    Wait Until Element Is Visible    ${BTN_REMOVE}
    Click Element    ${BTN_REMOVE}

    Wait Until Page Does Not Contain    Capitão América
