# OrganizeUDiet
Proyecto para la asignatura de Infraestructura Virtual.

***

## Descripción
API para la organización y gestión de tu dieta. ¿Tienes problemas para organizar tu dieta o estás cansado de comer siempre los mismos alimentos? 
Aquí podrás consultar todo tipo de alimentos junto con su información nutricional (calorías, grasa, proteínas y hidratos) y organizarla a tu gusto, podrás variar entre alimentos que sean parecidos entre sí nutricionalmente y hacer tu dieta más variada. 

Una dieta está formada por una lista de productos.

El formato a mostrar será:

+ Producto -> Información nutricional

La información nutricional consta de: 
	+ Calorías
	+ Grasa
	+ Proteínas
	+ Hidratos	
	
***

## Microservicios

+ Framework elegido para el microservicio con documentación sobre cómo se usa en la práctica.
	+ [Documentacion](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/microservicios.md#justificaci%C3%B3n-t%C3%A9cnica-del-framework-elegido-para-el-microservicio)
+ Diseño en general del API, las rutas (o tareas), tipos devueltos por las peticiones y estados devueltos por las mismas, tests y documentación de todo, justificando como se ajustan a las historias de usuario, de forma que reflejen correctamente un diseño por capas que desacopla la lógica de negocio del API.
	+ [Documentacion](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/microservicios.md#dise%C3%B1o-rutas-tipos-devueltosestados-implementaci%C3%B3n-y-dise%C3%B1o-por-capas)
	+ [Código rutas](https://github.com/josemip98/OrganizeUDiet/blob/master/routes/index.js)
+ Uso de buenas prácticas: configuración distribuida, logs, uso de middleware.
	+ [Documentacion](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/microservicios.md#uso-de-buenas-pr%C3%A1cticas-configuraci%C3%B3n-distribuida-logs-uso-de-middleware)
+ Tests correctos y de acuerdo con las historias de usuario.
	+ [Documentacion](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/microservicios.md#tests-correctos-y-de-acuerdo-con-las-historias-de-usuario)
	+ [Código tests](https://github.com/josemip98/OrganizeUDiet/blob/master/tests/API.test.js)

***

## Herramientas
[Herramientas y su justificación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/herramientas.md)

+ Lenguaje de programación: JavaScript + Node.js

+ Framework: Express js

+ Herramientas de testing: Jest

+ Despliegue de la aplicación en la nube: Docker

+ Base de datos: MongoDB

+ Sistema de logs: aún por decidir

***

## Testing

Los tests del proyecto los podemos encontrar en el directorio [tests](https://github.com/josemip98/OrganizeUDiet/tree/master/tests).

En dicho directorio encontramos el fichero [dieta.test.js](https://github.com/josemip98/OrganizeUDiet/blob/master/tests/dieta.test.js) y el fichero [producto.test.js](https://github.com/josemip98/OrganizeUDiet/blob/master/tests/producto.test.js)

Primero debemos clonar el repositorio:
`git clone https://github.com/josemip98/OrganizeUDiet`

En la carpeta del repositorio descargado instalamos las dependencias y módulos con el comando:

`npm install`

Lanzamos los tests:

`npm test`

***

## Herramienta de construcción

He utilizado el gestor de tareas Gulp con su correspondiente [Gulpfile.js](https://github.com/josemip98/OrganizeUDiet/blob/master/gulpfile.js)

***

## Docker

+ [Elección Docker](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/eleccionContenedor.md)
+ [Dockerfile](https://github.com/josemip98/OrganizeUDiet/blob/master/Dockerfile)
+ [Explicacion dockerfile](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/dockerfile.md)
+ [GitHub Container Registry](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/github-container.md)


***

## Integración continua

En este [fichero](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/integracion-continua.md) explico todo lo relacionado con la integración continua.

Primero he configurado Travis y como sistema de integración continua adicional voy a utilizar Circle CI.
Además utilizo en ambos el gestor de tareas **Gulp** que es el que estoy utilizando en el proyecto. Y aprovecho mi contenedor Docker en el sistema de integración continua **Travis**.

## Travis

+ [Fichero configuración Travis](https://github.com/josemip98/OrganizeUDiet/blob/master/.travis.yml)

## Circle CI

+ [Fichero configuración Circle CI](https://github.com/josemip98/OrganizeUDiet/blob/master/.circleci/config.yml)

***

## Funciones serverless

+ [Despliegue correcto y funcionando](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/serverlessVercel.md#despliegue-funciones-serverless-en-github-con-vercel)

+ Función serverless con Vercel integrada con el proyecto:
	+ [Documentación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/serverlessVercel.md#implementaci%C3%B3n-de-una-funci%C3%B3n-integrada-en-mi-proyecto)
	+ [Fichero código función consultaProducto](https://github.com/josemip98/OrganizeUDiet/blob/master/api/consultaProducto.js)
	+ [Fichero productos.json](https://github.com/josemip98/OrganizeUDiet/blob/master/api/productos.json)
	+ [URL prueba](https://organize-u-diet.vercel.app/api/consultaProducto?producto=arroz)
	+ [Resultado esperado](https://github.com/josemip98/OrganizeUDiet/blob/master/5.json)

+ Función serverless con Netlify integrada con el proyecto:
	+ [Documentación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/serverlessNetlify.md)
	+ [Fichero código función listadoProductos](https://github.com/josemip98/OrganizeUDiet/blob/master/functions/listadoProductos.js)
	+ [Archivo netlify.toml](https://github.com/josemip98/OrganizeUDiet/blob/master/netlify.toml)
	+ [URL prueba](https://laughing-ramanujan-50249a.netlify.app/.netlify/functions/listadoProductos)
+ Bot de telegram:
	+ [Documentación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/serverlessVercel.md#bot-de-telegram)
	+ [Tareas bot](https://github.com/josemip98/OrganizeUDiet/blob/master/api/index.js)
	+ [Funciones bot](https://github.com/josemip98/OrganizeUDiet/blob/master/api/bot.js)
	+ [Enlace OrganizeUDietBot](https://web.telegram.org/#/im?p=@OrganizeUDietBot)
***

## Recopilación de enlaces

+ [Configuración de git](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/git_config.md)
+ [Herramientas y su justificación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/herramientas.md)
+ [Carpeta de documentos](https://github.com/josemip98/OrganizeUDiet/tree/master/docs)
+ [Carpeta de código fuente](https://github.com/josemip98/OrganizeUDiet/tree/master/src)
+ [Carpeta de test](https://github.com/josemip98/OrganizeUDiet/tree/master/tests)
+ [Fichero package.json](https://github.com/josemip98/OrganizeUDiet/blob/master/package.json)
+ [Fichero gulpfile.js](https://github.com/josemip98/OrganizeUDiet/blob/master/gulpfile.js)
+ [Fichero iv.yaml](https://github.com/josemip98/OrganizeUDiet/blob/master/iv.yaml)
+ [Elección Docker](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/eleccionContenedor.md)
+ [Dockerfile](https://github.com/josemip98/OrganizeUDiet/blob/master/Dockerfile)
+ [Explicacion dockerfile](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/dockerfile.md)
+ [GitHub Container Registry](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/github-container.md)
[Explicación integración continua](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/integracion-continua.md)
+ [Fichero configuración Travis](https://github.com/josemip98/OrganizeUDiet/blob/master/.travis.yml)
+ [Fichero configuración Circle CI](https://github.com/josemip98/OrganizeUDiet/blob/master/.circleci/config.yml)

***

## Tareas
En este [documento](https://github.com/josemip98/OrganizeUDiet/tree/master/docs/pasos.md) se muestran los pasos seguidos para el desarrollo del proyecto.

+ [Lista de issues cerrados](https://github.com/josemip98/OrganizeUDiet/issues?q=is%3Aissue+is%3Aclosed)
+ [Lista de milestones](https://github.com/josemip98/OrganizeUDiet/milestones)

***

## Historias de usuario
En este apartado se irán añadiendo las historias de usuario

+ [HU01](https://github.com/josemip98/OrganizeUDiet/issues/9). Consultar dieta.
	+ Como usuario debo poder consultar el listado de productos que conforman la dieta junto con su información nutricional.
+ [HU02](https://github.com/josemip98/OrganizeUDiet/issues/15) Consultar productos similares.
	+ Como usuario, dado un producto debo poder consultar productos nutricionalmente similares.
+ [HU03](https://github.com/josemip98/OrganizeUDiet/issues/20) Consultar producto concreto.
	+ Como usuario debo poder consultar un producto concreto perteneciente a una dieta. El formato a mostrar será el producto junto con su información nutricional.
+ [HU04](https://github.com/josemip98/OrganizeUDiet/issues/44) Consultar listado productos.
	+ Como usuario debo poder consultar el listado completo de productos. El formato a mostrar será un listado formado por el producto junto con su información nutricional.
+ [HU05](https://github.com/josemip98/OrganizeUDiet/issues/53) Añadir producto.
	+ Como usuario debo poder añadir un producto nuevo a una dieta.
+ [HU06](https://github.com/josemip98/OrganizeUDiet/issues/54) Modificar producto.
	+ Como usuario debo poder modificar un producto de una dieta.
+ [HU07](https://github.com/josemip98/OrganizeUDiet/issues/55) Eliminar producto.
	+ Como usuario debo poder eliminar un producto de una dieta.
	
***

## Autor
+ [Jose Miguel Pelegrina Pelegrina](https://github.com/josemip98)

***
![Travis (.com)](https://img.shields.io/travis/com/josemip98/OrganizeUDiet?label=Build%20Travis) ![CircleCI](https://img.shields.io/circleci/build/github/josemip98/OrganizeUDiet?label=Build%20CircleCI) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
