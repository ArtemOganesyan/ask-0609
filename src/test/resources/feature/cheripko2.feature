@test_set_69
Feature: Multiple Choice Question - Options
  Background:
    Given NC open url "http://ask-stage.portnov.com"
    Then NC wait for 3 sec
    Then NC should see page title as "Assessment Control @ Portnov"
    Then NC type "virchi07+6@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='TEACHER']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//h5[text()='Quizzes']"
    And NC wait for 2 sec
    Then NC element with xpath "//h4[text()='List of Quizzes']/.." should be displayed
    And NC click on element with xpath "//span[text()='Create New Quiz']/.."
    And NC wait for 2 sec

  @test_set_69_1
  Scenario: : One choice selected for a question - positive
    Then NC type "NCTestAsk01" into element with xpath "//input[@formcontrolname='name']"
    When NC click on element with xpath "//mat-icon[text()='add_circle']/.."
    And NC wait for 2 sec
    Then NC click on element with xpath "//div[contains(text(),'Multiple-Choice')]"
    Then NC type "TestQuestion" into element with xpath "//textarea[@formcontrolname='question']"
    Then NC type "Test1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then NC type "Test2" into element with xpath "//textarea[@placeholder='Option 2*']"
    And NC click on element with xpath "//label[@for='mat-checkbox-2-input']"
    Then NC click on element with xpath "//button[@class='mat-raised-button mat-primary ng-star-inserted'][2]"
    And NC wait for 2 sec
    Then NC element with xpath "//h4[text()='List of Quizzes']/.." should be displayed

  @test_set_69_2
  Scenario: No choices selected for a question - negative
    Then NC type "NCTestAsk04" into element with xpath "//input[@formcontrolname='name']"
    When NC click on element with xpath "//mat-icon[text()='add_circle']/.."
    And NC wait for 2 sec
    Then NC click on element with xpath "//div[contains(text(),'Multiple-Choice')]"
    Then NC type "TestQuestion" into element with xpath "//textarea[@formcontrolname='question']"
    Then NC type "Test1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then NC type "Test2" into element with xpath "//textarea[@placeholder='Option 2*']"
    And NC click on element with xpath "//button[@class='mat-raised-button mat-primary ng-star-inserted'][2]"
    Then NC element with xpath "//div[@class='cdk-visually-hidden']" should be displayed

  @test_set_69_3
  Scenario: Selected 15 choices - positive
    Then NC type "NCTestAsk02" into element with xpath "//input[@formcontrolname='name']"
    When NC click on element with xpath "//mat-icon[text()='add_circle']/.."
    And NC wait for 2 sec
    Then NC click on element with xpath "//div[contains(text(),'Multiple-Choice')]"
    Then NC type "TestQuestion" into element with xpath "//textarea[@formcontrolname='question']"
    Then NC type "Test1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then NC type "Test2" into element with xpath "//textarea[@placeholder='Option 2*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test3" into element with xpath "//textarea[@placeholder='Option 3*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test4" into element with xpath "//textarea[@placeholder='Option 4*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test5" into element with xpath "//textarea[@placeholder='Option 5*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test6" into element with xpath "//textarea[@placeholder='Option 6*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test7" into element with xpath "//textarea[@placeholder='Option 7*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test8" into element with xpath "//textarea[@placeholder='Option 8*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test9" into element with xpath "//textarea[@placeholder='Option 9*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test10" into element with xpath "//textarea[@placeholder='Option 10*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test11" into element with xpath "//textarea[@placeholder='Option 11*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test12" into element with xpath "//textarea[@placeholder='Option 12*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test13" into element with xpath "//textarea[@placeholder='Option 13*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test14" into element with xpath "//textarea[@placeholder='Option 14*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test15" into element with xpath "//textarea[@placeholder='Option 15*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test16" into element with xpath "//textarea[@placeholder='Option 16*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test17" into element with xpath "//textarea[@placeholder='Option 17*']"
    And NC click on element with xpath "//label[@for='mat-checkbox-2-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-3-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-4-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-5-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-6-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-7-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-8-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-9-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-10-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-11-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-12-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-13-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-14-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-15-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-16-input']"
    Then NC click on element with xpath "//button[@class='mat-raised-button mat-primary ng-star-inserted'][2]"
    And NC wait for 2 sec
    Then NC element with xpath "//h4[text()='List of Quizzes']/.." should be displayed

