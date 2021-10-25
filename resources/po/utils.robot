*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary
Library  FakerLibrary

*** Variables ***
${TIMEOUT}  10

*** Keywords ***
click
  [Arguments]  ${SELECTOR}
  wait until page contains element  ${SELECTOR}
  click element  ${SELECTOR}

scroll
  [Arguments]  ${HEIGHT}
  execute javascript  window.scrollTo(0,${HEIGHT})

input
  [Arguments]  ${LOCATOR}  ${TEXT}
  clear element text  ${LOCATOR}
  click element  ${LOCATOR}
  input text  ${LOCATOR}  ${TEXT}

javascript click
  [Arguments]  ${SELECTOR}
  wait until element is visible  ${SELECTOR}
  ${ele}  Get WebElement  ${SELECTOR}
  Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
