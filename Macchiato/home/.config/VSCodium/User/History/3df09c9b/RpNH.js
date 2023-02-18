const csvFilePath='library.csv'
const csv=require('csvtojson');
const lean=require('json-lean');
csv()
.fromFile(csvFilePath)
.then((jsonObj)=>{
        const json = Object.entries(jsonObj)
        console.log(json[1])
});