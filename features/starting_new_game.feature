Feature: Starting the game
  In order to play Rock Paper Scissors
  As a man with iron fists
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I click on "Begin"
    Then I should see "What's your name?"

  Scenario:
    Given I have entered my name
    When I click on "Submit!"
    Then I should see "Welcome to Rock Paper Scissors"
    