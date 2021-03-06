@managing_shipping_methods_with_table_rate
Feature: Managing shipping methods with table rates
  In order to be able to effectively use already defined table rates
  As an Administrator
  I want to be able to assign table rates to shipping methods

  @ui @javascript
  Scenario: Assigning a table rate to a shipping method
    Given I am logged in as an administrator
    And the store operates on a single channel in "United States"
    And the store also operates on another channel named "Europe" in "EUR" currency
    And the store has a shipping table rate "United States Rates" for currency "USD"
    And the store has a shipping table rate "Europe Rates" for currency "EUR"
    When I want to create a new shipping method
    And I choose "Table rate" calculator
    Then I should be able to choose only the table rate "United States Rates" for the "United States" channel
    And I should be able to choose only the table rate "Europe Rates" for the "Europe" channel
