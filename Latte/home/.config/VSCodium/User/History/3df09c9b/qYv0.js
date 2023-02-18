const lib='library.csv'
import csv from 'csvtojson';
csv()
.fromFile(lib)
.then((jsonObj)=>{
    for (const [key, value] of Object.entries(jsonObj)) {
        // console.log(value)
        const jsm = JSON.stringify(value)
        const json = JSON.parse(jsm)
        console.log(json.Name)
        const div = document.getElementsByClassName("content")
        div.innerHTML = div.innerHTML + "<br>" + `<p> ${json.Name} </p>`
      }
});