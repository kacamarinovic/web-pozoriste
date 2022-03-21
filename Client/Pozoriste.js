import { Predstava } from "./Predstava.js";
import { Izvodjenje } from "./Izvodjenje.js";
import { Scena } from "./Scena.js";
export class Pozoriste{
    constructor(id, naziv)
    {
        this.id=id;
        this.naziv=naziv;
        this.listaScena=[];
        this.listaPredstava=[];
        this.listaIzvodjenja = [];
        this.kontejner=null;
        
       
        
    }

    crtajPozoriste(host)
    {
        
        // this.kontejner=document.createElement("div");
        // this.kontejner.className="PocetniKontejnerPozoriste";
        // host.appendChild(this.kontejner);

        this.kontejner=host;

        let predstaveForma = document.createElement("div");
        predstaveForma.className="PredstaveForma";
        this.kontejner.appendChild(predstaveForma);

        let pomocnaForma = document.createElement("div");
        pomocnaForma.className="PomocnaForma";
        this.kontejner.appendChild(pomocnaForma);

        let izvodjenjeForma = document.createElement("div");
        izvodjenjeForma.className="IzvodjenjeForma";
        pomocnaForma.appendChild(izvodjenjeForma);

        let repertoarForma = document.createElement("div");
        repertoarForma.className="RepertoarForma";
        pomocnaForma.appendChild(repertoarForma);

        this.crtajPredstave(predstaveForma, izvodjenjeForma);
        this.crtajRepertoar(repertoarForma);
       


    }

    crtajPredstave(host,host2){

        
        let labela = document.createElement("h3");
        labela.className="Podnaslov";
        labela.innerHTML="PREDSTAVE";
        host.appendChild(labela);

        let kontPredstave = document.createElement("div");
        kontPredstave.className="Predstave";        
        host.appendChild(kontPredstave);
        
        this.ucitajPredstave(kontPredstave, host2);

    }

    ucitajPredstave(host, host2){

        
        fetch("https://localhost:5001/Pozoriste/PreuzetiPredstave/"+this.id, {
            method:"GET"
        }).then(s => {
            if(s.ok) {
                s.json().then(data => {
                    data.forEach(s => {
                        let pr = new Predstava(s.id,s.naziv,s.reditelj,s.zanr,s.godinaPremijere);  
                        this.listaPredstava.push(pr);         
                        pr.crtajPredstavu(host);
                    });
                   this.crtajFormuIzvodjenje(host2);
                    
                    
                });
            }
            
           
        })

    }

    crtajRepertoar(host)
    {
        let dugme = document.createElement("button");
        dugme.innerHTML="REPERTOAR";
        dugme.className="DugmeRepertoar";
        host.appendChild(dugme);
        let kontRepertoar = document.createElement("div");
        kontRepertoar.className="Predstave";        
        host.appendChild(kontRepertoar);
        this.crtajTabeluRepertoar(kontRepertoar);
        dugme.onclick=(ev)=>this.ucitajRepertoar();
       
        
    }

    ucitajRepertoar(){
        
        fetch("https://localhost:5001/Izvodjenje/PreuzetiRepertoarPozorista/"+this.id,
        {
            method:"GET"
        }).then(s=>{
            if(s.ok){

                var repertoarTeloTabele=this.ObrisiPrethodniRepertoar();
                s.json().then(data=>{
                    data.forEach(s=>{
                        let pr = new Izvodjenje(s.id,s.datum,s.vreme,s.scena,s.predstava);                         
                        pr.crtajIzvodjenjeRed(repertoarTeloTabele);
                    })
                })
            }
        })
    }
    

    ObrisiPrethodniRepertoar()
    {
        let repertoarTeloTabele = document.querySelector(".RepertoarTeloTabele");
        let roditelj = repertoarTeloTabele.parentNode;
        roditelj.removeChild(repertoarTeloTabele);

        repertoarTeloTabele = document.createElement("tbody");
        repertoarTeloTabele.className="RepertoarTeloTabele";
        roditelj.appendChild(repertoarTeloTabele);
        return repertoarTeloTabele;
    }


    crtajTabeluRepertoar(host){

        var tabela = document.createElement("table");
        host.appendChild(tabela);

        var tabelahead= document.createElement("thead");
        tabela.appendChild(tabelahead);

        var tr = document.createElement("tr");
        tabelahead.appendChild(tr);

        var tabelaBody = document.createElement("tbody");
        tabelaBody.className="RepertoarTeloTabele";
        tabela.appendChild(tabelaBody);

        let th;
        var zag=["Datum", "Vreme", "Scena", "Predstava", "________"];
        zag.forEach(el=>{
            th = document.createElement("th");
            th.innerHTML=el;
            tr.appendChild(th);
        })
    }

