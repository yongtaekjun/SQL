/**  use Database: EntertainmentAgencyExample  ******/

-- who are the entertainer who play in Seattle
---- need Entertainers table
---- need Musical_Styles table
---- need Entertainer_Styles table

select distinct Musical_Styles.StyleName from Musical_Styles
--inner join Entertainer_Styles -- what is the diff using join or not
--on Musical_Styles.StyleID = Entertainer_Styles.StyleID
where Musical_Styles.StyleID in 
(
	select distinct Entertainer_Styles.StyleID from Entertainer_Styles
	--inner join Entertainers
	--on Entertainers.EntertainerID = Entertainer_Styles.EntertainerID
	where Entertainer_Styles.EntertainerID in 
	(
		select Entertainers.EntertainerID from Entertainers
		where Entertainers.EntCity like '%Sea%'
	)
)


--- list member name who entertainer_style is musical style
select distinct Musical_Styles.StyleName from 
inner join Musical_Styles
on Musical_Styles.StyleID
where Musical_Styles.StyleID in 
(
	select distinct Entertainer_Styles.StyleID from Entertainer_Styles
	where Entertainer_Styles.EntertainerID in 
	(
		select Entertainers.EntertainerID from Entertainers
		where Entertainers.EntCity like '%Sea%'
	)
)