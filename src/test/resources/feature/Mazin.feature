@Mazin
  Feature: Submissions-Status
      Background:
      Given LM open url "http://ask-stage.portnov.com"
      Then LM wait for 3 sec
      Then LM type "lyudmilamazin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "123456ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then LM wait for 2 sec
      And LM click on element with xpath "//h5[contains(text(),'Quizzes')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And LM wait for 2 sec


    @Mazin-303
    Scenario:Verify Auto-Grated Passed Status-Teacher
      And LM type "Sky14" into element with xpath "//input[@id='mat-input-2']"
      And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And LM click on element with xpath "//label[@for='mat-radio-3-input']"
      And LM type "Is the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
      And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
      And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
      Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
      And LM wait for 2 sec
      Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
      Then LM click on element with xpath "//span[contains(text(),'Save')]"
      And LM wait for 2 sec
      Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
      And LM wait for 2 sec
      And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[@formcontrolname='quizId']"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Sky14')] "
      And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
      And LM wait for 5 sec
      Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
      And element with xpath "//span[contains(text(),'Sky14')]" should be present
      Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
      And LM click on element with xpath "//button[@class='mat-button mat-warn']"
      And LM wait for 2 sec
      Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
      Then LM wait for 2 sec
      Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
      Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
      And LM click on element with xpath "//*[text()[contains(.,'Yes')]]"
      And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
      Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
      And LM click on element with xpath "//button[@class='mat-button mat-warn']"
      And LM wait for 2 sec
      Then LM type "lyudmilamazin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "123456ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then LM wait for 2 sec
      And LM click on element with xpath "//h5[contains(text(),'Submissions')]"
      And LM click on element with xpath "//div[contains(text(),'Automatically Graded')]"
      Then element with xpath "//tbody/tr[48]/td[3]/../../..//tbody/tr[48]/td[5]/span[1]" should be present



    @Mazin-304
    Scenario: Verify Auto-Grated Failed Status-Teacher
      And LM type "Sky14" into element with xpath "//input[@id='mat-input-2']"
      And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And LM click on element with xpath "//label[@for='mat-radio-3-input']"
      And LM type "Is the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
      And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
      And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
      Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
      And LM wait for 2 sec
      Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
      Then LM click on element with xpath "//span[contains(text(),'Save')]"
      And LM wait for 2 sec
      Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
      And LM wait for 2 sec
      And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[@formcontrolname='quizId']"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Sky14')] "
      And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
      And LM wait for 2 sec
      Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
      And element with xpath "//span[contains(text(),'Sky14')]" should be present
      Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
      And LM click on element with xpath "//button[@class='mat-button mat-warn']"
      And LM wait for 2 sec
      Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
      Then LM wait for 2 sec
      Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
      Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
      And LM click on element with xpath "//*[text()[contains(.,'No')]]"
      And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
      Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
      And LM click on element with xpath "//button[@class='mat-button mat-warn']"
      And LM wait for 2 sec
      Then LM type "lyudmilamazin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "123456ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then LM wait for 2 sec
      And LM click on element with xpath "//h5[contains(text(),'Submissions')]"
      And LM click on element with xpath "//div[contains(text(),'Automatically Graded')]"
      Then element with xpath "//tbody/tr[56]/td[3]/../../..//tbody/tr[56]/td[5]/span[1]" should be present




    @Mazin-305
    Scenario:Verify Pending Status-Student
      And LM type "Sky15" into element with xpath "//input[@id='mat-input-2']"
      And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And LM click on element with xpath "//label[@for='mat-radio-3-input']"
      And LM type "Is the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
      And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
      And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
      Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
      And LM wait for 2 sec
      Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
      Then LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And LM wait for 2 sec
      Then LM click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//*[text()[contains(.,'Textual')]]"
      And LM wait for 2 sec
      And LM type "What is Milky Way?" into element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@formcontrolname='question']"
      Then LM click on element with xpath "//span[contains(text(),'Save')]"
      And LM wait for 2 sec
      Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
      And LM wait for 2 sec
      And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[@formcontrolname='quizId']"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Sky15')] "
      And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
      And LM wait for 5 sec
      Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
      And element with xpath "//span[contains(text(),'Sky15')]" should be present
      Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
      And LM click on element with xpath "//button[@class='mat-button mat-warn']"
      And LM wait for 2 sec
      Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
      Then LM wait for 2 sec
      Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
      Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
      And LM click on element with xpath "//*[text()[contains(.,'Yes')]]"
      And LM wait for 2 sec
      And LM type "Galaxy" into element with xpath "//h5[contains(text(),'Question 2 / 2')]/../../..//textarea[@formcontrolname='textAnswer']"
      And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
      Then LM click on element with xpath "//h5[contains(text(),'My Grades')]"
      And element with xpath "//tbody/tr[36]/td[4]/span[1]" should be present

  @Mazin-306
  Scenario: Verify For Grade Status-Teacher
    And LM type "Sky15" into element with xpath "//input[@id='mat-input-2']"
    And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And LM click on element with xpath "//label[@for='mat-radio-3-input']"
    And LM type "Is the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
    And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
    And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
    Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
    And LM wait for 2 sec
    Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
    Then LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//*[text()[contains(.,'Textual')]]"
    And LM wait for 2 sec
    And LM type "What is Milky Way?" into element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@formcontrolname='question']"
    Then LM click on element with xpath "//span[contains(text(),'Save')]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
    And LM wait for 2 sec
    And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[@formcontrolname='quizId']"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Sky15')] "
    And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
    And LM wait for 5 sec
    Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And element with xpath "//span[contains(text(),'Sky15')]" should be present
    Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
    And LM click on element with xpath "//button[@class='mat-button mat-warn']"
    And LM wait for 2 sec
    Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
    And LM click on element with xpath "//button[@type='submit']"
    Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then LM wait for 2 sec
    Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
    Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
    And LM click on element with xpath "//*[text()[contains(.,'Yes')]]"
    And LM wait for 2 sec
    And LM type "Galaxy" into element with xpath "//h5[contains(text(),'Question 2 / 2')]/../../..//textarea[@formcontrolname='textAnswer']"
    And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
    Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
    And LM click on element with xpath "//button[@class='mat-button mat-warn']"
    And LM wait for 2 sec
    Then LM type "lyudmilamazin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then LM type "123456ABC" into element with xpath "//input[@formcontrolname='password']"
    And LM click on element with xpath "//button[@type='submit']"
    Then LM wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then LM wait for 2 sec
    And LM click on element with xpath "//h5[contains(text(),'Submissions')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//div[contains(text(),'For Grade')]"
    Then element with xpath "//tbody/tr[42]/td[4]/../../..//td[contains(text(),'07/24/22 19:08')]" should be present
    
  @Mazin-173
  Scenario: Verify Auto-Grated Passed Status-Student
    And LM type "Sky14" into element with xpath "//input[@id='mat-input-2']"
    And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And LM click on element with xpath "//label[@for='mat-radio-3-input']"
    And LM type "Is the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
    And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
    And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
    Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
    And LM wait for 2 sec
    Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
    Then LM click on element with xpath "//span[contains(text(),'Save')]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
    And LM wait for 2 sec
    And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[@formcontrolname='quizId']"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Sky14')] "
    And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
    And LM wait for 5 sec
    Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And element with xpath "//span[contains(text(),'Sky14')]" should be present
    Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
    And LM click on element with xpath "//button[@class='mat-button mat-warn']"
    And LM wait for 2 sec
    Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
    And LM click on element with xpath "//button[@type='submit']"
    Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then LM wait for 2 sec
    Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
    Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
    And LM click on element with xpath "//*[text()[contains(.,'Yes')]]"
    And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
    Then LM click on element with xpath "//h5[contains(text(),'My Grades')]"
    And element with xpath "//tbody/tr[4]/td[1]/../../..//tbody/tr[33]/td[4]/span[1]" should be present


  @Mazin-247
  Scenario: Verify Auto-Grated Failed Status-Student
    And LM type "Sky14" into element with xpath "//input[@id='mat-input-2']"
    And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And LM click on element with xpath "//label[@for='mat-radio-3-input']"
    And LM type "Is the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
    And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
    And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
    Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
    And LM wait for 2 sec
    Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
    Then LM click on element with xpath "//span[contains(text(),'Save')]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
    And LM wait for 2 sec
    And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[@formcontrolname='quizId']"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Sky14')] "
    And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
    And LM wait for 5 sec
    Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And element with xpath "//span[contains(text(),'Sky14')]" should be present
    Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
    And LM click on element with xpath "//button[@class='mat-button mat-warn']"
    And LM wait for 2 sec
    Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
    And LM click on element with xpath "//button[@type='submit']"
    Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then LM wait for 2 sec
    Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
    Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
    And LM click on element with xpath "//*[text()[contains(.,'No')]]"
    And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
    Then LM click on element with xpath "//h5[contains(text(),'My Grades')]"
    And element with xpath "//tbody/tr[35]/td[3]/../../..//tbody/tr[35]/td[4]/span[1]" should be present

  @Mazin-309
    Scenario: Verify Submitted At-Student
      And LM type "Sky14" into element with xpath "//input[@id='mat-input-2']"
      And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And LM click on element with xpath "//label[@for='mat-radio-3-input']"
      And LM type "Is the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
      And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
      And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
      Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
      And LM wait for 2 sec
      Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
      Then LM click on element with xpath "//span[contains(text(),'Save')]"
      And LM wait for 2 sec
      Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
      And LM wait for 2 sec
      And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[@formcontrolname='quizId']"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Sky14')] "
      And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
      And LM wait for 5 sec
      Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
      And element with xpath "//span[contains(text(),'Sky14')]" should be present
      Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
      And LM click on element with xpath "//button[@class='mat-button mat-warn']"
      And LM wait for 2 sec
      Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
      Then LM wait for 2 sec
      Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
      Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
      And LM click on element with xpath "//*[text()[contains(.,'Yes')]]"
      And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
      Then LM click on element with xpath "//h5[contains(text(),'My Grades')]"
      And element with xpath "//tbody/tr[38]/td[3]" should be present

  @Mazin-322
    Scenario: Verify Submitted At-Teacher-For Grade
      And LM type "Sky15" into element with xpath "//input[@id='mat-input-2']"
      And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And LM click on element with xpath "//label[@for='mat-radio-3-input']"
      And LM type "Is the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
      And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
      And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
      Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
      And LM wait for 2 sec
      Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
      Then LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And LM wait for 2 sec
      Then LM click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//*[text()[contains(.,'Textual')]]"
      And LM wait for 2 sec
      And LM type "What is Milky Way?" into element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@formcontrolname='question']"
      Then LM click on element with xpath "//span[contains(text(),'Save')]"
      And LM wait for 2 sec
      Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
      And LM wait for 2 sec
      And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[@formcontrolname='quizId']"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Sky15')] "
      And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
      And LM wait for 5 sec
      Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
      And element with xpath "//span[contains(text(),'Sky15')]" should be present
      Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
      And LM click on element with xpath "//button[@class='mat-button mat-warn']"
      And LM wait for 2 sec
      Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
      Then LM wait for 2 sec
      Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
      Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
      And LM click on element with xpath "//*[text()[contains(.,'Yes')]]"
      And LM wait for 2 sec
      And LM type "Galaxy" into element with xpath "//h5[contains(text(),'Question 2 / 2')]/../../..//textarea[@formcontrolname='textAnswer']"
      And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
      And LM wait for 2 sec
      And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
      Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
      And LM click on element with xpath "//button[@class='mat-button mat-warn']"
      And LM wait for 2 sec
      Then LM type "lyudmilamazin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then LM type "123456ABC" into element with xpath "//input[@formcontrolname='password']"
      And LM click on element with xpath "//button[@type='submit']"
      Then LM wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      Then LM wait for 2 sec
      And LM click on element with xpath "//h5[contains(text(),'Submissions')]"
      And LM click on element with xpath "//div[contains(text(),'Automatically Graded')]"
      Then element with xpath "//tbody/tr[41]/td[3]/../../..//td[contains(text(),'Sky15')]/../../..//td[contains(text(),'07/23/22 13:39')]" should be present
