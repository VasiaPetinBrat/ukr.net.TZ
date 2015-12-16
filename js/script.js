$(document).ready(function(){
    $('#preloader').css('display', 'none');
    $('#artist').change(function() {
        $("#insertDiv").html("");
        var artist = $('#artist').val();
        if(artist != '')
        {
            $('#preloader').css('display', 'inherit');
            $.post("musicsearcher.php", {getVideoDetails: artist})
                .done(function (data) {
                    $('#preloader').css('display', 'none');
                    var obj = $.parseJSON(data);
                    $("#insertDiv").append("<div class='tr'><div class='insertInfoClass'><b>Total views of artist's videos: &nbsp;</b></div><div class='insertInfoClass'>"+obj[0].totalView+"</div></div>");
                    $("#insertDiv").append("<div class='tr'><div class='insertInfoClass'><b>The most popular video: &nbsp;</b></div><div class='insertInfoClass'> <a target='_blank' href='https://www.youtube.com/watch?v="+obj[0].topVideoId+"'>"+obj[0].title+"</a></div></div>");
                });
        }
    });
});
