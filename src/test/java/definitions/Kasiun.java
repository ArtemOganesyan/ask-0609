package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.assertj.core.api.Assertions;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.Assert.assertEquals;
import static support.TestContext.getDriver;

public class Kasiun {
    @Given("SK open url {string}")
    public void skOpensUrl(String url) {
        getDriver().get(url);

    }

    @Then("^SK wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("^SK click on element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @When("^SK type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("^SK wait for element with xpath \"([^\"]*)\" to be present$")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

    @Then("SK put {int} characters into the field with xpath {string}")
    public void iPutCharactersIntoTheFieldWithXpath(int numberOfChars, String xpath) {
        String val = "b".repeat(numberOfChars);
        getDriver().findElement(By.xpath(xpath)).sendKeys(val);
    }

    @Then("SK should see page title as {string}")
    public void skShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("element with xpath {string} should be displayed")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        Assertions.assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }
}

