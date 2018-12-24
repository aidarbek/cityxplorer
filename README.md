# CityXplorer
Yelp for Astana, Kazakhstan

Allows you to search for the places in Astana. Also, you can leave a review and rate the place.

It's recommendation service here: https://github.com/aidarbek/cityxplorer-recommendation
Hosted on Google cloud platform, Kubernetes and Docker here http://35.202.171.27/

# Installation guide
1. Upload these files to your PHP server
2. Change your MySQL settings in file config.php
3. Database dump is stored in cityxplorer2.sql file

# Usage
To add new type of the places and new places, open this URL: %YOUR HOST%/add_places.php?place=%PLACE TYPE NAME%
Edit places in js/app.js file in map_view controller in order to show new places in menu.
Places in app.js file must be listed in their id's order.
