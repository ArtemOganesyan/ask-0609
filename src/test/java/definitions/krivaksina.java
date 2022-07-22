package definitions;

import cucumber.api.java.en.Given;

import static support.TestContext.getDriver;

public class krivaksina {

    @Given("NK opens url {string}")
    public void nkOpensUrl(String url) {
        getDriver().get(url);
    }
}
