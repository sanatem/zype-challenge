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


4. Finally, run the App executing:
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


1. Models: These are the business models.

- ZypeVideo: This is the main class of this App. This class represent each video to display inside the App. In terms of time and simplicity this class is self-contained and it's composed for different class methods to map the results from the API. In another approach this class could be divided in two classes: Model class and a Mapper class.

2. Services: Models related with API communication

- Api::Zype: This class establish a direct connection with the Zype API. It has two methods: index and show. Each method corresponds with one endpoint from the API. In the case of a bad connection with the API it will raise a Standard Error from the exceptions/ folder. The name of this class is Zype in case we need more connections in the future with other APIs.

3. Controllers:
- ZypeVideosController: It has two methods: index and show. The index method is the root of this App and it will render all the videos from the Zype API. The show method displays one video from the index view with more details from the video like the description.


