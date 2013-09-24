
# http://www.nodejs.org/api/fs.html#fs_fs_appendfile_filename_data_options_callback
###
fs.appendFile('message.txt', 'data to append', function (err) {
  if (err) throw err;
  console.log('The "data to append" was appended to file!');
});
###

fs = require 'fs'

class FileAppender
	constructor: (@filename = 'log.log') ->
		
	log: (message)->
		console.log message + '\n' 
		# fs.appendFile implementation is likely not to presume order of log messages, as there is no queue
		fs.appendFile @filename, message, ->
			#if err throw err #TODO this line causes compilation error
		return	

# module exports
exports.FileAppender = FileAppender
