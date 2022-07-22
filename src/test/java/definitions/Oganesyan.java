/*
 * Created by Artem Oganesyan on 21.07.2022
 */

package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import static support.TestContext.getDriver;


public class Oganesyan {
    @Given("I open url {string}")
    public void iOpenUrl(String url) {
        getDriver().get(url);
    }

    @And("I add console output message")
    public void iAddConsoleOutputMessage() {
        System.out.println("This is a test message");
    }

    @Then("I want to add one step")
    public void iWantToAddOneStep() {
        //This is a new step
    }
}
