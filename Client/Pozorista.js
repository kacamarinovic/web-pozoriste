import { Izvodjenje } from "./Izvodjenje.js";
import { Pozoriste } from "./Pozoriste.js";
import { Predstava } from "./Predstava.js";
import { Scena } from "./Scena.js";
export class Pozorista{
    constructor(listaPozorista){
        this.listaPozorista = listaPozorista;
        this.kontejner = null;
    }

    crtajPozorista(host){

        this.kontejner=document.createElement("div");
        this.kontejner.className="PocetniKontejner";
        host.appendChild(this.kontejner);

        let kontForma = document.createElement("div");
        kontForma.className="KontForma";
        this.kontejner.appendChild(kontForma);

        this.crtajformu(kontForma);

        let velikaForma = document.createElement("div");
        velikaForma.className="velikaForma";
        this.kontejner.appendChild(velikaForma);

    }
    

    crtajformu(host)
    {
        let labela = document.createElement("h4");
        labela.innerHTML="Izaberite pozoriste:";
        host.appendChild(labela);

        var se = document.createElement("select");
        se.className="selectPozoriste";
        host.appendChild(se);

        let op;
        this.listaPozorista.forEach(p => {
            op=document.createElement("option");
            op.innerHTML=p.naziv;
            op.value=p.id;
            se.appendChild(op);
            
        });

        let red = document.createElement("div");
        
        host.appendChild(red);

        let dugme = document.createElement("button");
        dugme.className="dugmeOsnovno";
        dugme.innerHTML="OK";
        dugme.onclick=(ev)=>this.ucitajPozoriste();
        red.appendChild(dugme);

       
    }

    

    ucitajPozoriste() //crta veliku formu
    {
        let optionEl = this.kontejner.querySelector("select");
        var pozoristeID = optionEl.options[optionEl.selectedIndex].value;
        var velikaForma= this.ObrisiPrethodnoPozoriste();
        var pozoriste = new Pozoriste(pozoristeID, " ");
        pozoriste.crtajPozoriste(velikaForma);
    }

    UveziPredstave2(pozoristeID){
       // return new Promise((resolve, reject) => {
            let listaPredstava2=[];
       
            fetch("https://localhost:5001/Pozoriste/PreuzetiPredstave/"+pozoristeID,
            {
                method:"GET"
            }).then(s=>{
                if(s.ok){
                
                    s.json().then(data=>{
                        data.forEach(s=>{
                            let pr = new Predstava(s.id,s.naziv,s.reditelj,s.zanr,s.godinaPremijere);  
                            listaPredstava2.push(pr);
                        })
                       // return resolve(listaPredstava2);
                    })
                }
                
              //  return reject;
                
            })
       // })
        
    }

    UveziScene2(pozoristeID){

        var listaScena=[];
        
        fetch("https://localhost:5001/Pozoriste/PreuzetiScene/"+pozoristeID,
        {
            method:"GET"
        }).then(s=>{
            if(s.ok){
               
                s.json().then(data=>{
                    data.forEach(s=>{
                        let pr = new Scena(s.id,s.naziv);                         
                        listaScena.push(pr);
                    })
                })
            }
        })

        return listaScena;

    }

    ObrisiPrethodnoPozoriste()
    {
        let velikaForma = this.kontejner.querySelector(".velikaForma");
        let roditelj = velikaForma.parentNode;
        roditelj.removeChild(velikaForma);

        velikaForma = document.createElement("div");
       velikaForma.className="velikaForma";
       roditelj.appendChild(velikaForma);
       return velikaForma;

    }

}