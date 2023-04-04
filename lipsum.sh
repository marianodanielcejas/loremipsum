#!/bin/bash

lorem=$(curl -s https://www.lipsum.com/feed/xml?ammount=2 | sed -n '/<lipsum>/,/<\/lipsum>/p' | sed -e 's/<lipsum>//g' -e 's/<\/lipsum>//g')

echo "$lorem" > lorem.txt

