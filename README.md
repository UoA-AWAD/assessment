# Assessment
AWAD Group Web Application
Ruby 2.5.1  Rails 5.2.1
A live version is deployed on Heroku, and can be accessed using the following link:
https://<theappname>.herokuapp.com/

You can use these account details to log in (as required in the last assessment)
Admin - username/password
Normal user - username/password

# Purpose
Use climate data found in the Socio-Economic_Baseline_Data.csv file to show a GeoGraph from google API containing data for each country. We also show the details for each country in the show section that can be accessed from the countries table. CAIT Country CO2 Emissions.csv is a table linked to this climate data to display the CO2 emissions for each country, a table of all the CO2 emissions for each country is linked via the show page as well.

# Team Members
- Ian Nostrant, 51984167 2
- Jonas van der Ham, 51986195

# Issues
Everything should be running correctly as we intended

# Running the application
Run bundle install If the sqlite3 database isn't already present, then seed the database using:
rake continents:seed_continents

Access the application using:http://localhost:3000

