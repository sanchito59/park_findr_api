# Park Findr API

## By **Chris Sanchez**


**Park Findr API** is an API built with Ruby / Rails. It can be used with [Park Findr](https://github.com/sanchito59/park_finder_front_end.git), or you can use [Postman](https://www.getpostman.com/) to make requests to `localhost:3000` once **Park Findr API** is downloaded and configured. The API features full CRUD (Create, Read, Update, and Delete) functionality for both Locations and Parks. To make calls to the API use `GET`, `CREATE`, `PUT`, and `DELETE`. All routes follow REST naming conventions, i.e. `localhost:3000/locations/1/parks/1` where `parks` are nested in the route through `locations`.

![screenshot of landing page for location website](https://i.imgur.com/pgWVWt6.png "read")
## Location Table
The Location table features columns for `continent`, `country`, `longitude`, `latitude`, `city`, `community`, and `street address`.


![screenshot of location table](https://i.imgur.com/O9waQzI.png "read")
  
## Park Table
The Park table features columns for name, `climate`, `operating hours`, `activites`, whether or not it is `dog friendly`, whether or not it is a `National Park`, `fees`, `lodging`, `camping`, and `size`.

![screenshot of park table](https://i.imgur.com/NUjgyV4.png "read")
- - - -
### Setup/Installation Requirements

![image of Github repository file system](https://i.imgur.com/UStodOA.jpg "read")

#### Zip:

1. Click [here](https://github.com/sanchito59/park_findr_api.git) to go to the repository location where you will find the clone/download menu.

 2. Navigate to the directory (folder) that contains your browser's downloads.
 3. Double-click on **Park Findr API** directory (folder).
 4. Open directory contents by extracting/unzipping documents from folder.
 3. Make sure your system has `Ruby 2.6.5`, `Rails 5.2.4.1` or higher, and `NPM` installed.
 4. With your tools installed, and within the folder, run `bundle install`. Make sure all gems install correctly before moving on.
 5. Next run `rake db:create`, `rake db:migrate`, and `rake db:test:prepare`. Make sure all processes complete successfully.
 6. To seed the database with test information, run `rake db:seed`. This will fill the database with 75-150 locations and 3-15 parks for each of those locations.
 5. With [park_findr_api](https://github.com/sanchito59/park_finder_api.git) set up, run `rails s` or `rails server` and navigate to `localhost:3000` to use **Park Findr API**.
 7. **For best results, download and configure [Park Findr](https://github.com/sanchito59/park_finder_front_end.git). You can also make requests to `localhost:3000` with [Postman](https://www.getpostman.com/).**

#### Clone:

 1. To clone the repository, from your terminal or command line enter: "git clone https://github.com/sanchito59/park_findr_api.git"
 2. Once the repository finishes downloading you will need to navigate to it in the terminal/command line.
 3. Make sure your system has `Ruby 2.6.5`, `Rails 5.2.4.1` or higher, and `NPM` installed.
 4. With your tools installed, and within the folder, run `bundle install`. Make sure all gems install correctly before moving on.
 5. Next run `rake db:create`, `rake db:migrate`, and `rake db:test:prepare`. Make sure all processes complete successfully.
 6. To seed the database with test information, run `rake db:seed`. This will fill the database with 75-150 locations and 3-15 parks for each of those locations.
 5. With [park_findr_api](https://github.com/sanchito59/park_finder_api.git) set up, run `rails s` or `rails server` and navigate to `localhost:3000` to use **Park Findr API**.
 7. **For best results, download and configure [Park Findr](https://github.com/sanchito59/park_finder_front_end.git.). You can also make requests to `localhost:3000` with [Postman](https://www.getpostman.com/).**

- - - -

### Specifications:git

|Behavior|Input|Output|
|---|---|---|
|(Read/GET)| `localhost:3000` or `localhost:3000/locations` | API `GET` request displays all locations. |
|(Create/POST)|`localhost:3000/locations` and all corresponding information, i.e. `continent`, `country`, `city`, `community`, `latitude` and `longitude`, and `steet address`.|The corresponding pages now have the location added and so does the database. The user is shown a message to inform them of the successful creation.|
|(Read/GET)| `localhost:3000/locations/1` User is on the specific location page. |Location request returns just that specific location's information.|
|(Update/PUT)|`localhost:3000/locations/1` 'New Continent'|If the API `PUT` request is successful, the database will reflect the changes and the user will be notified of a successful change.|
|(Read/GET) |`localhost:3000/locations/1/parks`|The user makes a `GET` request and returned is a list of all parks associated with that location.|
|(Read/GET)|`localhost:3000/locations/1/parks/1`|The user makes a `GET` request to access the specific information of a particular park.|
|(Update/PUT)|`localhost:3000/locations/1/parks/1` and 'New Park Name'|The location page now reflects the changes and so does the database. The user is shown a message to inform them of successful changes to the park.|
|(Delete/DELETE)|`localhost:3000/locations/1/parks/1`|The user makes a `DELETE` request to the API, deleting `park 1` from `location 1`.|
|(Delete/DELETE)|`localhost:3000/locations/1`|The user makes a `DELETE` request to the API, deleting `location 1`.|
- - - -

### Technologies Used

 - Ruby 2.6.5
 - Rails 5.2.4.1
 - PostgreSQL 12.1
 - Connected to custom Built API
 - Pagination
 - Database Seeding
 - Database Querying
 - Behavior Driven Development / User Stories
 - Testing for Behavior and Integration

- - - -
### Support and Contact

If you run into any issues running **Park Findr API**, please contact **Chris Sanchez**.

### License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Copyright (c) 2020 **Chris Sanchez**
