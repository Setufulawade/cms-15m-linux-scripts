#version 1.0 date-21-6-2024

#this script is used to to check the current linux machine uses yum or apt packages.

#!/bin/bash

# Check if rpm command exists
# if command -v rpm &> /dev/null
# then
#     echo "This system uses RPM package management."
#     chmod +x yuminstaller.sh
#     ./yuminstaller.sh
#     exit 0
# fi

# # Check if apt command exists
# if command -v apt &> /dev/null
# then
#     echo "This system uses APT package management."
#     chmod +x aptinstaller.sh
#     ./aptinstaller.sh
#     exit 0
# fi

# # If neither command is found, inform the user
# echo "Could not determine the package management system. Neither RPM nor APT found."
# exit 1
if command -v rpm &> /dev/null
then
    echo "This system uses RPM package management."
    chmod +x yuminstaller.sh
    #./yuminstaller.sh
    exit 0
    else
        if command -v apt &> /dev/null
        then
            echo "This system uses APT package management."
            chmod +x aptinstaller.sh
            #./aptinstaller.sh
            exit 0
            else
                echo "Could not determine the package management system. Neither RPM nor APT found."
                exit 1
        fi
fi
