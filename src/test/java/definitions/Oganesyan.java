/*
 * Created by Artem Oganesyan on 21.07.2022
 */

package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import static support.TestContext.getDriver;

public class Oganesyan {
    @Given("I open url {string}")
    public void iOpenUrl(String arg0) {
        getDriver().get(arg0);
    }

    @Then("I type to the console")
    public void iTypeToTheConsole() {
        System.out.println("This is a test console message");
    }
}
