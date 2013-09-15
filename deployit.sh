#!/bin/bash

# examples: mỵ_projects/website/*, index.html, website/css
file_or_directory="" ;

# example: marcker@ftp.marcker.org
ssh_data="";

# example: ~/public_html/tests
destination="";

deployit () {
  if [[ $file_or_directory && $ssh_data && $destination ]]; then
    rsync -avz -e ssh $file_or_directory $ssh_data:$destination
  else
    echo -e "Missing parameter (s).";
  fi
}

initializer() {
  deployit;
}

initializer;