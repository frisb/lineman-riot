module.exports = (lineman) ->
	baseConfig = lineman.config.application

	config:
		loadNpmTasks: baseConfig.loadNpmTasks.concat('grunt-riot')

#		prependTasks:
#			common: baseConfig.prependTasks.common.concat(['riot:dev'])

		riot:
			options:
				concat : true
				modular: true
			dev:
				src: '<%= files.riot.app %>'
				dest: '<%= files.riot.generated %>'

		watch:
			riot:
				files: '<%= files.riot.app %>'
				tasks: ['riot']