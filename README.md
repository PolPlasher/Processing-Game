# Processing Game


Pol Lleida, Pol Blesa


Este proyecto esta organizado por clases. La clase padre de todos los objetos es Entity, que tiene las variables y funciones básicas para representar formas circulares de manera dinàmica en la pantalla.

De Entity salen Player, NPC y Enemy. De esta manera la expansion del proyecto en cualquier dirección (añadir nuevos powerups, crear bosses) es más fácil.

Después de la title screen, el jugador tiene que llegar a los npcs antes de que los enemigos los atrapen.

Si un enemigo atrapa a un npc, este seguirá al siguiente npc, hasta llegar al player y matarlo. Entonces aparece el Game Over.