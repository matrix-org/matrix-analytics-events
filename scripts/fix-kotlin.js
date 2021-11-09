// XXX: Fix the kotlin stubs generated by quicktype to be as if quicktype supported the `const` json schema keyword.
//
// We set eventName as `const` in json schema to embed eventName as a constant in the stubs to ensure all clients
// use the exact same event name.
//
// Opens the source .json and then does a find and replace on the generated .kt.

const fs = require('fs');

const jsonFile = fs.readFileSync(process.argv[2]);
const jsonData = JSON.parse(jsonFile);
const eventName = jsonData.properties.eventName.const;

const kotlinSource = fs.readFileSync(process.argv[3], 'utf-8');
console.log(process.argv[3]);

const fixedKotlinSource = kotlinSource.replace("val eventName: String? = null",
    `val eventName: String = "${eventName}"`);

fs.writeFileSync(process.argv[3], fixedKotlinSource);
