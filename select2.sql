
select name, duration from Tracks 
ORDER by duration desc 
limit 1;

select name from tracks
where duration >='210';

select name from Collection
where Year_release between '2018' and'2020';

select name from artists
where name not like '% %';

select name from tracks
where tracks.name  ~~'%%My%%' or tracks.name ~~'%% Moi%%' or tracks.name ~~'%%my%%' or tracks.name ~~'%%Moi %%' or tracks.name ~~'Moi';
