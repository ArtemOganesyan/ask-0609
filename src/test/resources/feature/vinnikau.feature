@feature
Feature: Second feature

  @scenario5
  Scenario: Fifth scenario
    Given I open url "https://amazon.com"

  @scenario6
  Scenario: Check the Assignment Date
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "vinnikau.2010@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "Test1" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 6 sec
    Then element with xpath "//div[@class='info']/p" should contain text "TEACHER"
    And I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//mat-select[@formcontrolname='groupFilter']"
    Then I wait for 2 sec
    And I click on element with xpath "//mat-option [@id='mat-option-11']"
    Then I wait for 2 sec
    And I click on element with xpath "//mat-selection-list[@formcontrolname='selectedUsers']"
    Then I wait for 2 sec
    Then I click on element with xpath "//mat-select[@formcontrolname='quizId']"
    And I click on element with xpath "//mat-option [@id='mat-option-55']"
    Then I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"
    Then element with xpath "//main[@class='ng-tns-c0-0']" should be displayed


