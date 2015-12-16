<?php
class Model
{
    function __construct($host = null, $user = null, $password = null, $base = null)
    {
        $link = mysql_connect($host, $user, $password);
        mysql_select_db($base, $link) or die ("Can't use " . $base . " : " . mysql_error());
        if (!$link) {
            die('connection error: ' . mysql_error());
        }
    }

    private static function DoQuery($query)
    {
        $result = mysql_query($query) or trigger_error(mysql_error().$query);
        return $result;
    }

    public function selectEverythingFromArtists()
    {
        $query = 'SELECT * FROM `artists`';
        $result = Model::DoQuery($query);
        $artistList = array();
        if(mysql_num_rows($result) > 0)
        {
            for($i = 0; $i < mysql_num_rows($result); $i++)
            {
                $artistList[] = mysql_fetch_assoc($result);
            }
        }
        return $artistList;
    }

    public function insertSongsAndArtists($videos)
    {
        $query = 'DELETE FROM `videos`';
        Model::DoQuery($query);
        for($i = 0; $i < count($videos); $i++)
        {
            $query = 'INSERT INTO `videos` (videoId, title, artist_id) VALUES("'.htmlspecialchars($videos[$i]['videoId'], ENT_QUOTES).'",
            "'.htmlspecialchars($videos[$i]['title'], ENT_QUOTES).'", "'.htmlspecialchars($videos[$i]['artistId'], ENT_QUOTES).'")';
            Model::DoQuery($query);
        }
    }

    public function getVideosAndArtists()
    {
        $query = 'SELECT * FROM `artists` a LEFT JOIN `videos` v ON a.id=v.artist_id';
        $result = Model::DoQuery($query);
        $videoAndArtistList = array();
        if(mysql_num_rows($result) > 0)
        {
            for($i = 0; $i < mysql_num_rows($result); $i++)
            {
                $videoAndArtistList[] = mysql_fetch_assoc($result);
            }
        }
        return $videoAndArtistList;
    }

    public function getVideosByArtistId($id)
    {
        $query = 'SELECT * FROM `videos` WHERE artist_id="'.$id.'"';
        $result = Model::DoQuery($query);
        $videoDetails = array();
        if(mysql_num_rows($result) > 0)
        {
            for($i = 0; $i < mysql_num_rows($result); $i++)
            {
                $videoDetails[] = mysql_fetch_assoc($result);
            }
        }
        return $videoDetails;
    }

    public function updateVideosWithViewCountsAndGetThem($viewCountList)
    {
        for($i = 0,$count = count($viewCountList); $i < $count; $i++)
        {
            $query = 'UPDATE `videos` SET viewCount="'.$viewCountList[$i]['viewCount'].'" WHERE videoId="'.$viewCountList[$i]['videoId'].'"';
            Model::DoQuery($query);
        }
    }

}