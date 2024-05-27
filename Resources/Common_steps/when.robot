*** Settings ***
Library      SeleniumLibrary
Library      BuiltIn
Library      JSONLibrary
Library      ../../External-keywords/keywords.py
Resource     ../../data/global_variables.robot
Resource     ../step_merger.robot
Documentation  List of the "When" steps

*** Variables ***

*** Keywords ***
the user fills the subscription form
    ${inscription_modal} =  Get Json Value Str  ${data_login_page}  $.inscription_modal
    ${inscription_modal_header} =  Get Json Value Str  ${data_login_page}  $.inscription_modal_header
    ${inscription_identifiant} =  Get Json Value Str  ${data_login_page}  $.inscription_identifiant
    ${inscription_email} =  Get Json Value Str  ${data_login_page}  $.inscription_email
    ${inscription_mdp} =  Get Json Value Str  ${data_login_page}  $.inscription_mdp
    ${inscription_identifiant_club} =  Get Json Value Str  ${data_login_page}  $.inscription_identifiant_club
    ${inscription_register_button} =  Get Json Value Str  ${data_login_page}  $.inscription_register_button
    
    Wait Until Element Is Visible  xpath:${inscription_identifiant}  timeout=10
    Input Text  xpath:${inscription_identifiant}  Yorgo
    Input Text  xpath:${inscription_email}  Yorgo@gmail.com
    Input Text  xpath:${inscription_mdp}  Test
    Input Text  xpath:${inscription_identifiant_club}  1
    Click Button  xpath:${inscription_register_button}
    Sleep  10
