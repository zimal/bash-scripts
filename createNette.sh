#!/bin/bash
# Script for create nette project

mode="sandbox"
name="nette-project"

for i in "$@"
do
	case $i in 
		-sandbox|-s)
			shift # past argument=value
		;;

		*)
			# unknow option
			name="$i" 
		;;
	esac
done

echo "creating nette project"
composer create-project nette/$mode $name
echo "nette project was created"

cd $name

echo "setting rights for temp and log directory"
chmod -R a+rw temp log

echo "DONE"
