@df @core @search @api @errors
Feature: Site search

  @layout @landing-page @javascript @6aa9edbb
  Scenario: Indexing and searching for landing pages
    Given I am logged in as a user with the administrator role
    And landing_page content:
      | title  | path    | moderation_state | body                                                    |
      | Foobar | /foobar | draft            | In which my landing page is described in a flowery way. |
    And block_content entities:
      | type  | info    | body             | uuid    |
      | basic | Dragons | Here be dragons. | dragons |
    When I visit "/foobar"
    And I place the "block_content:dragons" block from the "Basic block" category
    And I save the layout
    And I open the moderation sidebar
    And I press the "Publish" button
    And I am an anonymous user
    And I visit "/search"
    And I enter "dragons" for "Keywords"
    And I press "Search"
    Then I should see "Foobar"

  @page @javascript @6ae34970
  Scenario: Autocomplete for search keywords
    Given I am an anonymous user
    And article content:
      | title        | moderation_state | body                                          |
      | Autocomplete | published        | Etiam et felis vitae metus convallis dapibus. |
    When I visit "/search"
    And I write "Autocomplet" into "Keywords"
    And I wait 1 seconds
    And I wait for AJAX to finish
    Then I should see "Autocomplete"
