
@status-bar
Feature: Toggle status bar docking
 
  @status-bar 
  Scenario: Undock the status bar
    Given the status bar is docked
    When I select the pin button
    Then the status bar becomes undocked

  @status-bar
  Scenario: Dock the status bar
    Given the status bar is undocked
    When I select the pin button
    Then the status bar becomes docked

  @status-bar 
  Scenario: Status bar appears on hover when undocked
    Given the status bar is undocked
    When I hover over the bottom of the application window
    Then the status bar is displayed

  @status-bar @hotkey
  Scenario: Dock the status bar with hotkey
    Given the status bar is undocked
    When I press Shift+F10 on my keyboard
    Then the status bar becomes docked

  @status-bar @hotkey
  Scenario: Undock the status bar with hotkey
    Given the status bar is docked
    When I press Shift+F10 on my keyboard
    Then the status bar becomes undocked
