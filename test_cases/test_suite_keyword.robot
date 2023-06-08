#suite de test
*** Settings ***
Library    SeleniumLibrary
Library    XML
Documentation    First suite de test avec Robot
...    Ceci est un exemple de
...        **************************

*** Variables ***
${url}=   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    chrome
${username}=    Admin
${password}=    admin123

*** Test Cases ***

tc01 logout_test
    se connecter au site demo orange
    remplir le formulaire de login
    valider l'affichage
    se deconnecter


*** Keywords ***
se connecter au site demo orange
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5  
    
remplir le formulaire de login
    Clear Element Text     name:username
    Input Text     name:username   ${username}
    Input Password    name:password    ${password}
    Click Button    xpath://button[@type='submit']
    Sleep    2

valider l'affichage
    Page Should Contain    Dashboard
    Sleep    2

se deconnecter
    Click Image    xpath:(//img[@alt='profile picture'])[1]
    Sleep    2
    Click Link    link:Logout
    Sleep    2
    Close Browser
