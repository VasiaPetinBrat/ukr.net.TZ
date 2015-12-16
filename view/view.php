<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Video list</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <script src="js/jquery.js"></script>
    <script src="js/script.js"></script>
</head>
<body>
    <div class="container">
        <div id="preloader">
            <img src="img/preloader.gif" alt="">
        </div>
        <div class="content1" id="content1">
                <b class="pad">All videos of all artists: &nbsp;</b>
                <ul>
                <?php
                    $videoAndArtistList = $model->getVideosAndArtists();
                    for($j=0, $count=count($videoAndArtistList); $j < $count; $j++)
                    {
                        echo '<li><a target="_blank" href="https://www.youtube.com/watch?v='.htmlspecialchars_decode($videoAndArtistList[$j]['videoId'], ENT_QUOTES).'">'.htmlspecialchars_decode($videoAndArtistList[$j]['title'], ENT_QUOTES).'</a>></li>';
                    }
                ?>
                </ul>
        </div>
        <div class="content2" id="content2">
            <b>Choose the artist: &nbsp;</b>
            <select name="artist" id="artist">
                <?php
                    $artistInfo = $model->selectEverythingFromArtists();
                    $options = '<option selected></option>';
                    for($j=0, $count=count($artistInfo); $j < $count; $j++)
                    {
                        $options.= '<option value="'.$artistInfo[$j]['id'].'">'.htmlspecialchars_decode($artistInfo[$j]['name'], ENT_QUOTES).'</option>';
                    }
                    echo $options;
                ?>
            </select>
            <div id="insertDiv">

            </div>
        </div>
    </div>
</body>
</html>