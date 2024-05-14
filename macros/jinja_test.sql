{%- macro perro(nombre,raza,genero='M') -%}
Mi perrit
{%- if genero=='M' -%}
o
{%- else -%}
a
{%- endif -%} 
'es un {{ raza }} y se llama {{ nombre }}'  
{%- endmacro -%}

