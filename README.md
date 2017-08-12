# README

Messenger is an subordinate project of my [**Portfolio**](https://github.com/cm-s/portfolio)

### Table of contents

- ##### Primary Objective
- ##### Skill Requirements
- ##### Primary Environment Setup
- ##### Database Environment Setup
- ##### Structure Documentation

### Skill Requirements

In order to setup this repository you are assumed to have adequate knowledge required to; interact with a simple mysql3 database using [Rails Active Record](http://guides.rubyonrails.org/active_record_basics.html) as a front end, use basic [Rails Form Helpers](http://guides.rubyonrails.org/form_helpers.html) to set webpage layout characteristics, understand the [Rails Action Controller](http://guides.rubyonrails.org/action_controller_overview.html) systems in order to understand the controllers and use basic [Rails Command Line](http://guides.rubyonrails.org/command_line.html) commands to administer the application. This may include setup of a Rails environment that can accomidate the version of Rails that this application uses (ref: [Ruby Version Manager](https://rvm.io/)).

### Primary Environment Setup

This small application currently uses **_Ruby 2.4.0_** along with **_Rails 5.1.2_**. The RubyGems setup is generic. All gems are listed below.
* `rails ~> 5.1.2`
* `sqlite3`
* `puma ~> 3.7`
* `sass-rails ~> 5.0`
* `uglifier >= 1.3.0`
* `turbolinks ~> 5`
* `jbuilder ~> 2.5`
* `byebug`
* `capybara ~> 2.13`
* `selenium-webdriver`
* `web-console >= 3.3.0`
* `listen >= 3.0.5 < 3.2`
* `spring`
* `spring-watcher-listen ~> 2.0.0`

### Database Setup

The database setup is entirely automatic with the given Gem configuration.
