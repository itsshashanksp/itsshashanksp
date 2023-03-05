#!/bin/bash

# Get the current year and calculate your age
current_year=$(date +'%Y')
previous_year=$(expr $current_year - 1)
birth_year=2004
age=$(expr $current_year - $birth_year)
previous_age=$(expr $age - 1)

# Update the age and copyright year in index.html
sed -i "s/$previous_age/$age/g" index.html
if [ $previous_year == "2023" ]; then # Nukeme
    sed -i "s/$previous_year/$previous_year-$current_year/g" index.html
else
    sed -i "s/$previous_year/$current_year/g" index.html
fi

git add .
git commit -m "Update the age and copyright year"
git push