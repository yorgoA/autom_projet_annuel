*** Settings ***
Library  pabot.PabotLib
Library  SeleniumLibrary 
Resource  ../Resources/Common_steps/given.robot
Resource  ../Resources/Common_steps/when.robot
Resource  ../Resources/Common_steps/then.robot
Suite Setup    Set Custom Screenshot Directory  ${SCREENSHOT_DIR} 
Test Setup     Open Tennis Site
Test Teardown  Close browser

*** Variables ***
${SCREENSHOT_DIR}     ${CURDIR}/Screenshots_home_page/

*** Test Cases ***
SC01 - Pouvoir s’inscrire depuis la page d'accueil en tant qu’abonné mais non-inscrit
    [Documentation] 
    Given the user is on the login page
    When the user fills the subscription form
    #Then the $send_button is clickable 
    #When the user clicks on the $send_button
    #Then the calendar page is displayed 
    

    