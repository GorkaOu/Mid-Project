# Mid-Project
* Gorka Outeiral Ramos
* Iron Hack, March - 2023

### Overview

In this project, you will find a model where you will discover the best district of Madrid according to specific filters. In this case, the filters used have been chosen based on some requirements I was looking for in Madrid, such as that the area has many restaurants, bus/metro stops, cultural events, etc.

For this, I have made a ranking for each filter in such a way that if a district comes first, it will get one point, but if it comes last, it will get 21 points (There are 21 districts in Madrid). There are filters that score the other way round, i.e. if you come first you will get 21 points and if you come last you will get 1 point.

Finally, the results will be summed up and the district with the lowest result will be the best valued.

**All information has been exported from many of the tables included in:**
* https://www.kaggle.com/datasets/rusiano/madrid-airbnb-data
* https://datos.madrid.es/portal/site/egob (“Catálogo de datos” sub-folders)
* https://www-s.madrid.es/CSEBD_WBINTER/arbol.html# (“Edificación y Vivienda” sub-folders)

**Databases**

You can find all the databases in the "Databases" folder.

**Used:**
* Python
* Jupyter Notebook
* MySQL
* Tableau



**Clean Data and save cleaned dataframes into ‘.csv’ files.**

Python / Jupyter Notebook ("Cleaning Data.ipynb")

**Export / Import Tables from Jupyter Notebook to MySQL**

Export to MySQL and import to Jupyter Notebook ("exploratory Analysis.ipynb")

**Exploration and Visualization**

Tableau (Presentation link: (https://public.tableau.com/app/profile/gorka5967/viz/Filtersperdistricts/Story1?publish=yes)
