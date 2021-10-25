*** Settings ***
Documentation    Suite description
Resource  ../resources/isinOlsunIlanFilterApp.robot
Resource  ../resource/utilsApp.robot

Test Setup  utilsApp.create session
Test Teardown  utilsApp.close session

*** Test Cases ***
open browser
    isinOlsunIlanFilterApp.go to homepage
    isinOlsunIlanFilterApp.go to find a job page
    isinOlsunIlanFilterApp.click find a job filter