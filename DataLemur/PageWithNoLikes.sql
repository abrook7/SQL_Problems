-- https://datalemur.com/questions/sql-page-with-no-likes

SELECT page_id
FROM pages
WHERE page_id NOT IN (
    SELECT pages.page_id
    FROM pages
    INNER JOIN page_likes
      ON page_likes.page_id = pages.page_id
    GROUP BY pages.page_id
);