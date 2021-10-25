*** Settings ***
Resource  ./po/isinOlsunFilter.robot
Resource  ./po/isinOlsunHomepage.robot

*** Keywords ***
open the browser
    isinOlsunHomepage.go to homepage

enter the position
    isinOlsunFilter.enter the position input
    isinOlsunFilter.click find job button
    isinOlsunFilter.check find job page