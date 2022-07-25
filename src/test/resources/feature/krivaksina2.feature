@feature2
Feature: Grading - Quiz with textual question testing

  @test1
  Scenario:Verify that in folder "Submissions" the "Teacher" has access to the "student quiz page"
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 3 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    And element with xpath "//form[@class='ng-untouched ng-pristine ng-valid']" should be displayed

  @test2
  Scenario:Verify that in the "student quiz page" shows the quiz and student data
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then element with xpath "//div[@class='horizontal-group']" should contain text "Nadezhda Krivaksina"

  @test3
  Scenario:Verify that the answer to the quiz question is present.
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then element with xpath "//div[@class='answer ng-star-inserted']" should be displayed

  @test4
  Scenario:Verify that the "Teacher comment" field accepts letters, numbers, special characters, whitespaces
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then NK type "Hello Wold 12345 !@#$%" into element with xpath "//textarea[@id='mat-input-3']"
    Then NK click on element with xpath "//div[@class='horizontal-group']"

  @test5
  Scenario:Verify that the "Teacher comment" field accepts more than 1000 characters
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then NK type "lalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalallalalalallalallalallal alallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalal alalalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalalla!@#$%%&**()132131453243546576897079666532!!!@@##$%%^" into element with xpath "//textarea[@id='mat-input-3']"
    Then NK click on element with xpath "//div[@class='horizontal-group']"

  @test6
  Scenario:Verify that the "Teacher summary" field accepts letters, numbers, special characters, whitespaces
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then NK type "Hello World !@#$% 12345" into element with xpath "//textarea[@id='mat-input-2']"
    Then NK click on element with xpath "//div[@class='horizontal-group']"

  @test7
  Scenario:Verify that the "Teacher summary" field accepts more than 1000 characters.
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then NK type "lalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalallalalalallalallalallal alallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalal alalalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalallalalallalallalallalalallallalallalalallallalallallalalalalallalallalalallalalalalalalalalalalalalalalalallalalalalla!@#$%%&**()132131453243546576897079666532!!!@@##$%%^" into element with xpath "//textarea[@id='mat-input-2']"
    Then NK click on element with xpath "//div[@class='horizontal-group']"

  @test8
  Scenario:Verify that in the "Points From Teacher" field the "+" button works
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    And NK wait for 2 sec

  @test9
  Scenario:Verify that in the "Points From Teacher" field the "-" button works
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    Then NK click on element with xpath "//span[contains(text(), '-')]"
    And NK wait for 2 sec

  @test10
  Scenario:"Assessment failed" sign appears when "Actual points" is less than "Passing points"
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    And NK wait for 2 sec
    And element with xpath "//div[contains(text(),'ASSESSMENT FAILED')]" should be present

  @test11
  Scenario:"Assessment passed" sign appears when "Actual points" is greater than "Passing points"
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK click on element with xpath "//a[@href='/#/grade/2595?back=submissions/0']"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    Then NK click on element with xpath "//span[contains(text(), '+')]"
    And NK wait for 2 sec
    And element with xpath "//div[contains(text(),' ASSESSMENT PASSED')]" should be present

  @test12
  Scenario:In case "Student" PASTEs an answer (By mouse or by keyboard hot keys) red flag turns on
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then NK click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then  NK click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And NK wait for 1 sec
    Then  NK click on element with xpath "//span[contains(text(),'Test 1 06/12')]"
    And  NK wait for 1 sec
    And NK click on element with xpath "(//mat-pseudo-checkbox[@class='mat-pseudo-checkbox'])[95]"
    And NK wait for 3 sec
    Then  NK click on element with xpath "//span[contains(text(),'Give Assignment')]"
    Then NK wait for 5 sec
    Then  NK click on element with xpath "//h5[contains(text(),'Log Out')]"
    And NK wait for 4 sec
    Then  NK click on element with xpath "//span[contains(text(),'Log Out')]"
    And  NK wait for 3 sec
    And NK open url "http://ask-stage.portnov.com"
    Then NK wait for 5 sec
    Then NK type "dartybasco@ezybarber.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then  NK click on element with xpath "//h5[contains(text(),'My Assignments')]"
    And  NK wait for 2 sec
    Then NK click on element with xpath "(//*[contains(text(), 'Go To Assessment')])[1] "
    And  NK wait for 3 sec
    Then NK type "Los Angeles" into element with xpath "(//textarea[@formcontrolname='textAnswer'])[1]"
    And  NK click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And NK wait for 2 sec
    Then  NK click on element with xpath "//button[@aria-label='Close dialog']"
    Then NK wait for 5 sec
    Then  NK click on element with xpath "//h5[contains(text(),'Log Out')]"
    And NK wait for 4 sec
    Then  NK click on element with xpath "//span[contains(text(),'Log Out')]"
    And  NK wait for 3 sec
    And NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then NK wait for 3 sec
    Then NK click on the button of the last element of Submissions list
    And element with xpath "//form[@class='ng-untouched ng-pristine ng-valid']" should be displayed

  @test13
  Scenario:Auto-grade system grades automatically Quiz with textual question: Pending Review
    Given NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then NK click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And  NK wait for 3 sec
    Then NK click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And  NK wait for 2 sec
    Then NK type "Test 4" into element with xpath "//input[@formcontrolname='name']"
    And NK click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And  NK wait for 2 sec
    Then NK click on element with xpath "(//div[@class='mat-radio-label-content'])[1]"
    And NK wait for 2 sec
    And NK type "What is your name?" into element with xpath "//textarea[@formcontrolname='question']"
    And NK wait for 2 sec
    Then NK click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And NK wait for 2 sec
    And NK click on element with xpath "(//*[contains(text(), 'Single-Choice')])[2]"
    And  NK wait for 2 sec
    Then NK type "Which one is a functional testing type?" into element with xpath "(//textarea[@formcontrolname='question'])[2]"
    Then NK type "stress testing" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
    Then NK type "smoke testing" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
    And NK click on element with xpath "(//textarea[@formcontrolname='option'])[2]/../../../../..//mat-radio-button"
    Then  NK click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    Then  NK click on element with xpath "(//*[contains(text(), 'Multiple-Choice')])[3]"
    Then  NK type "What fields are part of a bug report?" into element with xpath "(//textarea[@formcontrolname='question'])[3]"
    Then NK type "Priority" into element with xpath "(//textarea[@formcontrolname='option'])[3]"
    And NK wait for 3 sec
    Then NK type "Precondition" into element with xpath "(//textarea[@formcontrolname='option'])[4]"
    And NK wait for 3 sec
    Then NK click on element with xpath "(//span[contains(text(),'Add Option')])[2]"
    Then NK type "Environment" into element with xpath "(//textarea[@formcontrolname='option'])[5]"
    And NK wait for 3 sec
    And NK click on element with xpath "(//textarea[@formcontrolname='option'])[5]/../../../../..//mat-checkbox"
    Then NK click on element with xpath "(//textarea[@formcontrolname='option'])[3]/../../../../..//mat-checkbox"
    And NK wait for 2 sec
    And NK click on element with xpath "//span[contains(text(),'Save')]"
    And NK wait for 5 sec
    Then NK click on element with xpath "//h5[contains(text(),'Assignments')]"
    And NK wait for 1 sec
    Then NK click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then  NK click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And NK wait for 1 sec
    Then  NK click on element with xpath "//span[contains(text(),'Test 4')]"
    And  NK wait for 1 sec
    Then NK click on element with xpath "(//mat-pseudo-checkbox[@class='mat-pseudo-checkbox'])[95]"
    And NK click on element with xpath "//span[contains(text(),'Give Assignment')]"
    Then NK wait for 5 sec
    Then  NK click on element with xpath "//h5[contains(text(),'Log Out')]"
    And NK wait for 4 sec
    Then  NK click on element with xpath "//span[contains(text(),'Log Out')]"
    And  NK wait for 3 sec
    And NK open url "http://ask-stage.portnov.com"
    Then NK wait for 5 sec
    Then NK type "dartybasco@ezybarber.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 1 sec
    Then  NK click on element with xpath "//h5[contains(text(),'My Assignments')]"
    And  NK wait for 2 sec
    Then  NK click on element with xpath "//h5[contains(text(),'My Assignments')]"
    Then  NK click on element with xpath "(//*[contains(text(), 'Go To Assessment')])[1]"
    Then NK type "Nadezhda" into element with xpath "//textarea[@formcontrolname='textAnswer']"
    Then NK click on element with xpath "//*[contains(text(),'smoke testing')]"
    Then NK click on element with xpath "//label[@for='mat-checkbox-1-input']"
    Then  NK click on element with xpath "//label[@for='mat-checkbox-3-input']"
    And NK click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And NK wait for 2 sec
    Then  NK click on element with xpath "//span[contains(text(),'Ok')]"
    And NK wait for 2 sec
    Then  NK click on element with xpath "//h5[contains(text(),'Log Out')]"
    And NK wait for 4 sec
    Then  NK click on element with xpath "//span[contains(text(),'Log Out')]"
    And  NK wait for 3 sec
    And NK open url "http://ask-stage.portnov.com"
    Then NK wait for 3 sec
    Then NK type "krivaksinanadezhda@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then NK type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And NK click on element with xpath "//button[@type='submit']"
    Then NK wait for 3 sec
    Then NK click on element with xpath "//h5[contains(text(),'Submissions')]"
    And  NK wait for 3 sec
    And the last element of Submissions list is present