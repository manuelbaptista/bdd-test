Feature: Change user password

Scenario: Show Change Password Popup
Given I click the Username button on the Title Bar
And the dropdown menu appears
When I select the Change Password option
Then the Change Password popup is displayed

Scenario: Cancel Password Change
Given the Change Password window is displayed
When I cancel the password change
Then the Change Password window closes

Scenario: Current Password Required To Change Password
Given the Change Password window is displayed
When I clear the Current Password
Then an error message appears stating that the Current Password field is required

Scenario: New Password Required To Change Password
Given the Change Password window is displayed
When I clear the New Password
Then an error message appears stating that the New Password field is required

Scenario: Repeat Password Required To Change Password
Given the Change Password window is displayed
When I clear the Repeat Password
Then an error message appears stating that the Repeat Password field is required

Scenario Outline: New Password Fails Complexity Criteria
Given the Change Password window is displayed
When I enter "<password>" as the New Password
Then an error message appears stating that the new password does not meet the required criteria

Examples:

| Dataset name | password | criteria |
| Password missing uppercase character | p@ssword2025 | Password missing uppercase character |
| Password missing lowercase character | P@SSWORD2025 | Password missing lowercase character |
| Password missing numberical character | P@ssword | Password missing numberical character |
| Password missing non-alphanumeric character | Password2025 | Password missing non-alphanumeric character |

Scenario: New Password Must Be 8 Characters Or More
Given the Change Password window is displayed
And the New Password meets the password complexity criteria
Then an error message appears stating that the New Password must be eight characters or more

Scenario: Repeated Password Must Match New Password
Given the Change Password window is displayed
When I enter a valid New Password
And I enter a different password in the Repeat Password field
Then an error message appears stating that the Repeat Password must match the New Password

Scenario: Fail Change Password with Invalid Current Password
Given the Change Password window is displayed
And I enter an invalid Current Password
And a valid New Password
And I repeat the New Password
When I click the OK button 
Then an error message appears stating that the Current Password is invalid

Scenario: Successfully Change Password
Given the Change Password window is displayed
And I enter my Current Password
And I enter a valid New Password
And I repeat the New Password
When I confirm the password change
Then the Login popup appears

Scenario: Re-login After Password Change
Given the Login popup is displayed
And I enter my new password
When I click the Login button 
Then I am successfully logged back in
And the Login popup closes

Scenario: Cancel Re-login After Password Change
Given the Login popup is displayed
When I click the Cancel button 
Then the Client closes
And I am taken back to the Login Screen
