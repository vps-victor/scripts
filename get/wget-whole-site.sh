# SCRIPT SOURCE
# https://superuser.com/questions/1415717/how-to-download-an-entire-site-with-wget-including-its-images

# CODE

wget \
     --recursive \
     --level 5 \
     --no-clobber \
     --page-requisites \
     --adjust-extension \
     --span-hosts \
     --convert-links \
     --restrict-file-names=windows \
     --domains yoursite.com \
     --no-parent \
         yoursite.com
