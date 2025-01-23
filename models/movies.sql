-- SELECT  CAST(id as INT) as movie_id, 
--     TO_DATE("Release_Date", 'YY-MM-DD') as release_date,
--     "IMDB_URL" as imdb_url,
--     CAST(CAST("Film_Noir" as INT) as BOOLEAN) as film_noir,
--     CAST(CAST("Action" as INT) as BOOLEAN) as action
-- FROM {{ source('recommmender_system_raw', 'movies') }}

-- War
-- Crime
-- Drama
-- Action
-- Comedy
-- Horror
-- Sci_Fi
-- Fantasy
-- Musical
-- Mystery
-- Romance
-- Western
-- Thriller
-- Adventure
-- Animation
-- Film_Noir
-- Children_s
-- Documentary


SELECT
    CAST(id AS INT) AS movie_id,
    TO_DATE("Release_Date", 'YY-MM-DD') AS release_date,
    "IMDB_URL" AS imdb_url,
    {{ cast_genres([
        "War",
        "Crime",
        "Drama",
        "Action",
        "Comedy",
        "Horror",
        "Sci_Fi",
        "Fantasy",
        "Musical",
        "Mystery",
        "Romance",
        "Western",
        "Thriller",
        "Adventure",
        "Animation",
        "Film_Noir",
        "Children_s",
        "Documentary", 
    ]) }}
FROM {{ source('recommmender_system_raw', 'movies') }}


