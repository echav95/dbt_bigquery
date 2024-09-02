{% test primary_key(model, column_name) %}
-- Can have multiple test per file

{#
	This test is basically a "not_null" and "unique"
	rolled into one.

	It fails if a column is NULL or occurs more than once
#}

With validation As (
    Select
    {{ column_name }} AS primary_key,
        COUNT(1) AS occurences
    FROM {{ model }}
    GROUP BY 1
)
Select *
From validation
Where
    primary_key Is NULL
    Or occurences > 1

{% endtest %}
