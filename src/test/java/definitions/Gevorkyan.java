// Created by Mariana Gevorkyan 07/26/2022
package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class Gevorkyan {
    @Given("MG opens url {string}")
    public void iOpenUrl(String url) {
        getDriver().get(url);
    }

    @Then("MG wait for {int} sec")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("MG should see page title as {string}")
    public void iShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("MG click on element with xpath {string}")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @When("MG type {string} into element with xpath {string}")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("element with xpath {string} should be present")
    public void elementWithXpathShouldBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }

    @Then("element with xpath {string} should be displayed")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }
}




