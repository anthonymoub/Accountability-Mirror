-- link: https://datalemur.com/questions/top-fans-rank

-- solution:

WITH RANKINGS AS (SELECT
    sub.artist_name,
    sub.number_songs,
    DENSE_RANK() OVER (ORDER BY sub.number_songs DESC) AS dense_rank
FROM (
    SELECT
        a.artist_name,
        COUNT(g.song_id) AS number_songs
    FROM
        global_song_rank g
    INNER JOIN
        songs s ON g.song_id = s.song_id
    INNER JOIN
        artists a ON s.artist_id = a.artist_id
    WHERE
        g.rank <= 10
    GROUP BY
        a.artist_name
) AS sub
ORDER BY
    sub.number_songs DESC
)

SELECT artist_name, dense_rank as artist_rank
FROM RANKINGS
WHERE dense_rank <=5


