//package definitions;
//
//import cucumber.api.java.en.Given;
//
//public class Panteleev {
//    @Given("VP opens url {string}")
//    public void vpOpensUrl(String arg0) {
//    }
//}

// Created by Viacheslav (Slava) Skryabin 04/01/2011
package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;

public class Panteleev {
    @Given("^VP open url \"([^\"]*)\"$")
    public void iOpenUrl(String url) {
        getDriver().get(url);
    }

    @Then("^VP resize window to (\\d+) and (\\d+)$")
    public void iResizeWindowToAnd(int width, int height) {
        Dimension dimension = new Dimension(width, height);
        getDriver().manage().window().setSize(dimension);
    }

    @Then("^VP wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @When("^VP maximize window$")
    public void iMaximizeWindow() {
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        Dimension maxWindowSize = new Dimension((int) screenSize.getWidth(), (int) screenSize.getHeight());
        getDriver().manage().window().setPosition(new Point(0,0));
        getDriver().manage().window().setSize(maxWindowSize);
    }

    @Then("^element with xpath \"([^\"]*)\" should be present$")
    public void elementWithXpathShouldBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }

    @Then("^element with xpath \"([^\"]*)\" should not be present$")
    public void elementWithXpathShouldNotBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(0);
    }

    @Then("^VP wait for element with xpath \"([^\"]*)\" to be present$")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

    @Then("^VP wait for element with xpath \"([^\"]*)\" to not be present$")
    public void iWaitForElementWithXpathToNotBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.not(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath))));
    }

    @Then("^element with xpath \"([^\"]*)\" should be displayed$")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Then("^element with xpath \"([^\"]*)\" should not be displayed$")
    public void elementWithXpathShouldNotBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isFalse();
    }

    @Then("^element with xpath \"([^\"]*)\" should be enabled$")
    public void elementWithXpathShouldBeEnabled(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isEnabled()).isTrue();
    }

    @Then("^element with xpath \"([^\"]*)\" should be disabled")
    public void elementWithXpathShouldBeDisabled(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isEnabled()).isFalse();
    }

    @Then("^element with xpath \"([^\"]*)\" should be selected$")
    public void elementWithXpathShouldBeSelected(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isSelected()).isTrue();
    }

    @Then("^element with xpath \"([^\"]*)\" should not be selected$")
    public void elementWithXpathShouldNotBeSelected(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isSelected()).isFalse();
    }

    @When("^VP type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("^VP click on element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("^VP click on element using JavaScript with xpath \"([^\"]*)\"$")
    public void iClickOnElementUsingJavaScriptWithXpath(String xpath) {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].click();", element);
    }

    @Then("^VP take screenshot$")
    public void iTakeScreenshot() throws Exception {
        TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
        File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + new Date() + ".png"));
    }

    @Then("^element with xpath \"([^\"]*)\" should have text as \"([^\"]*)\"$")
    public void elementWithXpathShouldHaveTextAs(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).isEqualTo(text);
    }

    @Then("^element with xpath \"([^\"]*)\" should not have text as \"([^\"]*)\"$")
    public void elementWithXpathShouldNotHaveTextAs(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).isNotEqualTo(text);
    }

    @Then("^element with xpath \"([^\"]*)\" should contain text \"([^\"]*)\"$")
    public void elementWithXpathShouldContainText(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).containsIgnoringCase(text);
    }

    @Then("^element with xpath \"([^\"]*)\" should not contain text \"([^\"]*)\"$")
    public void elementWithXpathShouldNotContainText(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).doesNotContain(text);
    }

    @Then("^element with xpath \"([^\"]*)\" should have attribute \"([^\"]*)\" as \"([^\"]*)\"$")
    public void elementWithXpathShouldHaveAttributeAs(String xpath, String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath(xpath)).getAttribute(attribute)).isEqualTo(attributeValue);
    }

    @Then("^element with xpath \"([^\"]*)\" should not have attribute \"([^\"]*)\" as \"([^\"]*)\"$")
    public void elementWithXpathShouldNotHaveAttributeAs(String xpath, String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath(xpath)).getAttribute(attribute)).isNotEqualTo(attributeValue);
    }

    @Then("^VP switch to iframe with xpath \"([^\"]*)\"$")
    public void iSwitchToIframeWithXpath(String xpath) {
        getDriver().switchTo().frame(getDriver().findElement(By.xpath(xpath)));
    }

    @Then("^VP switch to default content$")
    public void iSwitchToDefaultContent() {
        getDriver().switchTo().defaultContent();
    }

    @Then("^VP switch to new window$")
    public void iSwitchToNewWindow() {
        Iterator<String> iterator = getDriver().getWindowHandles().iterator();
        String newWindow = iterator.next();
        while(iterator.hasNext()) {
            newWindow = iterator.next();
        }
        getDriver().switchTo().window(newWindow);
    }

    @Then("^VP switch to first window$")
    public void iSwitchToFirstWindow() {
        getDriver().switchTo().window(getDriver().getWindowHandles().iterator().next());
    }

    @Then("^VP accept alert$")
    public void iAcceptAlert() {
        getDriver().switchTo().alert().accept();
    }

    @Then("^VP dismiss alert$")
    public void iDismissAlert() {
        getDriver().switchTo().alert().dismiss();
    }

    @And("^VP clear element with xpath \"([^\"]*)\"$")
    public void iClearElementWithXpath(String xpath) throws InterruptedException {
        for (int i = 0; i < 100; i++) {
            getDriver().findElement(By.xpath(xpath)).sendKeys(Keys.BACK_SPACE);
        }
    }

    @Then("^VP should see page title as \"([^\"]*)\"$")
    public void iShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("^VP should see page title as not \"([^\"]*)\"$")
    public void iShouldNotSeePageTitleAsNot(String title) {
        assertThat(getDriver().getTitle()).isNotEqualTo(title);
    }

    @Then("^VP should see page title contains \"([^\"]*)\"$")
    public void iShouldSeePageTitleContains(String title) {
        assertThat(getDriver().getTitle()).contains(title);
    }

    @Then("^VP should see page title does not contain \"([^\"]*)\"$")
    public void iShouldSeePageTitleDoesNotContain(String title) {
        assertThat(getDriver().getTitle()).doesNotContain(title);
    }

    @Then("^VP scroll to the element with xpath \"([^\"]*)\" with offset (\\d+)$")
    public void iScrollToTheElementWithXpathWithOffset(String xpath, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }

    @When("^VP mouse over element with xpath \"([^\"]*)\"$")
    public void iMouseOverElementWithXpath(String xpath) {
        new Actions(getDriver()).moveToElement(getDriver().findElement(By.xpath(xpath))).perform();
    }

    @Then("VP move the slider {int} poing right")
    public void iMoveTheSliderPoingRight(int arg0) {
        WebElement element = getDriver().findElement(By.xpath("//div[contains(text(), 'Points per question')]/..//mat-slider"));
        element.sendKeys(Keys.ARROW_RIGHT);
    }

    @And("VP type {int} characters into the field with xpath {string}")
    public void iTypeCharactersIntoTheFieldWithXpath(int numberOfChar, String xpath) {
        String val = "a".repeat(numberOfChar);
        getDriver().findElement(By.xpath(xpath)).sendKeys(val);

    }

    @And("VP type {int} character\\(s) a single space and {int} character\\(s) into the field with xpath {string}")
    public void iTypeCharacterSASingleSpaceAndCharacterSIntoTheFieldWithXpath(int numberOfCharOne, int numberOfCharTwo, String xpath) {
        String beforeSpace = "a".repeat(numberOfCharOne);
        String afterSpace = "b".repeat(numberOfCharTwo);
        getDriver().findElement(By.xpath(xpath)).sendKeys(beforeSpace + " " + afterSpace);
    }

    @And("VP type {int} character\\(s) into element with xpath {string};")
    public void iTypeCharacterSIntoElementWithXpath(int numberOfChar, String xpath) {
        String val = "a".repeat(numberOfChar);
        getDriver().findElement(By.xpath(xpath)).sendKeys(val);
    }
}
