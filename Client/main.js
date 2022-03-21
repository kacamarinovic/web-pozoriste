import { Pozorista } from "./Pozorista.js";
import { Pozoriste } from "./Pozoriste.js";

var listaPozorista = [];

fetch("https://localhost:5001/Pozoriste/PrikaziPozorista")
.then(
    p=>{
        p.json().then(pozorista => {
            pozorista.forEach(pozoriste => {
                var p = new Pozoriste(pozoriste.id, pozoriste.naziv);
                
                listaPozorista.push(p);
            });
            
            var pozorista = new Pozorista(listaPozorista);
            pozorista.crtajPozorista(document.body);
            
        })
    }
)


