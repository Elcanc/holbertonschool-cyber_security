#!/bin/bash

DOMAIN=$1

whois $DOMAIN | awk '
# Registrant Bilgilerini işleme
/Registrant/ {
  if ($1 == "Registrant" && $2 == "Name:") print "Registrant Name," $3 " " $4;
  if ($1 == "Registrant" && $2 == "Organization:") print "Registrant Organization," $3 " " $4;
  if ($1 == "Registrant" && $2 == "Street:") print "Registrant Street," $3 " " $4 " ";
  if ($1 == "Registrant" && $2 == "City:") print "Registrant City," $3 " " $4;
  if ($1 == "Registrant" && $2 == "State/Province:") print "Registrant State/Province," $3;
  if ($1 == "Registrant" && $2 == "Postal") print "Registrant Postal Code," $3;
  if ($1 == "Registrant" && $2 == "Country:") print "Registrant Country," $3;
  if ($1 == "Registrant" && $2 == "Phone:") print "Registrant Phone," $3;
  if ($1 == "Registrant" && $2 == "Phone Ext:") print "Registrant Phone Ext:," $3;
  if ($1 == "Registrant" && $2 == "Fax:") print "Registrant Fax," $3;
  if ($1 == "Registrant" && $2 == "Fax Ext:") print "Registrant Fax Ext:," $3;
  if ($1 == "Registrant" && $2 == "Email:") print "Registrant Email," $3;
}

# Admin Bilgilerini işleme
/Admin/ {
  if ($1 == "Admin" && $2 == "Name:") print "Admin Name," $3 " " $4;
  if ($1 == "Admin" && $2 == "Organization:") print "Admin Organization," $3 " " $4;
  if ($1 == "Admin" && $2 == "Street:") print "Admin Street," $3 " " $4 " ";
  if ($1 == "Admin" && $2 == "City:") print "Admin City," $3 " " $4;
  if ($1 == "Admin" && $2 == "State/Province:") print "Admin State/Province," $3;
  if ($1 == "Admin" && $2 == "Postal") print "Admin Postal Code," $3;
  if ($1 == "Admin" && $2 == "Country:") print "Admin Country," $3;
  if ($1 == "Admin" && $2 == "Phone:") print "Admin Phone," $3;
  if ($1 == "Admin" && $2 == "Phone Ext:") print "Admin Phone Ext:," $3;
  if ($1 == "Admin" && $2 == "Fax:") print "Admin Fax," $3;
  if ($1 == "Admin" && $2 == "Fax Ext:") print "Admin Fax Ext:," $3;
  if ($1 == "Admin" && $2 == "Email:") print "Admin Email," $3;
}

/Tech/ {
  if ($1 == "Tech" && $2 == "Name:") print "Tech Name," $3 " " $4;
  if ($1 == "Tech" && $2 == "Organization:") print "Tech Organization," $3 " " $4;
  if ($1 == "Tech" && $2 == "Street:") print "Tech Street," $3 " " $4 " ";
  if ($1 == "Tech" && $2 == "City:") print "Tech City," $3 " " $4;
  if ($1 == "Tech" && $2 == "State/Province:") print "Tech State/Province," $3;
  if ($1 == "Tech" && $2 == "Postal") print "Tech Postal Code," $3;
  if ($1 == "Tech" && $2 == "Country:") print "Tech Country," $3;
  if ($1 == "Tech" && $2 == "Phone:") print "Tech Phone," $3;
  if ($1 == "Tech" && $2 == "Phone Ext:") print "Tech Phone Ext:," $3;
  if ($1 == "Tech" && $2 == "Fax:") print "Tech Fax," $3;
  if ($1 == "Tech" && $2 == "Fax Ext:") print "Tech Fax Ext:," $3;
  if ($1 == "Tech" && $2 == "Email:") print "Tech Email," $3;
}

' > "$DOMAIN.csv"

