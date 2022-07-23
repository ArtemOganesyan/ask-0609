package definitions;

import cucumber.api.java.en.Given;
import static support.TestContext.getDriver;


public class palina {
    @Given("I open url {string}")
    public void iOpenUrl(String url) { getDriver().get(url); }
}
