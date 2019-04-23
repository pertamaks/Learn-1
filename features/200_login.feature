Feature: User feature to login into the website
  Scenario Outline: User login using valid account
    Given User enter the website
    And User go to login page
    When User enter the '<account>' and '<password>'
    Then User reach the my account page
    Examples:
    |account|password|
    |jajal@email.com|jajal123|