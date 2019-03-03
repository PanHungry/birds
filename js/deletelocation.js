$('.deletebtn').click(function () {
    
    var tr = $(this).closest('tr'),
        del_id = $(this).attr('id');
        console.log(del_id);

        $.ajax(
            {
                url:'deletepage.php',
                method: 'POST',
                data: {
                    deleteid: del_id
                },
                success:function(result){
                    tr.fadeOut(1000, function(){
                        $(this).remove();
                    });
                }
            });
});