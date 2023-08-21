#!/bin/bash
#add fix to exercise3 here
#

config_file="/etc/apache2/sites-enabled/000-default.conf"
line_number=33
word_to_find="denied"
replacement_word="granted"

sed -i "${line_number}s/$word_to_find/$replacement_word/" "$config_file"

sudo systemctl reload apache2

