const lib='library.csv'
const csv=require('csvtojson');
csv()
.fromFile(lib)
.then((jsonObj)=>{
        const json = Object.entries(jsonObj)
        console.log(json[1].Name)
});