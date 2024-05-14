select 
    salario
from {{ ref('stg_ejercicio__salarios') }}
where not(salario > 0)