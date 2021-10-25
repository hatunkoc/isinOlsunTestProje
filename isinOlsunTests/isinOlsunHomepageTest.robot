*** Settings ***
Documentation    Suite description
Resource  ../resources/isinOlsunHomepageApp.robot
Resource  ../resource/utilsApp.robot

Test Setup  utilsApp.create session
Test Teardown  utilsApp.close session

*** Test Cases ***
open browser
    isinOlsunHomepageApp.open the browser
    isinOlsunHomepageApp.enter the position