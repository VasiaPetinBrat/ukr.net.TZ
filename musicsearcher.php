<?php

    require_once('model/model.php');
    require_once('google-api-php-client-1-master/src/Google/autoload.php');
    require_once('google-api-php-client-1-master/src/Google/Client.php');
    require_once('google-api-php-client-1-master/src/Google/Service/YouTube.php');

    $DEVELOPER_KEY = 'AIzaSyCjEfURXRMPSsxnVwDGuZhBQuz_iWIlu4g';

    $client = new Google_Client();
    $client->setDeveloperKey($DEVELOPER_KEY);
    $youtube = new Google_Service_YouTube($client);
    $model = new Model('localhost', 'root', '123456', 'music');

    if($_POST['getVideoDetails'])
    {
        $videoDetails = $model->getVideosByArtistId($_POST['getVideoDetails']);
        $videoStatistic = array();
        $videoFinalStat = array();
        for($j=0, $count=count($videoDetails); $j < $count; $j++)
        {
                $videosResponse = $youtube->videos->listVideos('id,statistics,snippet', array(
                    'id' => $videoDetails[$j]['videoId'],
                ));
            array_push($videoStatistic, array(
                'viewCount' => $videosResponse['items'][0]['statistics']['viewCount'],
                'videoId' => $videoDetails[$j]['videoId'],
                'title' => $videosResponse['items'][0]['snippet']['title']
            ));
        }
        $sum = 0;
        $topViewVideoId = array('topViewVideoId' => '', 'viewCount' => 0, 'title' => '');
        for($i = 0, $count=count($videoStatistic); $i < $count; $i++)
        {
            $sum+=$videoStatistic[$i]['viewCount'];
            if($videoStatistic[$i]['viewCount'] > $topViewVideoId['viewCount'])
            {
                $topViewVideoId['viewCount'] = $videoStatistic[$i]['viewCount'];
                $topViewVideoId['topViewVideoId'] = $videoStatistic[$i]['videoId'];
                $topViewVideoId['title'] = $videoStatistic[$i]['title'];
            }
        }
        array_push($videoFinalStat, array(
            'totalView' => $sum,
            'topVideoId' => $topViewVideoId['topViewVideoId'],
            'title' => $topViewVideoId['title'],
        ));
        echo json_encode($videoFinalStat);
    }

    try {
        $videosIds = array();
        $videos = array();
        $artists = $model->selectEverythingFromArtists();

        for($i = 0, $count=count($artists); $i < $count; $i++) {

            $searchResponse = $youtube->search->listSearch('snippet,id', array(
                'type' => 'video',
                'q' => $artists[$i]['name'],
                'maxResults' => '5',
            ));

            for($j = 0,$count2 = count($searchResponse); $j < $count2; $j++) {

                array_push($videos, array(
                    'videoId' => $searchResponse['items'][$j]['id']['videoId'],
                    'title' => $searchResponse['items'][$j]['snippet']['title'],
                    'artistId' => $artists[$i]['id'],
                ));

                $videosIds[] = $searchResponse['items'][$j]['id']['videoId'];
            }

        }

    } catch (Google_Service_Exception $e) {
        $htmlBody .= sprintf('<p>A service error occurred: <code>%s</code></p>',
            htmlspecialchars($e->getMessage()));
    } catch (Google_Exception $e) {
        $htmlBody .= sprintf('<p>An client error occurred: <code>%s</code></p>',
            htmlspecialchars($e->getMessage()));
    }

?>


