const csvFilePath='library.csv'
const csv=require('csvtojson');
const lean=require('json-lean');
csv()
.fromFile(csvFilePath)
.then((jsonObj)=>{
    for (const [key, value] of Object.entries(jsonObj)) {
        const json = Object.entries(value)
        console.log(json)
      }
});