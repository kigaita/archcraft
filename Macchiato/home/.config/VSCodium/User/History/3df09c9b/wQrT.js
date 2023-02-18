const csvFilePath='library.csv'
const csv=require('csvtojson');
const lean=require('json-lean');
csv()
.fromFile(csvFilePath)
.then((jsonObj)=>{
    for (const [key, value] of Object.entries(jsonObj)) {
        // console.log(key, value)
        const en = lean.encode(value)
        const de = lean.decode(en)
        console.log(de)
      }
});