with trips_unioned as 
(
select * from {{ref('int_trips_unioned')}}

)
, vendors as 
(
select distinct vendor_id 
, {{my_new_project.get_vendor_names('vendor_id')}} as vendor_name
from trips_unioned

)
select * from vendors