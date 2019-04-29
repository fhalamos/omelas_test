*Data Engineering Intern Test, for Omelas.co*
by Felipe Alamos

Files in this repo:

schema.sql: contains the database DDL schema
query.sql: query using both tables to calculate number of crimes/habitant for each state
api_call.ipynb: jupyter notebook that gets census data and crime data, merges it and calculates crimes/habitant per state

Things I would do with more time:

-I would invest more time in meaningful analysis. Here just because of time I only focused on calculating number of crimes per population in each states. It could also be interesting to analyze things like:
.Most recurrent type of crime for each state
.Correlation between median income and number of crimes
.Correlation between racial composition and number of crimes

-I think state level is a too high level of aggregation for this analysis. Would be better to at least use cities or zip code.

-I would create a heatmap of crime/habitat for states in the us. Thats more informative than a barplot.

-I would modularize the code, now is just everything in the main code. Would rather create methods to load data from different sources, to format data frames (ex, change column names, types)
