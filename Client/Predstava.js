import { Uloga } from "./Uloga.js";
export class Predstava{
    
    constructor(id, naziv,reditelj, zanr, premijera){
        this.id = id;
        this.naziv = naziv;
        this.reditelj=reditelj;
        this.zanr=zanr;
        this.premijera=premijera;
        this.kontejner=null;
        
    }

    crtajPredstavu(host)
    {
        var divPredstava = document.createElement("div");
        divPredstava.className="divPredstava";
        host.appendChild(divPredstava);
        this.kontejner = divPredstava;
        

        var el = document.createElement("div");
        el.className="naslovPredstave";
        el.innerHTML=this.naziv;
        divPredstava.appendChild(el);

        el = document.createElement("div");
        el.className="predstavaPolje";
        el.innerHTML="reditelj: "+this.reditelj;
        divPredstava.appendChild(el);

        var ZanrGodinaDiv = document.createElement("div");
        ZanrGodinaDiv.className="ZanrGodinaDiv";
        divPredstava.appendChild(ZanrGodinaDiv);

        el = document.createElement("div");
        el.className="predstavaPolje";
        el.innerHTML="žanr: "+this.zanr+" |    premijera: "+this.premijera;
        ZanrGodinaDiv.appendChild(el);

       
        
        var uloge = document.createElement("tbody");
        uloge.className="divUloge";
        divPredstava.appendChild(uloge);

        let dugme = document.createElement("button");
        dugme.className="dugmeUloge";
        dugme.innerHTML="ULOGE";
        dugme.onclick=(ev)=>this.PrikaziUloge();
        divPredstava.appendChild(dugme);

        let dugme2 = document.createElement("button");
        dugme2.className="dugmeUloge";
        dugme2.innerHTML="^";
        dugme2.onclick=(ev)=>this.ObrisiStareUloge();
        divPredstava.appendChild(dugme2);


    }

    PrikaziUloge()
    {

        fetch("https://localhost:5001/Predstava/PreuzmiUlogePredstave/"+this.id,
        {
            method:"GET"
        }).then(s=>{

            var uloge = this.ObrisiStareUloge();
            if(s.ok){
               
                s.json().then(data=>{
            

                    data.forEach(s=>{
                        let pr = new Uloga(s.id,s.lik,s.glumac);                         
                        pr.crtajUloguRed(uloge);
                    })
                })
            }

            
        })

    }

    ObrisiStareUloge()
    {
        var uloge = this.kontejner.querySelector(".divUloge");
        var roditelj = uloge.parentNode;
        roditelj.removeChild(uloge);
        uloge = document.createElement("div");
        uloge.className="divUloge";
        roditelj.appendChild(uloge);  
        return uloge;

    }
    

    
}