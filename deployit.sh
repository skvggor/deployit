#!/bin/bash

# examples: mỵ_projects/website/*, index.html, website/css
file_or_directory="" ;

# example: marcker@ftp.marcker.org
ssh_data="";

# ~/public_html/tests
to="";

deployit () {
  if [[ $file_or_directory && $ssh_data && $to ]]; then
    rsync -avz -e ssh $file_or_directory $ssh_data:$to
  else
    echo -e "Missing parameter (s).";
  fi
}

initializer() {
  deployit;
}

initializer;