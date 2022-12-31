# Encryptor

## Descripción

Un proyecto introductorio escrito en Ruby para construir un programa de encriptación/desencriptación basado en rotaciones.<br>
El usuario ingresa el mensaje junto con el número de rotaciones en las que la tabla de caracteres tendrá que cambiar su orden. 

## Ejemplo

En una tabla de letras de la 'a' a la 'z' con una rotación de 13 caracteres, se vería asi:

|   Letra   |    Letra encriptada   |   Letra   |    Letra encriptada   |   Letra   |    Letra encriptada   |
|:---------:|:---------------------:|:---------:|:---------------------:|:---------:|:---------------------:|
|     a     |           n           |     m     |           z           |     y     |           l           |
|     b     |           o           |     n     |           a           |     z     |           m           |
|     c     |           p           |     o     |           b           |
|     d     |           q           |     p     |           c           |
|     e     |           r           |     q     |           d           |
|     f     |           s           |     r     |           e           |
|     g     |           t           |     s     |           f           |
|     h     |           u           |     t     |           g           |
|     i     |           v           |     u     |           h           |
|     j     |           w           |     v     |           i           |
|     k     |           x           |     w     |           j           |
|     l     |           y           |     x     |           k           |
