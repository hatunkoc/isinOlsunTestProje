*** Settings ***
Documentation    Suite description
Resource  ../resources/isinOlsunFilterApp.robot
Resource  ../resource/utilsApp.robot

Test Setup  utilsApp.create session
Test Teardown  utilsApp.close session

*** Test Cases ***
open browser
    isinOlsunFilterApp.open the browser
    isinOlsunFilterApp.enter the position