-- Display all shows within hbtn_0d_tvshows that are associated with at least one genre.
-- List all rows from a database that share a common column.
SELECT tv_shows.title, tv_show_genres.genre_id FROM tv_shows INNER JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id ORDER BY tv_shows.title ASC, tv_show_genres.genre_id ASC;