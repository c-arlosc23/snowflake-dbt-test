with 

empleados as (
    select * from {{ ref('stg_ejercicio__empleados') }}
),

plazas as (
    select * from {{ ref('stg_ejercicio__plazas') }}
),

salarios as (
    select * from {{ ref('stg_ejercicio__salarios') }}
),

final as (
    select 
        empleados.empleado_id,
        empleados.nombre,
        plazas.plaza,
        plazas.nominera,
        salarios.salario
    from empleados
    join plazas on empleados.empleado_id = plazas.empleado_id
    join salarios on plazas.plaza_id = salarios.plaza_id
)

select * from final

