package definitions;

import cucumber.api.java.en.Given;

import static support.TestContext.getDriver;

public class Kasiun {
    @Given("SK opens url {string}")
    public void skOpensUrl(String url) {
        getDriver().get(url);

    }
}
