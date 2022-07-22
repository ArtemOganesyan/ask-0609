
package definitions;

import cucumber.api.java.en.Given;
import static support.TestContext.getDriver;

public class mtsyganyuk {
    @Given("MT open url {string}")
    public void mtOpenUrl(String url) {
        getDriver().get(url);
    }
}
