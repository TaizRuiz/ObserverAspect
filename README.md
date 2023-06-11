## core y cross cutting concerns
Se agrego cross cutting "Auditoría". Estos son aspectos de la funcionalidad de una aplicación que no están directamente relacionados con su propósito principal.En este caso, hemos implementado un aspecto de auditoría que registra cada vez que se cambia el color de fondo de la ventana. Esto es un buen ejemplo de un "cross cutting concern", ya que es una funcionalidad que se aplica a través de varias partes de la aplicación (cada vez que se cambia el color de fondo).

(Savier Acosta)Se agregó un cross cutting "Registro de Eventos". Se ecnarga de registrar todo tipo de eventos que se registra en la aplicación, separándola como un aspecto aparte.

Se agrego una nueva funcionalidad mediante un pointcut, la cual es añadir texto a un jlabel ara asi tener registro en la pantalla del boton clickeado
