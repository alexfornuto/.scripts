#!/bin/bash


# battery.sh: Prints battery information
# Currently prints battery percentage, time remaining
# and status (charging/discharging).
#
# Based on https://github.com/alexdantas/dotfiles/blob/master/.screenrc
#
# Examples: 12% (01:23:30) C
#           31% (00:30:01) D
#
acpi | awk '{
                printf("%s (%s) %c\n", $4, $5, $3)
            }' | tr -d ','

exit 0
