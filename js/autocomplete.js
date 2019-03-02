var inputID = "";
var response = "";

$(document).ready(function() {
    $(document.body).on('keyup', '.autoCompleteInput' ,function(e){
        var query = $(this).val();

        if (inputID == ""){
        inputID = e.target.id;
        response = "#response"+inputID;   
        console.log(inputID); 
        }    
       
        if(query.length > 2) {
            $.ajax(
                {
                    url:'autocomplete.php',
                    method: 'POST',
                    data: {
                        search: 1,
                        q: query
                    },
                    success: function(data) {
                        $(response).html(data);
                    },
                    dataType: 'text'
                }
            )
        }
    })
        $(document).on('click', 'li', function () {
            var speciesPL = $(this).text();
            $("#"+inputID).val(speciesPL);
            $(response).html("");
            inputID = "";
            response = "";
        })
})