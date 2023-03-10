*** Settings ***
Resource            ../resources/base.robot

Test Setup          Open Test Application
Test Teardown       Close Test Application


*** Variables ***
${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle


*** Test Cases ***
Deve abrir a tela Dialogs
    Open Nav

    Click Text    DIALOGS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be    ${TOOLBAR_TITLE}    DIALOGS

Deve abrir a tela de formulários
    Open Nav

    Click Text    FORMS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be    ${TOOLBAR_TITLE}    FORMS

Deve acessar a tela de vingadores
    Open Nav

    Click Text    AVENGERS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be    ${TOOLBAR_TITLE}    AVENGERS
