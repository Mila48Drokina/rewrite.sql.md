select t.name from tracks t
left join track_collection tc on t.id = tc.track_id 
where tc.track_id is null;


select distinct(al.name) from albums al
join AlbumsArtists aa on al.id = aa.album_id 
join artists ar on aa.artist_id = ar.id 
join genre_artists am on ar.id = am.artist_id 
group by al.name, ar.id 
having count(am.musical_genre_id) > 1;

select ar.name from artists ar 
join albumsartists aa on ar.id = aa.artist_id
join albums al on aa.album_id = al.id
join tracks t on al.id = t.album_id 
where duration = (select min(duration) from tracks);



select al.name from Albums al
join tracks t on al.id = t.album_id 
group by al.name
having count(t.name) = (select count(t.name) from tracks t
join albums al on t.album_id = al.id
group by al.name
order by count(t.name)
limit 1);