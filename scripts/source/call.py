#!/usr/bin/env python

from os import popen, path
import sys

if len( sys.argv ) > 2:
	args = str()
	file = str()
	for arg in sys.argv[2:]:
		file = file + arg.strip( "\"" ) + " "
		tfile = path.normpath( file ).strip()
		if path.isfile( tfile ) or path.isdir( tfile ):
			args = args + " \"" + tfile + "\""
			file = str()
	
	popen( sys.argv[ 1 ] + " " + args.strip() )


