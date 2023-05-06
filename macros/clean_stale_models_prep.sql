{% set database = target.database %}
{% set schema = target.schema %}

select 
    table_type,
    table_schema,
    table_name,
    last_altered,
    case
        when table_type = 'VIEW'
            then table_type 
        else
            'TABLE'
        end as drop_type,
    'DROP ' || drop_type || ' {{ database | upper }}.' || table_schema || '.' || table_name || ';'
  
from {{ database }}.INFORMATION_SCHEMA.TABLES
where table_schema = upper('{{ schema }}')
order by LAST_ALTERED desc