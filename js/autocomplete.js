$(document).ready(function() {
    $("#speciesInput0").keyup(function() {
        var query = $("#speciesInput0").val();
        
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
                        $("#response").html(data);
                    },
                    dataType: 'text'
                }
            )
        }
    })

        $(document).on('click', 'li', function () {
            var speciesPL = $(this).text();
            $("#speciesInput0").val(speciesPL);
            $("#response").html("");
        })
})