https://codoid.com/fixed/creating-a-ruby-cucumber-project/

# add a gem file

gem 'cucumber-rails', :require => false

# To Run bundle

bundle install

# Setup the cucumber

cucumber --init

rails g cucumber:install

# Create cucumber.yml & Add Code bellow Reports

default: --format html --out=Report.html

## To Create a sample.feature file

Feature: Sample Feature

    Scenario: Sample Scenario
        Given I launch

## To Create a step_defination/sample_steps.rb file

Given(/^I launch$/) do

    puts "I launch"

end

# Rub cucumber All feature files

bundle exec cucumber

# Run single feature file

bundle exec cucumber features/sample.feature

# Rspec Assertion, Node js built Assert module assertion, chai Assertion Lib

https://cucumber.io/docs/cucumber/checking-assertions/

# Basic require "test/unit" Test unit https://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing

# Add Gem --> Test::Unit (test-unit) is unit testing framework for Ruby,

gem 'test-unit', '~> 3.1', '>= 3.1.8'

##########################################################################
Cucumber is a tool for running automated tests written in plain language. Because they're written in plain language, they can be read by anyone on your team. Because they can be read by anyone, you can use them to help improve communication, collaboration and trust on your team.

Cucumber Gherkin Example

This is the Ruby implementation of Cucumber. Cucumber is also available for JavaScript, Java, and a lot of other languages. You can find a list of implementations here: https://cucumber.io/docs/installation/.

See CONTRIBUTING.md for info on contributing to Cucumber (issues, PRs, etc.).

Everyone interacting in this codebase and issue tracker is expected to follow the Cucumber code of conduct.

Installation
Cucumber for Ruby is a Ruby gem. Install it as you would install any gem: add cucumber to your Gemfile:

gem 'cucumber'
then install it:

$ bundle
or install the gem directly:

$ gem install cucumber
Later in this document, bundler is considered being used so all commands are using bundle exec. If this is not the case for you, execute cucumber directly, without bundle exec.

Supported platforms
Ruby 3.2
Ruby 3.1
Ruby 3.0
Ruby 2.7

TruffleRuby 22.0.0+
JRuby 9.4+ (with some limitations)
Ruby on Rails
Using Ruby on Rails? You can use cucumber-rails to bring Cucumber into your Rails project.

Usage
Initialization
If you need to, initialize your features directory with

$ bundle exec cucumber --init
This will create the following directories and files if they do not exist already:

features
├── step_definitions
└── support
└── env.rb
Create your specification
Create a file named rule.feature in the features directory with:

# features/rule.feature

Feature: Rule Sample

Rule: This is a rule

    Example: A passing example
      Given this will pass
      When I do an action
      Then some results should be there

    Example: A failing example
      Given this will fail
      When I do an action
      Then some results should be there

Automate your specification
And a file named steps.rb in features/step_definitions with:

# features/step_definitions/steps.rb

Given('this will pass') do
@this_will_pass = true
end

Given('this will fail') do
@this_will_pass = false
end

When('I do an action') do
:no_op
end

Then("some results should be there") do
expect(@this_will_pass).to be true
end
Run Cucumber
$ bundle exec cucumber
To execute a single feature file:

$ bundle exec cucumber features/rule.feature
To execute a single example, indicates the line of the name of the example:

$ bundle exec cucumber features/rule.feature:5
To summarize the results on the standard output, and generate a HTML report on disk:

$ bundle exec cucumber --format summary --format html --out report.html
For more command line options

$ bundle exec cucumber --help
You can also find documentation on the command line possibilities in features/docs/cli.

Documentation and support
Getting started, writing features, step definitions, and more: https://cucumber.io/docs
Ruby API Documentation: http://www.rubydoc.info/github/cucumber/cucumber-ruby/
Community support forum: https://community.smartbear.com/t5/Cucumber-Open/bd-p/CucumberOS
Slack: register for an account then head over to #intro

##### Execute the Tag

@active
Feature ..
or

@active
Scenario ..
and

cucumber --tags @active

#### RUN

gem "cucumber_scaffold", "~> 0.1.5"

rails generate cucumber_scaffold:install

rails generate cucumber_scaffold:feature Post name:string body:text rating:integer published:boolean

rails cucumber
