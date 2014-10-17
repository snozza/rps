Feature: Playing the game
  As a man with many skills
  In order to play a game
  I must select my weapon

  Background: Time to pick a weapon
    Given I have entered my name
    When I click on "Submit!"

  Scenario: Choosing a weapon
    When I choose "rock"
    And I click on "FIGHT!"
    Then I should see "Skynet chose"