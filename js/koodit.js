// Luodaan sisältöä sivulle 
var r = document.getElementById("root");
    r.innerHTML = "<h2>Tervetuloa sivulle</h2>";
// r.innerHTML += "<p>Tämä on ensimmäinen SPA ohjelma </p>";
    
var uusi = document.createElement('p')
uusi.innerHTML = "Tämä on ensimmäinen SPA ohjelma";
uusi.setAttribute('id', 'newData');
document.getElementById('root').appendChild(uusi);

function teeJotain() {
    console.log("Hoi Maailma!");
}
// Lisätään nappiin kuuntelija
var n = document.getElementsByTagName('button');
n[0].addEventListener("click", haeUutiset );

var o = document.getElementsByTagName('h2');
o[0].addEventListener("click", function () { alert("Otsikkoa klikattiin!"); });


function haeUutiset() {
    
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET", "https://www.iltalehti.fi/rss/uutiset.xml", true);
    xmlhttp.send();

    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var data = xmlhttp.responseXML;
            var uutiset = data.getElementsByTagName('item');
    
            for (var i = 0; i < uutiset.length; i++) {
                var juttu = uutiset[i].getElementsByTagName('title')[0];
                console.log(juttu.innerHTML);
                document.getElementById('newData').innerHTML += "<p>"+juttu.innerHTML+"</p>";
            }
        }
    }
}