{% macro cast_genres(genres) %}
    {% for genre in genres %}
    CAST(CAST("{{ genre }}" AS INT) AS BOOLEAN) AS {{ genre | lower | replace("-", "_") }}{% if not loop.last %},{% endif %}
    {% endfor %}
{% endmacro %}

