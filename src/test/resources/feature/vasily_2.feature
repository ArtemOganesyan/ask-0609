@testcases
Feature: Registration Page – First Name
  Background:
    Given VP open url "http://ask-stage.portnov.com/#/login"
    Then VP should see page title as "Assessment Control @ Portnov"
    And VP click on element with xpath "//span[contains(text(),'Register Now')]"

  @TC_44
  Scenario: Verify that "First Name" accepts alphanumeric & special characters
    And VP type "John123!@#" into element with xpath "//input[@formcontrolname='firstName']"
    And VP wait for 2 sec
    And VP type "Smith123!@#" into element with xpath "//input[@formcontrolname='lastName']"
    And VP type "test123@abc.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "TEST" into element with xpath "//input[@formcontrolname='group']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then VP click on element with xpath "//button[@type='submit']"

  @TC_99
  Scenario: Verify that "First Name" field cannot be empty
    And VP type "Smith123!@#" into element with xpath "//input[@formcontrolname='lastName']"
    And VP type "test123@abc.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "TEST" into element with xpath "//input[@formcontrolname='group']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//mat-error[text()='This field is required']" should be displayed

  @TC_100
  Scenario: Verify that the “*” sign is displayed if "First Name" field is left empty
    And VP type "Smith123!@#" into element with xpath "//input[@formcontrolname='lastName']"
    And VP type "test123@abc.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "TEST" into element with xpath "//input[@formcontrolname='group']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//input[@aria-invalid='true']" should be present

  @TC_101
  Scenario: Verify that the “This field is required” message is displayed if "First Name" field is left empty
    And VP type "Smith123!@#" into element with xpath "//input[@formcontrolname='lastName']"
    And VP type "test123@abc.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "TEST" into element with xpath "//input[@formcontrolname='group']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//input[@aria-invalid='true']" should be present

  @TC_103
  Scenario: Verify that the maximum "First Name" field input length of 254 characters is accepted
    And VP type 254 character(s) into element with xpath "//input[@formcontrolname='firstName']";
    And VP wait for 2 sec
    And VP type "Smith123!@#" into element with xpath "//input[@formcontrolname='lastName']"
    And VP type "test123@abc.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "TEST" into element with xpath "//input[@formcontrolname='group']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then VP click on element with xpath "//button[@type='submit']"

  @TC_105
  Scenario: Verify that the maximum "First Name" field input length of 254 characters is accepted
    And VP type 1 character(s) into element with xpath "//input[@formcontrolname='firstName']";
    And VP wait for 2 sec
    And VP type "Smith123!@#" into element with xpath "//input[@formcontrolname='lastName']"
    And VP type "test123@abc.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "TEST" into element with xpath "//input[@formcontrolname='group']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then VP click on element with xpath "//button[@type='submit']"

  @TC_106
  Scenario: Verify that the maximum "First Name" field input length of 254 characters is accepted
    And VP type 2 character(s) into element with xpath "//input[@formcontrolname='firstName']";
    And VP wait for 2 sec
    And VP type "Smith123!@#" into element with xpath "//input[@formcontrolname='lastName']"
    And VP type "test123@abc.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "TEST" into element with xpath "//input[@formcontrolname='group']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then VP click on element with xpath "//button[@type='submit']"

  @TC_107
  Scenario: Verify that the maximum "First Name" field input length of 254 characters is accepted
    And VP type 3 character(s) a single space and 3 character(s) into the field with xpath "//input[@formcontrolname='firstName']"
    And VP wait for 2 sec
    And VP type "Smith123!@#" into element with xpath "//input[@formcontrolname='lastName']"
    And VP type "test123@abc.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "TEST" into element with xpath "//input[@formcontrolname='group']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    And VP type "12345abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then VP click on element with xpath "//button[@type='submit']"