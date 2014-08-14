#!/usr/bin/env python

from os import popen, path
import sys

if len(sys.argv) > 1:
	for i in range(1, len(sys.argv)):
		file_path = sys.argv[i]
		norm_path = path.normpath( file_path )
		norm_path = norm_path.strip( "\"" )

		if path.isfile( norm_path ):
			popen( norm_path )
		elif path.isdir( norm_path ):
			popen( "explorer " + norm_path )
		else:
			print( "\"" + file_path + "\" is not a file or directory" )
else:
	popen( "explorer ." )
