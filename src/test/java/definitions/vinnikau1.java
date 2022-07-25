package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class vinnikau1 {
    @Given("I open url")
    public void iOpenUrl() {
    }

    @Then("I type {string}")
    public void iType(String arg0) {
        
    }

    @Then("I type {string} into element with xpath {string}")
    public void iTypeIntoElementWithXpath(String arg0, String arg1) {
        
    }

    @And("I click on element with xpath {string}")
    public void iClickOnElementWithXpath(String arg0) {
        
    }

    @Then("I wait for {int} sec")
    public void iWaitForSec(int arg0) {
    }

    @Then("element with xpath {string} should contain text {string}")
    public void elementWithXpathShouldContainText(String arg0, String arg1) {
    }

    @Then("element with xpath {string} should be displayed")
    public void elementWithXpathShouldBeDisplayed(String arg0) {
    }
}
