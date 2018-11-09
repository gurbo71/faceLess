# faceLess
Un grupo de inversores, que no quiere dar la cara, nos contrató para llevar a cabo una
red social. Faceless permite a los usuarios publicar diferentes tipos de contenidos, los
cuales incluyen texto, fotos y videos, entre otros. Por cuestiones de almacenamiento en
los servidores, nos interesará saber cuánto espacio ocupa cada publicación, en KB:
Las
fotos tienen un alto y ancho dado en pixels; el espacio que ocupan se calcula
como (alto * ancho) * factor de compresión. El factor de compresión actual para
las fotos es de 0.7, pero probablemente cambiará en el futuro.
Las publicaciones de
texto son mucho más fáciles de calcular, ya que el espacio
que ocupan es igual a la cantidad de caracteres que tiene.
Los
videos , tienen un tamaño que depende de la calidad que tenga: para la calidad
normal, el tamaño es igual a la duración del video en segundos. Para los videos HD
el tamaño es igual al triple de la duración en segundos del video. Deben poderse
agregar en un futuro más calidades sin modicar el código existente.
Los usuarios que pueden ver una publicación pueden indicar que esa publicación les
gusta, aumentando el número de me gustas de la misma. A Faceless le importa tanto
la cantidad de me gustas que recibió una publicación, como saber quienes son los
usuario que le dieron me gusta.
Los usuarios de Faceless tienen amigos, pero no quieren compartir todas sus publicaciones
con todos ellos. Por ejemplo, hay fotos y videos que no quieren que sus familias vean,
por alguna extraña razón. Para satisfacer esa necesidad, cada publicación tiene asignado
un permiso, que puede ser:
público: cualquiera puede ver la publicación
sólo amigos: sólo los amigos pueden verla
privado con lista blanca: los usuarios que pertenezcan a la lista pueden verla


