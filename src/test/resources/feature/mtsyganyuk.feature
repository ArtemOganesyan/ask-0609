@Feature
Feature:mt
  Background:
    Given MT open url "http://ask-stage.portnov.com"
    Then MT wait for 1 sec
    Then MT type "mtsyganyuk+15@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then MT type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And MT click on element with xpath "//button[@type='submit']"
    Then element with xpath "//div[@class='staging-label']" should contain text "STAGING"
    Then MT wait for 1 sec
    Then MT click on element with xpath "//h5[contains(text(),'Management')]"
    Then MT click on element with xpath "//*[@href='/#/user-details/17821']"
    Then MT click on element with xpath "//span[@class='mat-button-wrapper']"

  @TC-560
  Scenario: User's Management - Change User's Name
    And MT wait for 1 sec
    And MT click on element with xpath "// *[@class='mat-icon material-icons'][contains(text(), 'edit')]"
    And MT clear element with xpath "//input[@formcontrolname='name']"
    Then MT type "1111" into element with xpath "//input[@formcontrolname='name']"
    Then MT click on element with xpath "//span[contains(text(),'Change')]"
    And MT wait for 1 sec

  @TC-54
  Scenario: Verify Full name field required, can’t be empty
    And MT wait for 1 sec
    And MT click on element with xpath "// *[@class='mat-icon material-icons'][contains(text(), 'edit')]"
    And MT wait for 1 sec
    And MTT clear element with xpath "//input[@formcontrolname='name']"
    Then MT click on element with xpath "//span[contains(text(),'Change')]"
    Then MT wait for element with xpath "//mat-error[contains(text(), 'required')]" to be present

  @TC-49
  Scenario: Verify Full name field Allowable characters: Alphanumeric & Sp. characters
    And MT wait for 1 sec
    And MT click on element with xpath "// *[@class='mat-icon material-icons'][contains(text(), 'edit')]"
    And MT clear element with xpath "//input[@formcontrolname='name']"
    Then MT type "Peter&2 Knyzev" into element with xpath "//input[@formcontrolname='name']"
    Then MT click on element with xpath "//span[contains(text(),'Change')]"
    And MT wait for 1 sec

  @TC-57
  Scenario: Verify Full name field are Max 256 characters including 1 space between two words
    And MT wait for 1 sec
    And MT click on element with xpath "// *[@class='mat-icon material-icons'][contains(text(), 'edit')]"
    And MT clear element with xpath "//input[@formcontrolname='name']"
    Then MT put 256 characters into the field with xpath"//input[@formcontrolname='name']"
    Then MT click on element with xpath "//span[contains(text(),'Change')]"
    And MT wait for 1 sec

  @TC-61
  Scenario: Verify Full name field are Min 2 characters plus 1 space between two words
    And MT wait for 1 sec
    And MT click on element with xpath "// *[@class='mat-icon material-icons'][contains(text(), 'edit')]"
    And MT clear element with xpath "//input[@formcontrolname='name']"
    Then MT type "M T" into element with xpath "//input[@formcontrolname='name']"
    Then MT click on element with xpath "//span[contains(text(),'Change')]"
    And MT wait for 1 sec

  @TC-62
  Scenario: Verify Full name field are trailing spaces not allowed
    And MT wait for 1 sec
    And MT click on element with xpath "// *[@class='mat-icon material-icons'][contains(text(), 'edit')]"
    And MT clear element with xpath "//input[@formcontrolname='name']"
    Then MT type "Peter Knyzev " into element with xpath "//input[@formcontrolname='name']"
    Then MT click on element with xpath "//span[contains(text(),'Change')]"
    And MT wait for 1 sec
    Then MT wait for element with xpath "//mat-error[contains(text(), 'only first and last name')]" to be present

  @TC-293
  Scenario: Verify Full name field are leading spaces not allowed
    And MT wait for 1 sec
    And MT click on element with xpath "// *[@class='mat-icon material-icons'][contains(text(), 'edit')]"
    And MT clear element with xpath "//input[@formcontrolname='name']"
    Then MT type " Peter Knyzev" into element with xpath "//input[@formcontrolname='name']"
    Then MT click on element with xpath "//span[contains(text(),'Change')]"
    And MT wait for 1 sec
    Then MT wait for element with xpath "//mat-error[contains(text(), 'only first and last name')]" to be present


