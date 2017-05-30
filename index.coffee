validate = require('jsonschema').validate

formatInputErrors = (errors) ->
	errors.map((error) -> error.stack).join ', '

exports.validateInput = (jsonData, validationSchema) ->
		errors = validate(jsonData, validationSchema).errors
		return null if errors.length is 0
		{message: 'Invalid input parameters: ' + formatInputErrors errors}