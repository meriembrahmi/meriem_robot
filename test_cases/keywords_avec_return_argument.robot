*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://admin-demo.nopcommerce.com
${BROWSER}      chrome


*** Test Cases ***
Login Test
    ${RECUP_TITRE}=    lancer le navigateur    ${URL}    ${BROWSER}
    Log To Console    ${RECUP_TITRE}
    Input Text    id:Email    admin@yourstore.com
    Input Password    id:Password    admin
    Click Button    xpath://button[@type="submit"]


*** Keywords ***
lancer le navigateur
    [Arguments]    ${URL1}    ${BROWSER1}
    Open Browser    ${URL1}    ${BROWSER1}
    Maximize Browser Window
    ${TITRe}=    Get Title
    RETURN    ${TITRE}
