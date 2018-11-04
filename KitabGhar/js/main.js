function enableSubmit(){

        var whichButton = document.getElementsByName("rating");
        var len = whichButton.length;

        for(i = 0; i < len; i++){
                if(whichButton[i].checked){
                        document.getElementById("btnSubmit").disabled = false; 
                }
        }
}
