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
						'https://mvno1.aws-qa.bossrow.net/en-us/'
						'https://mvno1.aws-qa.bossrow.net/en-us/help.html'
						'https://mvno1.aws-qa.bossrow.net/en-us/register.html'
						'https://mvno1.aws-qa.bossrow.net/en-us/contacts.html'
						'https://mvno1.aws-qa.bossrow.net/en-us/login.html'
						'https://mvno1.aws-qa.bossrow.net/en-us/forgot.html'
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
