module.exports = (grunt) ->
	require('time-grunt')(grunt);
	require('load-grunt-tasks')(grunt);

	# Initiate the Grunt configuration.
	grunt.initConfig

		# Allow use of the package.json data.
		pkg: grunt.file.readJSON('package.json')

		pageres:
			mvno:
				options:
					urls: [
						'http://localhost:8008/en-us/'
						'http://localhost:8008/en-us/help.html'
						'http://localhost:8008/en-us/register.html'
						'http://localhost:8008/en-us/contacts.html'
						'http://localhost:8008/en-us/login.html'
						'http://localhost:8008/en-us/forgot.html'
						]
					sizes: [
						'1280x720'
						'1024x768'
						'768x1024'
						'576x960'
						'320x568'
					]
					dest: './docs/mvno'
					#filename: 'og-{{url}}-{{size}}{{crop}}'
					filename: '{{url}}-{{size}}'
					crop: false
					delay: 5 #seconds
					timeout: 120 #seconds
					format: 'png'

	grunt.registerTask 'default', ['pageres']
