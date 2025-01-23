-- SELECT  CAST(id as INT) as movie_id, 
--     TO_DATE("Release_Date", 'YY-MM-DD') as release_date,
--     "IMDB_URL" as imdb_url,
--     CAST(CAST("Film_Noir" as INT) as BOOLEAN) as film_noir,
--     CAST(CAST("Action" as INT) as BOOLEAN) as action
-- FROM {{ source('recommmender_system_raw', 'movies') }}

--     "Film_Noir",
--     "Action",
--     "adventure",
--     "horror",
--     "war",
--     "index",
--     "romance", 
--     "Name",
--     "western",
--     "documentary",
--     "Sci_Fi",
--     "drama",
--     "thriller",
--     "crime",
--     "Children_s",
--     fantasy,
--     animation,
--     comedy,
--     mystery, 
--     musical

SELECT
    CAST(id AS INT) AS movie_id,
    TO_DATE("Release_Date", 'YY-MM-DD') AS release_date,
    "IMDB_URL" AS imdb_url,
    {{ cast_genres([
        "Film_Noir",
        "Action"
    ]) }}
FROM {{ source('recommmender_system_raw', 'movies') }}


