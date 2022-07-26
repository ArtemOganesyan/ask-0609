#@feature
#  Feature: Test feature
#
#    @scenario
#    Scenario: My scenario
#      Given VP opens url "www.google.com"

@testcases
Feature: Student – Settings – Full Name
  Background:
    Given VP open url "http://ask-stage.portnov.com/#/login"
    Then VP should see page title as "Assessment Control @ Portnov"

  @TC_108_1
  Scenario: POSITIVE – Verify that "Full Name" field accepts alphanumeric & special characters (PASS)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    Then VP clear element with xpath "//input[@formcontrolname='name']"
    And VP type "John Smith123!@#" into element with xpath "//input[@formcontrolname='name']"
    And VP click on element with xpath "//span[text()='Change']/."
    And VP wait for 1 sec
    Then element with xpath "//td[text()='John Smith123!@#']" should be present

  @TC_108_2
  Scenario: NEGATIVE – Verify that User cannot sign in with incorrect email (PASS)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9_error" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//simple-snack-bar[contains(text(), 'Authentication failed')]" should be present

  @TC_108_3
  Scenario: NEGATIVE – Verify that User cannot sign in with incorrect password (PASS)
    And VP type "rinki001_error@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//simple-snack-bar[contains(text(), 'Authentication failed')]" should be present

  @TC_108_4
  Scenario: NEGATIVE – Verify that error message appears when email field is left empty (PASS)
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    #<<< QUESTION 2 >>>
    Then element with xpath "//div/mat-error" should contain text "This field is required"

  @TC_108_5
  Scenario: NEGATIVE – Verify that error message appears when password field is left empty (PASS)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//div/mat-error" should contain text "This field is required"

  @TC_110
  Scenario: POSITIVE – Verify that "Full Name" field cannot be left empty (PASSED)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP wait for 2 sec
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP wait for 2 sec
    And element with xpath "//span[text()='Change']/.." should be disabled

  @TC_111
  Scenario: Verify that the “*” sign is displayed if "Full Name" field is left empty (PASSED)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP click on element with xpath "//span[text()='Change']/."
    And VP wait for 1 sec
    Then element with xpath "//input[@aria-invalid='true']" should be present

  @TC_112
  Scenario: Verify that the “This field is required” message is displayed if "Full Name" field is left empty (PASSED)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP click on element with xpath "//span[text()='Change']/."
    And VP wait for 1 sec
    Then element with xpath "//mat-error[text()='This field is required']" should be displayed

  @TC_114
  Scenario: BUG (1) – Verify that the "Full Name" field accepts the allowed input maximum of 256 characters (FAILED – Only 100 characters are accepted)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP wait for 2 sec
    And VP type 254 character(s) a single space and 1 character(s) into the field with xpath "//input[@formcontrolname='name']"
    And VP wait for 2 sec
    And VP click on element with xpath "//span[text()='Change']/."
    And VP wait for 2 sec
    Then element with xpath "//td[contains(text(),'Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa b')]" should be displayed

  @TC_115
  Scenario: BUG (!) – Verify that "Full Name" field input length of 257 characters is not accepted (FAILED – Only 100 characters are accepted, error message is incorrect)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP wait for 2 sec
    And VP type 255 character(s) a single space and 1 character(s) into the field with xpath "//input[@formcontrolname='name']"
    And VP wait for 2 sec
    And element with xpath "//span[text()='Change']/.." should be disabled
    And VP click on element with xpath "//span[text()='Change']/."
    And VP wait for 2 sec
    And element with xpath "//div/mat-error" should contain text "Too long. Should be no more than 256 characters"

  @TC_117
  Scenario: BUG (!) – Verify that "Full Name" field input contains a single space between two words (FAILED – input without space is accepted)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP type "JohnSmith123!@#" into element with xpath "//input[@formcontrolname='name']"
    And VP wait for 2 sec
    Then element with xpath "//span[text()='Change']/.." should be disabled
    #And element with xpath "//div/mat-error" should contain text "..."

  @TC_118
  Scenario: BUG (!) – Verify that "Full Name" field input length of 1 character is not accepted (FAILED – input of 1 character is accepted)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP type "1" into element with xpath "//input[@formcontrolname='name']"
    Then element with xpath "//span[text()='Change']/.." should be disabled
    #And element with xpath "//div/mat-error" should contain text "..."

  @TC_119
  Scenario: Verify that "Full Name" field accepts the allowed minimum of 2 characters excluding single breaking space (PASSED)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP type "1 1" into element with xpath "//input[@formcontrolname='name']"
    And VP click on element with xpath "//span[text()='Change']/."
    Then element with xpath "//td[contains(text(),'1 1')]" should be present

  @TC_120
  Scenario: BUG (!) – Verify that "Full Name" field input does not contain leading space (FAILED – leading space is allowed)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP type " John Smith" into element with xpath "//input[@formcontrolname='name']"
    Then element with xpath "//span[text()='Change']/.." should be disabled
    #And element with xpath "//div/mat-error" should contain text "..."

  @TC_121
  Scenario: BUG (!) – Verify that "Full Name" field input does not contain trailing space (FAILED – trailing space is allowed)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP type "John Smith " into element with xpath "//input[@formcontrolname='name']"
    Then element with xpath "//span[text()='Change']/.." should be disabled
    #And element with xpath "//div/mat-error" should contain text "..."

  @TC_122
  Scenario: BUG (!) – Verify that "Full Name" field does not contain more than one space between two words (FAILED – more than one space in between the words are allowed)
    And VP type "rinki001@jagomail.com" into element with xpath "//input[@ formcontrolname='email']"
    And VP type "FdsA!$9" into element with xpath "//input[@ formcontrolname='password']"
    Then VP click on element with xpath "//button[@type='submit']"
    And VP wait for 1 sec
    Then element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And VP click on element with xpath "//h5[contains(text(),'Settings')]"
    And VP click on element with xpath "//span[contains(text(),'Change Your Name')]/."
    And VP clear element with xpath "//input[@formcontrolname='name']"
    And VP type "John  Smith " into element with xpath "//input[@formcontrolname='name']"
    Then element with xpath "//span[text()='Change']/.." should be disabled
    #And element with xpath "//div/mat-error" should contain text "..."