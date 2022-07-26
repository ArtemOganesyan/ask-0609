@feature
Feature: Submission testing

  @tets1
  Scenario:"Submissions" the selected tab is highlighted.
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//div[contains(text(),'Reviewed')]"
    Then element with xpath "//mat-ink-bar[@class='mat-ink-bar']" should be displayed


  @test2
  Scenario: "Submissions" folder in the "Reviewed" tab information is displayed.
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//div[contains(text(),'Reviewed')]"
    Then element with xpath "//mat-tab-body[@id='mat-tab-content-0-2']" should be present

  @test3
  Scenario: "Sort by group" feature is working
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//div[contains(text(),'Reviewed')]"
    And NK wait for 2 sec
    Then NK click on element with xpath "//span[@class='group-label']"
    Then element with xpath "//div[@class='mat-menu-content ng-trigger ng-trigger-fadeInItems']" should be present
    And NK wait for 3 sec
    Then NK click on element with xpath "//span[contains(text(), 'ASK')]"
    And element with xpath "//mat-tab-body/div[1]/table[1]" should be present

  @test4
  Scenario: after click on the "Review" button "student quiz page" is displayed
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    And NK wait for 1 sec
    Then NK click on element with xpath "//div[contains(text(),'Reviewed')]"
    And NK wait for 2 sec
    Then  NK click on element with xpath "(//span[@class='mat-button-wrapper'])[1]"
    And element with xpath "//form[@class='ng-untouched ng-pristine ng-valid']" should be present

  @test5
  Scenario: Verify that " Submitted At" column is sorted by date
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    And NK wait for 1 sec
    Then NK click on element with xpath "//div[contains(text(),'Reviewed')]"
    And NK wait for 2 sec
    And element with xpath "//th[contains(text(),'Submitted At')]" should be enabled

  @test6
  Scenario: Verify that the status sign "passed" is green color
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    And NK wait for 1 sec
    Then NK click on element with xpath "//div[contains(text(),'Reviewed')]"
    And elements with xpath "//span[@class='passed']" should be present

  @test7
  Scenario: Verify that the status sign "failed" is red color
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    And NK wait for 1 sec
    Then NK click on element with xpath "//div[contains(text(),'Reviewed')]"
    And elements with xpath "//span[@class='failed']" should be present
