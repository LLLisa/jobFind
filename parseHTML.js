const htmlToJson = require('html-to-json');

console.log(process.argv.slice(2));

const parsed = htmlToJson.parse(process.argv[3]).then((result) => result);

console.log(parsed);
