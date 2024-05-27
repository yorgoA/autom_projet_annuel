*** Settings ***
Library      SeleniumLibrary
Library      BuiltIn
Library      JSONLibrary
Library      ../../External-keywords/keywords.py
Resource     ../../data/global_variables.robot
Resource    ../step_merger.robot
Documentation  List of the "given" communes


*** Variables ***


*** Keywords ***
the user is on the login page
    ${inscription_modal} =  Get Json Value Str  ${data_login_page}  $.inscription_modal
    ${login_modal} =  GET JSON VALUE STR    ${data_login_page}  $.login_modal
    ${inscription_modal_header} =  GET JSON VALUE STR    ${data_login_page}    $.inscription_modal_header
    ${login_modal_header} =  GET JSON VALUE STR    ${data_login_page}    $.login_modal_header
    ${inscription_identifiant} =  Get Json Value Str  ${data_login_page}  $.inscription_identifiant
    ${inscription_email} =  Get Json Value Str  ${data_login_page}  $.inscription_email
    ${inscription_mdp} =  Get Json Value Str  ${data_login_page}  $.inscription_mdp
    ${inscription_identifiant_club} =  Get Json Value Str  ${data_login_page}  $.inscription_identifiant_club
    ${inscription_register_button} =  Get Json Value Str  ${data_login_page}  $.inscription_register_button
    ${login_identifiant} =  Get Json Value Str  ${data_login_page}  $.login_identifiant
    ${login_mdp} =  Get Json Value Str  ${data_login_page}  $.login_mdp
    ${login_mdp_forgot} =  Get Json Value Str  ${data_login_page}  $.login_mdp_forgot
    ${login_button} =  Get Json Value Str  ${data_login_page}  $.login_button
    Wait Until Page Contains Element  xpath:${inscription_modal}  15
    Wait Until Page Contains Element  xpath:${login_modal}  15
    Wait Until Page Contains Element  xpath:${inscription_identifiant}  15
    Wait Until Page Contains Element  xpath:${inscription_email}  15
    Wait Until Page Contains Element  xpath:${inscription_mdp}  15
    Wait Until Page Contains Element  xpath:${inscription_identifiant_club}  15
    Wait Until Page Contains Element  xpath:${inscription_register_button}  15
    Wait Until Page Contains Element  xpath:${login_identifiant}
    Wait Until Page Contains Element  xpath:${login_mdp}
    Wait Until Page Contains Element  xpath:${login_mdp_forgot}
    Wait Until Page Contains Element  xpath:${login_button}
    Wait Until Element Contains  xpath:${inscription_modal_header}  Rejoignez nous ! 🎾
    Wait Until Element Contains  xpath:${login_modal_header}  Un petit Match ? 🏆

