const csvFilePath='library.csv'
const csv=require('csvtojson')
csv()
.fromFile(csvFilePath)
.then((jsonObj)=>{
    for (const [key, value] of Object.entries(jsonObj)) {
        // console.log(value)
        const jsm = JSON.stringify(value)
        const json = JSON.parse(jsm)
        console.log(json.Name)
        const div = document.getElementById("content")
        div.innerHTML = div.innerHTML + `<p>${json[key].Name}</p>`
      }
});