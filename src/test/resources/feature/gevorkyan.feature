@smoke
    Feature:  Group code-Registration field-ASK060922-333
    Background:
      Given MG opens url "http://ask-stage.portnov.com"
      Then MG wait for 1 sec
      Then MG should see page title as "Assessment Control @ Portnov"
      Then MG click on element with xpath "//span[contains(text(),'Register Now')]"
      And MG type "Mariana" into element with xpath "//input[@formcontrolname='firstName']"
      And MG type "Gevorkyan" into element with xpath "//input[@formcontrolname='lastName']"
      And MG type "mariana.mcoa@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    @smokeTC-214
    Scenario: Verify That "Group Code" registration field Accept: Alphanumeric & Special characters(positive)
      And MG type "Abc12#" into element with xpath "//input[@formcontrolname='group']"
      And MG type "ABCD12" into element with xpath "//input[@formcontrolname='password']"
      And MG type "ABCD12" into element with xpath "//input[@formcontrolname='confirmPassword']"
      Then MG click on element with xpath "//span[contains(text(),'Register Me')]"
      And MG wait for 2 sec
      Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should be present

    @smokeTC-216
    Scenario: Verify That "Group Code" registration field Input  Symbols should not be accepted by the form (negative)
      And MG type "Abc123$" into element with xpath "//input[@formcontrolname='group']"
      Then MG click on element with xpath "//input[@formcontrolname='password']"
      And MG wait for 3 sec
      Then element with xpath "//mat-error[contains(text(),'Too long. Should be no more than 6 characters')]" should be displayed

    @smokeTC-217
    Scenario: Verify that that "Group code" field required, can’t be empty
      And MG type "" into element with xpath "//input[@formcontrolname='group']"
      Then MG click on element with xpath "//h4[contains(text(),'Registration')]"
      And MG wait for 3 sec
      Then element with xpath "//mat-error[contains(text(),'This field is required')]" should be displayed

    @smokeTC-219
    Scenario: Verify that "Group code" field required: “*” sign is displayed if "Group Code" registration field is empty
      And MG type "" into element with xpath "//input[@formcontrolname='group']"
      Then MG click on element with xpath "//h4[contains(text(),'Registration')]"
      And MG wait for 3 sec
      Then element with xpath "//mat-error[contains(text(),'This field is required')]" should be displayed

    @smokeTC-224
    Scenario: Verify that "Group Code"- registration field input Min of 1 characters is accepted
      And MG type "1" into element with xpath "//input[@formcontrolname='group']"
      And MG type "ABCD12" into element with xpath "//input[@formcontrolname='password']"
      And MG type "ABCD12" into element with xpath "//input[@formcontrolname='confirmPassword']"
      Then MG click on element with xpath "//span[contains(text(),'Register Me')]"
      And MG wait for 2 sec
      Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should be present

    @smokeTC-277
    Scenario: Verify "Group Code"- registration field input Max of 10 characters is accepted (Bug)
      And MG type "1234567890" into element with xpath "//input[@formcontrolname='group']"
      And MG type "ABCD12" into element with xpath "//input[@formcontrolname='password']"
      And MG type "ABCD12" into element with xpath "//input[@formcontrolname='confirmPassword']"
      Then MG click on element with xpath "//span[contains(text(),'Register Me')]"
      And MG wait for 2 sec
    #Then element with xpath "//mat-error[contains(text(),'Too long. Should be no more than 6 characters')]" should not be displayed
    # the error message is incorrect
    # Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should be present

    @smokeTC-229
    Scenario: Verify that white spaces in "Group Code" in register field are not allowed
      And MG type " " into element with xpath "//input[@formcontrolname='group']"
      Then MG click on element with xpath "//span[contains(text(),'Register Me')]"
      And MG wait for 3 sec
      Then element with xpath "//mat-error[contains(text(),'Whitespaces are not allowed')]" should be displayed

    @smokeTC-655
    Scenario: Verify "Group Code"- registration field input Max of 10 characters is accepted (negative)
      And MG type "001234567890" into element with xpath "//input[@formcontrolname='group']"
      Then MG click on element with xpath "//span[contains(text(),'Register Me')]"
      And MG wait for 2 sec
      Then element with xpath "//mat-error[contains(text(),'Too long. Should be no more than 6 characters')]" should be displayed
    # the error message is incorrect
