@dfs_wem
Feature: WEM Demo End User

  Scenario: Confirm the end user workflow
    Given I am on "/user"
    When I fill in "edit-name" with "JenniferThomson"
    And I fill in "edit-pass" with "password"
    And I press "Log in"
    Then I should see "JenniferThomson"
    And I should see "Persona: End-user"
    Given I am on the homepage
    Then I should see "Island Life in Puerto Rico" 
    When I follow "Win a Tropical Caribbean Vacation"
    Then I should see "You'll start on a cruise across the Caribbean coastline."
    When I follow "Enter this contest"
    Then I should see "You have been entered in the contest: Win a Tropical Caribbean Vacation!"
    And I should see "Book Your Trip"
    And I should see "What other contestants are saying..."
    When I follow "Tropical Paradise at Reasonable Rates"
    Then I should see "Belize has plenty to offer for a great price."
    And I should see "Related Interests"
    And I should see "Paradise Indeed!"
    When I press "Add to cart"
    Then I should see "Tropical Belize Package added to your cart."
    When I follow "Write your own review!"
    And I fill in "edit-title" with "It was fun!"
    And I fill in "edit-body-und-0-value" with "I'll be returning soon."
    And I press "Save"
    Then I should see "It was fun!"
    And I should see "by JenniferThomson"
    And I should see "I'll be returning soon."
    Given I am on "/cart"
    Then I should see "Tropical Belize Package"
    And I fill in "edit-edit-quantity-0" with "2"
    And I press "Update cart"
    Then I should see "Your shopping cart has been updated."
    And I press "Remove"
    Then I should see "Tropical Belize Package removed from your cart."
    And I should see "Your shopping cart is empty."