package definitions;

import cucumber.api.java.en.Given;
import static support.TestContext.getDriver;

public class Silantieva {
    @Given("MS open url {string}")
    public void msOpenUrl(String url) {
        getDriver().get(url);
    }
}
