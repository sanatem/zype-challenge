# Zype Challenge

This a web application to visualize videos from the Zype API

## Prerequisites

You will need the following to be installed:

* Ruby language >= 2.5
* Ruby on Rails >= 6.0
* Bundler (http://bundler.io/)

## Installation

1. Clone this repo.
2. Move into the folder of this project and execute:

```
$ bundle install
```

3. Move to folder config/ and create a *application.yml* file following the example in application_example.yml.
Inside the file *application.yml* you have to specify your database or API configuration.

4. Move to the main folder and run the migrations

```
$ rake db:setup
```

5. Finally, run the App executing:
```
$ rails server
```

## Testing

The app contains a folder inside spec/ which has unit, controller and request tests.
To run all tests, move to the main folder of the project and execute:
```
$ rspec
```

## Implementation details



