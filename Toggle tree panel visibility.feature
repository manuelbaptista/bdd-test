@monitoring
Feature: Toggle tree panel visibility

  @monitoring @status-bar
  Scenario: Collapse the tree panel
    Given I am on the Monitoring tab
    And the tree panel is expanded
    When I select the tree button in the status bar
    Then the tree panel collapses

  @monitoring @status-bar
  Scenario: Expand the tree panel
    Given I am on the Monitoring tab  
    And the tree panel is collapsed
    When I select the tree button in the status bar
    Then the tree panel expands
    

  @monitoring @hotkey
  Scenario: Collapse the tree panel with hotkey

    Given I am on the Monitoring tab
    And the tree panel is expanded
    When I press the left bracket on my keyboard
    Then the tree panel collapses

  @monitoring @hotkey
  Scenario: Expand the tree panel with hotkey
    Given I am on the Monitoring tab    
    And the tree panel is collapsed
    When I press the left bracket on my keyboard
    Then the tree panel expands