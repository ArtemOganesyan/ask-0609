package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.*;

import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;
public class Cheripko {
    @Given("^NC open url \"([^\"]*)\"$")
    public void ncOpenUrl(String url) {
        getDriver().get(url);
    }

    @Then("NC wait for (\\d+) sec$")
    public void ncWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("NC should see page title as \"([^\"]*)\"$")
    public void ncShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("NC type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @And("NC click on element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("NC element with xpath \"([^\"]*)\" should be present")
    public void ncElementWithXpathShouldBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }

    @Then("NC element with xpath \"([^\"]*)\" should be displayed$")
    public void ncElementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @And("NC check the page")
    public void ncCheckThePage() {
        WebElement elem = getDriver().findElement(By.xpath("//span[text()='Change']/.."));
        if (elem.isEnabled()) {
            System.out.println("Enabled");
        } else {
            System.out.println("Disabled");
        }
    }

    @Then("^element with xpath \"([^\"]*)\" should be disabled")
    public void elementWithXpathShouldBeDisabled(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isEnabled()).isFalse();
    }

    @Then("NC element with xpath \"([^\"]*)\" should contain text \"([^\"]*)\"$")
    public void ncelementWithXpathShouldContainText(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).containsIgnoringCase(text);
    }
}