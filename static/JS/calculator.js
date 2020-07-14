// Initialize slider with available sizes 
function initSlider(){
    var sizes = ['XS','S', 'M',	'L', 'XL', 'XXL'];
    var slider = document.getElementById("myRange");
    var output = document.getElementById("demo");

    output.innerHTML = sizes[slider.value];

    slider.oninput = function() {
    output.innerHTML = sizes[this.value];
    }
}


// Initialize dropdown with available gloves 
function initDropdown(){
    const Http = new XMLHttpRequest();
    const url='/glovesInfo/names';
    Http.open("GET", url);
    Http.send();

    Http.onreadystatechange = (e) => {
        var res = JSON.parse(Http.responseText);
        generateDropdown(res);
    }
}


// This is a really bad solution 
// generates the dropdown menu
// lookup initDropdown()
function generateDropdown( res){
    for(var i = 0; i < res.length;i++){
        var glove = res[i]; 
        var gloveName = document.createTextNode(glove.gloveName);
        var option = document.createElement("option")
        option.value = glove.gloveName;
        option.appendChild(gloveName);
        gloves.appendChild(option);
    }
}

// Calculate gloves material needed for N gloves 
function calculate(){

        // Get initial values
        var amount = document.getElementById("calculatorInput").value;
        var glove = document.getElementById("gloves").value;
        var size = document.getElementById("myRange").value;

        // Debugging 
        console.log(amount);
        console.log(glove);
        console.log(size);

        // Send request for gloveMaterialNeeded
        const Http = new XMLHttpRequest();
        const url='glovesInfo/materialNeeded/';
        Http.open("GET", url + glove);
        Http.send();

        Http.onreadystatechange = (e) => {
            var matsNeeded = JSON.parse(Http.responseText).gloveMaterialNeeded;


            // Calculation based on 
            // amount - gloves needed
            // size - number representing the size of the glove
            // gloveMaterialNeeded - material needed  to make one 
            // 0.1 - magic number 
            // glove from a specific type

            var result = (amount * size * 0.1 * matsNeeded).toFixed(3);;
            // result.toFixed(3);
            // var result = amount * size;

            document.getElementById("result").innerHTML = result + " M²";
        }
    
}

initSlider();
initDropdown();

document.getElementById("calculationTrigger").onclick = ()=>calculate();