-- lists all shows from hbtn_0d_tvshows_rate based on their ratings.
-- Lists all rows of a table according to the sum of linked rows.
SELECT title, SUM(tv_show_ratings.rate) 'rating'
FROM tv_shows
LEFT JOIN tv_show_ratings ON tv_show_ratings.show_id = tv_shows.id
GROUP BY title
ORDER BY rating DESC;