export class Uloga{
    
    constructor(id, lik, glumac){
        this.id = id;
        this.lik = lik;
        this.glumac = glumac;
    }

    crtajUloguRed(host){
        var tr=document.createElement("tr");
        host.appendChild(tr);

        var el = document.createElement("td");
        el.innerHTML=this.lik;
        tr.appendChild(el);

        el = document.createElement("td");
        el.innerHTML=this.glumac;
        tr.appendChild(el);

    }
    
}