#    Review the last query

  @Mazin-326
    Scenario: Verify Submitted At-Teacher-Auto-Graded
    And LM type "Sky14" into element with xpath "//input[@id='mat-input-2']"
    And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And LM click on element with xpath "//label[@for='mat-radio-3-input']"
    And LM type "LMs the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
    And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
    And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
    Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
    And LM wait for 2 sec
    Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
    Then LM click on element with xpath "//span[contains(text(),'Save')]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
    And LM wait for 2 sec
    And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[@formcontrolname='quizId']"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Sky14')] "
    And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And element with xpath "//span[contains(text(),'Sky14')]" should be present
    Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
    And LM click on element with xpath "//button[@class='mat-button mat-warn']"
    And LM wait for 2 sec
    Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
    And LM click on element with xpath "//button[@type='submit']"
    Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then LM wait for 2 sec
    Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
    Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
    And LM click on element with xpath "//*[text()[contains(.,'Yes')]]"
    And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
    Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
    And LM click on element with xpath "//button[@class='mat-button mat-warn']"
    And LM wait for 2 sec
    Then LM type "lyudmilamazin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then LM type "123456ABC" into element with xpath "//input[@formcontrolname='password']"
    And LM click on element with xpath "//button[@type='submit']"
    Then LM wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then LM wait for 2 sec
    And LM click on element with xpath "//h5[contains(text(),'Submissions')]"
    And LM click on element with xpath "//div[contains(text(),'Automatically Graded')]"
    Then element with xpath "//td[contains(text(),'Sky14')]/../../..//td[contains(text(),'07/24/22 13:52')]" should be present

  @Mazin-331
    Scenario: Verify Submissions-Submitted At-Teacher-Reviewed
    And LM type "Sky15" into element with xpath "//input[@id='mat-input-2']"
    And LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And LM click on element with xpath "//label[@for='mat-radio-3-input']"
    And LM type "LMs the Sky blue?" into element with xpath "//textarea[@id='mat-input-3']"
    And LM type "Yes" into element with xpath "//textarea[@id='mat-input-4']"
    And LM type "No" into element with xpath "//textarea[@id='mat-input-5']"
    Then LM click on element with xpath "//label[@for='mat-radio-6-input']"
    And LM wait for 2 sec
    Then LM move slider to the "left" at "//div[contains(text(), 'Points per question')]/..//mat-slider" to the 1 number of steps
    Then LM click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//*[text()[contains(.,'Textual')]]"
    And LM wait for 2 sec
    And LM type "What is Milky Way?" into element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@formcontrolname='question']"
    Then LM click on element with xpath "//span[contains(text(),'Save')]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//h5[contains(text(),'Assignments')]"
    And LM wait for 2 sec
    And  LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[@formcontrolname='quizId']"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Sky15')] "
    And LM click on element with xpath "//*[text()[contains(.,'Luciana Maria')]]"
    And LM wait for 5 sec
    Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
    And element with xpath "//span[contains(text(),'Sky15')]" should be present
    Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
    And LM click on element with xpath "//button[@class='mat-button mat-warn']"
    And LM wait for 2 sec
    Then LM type "lyudmilamazin+7@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then LM type "12345ABC" into element with xpath "//input[@formcontrolname='password']"
    And LM click on element with xpath "//button[@type='submit']"
    Then LM wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then LM wait for 2 sec
    Then LM click on element with xpath "//span[contains(text(),'Go To My Assignments')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//span[contains(text(),'Go To Assessment')]"
    Then LM wait for element with xpath "//h3[contains(text(),'Is the Sky blue?')]" to be present
    And LM click on element with xpath "//*[text()[contains(.,'Yes')]]"
    And LM wait for 2 sec
    And LM type "Galaxy" into element with xpath "//h5[contains(text(),'Question 2 / 2')]/../../..//textarea[@formcontrolname='textAnswer']"
    And LM click on element with xpath "//span[contains(text(),'Submit My Answers')]"
    And LM wait for 2 sec
    And LM click on element with xpath "//*[text()[contains(.,'Ok')]]"
    Then LM click on element with xpath "//h5[contains(text(),'Log Out')]"
    And LM click on element with xpath "//button[@class='mat-button mat-warn']"
    And LM wait for 2 sec
    Then LM type "lyudmilamazin@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then LM type "123456ABC" into element with xpath "//input[@formcontrolname='password']"
    And LM click on element with xpath "//button[@type='submit']"
    Then LM wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then LM wait for 2 sec
    And LM click on element with xpath "//h5[contains(text(),'Submissions')]"
    And LM click on element with xpath "//tbody/tr[29]/td[4]/../../..//tbody/tr[29]/td[6]/a[1]/button[1]"
    And LM click on element with xpath "//span[contains(text(),'Save')]"
    And LM wait for 2 sec
    Then LM click on element with xpath "//div[contains(text(),'Reviewed')]"
    And element with xpath "//td[contains(text(),'07/24/22 13:36')]" should be present
  
  

  
  
