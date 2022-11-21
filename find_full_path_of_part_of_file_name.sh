# To find the full path of a file given if part of the file name
find $PWD -name "*part_of_the_filename*"  | sed -e 's/^\./$PWD/'
