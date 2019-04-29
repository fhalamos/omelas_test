-- Rank states order by number of crimes/habitant,
-- Also includes median income state
-- Goal: Identify states where more crimes occur and study if these are correlated to their median income (do poorer states have higher crimes/habitant?)

-- Could also be interesting to add most common type of crime, most relevant terrorist group.

with statesAndNumberCrimes (state_id, n_crimes) as (
	select state_id, count(crime.id)
	from crime 
	group by state_id
)

select s.state_id, s.name,
	CAST(statesAndNumberCrimes.n_crimes as float)/CAST(s.population as float) as crimesPerHabitant,
	s.median_income
from State as s 
inner join statesAndNumberCrimes on s.state_id = statesAndNumberCrimes.state_id
order by crimesPerHabitant desc;