#    @Mazin1
#    Scenario: Assign quiz for student, Login with Teacher credentials
#      Then LM should see page title as "Assessment Control @ Portnov"
#      Then  LM type "mariana.mcoa+10@gmail.com" into element with xpath "//input[@formcontrolname='email']"
#      Then  LM type "Koshka123" into element with xpath "//input[@formcontrolname='password']"
#      And LM click on element with xpath "//button[@type='submit']"
#      Then LM wait for 3 sec
#      Then element with xpath "//div[@class='info']/p" should contain text "TEACHER"
#      And LM click on element with xpath "//h5[contains(text(),'Assignments')]"
#      And LM click on element with xpath "//span[contains(text(),'Create New Assignment')]"
#      Then LM click on element with xpath "//mat-select[@formcontrolname='groupFilter']"
#      Then LM wait for 2 sec
#      And LM click on element with xpath "//mat-option [@id='mat-option-11']"
#      Then LM wait for 2 sec
#      And LM click on element with xpath "//mat-selection-list[@formcontrolname='selectedUsers']"
#      Then LM wait for 5 sec
#      Then LM click on element with xpath "//mat-select[@formcontrolname='quizLMd']"
#      And LM click on element with xpath "//mat-option [@id='mat-option-55']"
#      Then LM wait for 5 sec
#      Then LM click on element with xpath "//span[contains(text(),'Give Assignment')]"
#      Then element with xpath "//main[@class='ng-tns-c0-0']" should be displayed



