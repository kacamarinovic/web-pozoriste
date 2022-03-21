export class Izvodjenje{
    
    constructor(id, datum, vreme, scena, predstava){
        this.id = id;
        this.datum = datum;
        this.vreme=vreme;
        this.scena= scena;
        this.predstava = predstava;
    }

    crtajIzvodjenjeRed(host){
        var tr=document.createElement("tr");
        host.appendChild(tr);

        var elDatum = document.createElement("td");
        elDatum.className="tabelaDatum";
        elDatum.innerHTML=this.datum;
        tr.appendChild(elDatum);

        var elVreme = document.createElement("td");
        elVreme.className="tabelaVreme";
        elVreme.innerHTML=this.vreme;
        tr.appendChild(elVreme);

        var elScena = document.createElement("td");
        elScena.className="tabelaScena";
        elScena.innerHTML=this.scena;
        tr.appendChild(elScena);

        var elPredstava = document.createElement("td");
        elPredstava.className="tabelaPredstava"
        elPredstava.innerHTML=this.predstava;
        tr.appendChild(elPredstava);

        var elObrisi = document.createElement("td");
        tr.appendChild(elObrisi);

        var dugmeObrisi = document.createElement("button");
        dugmeObrisi.innerHTML="OBRIŠI";
        dugmeObrisi.className="dugmeObrisi";
        elObrisi.appendChild(dugmeObrisi);

        dugmeObrisi.onclick=(ev)=>this.ObrisiIzvodjenje(tr);

        var dugmeIzmeni2 = document.createElement("button");
        dugmeIzmeni2.innerHTML="IZMENI";
        dugmeIzmeni2.className="dugmeIzmeni";
        elObrisi.appendChild(dugmeIzmeni2);
        dugmeIzmeni2.onclick=(ev)=>this.IzmeniIzvodjenje2(tr);
        
    }

    ObrisiIzvodjenje(host){

        fetch("https://localhost:5001/Izvodjenje/ObrisatiIzvodjenje/"+this.id,
        {
            method:"DELETE"
        }).then(s =>
        {
            if(s.status == 400)
            {
                alert("Greska!");
                return;
            }
            if(s.ok)
            {
               alert("Uspesno obrisano izvodjenje!");
               this.ObrisiIzTabele(host); 

            }
            
        })
    }

    ObrisiIzTabele(host){

        let roditelj = host.parentNode;
        roditelj.removeChild(host);
    }

    

    IzmeniIzvodjenje2(tr)
    {
        var datumEl = document.querySelector(".datumPolje2");
        var datumSamo=datumEl.value;
        console.log(datumSamo);

        var vremeEl = document.querySelector(".vremePolje2");
        var vremeSamo=vremeEl.value;
        console.log(vremeSamo);

        var datum = datumSamo+" "+vremeSamo;
        console.log(datum);

        let optionElPredstava = document.querySelector(".predstavaSelect");
        var predstavaID = optionElPredstava.options[optionElPredstava.selectedIndex].value;
        let optionEl = document.querySelector(".scenaSelect");
        var scenaID = optionEl.options[optionEl.selectedIndex].value;
        let optionElPoz = document.querySelector(".selectPozoriste");
        var pozoristeID = optionElPoz.options[optionElPoz.selectedIndex].value;
        
        
        fetch("https://localhost:5001/Izvodjenje/IzmeniIzvodjenje/"+this.id+"/"+pozoristeID+"/"+scenaID+"/"+predstavaID+"/"+datum,
        {
            method:"PUT"
        }).then(s=>{
            if(s.status == 200)
                {
                    alert("Izmenjeno izvodjenje!");
                    this.RefreshIzvodjenje(tr);
                    return;
                }
        })
    }

    RefreshIzvodjenje(tr)
    {
        var roditelj=tr.parentNode;
        this.ObrisiIzTabele(tr);
        this.crtajIzvodjenjeRed(roditelj);
    }



}