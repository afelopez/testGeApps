# Tiempos del test

#### Tiempo realizando API y WEB:         4Horas
#### Tiempo realizando tests y mejoras:   3Horas


# API SERVICES

## Vehicle creation:
#### `POST localhost:3000/api/vehicles`

```
{
	"vehicle":{
		"plate": "DFG-3w9wadwad87",
		"color": "Red",
		"year": 2015
	}
}
```
## List vehicles
#### `GET localhost:3000/api/vehicles`
#### RESPOND:
```
[{"id":1,"plate":"ABC0","color":"Red","year":2014,"categorie":"categoria1"},{"id":2,"plate":"DFG0","color":"Red","year":2014,"categorie":"categoria2"},{"id":3,"plate":"ABC1","color":"Red","year":2014,"categorie":"categoria1"},{"id":4,"plate":"DFG1","color":"Red","year":2014,"categorie":"categoria2"}]
```