    crtajFormuIzvodjenje(host)
    {
        let labela = document.createElement("h3");
        labela.innerHTML="IZVOĐENJE";
        host.appendChild(labela);

        let minikont1 = document.createElement("div");
        minikont1.className="minikont";
        host.appendChild(minikont1);

        labela = document.createElement("label");
        labela.innerHTML="Predstava:";
        minikont1.appendChild(labela);

        
        var se = document.createElement("select");
        se.className="predstavaSelect"
        minikont1.appendChild(se);

        let op;
        this.listaPredstava.forEach(p => {
            
            op=document.createElement("option");
            op.innerHTML=p.naziv;
            op.value=p.id;
            se.appendChild(op);
            
        });

        let minikont2 = document.createElement("div");
        minikont2.className="minikont";
        host.appendChild(minikont2);
        

        let minikont3 = document.createElement("div");
        minikont3.className="minikont";
        host.appendChild(minikont3);
        
        let minikont4 = document.createElement("div");
        minikont4.className="minikont";
        host.appendChild(minikont4);

        let labela2b = document.createElement("label");
        labela2b.innerHTML="Datum:";
        minikont2.appendChild(labela2b);
        let datumPoljeB = document.createElement("input");
        datumPoljeB.className = "datumPolje2";
        datumPoljeB.type = "date";
        minikont2.appendChild(datumPoljeB);

        labela2b = document.createElement("label");
        labela2b.innerHTML="Vreme:";
        minikont2.appendChild(labela2b);
        let vremePoljeB = document.createElement("input");
        vremePoljeB.className = "vremePolje2";
        vremePoljeB.type = "time";
        minikont2.appendChild(vremePoljeB);

        
        let labela3 = document.createElement("label");
        labela3.innerHTML="Scena:";
        minikont3.appendChild(labela3);

        let dugmeScene = document.createElement("button");
        dugmeScene.innerHTML=">";
        dugmeScene.className="dugmeScene";
        minikont3.appendChild(dugmeScene);
        dugmeScene.onclick=(ev)=>this.UveziScene2(minikont3);

        var scenaSelect = document.createElement("select");
        scenaSelect.className="scenaSelect";
        minikont3.appendChild(scenaSelect);

        
        let dugmeDodaj2 = document.createElement("button");
        dugmeDodaj2.innerHTML="DODAJ";
        dugmeDodaj2.className="Dugme";
        minikont4.appendChild(dugmeDodaj2);

        dugmeDodaj2.onclick=(ev)=>this.dodajIzvodjenje2(minikont1, minikont3, minikont2);
    }    

    UveziScene2(host){

        this.listaScena=[];
        var selectScene= this.ObrisiPrethodneScene();
        
        let op;

        fetch("https://localhost:5001/Pozoriste/PreuzetiScene/"+this.id,
        {
            method:"GET"
        }).then(s=>{
            if(s.ok){
               
                s.json().then(data=>{
                    data.forEach(s=>{
                        let pr = new Scena(s.id,s.naziv);  

                        op=document.createElement("option");
                        op.innerHTML=s.naziv;
                        op.value=s.id;
                        selectScene.appendChild(op); 
                        this.listaScena.push(pr);

                    })


                })
            }
        })
    }

    ObrisiPrethodneScene()
    {
        let scenaSelect = document.querySelector(".scenaSelect");
        let roditelj = scenaSelect.parentNode;
        roditelj.removeChild(scenaSelect);

        scenaSelect = document.createElement("select");
        scenaSelect.className="scenaSelect";
        roditelj.appendChild(scenaSelect);
        return scenaSelect;
    }

    
    dodajIzvodjenje2(minikont1, minikont3, minikont2){

        
        var datumEl = minikont2.querySelector(".datumPolje2");
        var datumSamo=datumEl.value;
        
        if(datumSamo===undefined || datumSamo===null || datumSamo==="")
        {
            alert("Unesite odgovarajući datum!");
        }
        var vremeEl = minikont2.querySelector(".vremePolje2");
        var vremeSamo=vremeEl.value;
        var datum = datumSamo+" "+vremeSamo;
        if(vremeSamo===undefined || vremeSamo===null || vremeSamo==="")
        {
            alert("Unesite odgovarajuće vreme!");
        }

        let optionEl = minikont1.querySelector("select");
        var predstavaID = optionEl.options[optionEl.selectedIndex].value;
        
        let optionEl2 = minikont3.querySelector("select");        
        var scenaID = optionEl2.options[optionEl2.selectedIndex].value;

        fetch("https://localhost:5001/Izvodjenje/DodatiIzvodjenje/"+this.id+"/"+scenaID+"/"+predstavaID+"/"+datum,
        {
            method:"POST"
        }).then( s=>
            {
                
                if(s.status == 400)
                {
                    alert("Dolazi do preklapanja datuma!");
                    return;
                }
                if (s.status == 200)
                {
                    
                    alert("Uspesno dodato izvodjenje!");
                    this.ucitajRepertoar();
                    return;
                   
                }
            })


    }

    
}