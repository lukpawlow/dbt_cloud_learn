{%- macro union_tables_by_prefix(database, schema, prefix) -%}
  
    {%- set tables = dbt_utils.get_relations_by_prefix(database=database, schema=schema, prefix=prefix) -%}

    {{ log('tables: ' ~ tables, info=True) }}

    {% for table in tables %}
        {%- if not loop.first -%}
            union all
        {%- endif %}

        select * from {{ table.database }}.{{ table.schema }}.{{ table.name }}
      
    {% endfor -%}

{%- endmacro -%}