*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL1}         https://admin-demo.nopcommerce.com
${BROWSER1}     chrome
${URL2}         https://google.com
${BROWSER2}     chrome


*** Test Cases ***
Login Test
    lancer le navigateur    ${URL1}    ${BROWSER1}
    Input Text    id:Email    admin@yourstore.com
    Input Password    id:Password    admin
    Click Button    xpath://button[@type="submit"]

search google
    lancer le navigateur    ${URL2}    ${BROWSER2}


*** Keywords ***
lancer le navigateur
    [Arguments]    ${URL_SITE}    ${NAVIGATEUR}
    Open Browser    ${URL_SITE}    ${NAVIGATEUR}
    Maximize Browser Window
