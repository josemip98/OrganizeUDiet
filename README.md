# OrganizeUDiet
Proyecto para la asignatura de Infraestructura Virtual.

***

## Descripción
API para la organización y gestión de tu dieta. ¿Tienes problemas para organizar tu dieta o estás cansado de comer siempre los mismos alimentos? 
Aquí podrás consultar todo tipo de alimentos junto con su información nutricional (calorías, grasa, proteínas y hidratos) y organizarla a tu gusto, podrás variar entre alimentos que sean parecidos entre sí nutricionalmente y hacer tu dieta más variada. 

Una dieta está formada por una lista de productos.

El formato a mostrar del producto será:

+ Nombre -> Información nutricional

La información nutricional consta de:

+ Calorías
+ Grasa
+ Proteínas
+ Hidratos	
	
***

## Despliegue en un PaaS

+ Descripción y justificación de las herramientas usadas para desplegar la aplicación en en PaaS.
	+ [Documentación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/Paas.md#descripci%C3%B3n-y-justificaci%C3%B3n-de-las-herramientas-usadas-para-desplegar-la-aplicaci%C3%B3n-en-el-paas)

+ Descripción correcta de la configuración para despliegue automático, desde el repositorio o desde el sistema de integración continua.
	+ [Documentación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/Paas.md#descripci%C3%B3n-correcta-de-la-configuraci%C3%B3n-para-despliegue-autom%C3%A1tico-desde-el-repositorio-o-desde-el-sistema-de-integraci%C3%B3n-continua)
	
+ Funcionamiento correcto del despliegue en el PaaS (no sólo el status). Es decir, no se puede devolver ningún status 500.
+ Buenas prácticas en el diseño del API, incluyendo su correspondencia correcta con diferentes HUs.
	+ [Documentación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/Paas.md#funcionamiento-correcto-del-despliegue-en-el-paas-no-s%C3%B3lo-el-status-es-decir-no-se-puede-devolver-ning%C3%BAn-status-500)


+ Uso correcto de bases de datos y logs dentro del PaaS, incluyendo su justificación y pruebas de prestaciones, así como avance general y grado de terminación de la aplicación.
	+ [Documentación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/Paas.md#uso-correcto-de-bases-de-datos-y-logs-dentro-del-paas-incluyendo-su-justificaci%C3%B3n-y-pruebas-de-prestaciones-as%C3%AD-como-avance-general-y-grado-de-terminaci%C3%B3n-de-la-aplicaci%C3%B3n)

+ [Enlace API](https://organizeudiet.herokuapp.com/)

***

## Herramientas
[Herramientas y su justificación](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/herramientas.md)

+ Lenguaje de programación: JavaScript + Node.js

+ Framework: Express js

+ Herramientas de testing: Jest

+ Despliegue de la aplicación en la nube: Docker

+ Base de datos: MongoDB

+ Sistema de logs: Morgan

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

## Microservicios

+ Framework elegido para el microservicio con documentación sobre cómo se usa en la práctica.
	+ [Documentacion](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/microservicios.md)
+ Diseño en general del API, las rutas (o tareas), tipos devueltos por las peticiones y estados devueltos por las mismas, tests y documentación de todo, justificando como se ajustan a las historias de usuario, de forma que reflejen correctamente un diseño por capas que desacopla la lógica de negocio del API.
	+ [Documentacion](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/microservicios.md#dise%C3%B1o-rutas-tipos-devueltosestados-implementaci%C3%B3n-y-dise%C3%B1o-por-capas)
	+ [Código rutas](https://github.com/josemip98/OrganizeUDiet/blob/master/routes/index.js)
+ Uso de buenas prácticas: configuración distribuida, logs, uso de middleware.
	+ [Documentacion](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/microservicios.md#uso-de-buenas-pr%C3%A1cticas-configuraci%C3%B3n-distribuida-logs-uso-de-middleware)
	+ [Código log](https://github.com/josemip98/OrganizeUDiet/blob/master/app.js)
+ Tests correctos y de acuerdo con las historias de usuario.
	+ [Documentacion](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/microservicios.md#tests-correctos-y-de-acuerdo-con-las-historias-de-usuario)
	+ [Código tests](https://github.com/josemip98/OrganizeUDiet/blob/master/tests/API.test.js)
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
+ [HU05](https://github.com/josemip98/OrganizeUDiet/issues/53) Añadir producto a una dieta.
	+ Como usuario debo poder añadir un producto nuevo a una dieta.
+ [HU06](https://github.com/josemip98/OrganizeUDiet/issues/54) Modificar producto de una dieta.
	+ Como usuario debo poder modificar un producto de una dieta.
+ [HU07](https://github.com/josemip98/OrganizeUDiet/issues/55) Eliminar producto de una dieta.
	+ Como usuario debo poder eliminar un producto de una dieta.
	
***

## Autor
+ [Jose Miguel Pelegrina Pelegrina](https://github.com/josemip98)

***
![Travis (.com)](https://img.shields.io/travis/com/josemip98/OrganizeUDiet?label=Build%20Travis) ![CircleCI](https://img.shields.io/circleci/build/github/josemip98/OrganizeUDiet?label=Build%20CircleCI) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
