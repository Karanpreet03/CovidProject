select * from coviddeaths c2 
order by 3,4;

-- selecting the data that we are going to use
select c.location, c.date, c.total_cases, c.new_cases, c.total_deaths, c.population
from coviddeaths c 
order by 1,2;
 
-- Looking total cases v/s total deaths
-- Showing estimate percentage of deaths in US
select c.location, c.date, c.total_cases, c.total_deaths, c.population, (c.total_deaths/c.total_cases)*100 as death_percentage
from coviddeaths c 
order by 1,2;

-- Looking total cases v/s population
-- Shows the percentage of covid patients in Asia
select c.location, c.date, c.total_cases, c.total_deaths, c.population, (c.total_cases /c.population )*100 as covid_patients_percentage
from coviddeaths c 
where location like '%Asia%'
order by 1,2;

-- Country that has the highest infection rates compared to population
select c.location, max(c.total_cases) as infection_count, c.population, max((c.total_cases/c.population))*100 as infection_percentage
from coviddeaths c 
where c.total_cases is not null and c.population is not null
group by c.location, c.population
order by infection_percentage desc;

-- Country that has highest death counts compared to population
select c.location, max(c.total_deaths) as total_deaths_count, c.population, max((c.total_deaths/c.population))*100 as death_percentage
from coviddeaths c 
where c.population is not null and c.total_deaths is not null
group by c.location, c.population
order by total_deaths_count desc;	

-- Mapping total deaths by continents
select c.location, max(c.total_deaths ) as total_deaths 
from coviddeaths c 
where c.location not like '%World%'
group by c.location
order by total_deaths desc;

-- Global number
select c.location, sum(c.new_cases) as new_total_cases , sum(c.new_deaths) as new_total_deaths , sum(new_deaths)/sum(c.new_cases)*100 as death_percentage
from coviddeaths c 
group by c.location
order by 1,2;

-- Joining two tables
select * 
from coviddeaths c 
join covidvaccinated c2 
on c.location = c2.location
and c.date = c2.date

-- Total population v/s Vaccinations
select c.location, c.date, c.population, c2.new_vaccinations, sum(cast(c2.new_vaccinations as float)) over (partition by c.location order by c.location, c.date) as rolling_vaccinations
from coviddeaths c 
join covidvaccinated c2 
on c.location = c2.location
and c.date = c2.date
where c2.new_vaccinations is not null and trim(c2.new_vaccinations)<>''
order by 1,2;

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From coviddeaths c 
--Where location like '%states%'
where continent is not null 
--Group By date
order by 1,2

-- Just a double check based off the data provided
-- numbers are extremely close so we will keep them - The Second includes "International"  Location


--Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
--From PortfolioProject..CovidDeaths
----Where location like '%states%'
--where location = 'World'
----Group By date
--order by 1,2


-- 2. 

-- We take these out as they are not inluded in the above queries and want to stay consistent
-- European Union is part of Europe

Select location, SUM(cast(new_deaths as int)) as TotalDeathCount
From coviddeaths c 
--Where location like '%states%'
Where (continent IS NULL OR TRIM(continent) = '') 
and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc


-- 3.

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From coviddeaths c 
--Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc


-- 4.
select c.population, c.total_cases
from coviddeaths c 

SELECT 
    c.location, 
    c.population,
    c.date,
    MAX(c.total_cases) AS HighestInfectionCount,
    MAX(c.total_cases / c.population) * 100 AS PercentPopulationInfected
FROM 
    coviddeaths c
WHERE c.population IS NOT NULL AND c.population > 0
GROUP BY 
    c.location, c.population, c.date
ORDER BY 
    PercentPopulationInfected DESC;
