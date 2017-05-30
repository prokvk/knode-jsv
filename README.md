knode-jsv
=========

is a simple node module wrapper on `jsonschema`.

# Install:

```
npm install --save knode-jsv
```

# Usage:

```javascript
var validateInput = require('knode-jsv').validateInput;

var err = validateInput(data, schema); //err now contains either "null" or an object with error message
```

# Sample:

```javascript
var validateInput = require('knode-jsv').validateInput;

var schema = {
	type: 'object',
	required: true,
	properties: {
		importantField: {
			type: 'string',
			required: true
		}
	}
};

var err = validateInput({}, schema);

```

The `err` variable will now contain the following object:

```
{ message: 'Invalid input parameters: instance.importantField is required' }
```
