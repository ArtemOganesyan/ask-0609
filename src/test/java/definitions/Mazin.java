package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
import java.util.Objects;

import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;

public class Mazin {
    @Given("^LM open url \"([^\"]*)\"$")
    public void iOpenUrl(String url) {
        getDriver().get(url);
    }

    @Then("^I resize window to (\\d+) and (\\d+)$")
    public void iResizeWindowToAnd(int width, int height) {
        Dimension dimension = new Dimension(width, height);
        getDriver().manage().window().setSize(dimension);
    }

    @Then("^LM wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @When("^LM maximize window$")
    public void iMaximizeWindow() {
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        Dimension maxWindowSize = new Dimension((int) screenSize.getWidth(), (int) screenSize.getHeight());
        getDriver().manage().window().setPosition(new Point(0, 0));
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

    @Then("^LM wait for element with xpath \"([^\"]*)\" to be present$")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

    @Then("^LM wait for element with xpath \"([^\"]*)\" to not be present$")
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

    @When("^LM type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("^LM click on element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("^LM click on element using JavaScript with xpath \"([^\"]*)\"$")
    public void iClickOnElementUsingJavaScriptWithXpath(String xpath) {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].click();", element);
    }

    @Then("^LM take screenshot$")
    public void iTakeScreenshot() throws Exception {
        TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
        File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + new Date() + ".png"));
    }
//
//    @Then("^element with xpath \"([^\"]*)\" should have text as \"([^\"]*)\"$")
//    public void elementWithXpathShouldHaveTextAs(String xpath) {
//        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
//        assertThat(actualText).isEqualTo(text);
//    }

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
//
//    @Then("^I switch to iframe with xpath \"([^\"]*)\"$")
//    public void iSwitchToIframeWithXpath(String xpath) {
//        getDriver().switchTo().frame(getDriver().findElement(By.xpath(xpath)));
//    }

    @Then("^LM switch to default content$")
    public void iSwitchToDefaultContent() {
        getDriver().switchTo().defaultContent();
    }

//    @Then("^I switch to new window$")
//    public void iSwitchToNewWindow() {
//        Iterator<String> iterator = getDriver().getWindowHandles().iterator();
//        String newWindow = iterator.next();
//        while (iterator.hasNext()) {
//            newWindow = iterator.next();
//        }
//        getDriver().switchTo().window(newWindow);
//    }
//
//    @Then("^I switch to first window$")
//    public void iSwitchToFirstWindow() {
//        getDriver().switchTo().window(getDriver().getWindowHandles().iterator().next());
//    }
//
//    @Then("^I accept alert$")
//    public void iAcceptAlert() {
//        getDriver().switchTo().alert().accept();
//    }

    @Then("^LM dismiss alert$")
    public void iDismissAlert() {
        getDriver().switchTo().alert().dismiss();
    }

    @When("^I clear element with xpath \"([^\"]*)\"$")
    public void iClearElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).clear();
    }

    @Then("^I should see page title as \"([^\"]*)\"$")
    public void iShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("^I should see page title as not \"([^\"]*)\"$")
    public void iShouldNotSeePageTitleAsNot(String title) {
        assertThat(getDriver().getTitle()).isNotEqualTo(title);
    }

    @Then("^I should see page title contains \"([^\"]*)\"$")
    public void iShouldSeePageTitleContains(String title) {
        assertThat(getDriver().getTitle()).contains(title);
    }

    @Then("^I should see page title does not contain \"([^\"]*)\"$")
    public void iShouldSeePageTitleDoesNotContain(String title) {
        assertThat(getDriver().getTitle()).doesNotContain(title);
    }

//    @Then("^I scroll to the element with xpath \"([^\"]*)\" with offset (\\d+)$")
//    public void iScrollToTheElementWithXpathWithOffset(String xpath, int offset) throws Exception {
//        WebElement element = getDriver().findElement(By.xpath(xpath));
//        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
//        executor.executeScript("arguments[0].scrollIntoView(false);", element);
//        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
//        Thread.sleep(500);
//    }

//    @When("^I mouse over element with xpath \"([^\"]*)\"$")
//    public void iMouseOverElementWithXpath(String xpath) {
//        new Actions(getDriver()).moveToElement(getDriver().findElement(By.xpath(xpath))).perform();
//    }

//    @Then("I put {int} characters into the field with xpath {string}")
//    public void iPutCharactersIntoTheFieldWithXpath(int numberOfChars, String xpath) {
//        String val = "b".repeat(numberOfChars);
//        getDriver().findElement(By.xpath(xpath)).sendKeys(val);
//    }

//    @And("I put {int} chars before @ sign and {int} chars after and {int} chars after dot for element at {string}")
//    public void iPutCharsBeforeSignAndCharsAfterAndCharsAfterDot(int firstPart, int secondPart, int domainPart, String xpath) {
//        String emailFirst = "c".repeat(firstPart);
//        String emailSecond = "a".repeat(secondPart);
//        String emailDomain = "x".repeat(domainPart);
//        getDriver().findElement(By.xpath(xpath)).sendKeys(emailFirst + "@" + emailSecond + "." + emailDomain);
//    }

//    @And("I put {int} chars before @ sign and {int} chars and {int} chars after dot for element at {string}")
//    public void iPutCharsBeforeSignAndCharsAndCharsAfterDotForElementAt(int firstPart, int secondPart, int domainPart, String xpath) {
//        String emailFirst = "c".repeat(firstPart);
//        String emailSecond = "a".repeat(secondPart);
//        String emailDomain = "x".repeat(domainPart);
//        getDriver().findElement(By.xpath(xpath)).sendKeys(emailFirst + "@" + emailSecond + "." + emailDomain);
//    }

    @Then("LM run my method")
    public void iRunMyMethod() throws InterruptedException {
//        getDriver().manage().window().maximize();
        getDriver().get("http://ask-stage.portnov.com");
        getDriver().manage().window().setSize(new Dimension(400, 150));
        Thread.sleep(3000);
//        getDriver().navigate().to("http://ask-stage.portnov.com");
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys("lyudmilamazin@gmail.com");
        WebElement passField=getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        passField.sendKeys("123456ABC");
        WebElement loginBtn=getDriver().findElement(By.xpath("//button[@type='submit']"));
        loginBtn.click();
        Assert.assertTrue(getDriver().getTitle().contains("Assessment"));
    }

    @Then("LM move slider to the {string} at {string} to the {int} number of steps")
    public void iMoveSliderAtToTheNumberOfSteps(String direction, String xpath, int steps) {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        for (int i = 0; i <= steps; i++) {
            if (Objects.equals(direction, "right")) {
                element.sendKeys(Keys.ARROW_RIGHT);
            }
            if (Objects.equals(direction, "left")) {
                element.sendKeys(Keys.ARROW_LEFT);
            }
        }
    }


//    @And("I click on element with xpath {string}Lyuda Student{string}")
//    public void iClickOnElementWithXpathLyudaStudent(String xpath, String text2) {
//        getDriver().findElement(By.xpath(xpath)).sendKeys(text2);
//
//    }

//    @And("I click on element with xpath {string}Yes{string}")
//    public void iClickOnElementWithXpathYes(String xpath, String text1) {
//        getDriver().findElement(By.xpath(xpath)).sendKeys(text1);
//    }

//    int length = 100;
//    boolean useLetters = true;
//    boolean useNumbers = true;
//    String generatedString = RandomStringUtils.random(length, useLetters, useNumbers);

}


