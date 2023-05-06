

{% set my_cool_string = 'wow! cool!' %}
{% set my_second_cool_string = 'this is jinja' %}
{% set my_cool_number = 100 %}

{{ my_cool_string }} {{ my_second_cool_string }} I want to write jinja for {{ my_cool_number }} years




{% set my_animals = ['lemur', 'wolf', 'panter', 'małpa'] %}

{{ my_animals[0] }}
{{ my_animals[1] }}
{{ my_animals[2] }}
{{ my_animals[3] }}



{%- for animal in my_animals %}

    My favorite animal is the {{ animal }}

{%- endfor %}




{% set temperature = 45 %}

{% if temperature < 65 %}
    Time for cappucino
{% else %}
    Czas na zimne piwko
{% endif %}




{% set foods = ['carrot', 'hotdog', 'cucumber', 'bell peper'] -%}

{%- for food in foods -%}
    {%- if food == 'hotdog' -%}
        {%- set food_type = 'snack' -%}
    {%- else -%}
        {%- set food_type = 'vegetables' -%}
    {%- endif %}
    Pozywienie {{ food }} to moje ulubione {{ food_type }}
{%- endfor %}





{% set webster_dict = {
    'word': 'data',
    'speech_part': 'noun',
    'definition': 'if you know you know'
} %}

{{ webster_dict['word'] }}({{ webster_dict['speech_part'] }}) is defined: {{ webster_dict['definition'] }}
