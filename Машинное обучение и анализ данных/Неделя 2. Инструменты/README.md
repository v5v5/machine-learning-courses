select avg(mip) 
from (
select * 
from pulsar_stars
where target=0 and 82.9453125<=mip and mip<=84.3515625
union
select * 
from pulsar_stars
where target=1 and 83.7734375<=mip and mip<=92.6015625
)
