#!/bin/bash

read -p "Enter Your Grade: " grade

case "$grade" in
   A)
      echo "80-90"
      ;;
   B)
      echo "60-70"
      ;;
   C)
      echo "40-50"
      ;;
   *)
      echo "Invalid Grade"
esac      
          