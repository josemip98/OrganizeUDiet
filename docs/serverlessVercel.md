# Despliegue funciones serverless en GitHub con Vercel

## Conexión y prueba básica

Lo primero de todo será registrarme en vercel y enlazar mi proyecto de GitHub.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/registroVercel.png)

Una vez hecho esto, le damos a importar proyecto.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/importarProyectoVercel.png)

Seleccionamos el directorio de nuestro repositorio que contiene el código fuente.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/configVercel.png)

Y ya tendriamos nuestro proyecto desplegado en vercel.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/despliegueVercel.png)

Para probarlo tenemos que crear una carpeta api que es donde incluiremos las funciones, para este caso voy a crear una función serverless de prueba que se llamara [hello.js](https://github.com/josemip98/OrganizeUDiet/blob/master/api/hello.js) que imprime en pantalla el mensaje Hola $name, si no le pasamos ningún parámetro se le dará el valor mundo e imprimirá "Hola mundo" y si le pasamos un parámetro imrpimerá Hola $valor_parámetro.

- req: aquí vamos a tener la petición en este caso podemos obtener el valor de name y el valor por defecto es mundo.
- status: es una función para establecer el código de estado.
- send: es una función en la que enviamos la respuesta.
- res: enviamos la respuesta, en este caso enviamos el código de estado y "Hola $name".

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/hello.png)

Nos descargamos vercel cli con `npm install -g vercel` y ejecutamos el comando `vercel` para vincular el proyecto.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/vercelCLI.png)

Ejecutamos el comando `vercel --prod`para desplegarlo.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/vercelCLI2.png)

Cada vez que hagamos git push a nuestro proyecto se nos actualizará el repositorio tanto en GitHub como en Vercel.

El resultado es el siguiente:

Sin darle ningún valor a name:

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/resultadoVercel1.png)

Pasandole el valor a name:

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/resultadoVercel2.png)

## Implementación de una función integrada en mi proyecto

Para integrar la función en mi proyecto he creado el [issue](https://github.com/josemip98/OrganizeUDiet/issues/43) Despliegue función consultaProducto(producto) en Vercel que hace referencia a la [HU03](https://github.com/josemip98/OrganizeUDiet/issues/20) con la que consultar un producto concreto. El formato a mostrar será el nombre del producto junto con su información nutricional (Calorías, grasa, proteinas, hidratos).

Primero he creado un archivo [productos.json](https://github.com/josemip98/OrganizeUDiet/blob/master/api/productos.json) que es una lista de productos junto con su información nutricional.

Después he creado el fichero [consultaProducto.js](https://github.com/josemip98/OrganizeUDiet/blob/master/api/consultaProducto.js) en el que tenemos la función.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/consultaProducto.png)

Primero hago los require de mi fichero de datos productos.json y las clases dieta y producto. 
A la función le pasamos un parámetro llamado producto en el que indicaremos el producto que queremos visualizar. La función lee los productos disponibles del fichero productos.json y va creando una variable producto para cada uno y los va añadiendo a una variable dieta con la función aniadirProducto(producto). Después con la función buscarProducto(nombre_producto) de la clase dieta buscamos el producto que queremos y si el nombre del producto coincide con el parámetro introducido, se lo asignamos a un json con las funciones getNombre(), getCalorias(), getGrasa(), getProteinas() y getHidratos de la clase Producto. Si no existe nos dirá que el producto no está disponible y si no introducimos ningún parámetro nos pedirá que le indiquemos el nombre del producto.

Por último, si es correcto y existe devolvemos la variable objeto que contendrá el producto y su información nutricional junto con el codigo 200 que indica que la petición se ha realizado con éxito  o por el contrario, si no existe o no se ha indicado ningún producto a buscar devolverá las indicaciones para buscar un producto y el codigo de error 404.

Ejecutamos el comando `vercel --prod`para desplegarlo.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/despliegueVercel2.png)

Y aquí podemos ver las funciones que tenemos, hello.js es la función básica que utilizé para probar Vercel, consultaProducto.js es la que he implementado para integrarla en mi proyecto.
Además podemos ver como las consultas que estoy realizando no dan errores.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/despliegueVercel3.png)

Los resultados son los siguientes:

Si no indicamos ningún producto:

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/resultadoVercel4.png)

Si indicamos un producto que no se encuentra disponible:

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/resultadoVercel3.png)

Si indicamos un producto que esté disponible:

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/resultadoVercel5.png)

## BOT de Telegram

Para desarrollar el Bot de Telegram he utilizado un fichero [bot.js](https://github.com/josemip98/OrganizeUDiet/blob/master/api/bot.js) que contiene las funciones consultaProducto y listaProducto y el fichero [index.js](https://github.com/josemip98/OrganizeUDiet/blob/master/api/index.js) en el que
se gestionarán los comandos disponibles y la respuesta que devuelven.

+ /start: iniciará el bot
+ /help: nos lista los comandos disponibles
+ /lista: nos lista los productos disponibles junto con su información nutricional
+ /producto <nombre_producto>: nos muestra la información de un producto concreto

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/index.png)

La función listadoProductos ya la comenté en el apartado anterior simplemente la he reutilizado para el bot.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/listadoBot.png)

Y la función consultaProducto(producto) que la utilizé en Netlify la he modificado y funciona también en vercel. El funcionamiento es el mismo, leo los productos disponibles del fichero productos.json y si coincide el nombre con el producto que queremos creo una variable porducto de la clase Producto con sus valores nombre, calorias, grasa, proteinas y hidratos y a result que es la variable que devolveremos como resultado le asignaremos el resultado de la función getProducto de la clase producto que devuelve el nombre y su información nutricional.
Si el producto introducido para buscar no existiera nos diría que el producto no está disponible o si no hemos indicado ninguno nos pedirá que introduzcamos el nombre de un producto.

Por último devolvemos la variable result y exportamos ambas funciones para ser utilizadas en el index.js.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/consultaProductoBot.png)

### Uso del WebHook 

Para establecer nuestro Webhook hacemos uso del siguiente enlace:

`https://api.telegram.org/bot{bot_token}/setWebhook?url={ruta_del_bot}`

en mi caso la ruta es la siguiente:

`https://organize-u-diet-git-master.josemip98.vercel.app/api/index.js`

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/webhook.png)

### Comprobación de uso

Podemos acceder al Bot mediante el [enlace](tg://resolve?domain=OrganizeUDietBot) o buscando en telegram @OrganizeUDietBot. Lo mas recomendable es utilizar el comando /help para listar los comandos disponibles.

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/usoBot1.png)

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/usoBot2.png)

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/usoBot3.png)

![imagen](https://github.com/josemip98/OrganizeUDiet/blob/master/docs/img/usoBot4.png)




