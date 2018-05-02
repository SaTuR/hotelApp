# hotelApp
MVC, Tablas y Colecciones
En las aplicaciones actuales, son pocas las ocasiones que no se use una lista o colección de elementos gráficos, estas deben ser altamente responsivas, mostrar un diseño elegante y no muy saturado, deben adaptarse a los diferentes dispositivos para mostrar más o menos información. En este ejercicio, podrás poner en práctica estos conceptos para desarrollar una aplicación que pueda verse bien en dispositivos iPhone para cualquier orientación, que tenga diseños y funcionalidades más complejas e interesantes.


OBJETIVO:

Crear una aplicación para iOS que muestre un listado de hoteles representados por una imagen y su nombre, estos hoteles también tendrán asociado un detalle, en el que se incluye el nombre, una galería de imágenes horizontal en la que se pueda hacer scroll, una descripción y la posibilidad de reservar dicho hotel. Debes hacer uso únicamente de los conceptos desarrollados hasta ahora en todo el curso, separando correctamente las responsabilidades y la estructura de tu aplicación en sus respectivas agrupaciones como modelos, vistas y controladores. Las imágenes, nombres y detalles de los hoteles los puedes tomar de tu gusto.


RESULTADOS:

En las siguientes imágenes se puede apreciar cuál debe ser el resultado final esperado para la aplicación


Listado de hoteles en portrait y landscape:





Vista de detalle en portrait y landscape:







Reservas en portrait:





Reservas en landscape:







REQUERIMIENTOS:

La aplicación debe poder ejecutarse únicamente en iPhone y soportar orientaciones portrait y landscape (seguir las imágenes anteriormente mostradas).

La aplicación cuenta con una vista con el listado de hoteles, mínimo 4 hoteles, donde cada hotel debe mostrar una imagen de fondo, el nombre respectivo y un overlay oscuro con transparencia entre el nombre y la imagen.

La aplicación debe ser implementada en el patrón MVC y por lo tanto los elementos de la misma deben estar perfectamente diferenciados entre Modelos, Vistas y Controladores.

La celda representativa de los hoteles, debe ser reusable en caso de querer implementarla en otra lista diferente. Por lo tanto, esta vista debe ser implementada como un documento de Interface Builder y no como un prototipo.

El nombre del hotel para el listado, debe tener fuente Avenir con estilo Heavy, 22 puntos de tamaño de fuente y debe tener color blanco.

El overlay entre el nombre y la imagen, debe tener color negro y una transparencia del 54%




La aplicación debe permitir navegación entre la vista de hoteles y la vista de detalle, cada que se seleccione un hotel, pero también debe permitir que desde el detalle, se devuelva a la vista de hoteles.




La vista de detalle cuenta con el título que tenga el nombre del hotel, seguido de una galería de imágenes, un texto que indique si ese hotel ha sido reservado (incluyendo el tipo de cuarto que reservó) o no está reservado, una descripción del hotel y un botón que permita realizar la reserva.

La galería de imágenes debe contener al menos 3 imágenes por cada hotel, donde cada imagen debe ocupar todo el tamaño de la galería y también se debe permitir paginación, es decir, que siempre se muestre una imagen a la vez, nunca se pueden quedar mostrando partes de ambas imágenes.




La galería de imágenes debe contar con una indicación de las páginas o imágenes que cuenta, que muestre cual imágen está visible y que también al seleccionar una de las páginas, haga que la galería muestre la imagen correspondiente.




El texto que indica el estado de reserva, debe tener una fuente Avenir con estilo Heavy y 17 puntos de tamaño. Su color de texto debe ser blanco y el color de fondo debe ser rojo si el hotel no está reservado o verde si el hotel está reservado.



Si el hotel está reservado, el texto con el estado de reserva debe indicar para cual cuarto se hizo la reserva. Si no está reservado, entonces se debe indicar que aún no se ha hecho la reserva.

El texto de la descripción del hotel debe tener una fuente Baskerville y un tamaño de 15 puntos.

El botón de reservar debe tener una altura de 60 puntos, con color de fondo azul y texto blanco.


Cuando se seleccione el botón para reservar, se debe mostrar una alerta con los cuartos disponibles para dicho hotel y esta debe permitir al usuario seleccionar uno de ellos para posteriormente cambiarlo en el texto que indica el estado de reserva. El usuario también puede cambiar la reserva en cualquier momento, o debe poder cancelar la acción de reserva en caso de que seleccione el botón por accidente.




BUENA PRÁCTICA:

Procura tener organizado tu código, separando las funcionalidades en clases bien definidas y usar Auto Layout responsablemente.

Para este ejercicio solo tienes necesidad de crear dos controladores, uno para el listado de hoteles y otro para el detalle.

Recuerda usar nomenclatura camelCase usando nombres y términos en inglés.

TEN EN CUENTA:

Para implementar la galería de imágenes desplazable horizontalmente recuerda usar correctamente los delegados del CollectionView y del CollectionViewFlowLayout. En este caso podrás definir el tamaño de las celdas para que se adapten correctamente a la galería y definir el espacio entre celdas para que las imágenes no se muestren con barras verticales de espacio, si no que se muestren seguidas.

Para actualizar correctamente el control de paginación cuando se muestre una nueva imagen, probablemente necesitarás usar el método scrollViewDidEndDecelerating para detectar cuándo se ha terminado de mostrar una imagen y para saber cual es la imagen que se está mostrando actualmente, puedes usar la propiedad visibleCells de un UICollectionView, la cual retorna un arreglo con todas las celdas que estén visibles en pantalla.
