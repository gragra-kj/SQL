USE united_nations;

select
	SUM(land_area)
From
	Geographic_Location
WHERE
	Sub_region="Middle Africa"
    