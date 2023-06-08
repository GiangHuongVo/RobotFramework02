#suite de test
*** Settings ***
Library    SeleniumLibrary
Library    XML
Documentation    First suite de test avec Robot
...    Ceci est un exemple de
...        **************************

Resource    ../ressources/ressource_1.robot
*** Test Cases ***

tc03 logout_test
    Given se connecter au site demo orange
    When remplir le formulaire de login
    Then valider l'affichage
    And se deconnecter

