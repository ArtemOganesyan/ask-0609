@testcases
Feature: Registration - Password/Confirm password
  Background:
    Given SK open url "http://ask-stage.portnov.com"
    Then SK wait for 1 sec
    Then SK click on element with xpath "//span[contains(text(),'Register Now')]"
    Then SK type "Shelby" into element with xpath "//input[@formcontrolname='firstName']"
    Then SK type "Rabbit" into element with xpath "//input[@formcontrolname='lastName']"
    Then SK type "tester01@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then SK type "Abc123" into element with xpath "//input[@formcontrolname='group']"

  @TC-297
  Scenario: Verify Alphanumeric & Special characters are allowed
    Then SK type "123!@#Abc" into element with xpath "//input[@formcontrolname='password']"
    Then SK type "123!@#Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//h4[contains(text(), 'Registered')]" to be present

  @TC-638
  Scenario: Verify Password field is required - cannot be empty
    Then SK type "123!@#Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//mat-error[contains(text(), 'required')]" to be present
    And SK wait for element with xpath "//mat-error[contains(text(), 'should match')]" to be present

  @TC-639
  Scenario: Verify Confirm Password field is required - cannot be empty
    Then SK type "123!@#Abc" into element with xpath "//input[@formcontrolname='password']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//mat-error[contains(text(), 'required')]" to be present

  @TC-640
  Scenario: Verify Password contains 5 characters min
    Then SK put 5 characters into the field with xpath "//input[@formcontrolname='password']"
    Then SK put 5 characters into the field with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//h4[contains(text(), 'Registered')]" to be present

  @TC-641
  Scenario: Verify Password cannot contain less than 5 characters
    Then SK put 4 characters into the field with xpath "//input[@formcontrolname='password']"
    Then SK put 4 characters into the field with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//mat-error[contains(text(), 'Too short')]" to be present

  @TC-642
  Scenario: Verify Password contains 32 characters max
    Then SK put 32 characters into the field with xpath "//input[@formcontrolname='password']"
    Then SK put 32 characters into the field with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//h4[contains(text(), 'Registered')]" to be present

  @TC-643
  Scenario: Verify Password cannot contain more than 32 characters
    Then SK put 33 characters into the field with xpath "//input[@formcontrolname='password']"
    Then SK put 33 characters into the field with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//mat-error[contains(text(), 'Too long')]" to be present

  @TC-644
  Scenario: Verify Password cannot contain white space
    Then SK type "123 Abc" into element with xpath "//input[@formcontrolname='password']"
    Then SK type "123 Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//mat-error[contains(text(), 'Whitespaces')]" to be present

  @TC-301
  Scenario: Verify Password matches Confirm Password field
    Then SK type "123!@#Abc" into element with xpath "//input[@formcontrolname='password']"
    Then SK type "123!@#Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//h4[contains(text(), 'Registered')]" to be present

  @TC-645
  Scenario: Verify registration fails when Password and Confirm Password do not match
    Then SK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then SK type "12345Abcd" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then SK click on element with xpath "//button[@type='submit']"
    And SK wait for element with xpath "//mat-error[contains(text(), 'should match')]" to be present
