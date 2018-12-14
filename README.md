# Specialty Food Store

#### Ruby/Rails Specialty Food Store Site, 11.14.2018

#### By Kristin Brewer-Lowe

## Description

This basic site allows a user to browse products and add reviews. Admins can add, edit and delete products on the site. The homepage sorts products by most reviewed, most recently added and products made in the USA.

## Setup/Installation Requirements

* In the command line, clone this repository with $ git clone https://github.com/klowe27/specialty-foods
* Navigate into the directory and in the command line install dependent gems by using command $ bundle install (if you don't already have the bundler gem installed, first run $ gem install bundler)
* To create the necessary database, use the following commands in the command line while in the root directory:
  * $ rake db:create
  * $ rake db:migrate
  * $ rake db:test:prepare
* To launch the application, while in the root directory use command $ rails s
* In any browser (preferably Chrome), navigate to http://localhost:3000/
* To run the test suite, use command $ rspec

Note: this program uses Ruby version 2.2.2.

## Known Bugs

* There is no admin login. Currently, all site visitors have access to adding, updating and deleting products.
* This site is not optimized for smaller devices.

## Support and contact details

If you have any questions or issues, please reach out to kristin.lowe1@gmail.com. Or, feel free to contribute to the code.

## Technologies Used

Ruby, Rails, HTML, CSS, Bootstrap, Git

### License

This software is licensed under the MIT license.

Copyright (c) 2018 **Kristin Brewer-Lowe**
