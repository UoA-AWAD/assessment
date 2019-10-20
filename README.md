# Assessment
AWAD Group Web Application
Ruby 2.5.1  Rails 5.2.1
A live version is deployed on Heroku, and can be accessed using the following link:
https://tranquil-fjord-88824.herokuapp.com/

# Purpose
Use climate data found in the Socio-Economic_Baseline_Data.csv file to show a GeoGraph from google API containing data for each country. We also show the details for each country in the show section that can be accessed from the countries table. CAIT Country CO2 Emissions.csv is a table linked to this climate data to display the CO2 emissions for each country, a table of all the CO2 emissions for each country is linked via the show page as well.

# Team Members
- Ian Nostrant, 51984167 2
- Jonas van der Ham, 51986195

# Issues
Search bar not working on Heroku. I think this is due to the line

Continent.where('Country LIKE ?',"%#{params[:term]}%")

in the continents controller. I don't think LIKE works with postgreSQL in the same way.

# Running the application
Run bundle install If the sqlite3 database isn't already present, then seed the database using:
rake continents:seed_continents

Access the application using:http://localhost:3000

# Design and Development
During the project there was close communication through various channels and both solo and pair programming to best suit the particular needs for our project at a given time. As we quickly found a good source of open data we could begin early and get a head start on the project. The backbones for the project were finished quite quickly as a result of this. As we started to focus more on the design of the website, one of the problems we ran into was the requirement of linked together databases. We started looking for a second source of data and we found the CO2 emissions data. Linking the databases proved to be a challenge as some country names were spelled differently, but eventually all problems were solved. 

The design of our website can be described as minimal. The target audience for this website is people that have a particular interest in the data and do not care for the most flashy display. Besides the barebones data, however, we supply the users with an intuitive overview of a part of the data through the world map. The interactive world map which changes depending on user requested metrics gives a beautiful and quick overview of the data.

Given more time, further development could be done in the cleanliness of the code and the website layout. Some inline Javascript was used for time-saving purposes and this could be cleaned up in seperate Javascipt files. Furthermore, the homepage could get some additional styling, although it is functionally intact. 

# Presentation

Slides for the project presentation can be found here:
https://docs.google.com/presentation/d/13R-wGQQVTlFqPaldFGjbvAbjq6Dq3Jg8qvLAVnKnsrM/edit?usp=sharing
