@feature
  Feature: Demo feature

    @scenario1
    Scenario Outline: First scenario
      Given I open url <url>
      And I add console output message
      Examples:
        | url                  |
        | "https://google.com" |