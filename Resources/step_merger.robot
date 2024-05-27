*** Settings ***
Library      SeleniumLibrary
Library      BuiltIn
Library      JSONLibrary
Resource            ../data/global_variables.robot
Documentation  List of steps that we created from merging multiple keywords 

*** Variable ***

*** Keywords ***
Open Tennis Site
    ${data_chosen} =    Load JSON From File    %{RESOURCE}/Data/login_page.json
    Set Global Variable    ${data_login_page}    ${data_chosen}
    Open Browser  ${URL}  ${BROWSER}  options=add_argument("--disable-popup-blocking");add_argument("--ignore-certificate-errors");add_argument("--disable-extensions")
    Maximize Browser Window
