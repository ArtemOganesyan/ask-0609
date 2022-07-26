@testcases
Feature: Student - My Grades
  Background:
    Given SK open url "http://ask-stage.portnov.com"
    Then SK wait for 1 sec
    Then SK type "shelbykasiun@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then SK type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    Then SK click on element with xpath "//button[@type='submit']"
    Then SK wait for 2 sec
    Then SK click on element with xpath "//h5[contains(text(),'My Grades')]"

  @TC-646
  Scenario: Verify Assignments display in My Grades
    Then SK wait for element with xpath "//h4[contains(text(),'My Grades')]" to be present
    And SK wait for 2 sec

  @TC-647
  Scenario: Verify Details are available for graded quizzes
    Then SK wait for 1 sec
    Then SK click on element with xpath "//span[contains(text(), 'Details')]/.."
    And SK wait for 1 sec
    Then SK wait for element with xpath "//td[contains(text(),'Quiz:')]" to be present
    And SK wait for 1 sec
    Then SK click on element with xpath "//span[contains(text(), 'Close')]/.."
    And SK wait for element with xpath "//h4[contains(text(),'My Grades')]" to be present

  @TC-650
  Scenario: Verify data table displays
    Then element with xpath "//div[@class='container']/." should be displayed
