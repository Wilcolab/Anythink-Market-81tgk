chmod +x extract_names.sh

awk -F, '{if (tolower($4) ~ /amazon.com/) {print $2, $3}}' $1 >> names.txt