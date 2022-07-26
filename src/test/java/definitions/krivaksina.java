
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

public class krivaksina {
    @Given("^NK open url \"([^\"]*)\"$")
    public void iOpenUrl(String url) {
        getDriver().get(url);
    }
    @Then("^NK resize window to (\\d+) and (\\d+)$")
    public void iResizeWindowToAnd(int width, int height) {
        Dimension dimension = new Dimension(width, height);
        getDriver().manage().window().setSize(dimension);
    }

    @Then("^NK wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @When("^NK maximize window$")
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

    @Then("^NK wait for element with xpath \"([^\"]*)\" to be present$")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

    @Then("^NK wait for element with xpath \"([^\"]*)\" to not be present$")
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

    @When("^NK type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("^NK click on element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("^NK click on element using JavaScript with xpath \"([^\"]*)\"$")
    public void iClickOnElementUsingJavaScriptWithXpath(String xpath) {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].click();", element);
    }

    @Then("^NK take screenshot$")
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

    @Then("^NK switch to iframe with xpath \"([^\"]*)\"$")
    public void iSwitchToIframeWithXpath(String xpath) {
        getDriver().switchTo().frame(getDriver().findElement(By.xpath(xpath)));
    }

    @Then("^NK switch to default content$")
    public void iSwitchToDefaultContent() {
        getDriver().switchTo().defaultContent();
    }

    @Then("^NK switch to new window$")
    public void iSwitchToNewWindow() {
        Iterator<String> iterator = getDriver().getWindowHandles().iterator();
        String newWindow = iterator.next();
        while (iterator.hasNext()) {
            newWindow = iterator.next();
        }
        getDriver().switchTo().window(newWindow);
    }

    @Then("^NK switch to first window$")
    public void iSwitchToFirstWindow() {
        getDriver().switchTo().window(getDriver().getWindowHandles().iterator().next());
    }

    @Then("^NK accept alert$")
    public void iAcceptAlert() {
        getDriver().switchTo().alert().accept();
    }

    @Then("^NK dismiss alert$")
    public void iDismissAlert() {
        getDriver().switchTo().alert().dismiss();
    }

    @When("^NK clear element with xpath \"([^\"]*)\"$")
    public void iClearElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).clear();
    }

    @Then("^NK should see page title as \"([^\"]*)\"$")
    public void iShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("^NK should see page title as not \"([^\"]*)\"$")
    public void iShouldNotSeePageTitleAsNot(String title) {
        assertThat(getDriver().getTitle()).isNotEqualTo(title);
    }

    @Then("^NK should see page title contains \"([^\"]*)\"$")
    public void iShouldSeePageTitleContains(String title) {
        assertThat(getDriver().getTitle()).contains(title);
    }

    @Then("^NK should see page title does not contain \"([^\"]*)\"$")
    public void iShouldSeePageTitleDoesNotContain(String title) {
        assertThat(getDriver().getTitle()).doesNotContain(title);
    }

    @Then("^NK scroll to the element with xpath \"([^\"]*)\" with offset (\\d+)$")
    public void iScrollToTheElementWithXpathWithOffset(String xpath, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }

    @When("^NK mouse over element with xpath \"([^\"]*)\"$")
    public void iMouseOverElementWithXpath(String xpath) {
        new Actions(getDriver()).moveToElement(getDriver().findElement(By.xpath(xpath))).perform();
    }

    @Then("NK run my method")
    public void iRunMyMethod() throws InterruptedException {
//           getDriver().manage().window().fullscreen();
        getDriver().get("http://ask-stage.portnov.com");
        getDriver().manage().window().setSize(new Dimension(400, 150));
        Thread.sleep(3000);
//         getDriver().navigate().to("http://ask-stage.portnov.com");
        WebElement emailField = getDriver().findElement(By.xpath("//input[@formcontrolname='email']"));
        emailField.sendKeys("artem.oganesyan+tt@gmail.com");
        WebElement passField = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        passField.sendKeys("12345Abc");
        WebElement loginBtn = getDriver().findElement(By.xpath("//button[@type='submit']"));
        loginBtn.click();
    }

    @And("elements with xpath {string} should be present")
    public void elementsWithXpathShouldBePresent(String arg0) {
        var elements = getDriver().findElements(By.xpath(arg0));
        assertThat(elements.size() > 0);
    }

    @Then("NK click on the button of the last element of Submissions list")
    public void iClickOnTheButtonOfTheLastElementOfSubmissionsList() {
        var buttons = getDriver().findElements(By.xpath("//span[@class='mat-button-wrapper']"));
        System.out.println(buttons.size());
        var lastElemntIndex = buttons.size() - 1;
        var lastButtonElement = buttons.get(lastElemntIndex);
        lastButtonElement.click();
    }

    @And("the last element of Submissions list is present")
    public void theLastElementOfSubmissionsListIsPresent() {
        var rows = getDriver().findElements(By.xpath("//button[@class='mat-raised-button mat-primary']"));
        System.out.println(rows.size());
        var lastElementIndex = rows.size() - 1;
        var lastButtonElement = rows.get(lastElementIndex);
        lastButtonElement.click();
    }
}
