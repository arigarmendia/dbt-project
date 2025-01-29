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


