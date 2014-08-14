#!/usr/bin/env python
from os import popen
import sys, subprocess

if len(sys.argv) > 1:
	command = str()
	result = subprocess.Popen( "git stash list", shell=True, stdout=subprocess.PIPE )
	for line in result.stdout.readlines():
		if not line:
			break

		split = str( line.strip() ).lstrip('b\'').split(':')
		if len( split ) > 0:
			if len( command ) > 0 :
				command = " | " + command
			command = "gitk " + split[ 0 ] + command

	if len(sys.argv) > 2:
		popen( "gitk " + ' '.join( sys.argv[1:] ))

	if len( command ) > 0 :
		popen( command )


else:
	popen( "gitk" )