#  @test_set_69_4           #(functionality has a bug-can not perform it)
#  Scenario: Selected > 15 choices - negative
#    Then I type "NCTestAsk02" into element with xpath "//input[@formcontrolname='name']"
#    When I click on element with xpath "//mat-icon[text()='add_circle']/.."
#    And I wait for 2 sec
#    Then I click on element with xpath "//div[contains(text(),'Multiple-Choice')]"
#    Then I type "TestQuestion" into element with xpath "//textarea[@formcontrolname='question']"
#    Then I type "Test1" into element with xpath "//textarea[@placeholder='Option 1*']"
#    Then I type "Test2" into element with xpath "//textarea[@placeholder='Option 2*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test3" into element with xpath "//textarea[@placeholder='Option 3*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test4" into element with xpath "//textarea[@placeholder='Option 4*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test5" into element with xpath "//textarea[@placeholder='Option 5*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test6" into element with xpath "//textarea[@placeholder='Option 6*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test7" into element with xpath "//textarea[@placeholder='Option 7*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test8" into element with xpath "//textarea[@placeholder='Option 8*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test9" into element with xpath "//textarea[@placeholder='Option 9*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test10" into element with xpath "//textarea[@placeholder='Option 10*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test11" into element with xpath "//textarea[@placeholder='Option 11*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test12" into element with xpath "//textarea[@placeholder='Option 12*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test13" into element with xpath "//textarea[@placeholder='Option 13*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test14" into element with xpath "//textarea[@placeholder='Option 14*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test15" into element with xpath "//textarea[@placeholder='Option 15*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test16" into element with xpath "//textarea[@placeholder='Option 16*']"
#    And I click on element with xpath "//*[contains(text(),'Add Option')]"
#    Then I type "Test17" into element with xpath "//textarea[@placeholder='Option 17*']"
#    And I click on element with xpath "//label[@for='mat-checkbox-2-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-3-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-4-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-5-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-6-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-7-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-8-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-9-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-10-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-11-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-12-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-13-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-14-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-15-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-16-input']"
#    And I click on element with xpath "//label[@for='mat-checkbox-17-input']"
#    Then I click on element with xpath "//button[@class='mat-raised-button mat-primary ng-star-inserted'][2]"
#    And I wait for 2 sec
#    Then element with xpath "//div[@class='cdk-visually-hidden']" should be present


  @test_set_69_5
  Scenario: Graded automatically
    Then NC type "NCTestAsk03" into element with xpath "//input[@formcontrolname='name']"
    When NC click on element with xpath "//mat-icon[text()='add_circle']/.."
    And NC wait for 2 sec
    Then NC click on element with xpath "//div[contains(text(),'Multiple-Choice')]"
    Then NC type "TestQuestion1" into element with xpath "//textarea[@formcontrolname='question']"
    Then NC type "Test1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then NC type "Test2" into element with xpath "//textarea[@placeholder='Option 2*']"
    And NC click on element with xpath "//*[contains(text(),'Add Option')]"
    Then NC type "Test3" into element with xpath "//textarea[@placeholder='Option 3*']"
    And NC click on element with xpath "//label[@for='mat-checkbox-2-input']"
    And NC click on element with xpath "//label[@for='mat-checkbox-3-input']"
    And NC click on element with xpath "//mat-icon[text()='add_circle']/.."
    And NC wait for 1 sec
    Then NC click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent ng-star-inserted']//div[contains(text(),'Multiple')]"
    And NC wait for 3 sec
    Then NC type "TestQuestion2" into element with xpath "(//mat-panel-title[contains(text(),'Q2')]/../../..//div[@class='right']//textarea)[1]"
    Then NC type "Test4" into element with xpath "(//mat-panel-title[contains(text(),'Q2')]/../../..//div[@class='right']//textarea)[2]"
    Then NC type "Test5" into element with xpath "(//mat-panel-title[contains(text(),'Q2')]/../../..//div[@class='right']//textarea)[3]"
    And NC click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//div[@class='right']//span[contains(text(), 'Add Option')]"
    Then NC type "Test6" into element with xpath "(//mat-panel-title[contains(text(),'Q2')]/../../..//div[@class='right']//textarea)[4]"
    And NC wait for 1 sec
    Then NC click on element with xpath "(//mat-panel-title[contains(text(),'Q2')]/../../..//div[@class='right']//mat-checkbox)[1]"
    Then NC click on element with xpath "(//mat-panel-title[contains(text(),'Q2')]/../../..//div[@class='right']//mat-checkbox)[2]"
    And NC wait for 2 sec
    Then NC click on element with xpath "//button[@class='mat-raised-button mat-primary ng-star-inserted'][2]"
    And NC wait for 2 sec
    And NC click on element with xpath "//h5[contains(text(),'Assignments')]/.."
    Then element with xpath "//h4[text()='List of Assignments']" should be displayed
    And NC wait for 1 sec
    And NC click on element with xpath "//span[contains(text(),'Create New Assignment')]/.."
    And NC wait for 1 sec
    Then element with xpath "//h4[contains(text(),'Give Assignment')]" should be displayed
    When NC click on element with xpath "//mat-select[@placeholder='Group Filter']"
    Then NC wait for 2 sec
    And NC click on element with xpath "//mat-option[@role='option']//span[text()='CNA72']"
    Then NC wait for 2 sec
    When NC click on element with xpath "//div[@class='mat-input-infix mat-form-field-infix']//span[contains(text(),'Select')]/.."
    Then NC wait for 2 sec
    Then NC click on element with xpath "//mat-option[@role='option']//span[@class='mat-option-text'][contains(text(),'NCTestAsk03')]"
    Then NC wait for 1 sec
    And NC click on element with xpath "//mat-pseudo-checkbox[@class='mat-pseudo-checkbox']"
    When NC click on element with xpath "//button[@class='mat-raised-button mat-primary']"
    And NC wait for 2 sec
    And element with xpath "//mat-accordion[@class='mat-accordion']" should be displayed
    And NC click on element with xpath "//h5[text()='Log Out']/.."
    Then element with xpath "//h1[text()='Confirmation']" should be displayed
    When NC click on element with xpath "//span[text()='Log Out']/.."
    And NC wait for 1 sec
    Then NC should see page title as "Assessment Control @ Portnov"
    Then NC type "virchi07+5@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NC type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    And NC click on element with xpath "//button[@type='submit']"
    Then NC wait for 1 sec
    Then NC element with xpath "//p[text()='STUDENT']" should be displayed
    Then NC wait for 3 sec
    And NC click on element with xpath "//h5[contains(text(),'Assignments')]/.."
    And NC wait for 1 sec
    Then element with xpath "//td[contains(text(),'NCTestAsk03')]/.." should be displayed
    Then NC wait for 2 sec
    And NC click on element with xpath "//button[@class='mat-raised-button mat-primary']"
    Then element with xpath "//h4[contains(text(),'NCTestAsk03')]/.." should be displayed
    And NC click on element with xpath "//span[contains(text(),'Test1')]/.."
    And NC click on element with xpath "//span[contains(text(),'Test2')]/.."
    And NC wait for 2 sec
    And NC click on element with xpath "//span[contains(text(),'Test4')]/.."
    And NC click on element with xpath "//span[contains(text(),'Test5')]/.."
    Then NC click on element with xpath "//span[contains(text(),'Submit My Answers')]/.."
    And NC wait for 1 sec
    And NC click on element with xpath "//span[text()='Ok']/../.."
    And NC wait for 1 sec
    Then NC click on element with xpath "//h5[contains(text(),'My Grades')]/.."
    Then element with xpath "//mat-card[@class='page mat-card']/.." should be displayed
    And NC wait for 1 sec
    And NC element with xpath "//td[text()='NCTestAsk03']/.." should contain text "Automatic"











