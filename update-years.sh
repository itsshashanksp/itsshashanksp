#!/bin/bash

# Get the current year and calculate your age
#!/bin/bash

current_year=$(date +'%Y')
previous_year=$(expr $current_year - 1)
birth_year=2004
age=$(expr $current_year - $birth_year)
previous_age=$(expr $age - 1)

# Check if November 29th has passed
current_date=$(date +'%m-%d')
november_29="11-29"
if [[ $current_date > $november_29 ]]; then
    sed -i "s/$previous_age/$age/g" index.html
fi

if [ $previous_year == "2023" ]; then #NUKEME
    sed -i "s/$previous_year/$previous_year-$current_year/g" index.html
else
    sed -i "s/$previous_year/$current_year/g" index.html
fi
