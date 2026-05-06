
@monitoring
Feature: Toggle alarms panel visibility

  @monitoring @status-bar
  Scenario: Expand the alarms panel
    Given I am on the Monitoring tab
    And the alarms panel is collapsed
    When I select the alarms button in the status bar
    Then the alarms panel expands
    
  @monitoring @status-bar
  Scenario: Collapse the alarms panel
    Given I am on the Monitoring tab
    And the alarms panel is expanded
    When I select the alarms button in the status bar
    Then the alarms panel collapses
  
  @monitoring @hotkey
  Scenario: Collapse the alarms panel with hotkey 
    Given I am on the Monitoring tab
    And the alarms panel is expanded
    When I press Alt+F2 on my keyboard
    Then the alarms panel collapses

  @monitoring @hotkey
  Scenario: Expand the alarms panel with hotkey
    Given I am on the Monitoring tab
    And the alarms panel is collapsed
    When I press Alt+F2 on my keyboard
    Then the alarms panel expands
