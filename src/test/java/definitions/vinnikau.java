package definitions;

import cucumber.api.java.en.Given;

import java.util.Map;

import static support.TestContext.getDriver;

public class vinnikau {
    @Given("I open url {string}")
    public void iOpenUrl(String url) {
        getDriver().get(url);
    }
    }


