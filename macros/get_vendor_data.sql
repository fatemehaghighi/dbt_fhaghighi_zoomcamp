{% macro get_vendor_names(vendor_id) -%}
case 
    when {{vendor_id}}=1 then 'A'
    when {{vendor_id}}=2 then 'B'
    when {{vendor_id}}=4 then 'C'
end
{%- endmacro %}

