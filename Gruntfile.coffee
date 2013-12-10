module.exports = (grunt) ->

  grunt.initConfig

    coffeelinter:
      options:
        force: yes
        configFile: '.coffeelintrc'
        reportConsole: no
        reporterOutput: 'coffeelinter/report.json'
      target:
        files:
          ['test/fixtures/child.coffee', 'test/fixtures/entry.coffee']

  grunt.loadTasks 'tasks'
  grunt.registerTask 'default', 'coffeelinter'

