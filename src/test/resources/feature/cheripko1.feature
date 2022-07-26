@test_set_68
Feature: Teacher_Settings_Password
  Background:
    Given NC open url "http://ask-stage.portnov.com"
    Then NC wait for 3 sec
    Then NC should see page title as "Assessment Control @ Portnov"
    Then NC type "virchi07+6@gmail.com" into element with xpath "//input[@formcontrolname='email']"


  @test_set_68_1
  Scenario: Allowable characters:Alphanumeric &Special characters - positive
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Zyx987!@#" into element with xpath "//input[@formcontrolname='newPassword']"
    Then NC type "Zyx987!@#" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And NC click on element with xpath "//span[text()='Change']/.."
    Then NC element with xpath "//mat-card[@class='mat-card']/../..//span[contains(text(),'Password')]" should be displayed
    And NC wait for 3 sec


  @test_set_68_2
  Scenario: New password field is requires-can not be empty - negative
    Then NC type "Zyx987!@#" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Zyx987!@#" into element with xpath "//input[@formcontrolname='password']"
    And NC check the page
    Then NC wait for 1 sec
    And element with xpath "//span[text()='Change']/.." should be disabled
    And NC wait for 1 sec
    Then NC click on element with xpath "//input[@formcontrolname='newPassword']"
    And NC click on element with xpath "//input[@formcontrolname='confirmPassword']"
    Then NC element with xpath "//*[text()='This field is required']" should contain text "This field is required"

  @test_set_68_3
  Scenario: New password - Minimum 5 characters - positive
    Then NC type "Zyx987!@#" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Zyx987!@#" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Zyx98" into element with xpath "//input[@formcontrolname='newPassword']"
    Then NC type "Zyx98" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And NC click on element with xpath "//span[text()='Change']/.."
    Then NC element with xpath "//mat-card[@class='mat-card']/../..//span[contains(text(),'Password')]" should be displayed
    And NC wait for 3 sec

  @test_set_68_4
  Scenario: New password < 5 characters - negative
    Then NC type "Zyx98" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 3 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Zyx98" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Zyx9" into element with xpath "//input[@formcontrolname='newPassword']"
    And NC wait for 1 sec
    And NC check the page
    Then NC wait for 1 sec
    And element with xpath "//span[text()='Change']/.." should be disabled
    And NC click on element with xpath "//input[@formcontrolname='confirmPassword']"
    Then NC element with xpath "//mat-error[contains(text(),'Too short')]" should contain text "Too short. Should be at least 5 characters"

  @test_set_68_5
  Scenario: New password - 20 characters - positive
    Then NC type "Zyx98" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Zyx98" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Abcdefghijk123456789" into element with xpath "//input[@formcontrolname='newPassword']"
    Then NC type "Abcdefghijk123456789" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And NC click on element with xpath "//span[text()='Change']/.."
    Then NC element with xpath "//mat-card[@class='mat-card']/../..//span[contains(text(),'Password')]" should be displayed
    And NC wait for 3 sec


  @test_set_68_6
  Scenario: New password - 32 characters - positive
    Then NC type "Abcdefghijk123456789" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Abcdefghijk123456789" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Abcdefghijklmnopqrstuvwxyz123456" into element with xpath "//input[@formcontrolname='newPassword']"
    Then NC type "Abcdefghijklmnopqrstuvwxyz123456" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And NC click on element with xpath "//span[text()='Change']/.."
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC wait for 3 sec

  @test_set_68_7
  Scenario: New password >32 characters - negative
    Then NC type "Abcdefghijklmnopqrstuvwxyz123456" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Abcdefghijklmnopqrstuvwxyz123456" into element with xpath "//input[@formcontrolname='newPassword']"
    Then NC type "Abcdefghijklmnopqrstuvwxyz1234567" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And NC check the page
    Then NC wait for 1 sec
    And element with xpath "//span[text()='Change']/.." should be disabled
    When NC click on element with xpath "//input[@formcontrolname='newPassword']"
    Then NC element with xpath "//mat-error[contains(text(),'Too long')]" should contain text "Too long. Should be no more than 32 characters"


  @test_set_68_8
  Scenario: White spaces are not allowed - negative
    Then NC type "Abcdefghijklmnopqrstuvwxyz123456" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Abcdefghijklmnopqrstuvwxyz123456" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Abc 123" into element with xpath "//input[@formcontrolname='newPassword']"
    Then NC type "Abc 123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then NC element with xpath "//mat-error[contains(text(),'Whitespaces')]" should contain text "Whitespaces are not allowed"
    And NC check the page
    Then NC wait for 1 sec
    And element with xpath "//span[text()='Change']/.." should be disabled

  @test_set_68_9
  Scenario: Password must match Confirm Password - positive
    Then NC type "Abcdefghijklmnopqrstuvwxyz123456" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Abcdefghijklmnopqrstuvwxyz123456" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='newPassword']"
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And NC click on element with xpath "//span[text()='Change']/.."
    Then NC element with xpath "//mat-card[@class='mat-card']/../..//span[contains(text(),'Password')]" should be displayed
    And NC wait for 3 sec



  @test_set_68_10
  Scenario: Password must match Confirm Password - negative
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    And NC wait for 3 sec
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//*[text()='Settings']/.."
    Then NC wait for 2 sec
    Then NC element with xpath "//mat-card[@class='mat-card']" should be displayed
    And NC click on element with xpath "//span[text()='Change Your Password']/.."
    And NC wait for 2 sec
    Then NC element with xpath "//div[@class='cdk-overlay-pane']" should be displayed
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    Then NC type "Abcd123!@#" into element with xpath "//input[@formcontrolname='newPassword']"
    Then NC type "#@!321cbA" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And NC check the page
    Then NC wait for 1 sec
    And element with xpath "//span[text()='Change']/.." should be disabled
    When NC click on element with xpath "//input[@formcontrolname='newPassword']"
    Then NC element with xpath "//mat-error[contains(text(),'Entered passwords should match')]/.." should be displayed



