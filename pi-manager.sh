#!/bin/bash

OPERATION=$1

if [ "$OPERATION" == "down" ]
then
	echo "Stopping raspberry pies..."

	echo "Stopping kworker..."
	ssh pi@kworker 'sudo shutdown -h now'

	echo "Stopping kmaster..."
	ssh pi@kmaster 'sudo shutdown -h now'
else
	echo "No action taken."
fi