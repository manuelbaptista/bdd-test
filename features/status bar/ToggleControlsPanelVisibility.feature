
@monitoring
Feature: Toggle controls panel visibility

  @monitoring @status-bar
  Scenario: Collapse the controls panel
    Given I am on the Monitoring tab
    And the controls panel is expanded
    When I select the controls button in the status bar
    Then the controls panel collapses

  @monitoring @status-bar
  Scenario: Expand the controls panel
    Given I am on the Monitoring tab
    And the controls panel is collapsed
    When I select the controls button in the status bar
    Then the controls panel expands
  
  @monitoring @hotkey
  Scenario: Collapse the controls panel with hotkey 
    Given I am on the Monitoring tab
    And the controls panel is expanded
    When I press the right bracket on my keyboard
    Then the controls panel collapses

  @monitoring @hotkey
  Scenario: Expand the controls panel with hotkey
    Given I am on the Monitoring tab
    And the controls panel is collapsed
    When I press the right bracket on my keyboard
    Then the controls panel expands