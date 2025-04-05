-1/*
SELECT SUM(total) AS total_amount
FROM Invoice
WHERE billing_country = 'USA'
  AND invoice_date BETWEEN '2009-01-01' AND '2009-12-31';
  */


 -2
/*
 SELECT 
    t.track_id,
    t.name AS track_name,
    p.playlist_id,
    pl.name AS playlist_name
FROM 
    Track t
INNER JOIN 
    PlaylistTrack pt ON t.track_id = pt.track_id
INNER JOIN 
    Playlist pl ON pt.playlist_id = pl.playlist_id;
*/
-3
SELECT 
    t.track_id,
    t.name AS track_name,
    t.milliseconds,
    ar.name AS artist_name
FROM 
    Track t
INNER JOIN 
    Album al ON t.album_id = al.album_id
INNER JOIN 
    Artist ar ON al.artist_id = ar.artist_id
WHERE 
    al.title = 'Let There Be Rock'
ORDER BY 
    t.milliseconds DESC;