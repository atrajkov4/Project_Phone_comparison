    
    
    function create(){
        var t18 = document.getElementById("prijedlog");
        var ende = document.getElementById("prijedlozi");
        var sadrzaj="";
        sadrzaj += '<hr><form id="forma" method="post" action="prijedlog.php"><p>(Samsung = 1,LG = 2,Oneplus = 3,Sony = 4,Microsoft = 5,Lenovo = 6,Xiaomi=7,iPhone = 8,Huawei = 9,HTC = 10)</p><br><input type="text" id="brand" name="brand" placeholder="Marka telefona"><br><input type="text" placeholder="Model" name="model" id="model" ><br><input type="text" id="vel_ekrana" name="vel_ekrana" placeholder="Veličina ekrana"><br><input type="text" id="baterija" name="baterija" placeholder="Baterija"><br><input type="text" placeholder="Prednja kamera?(d/n)" id="Prednja_kamera" name="Prednja_kamera"><br><input type="text" placeholder="Procesor" id="procesor" name="procesor"><br><input id="memorija" name="memorija" placeholder="Memorija" type="text"><br><input type="text" id="RAM" name="RAM" placeholder="RAM"><br><input type="text" placeholder="Kamera" id="kamera" name="kamera"><br><input type="submit" value="Pošalji"></form><br>';
        ende.innerHTML += sadrzaj;
        t18.disabled=true;
    
}

