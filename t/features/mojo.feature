Feature: Simple Mojolicious Application Testing
  As a (future) prolific web developer
  I want to test my web application easily
  In order to be even lazier than I currently am
  
  Background:
    Given a mojo test object for the "Boilerplate" application
    
  Scenario: Start as logged out
    When I go to "home"
    Then I should see the "Log In" url
    And I should see the "You are not logged in" text
    And I should see the "Mojolicious\\s+and\\s+Bootstrap" text
    
  Scenario: Being able to login
    When I go to "login"
    Then I should see the "logout" url
    And I should see the "Logged\\s+in\\s+as" text
    And I should see the "Mojolicious\\s+and\\s+Bootstrap" text

  