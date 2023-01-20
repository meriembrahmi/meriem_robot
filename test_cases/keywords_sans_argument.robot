*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://admin-demo.nopcommerce.com
${BROWSER}      chrome


*** Test Cases ***
Login Test
    lancer le navigateur
    Input Text    id:Email    admin@yourstore.com
    Input Password    id:Password    admin
    Click Button    xpath://button[@type="submit"]

search google
    lancer le navigateur


*** Keywords ***
lancer le navigateur
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
