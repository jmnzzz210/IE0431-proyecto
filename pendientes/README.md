## Pendientes a entregar para el avance de control 

- Identificacion experimental y la sintonizacion de un controlador

-----------------------------

Se debe incluir: 

- **~~Descripcion concisa de los procesos con las no-linealidades -> aplicaciones reales y diagramas de bloques completos.~~**

- **~~Descripcion de variable:~~** 
	- ~~Controlada~~ 
	- ~~Manipulada~~
	- ~~Senial de control~~ 
	- ~~Perturbaciones~~
	- ~~Punto de operacion~~ 

- **Funcionamiento deseado de lazos de control (Servomecanismo y/o regulatorio)**

- **~~Minimo cuatro modelos de cada proceso~~**: 
	- ~~Mediante toolbox (indicar el metodo y usar el tipo process model)~~
	- ~~Minimos cuadrados~~
	- ~~Utilizando dos metodos de lazo abierto~~

- **~~Evaluacion y comparativa de lso modelos para cada planta mediante al menos un indice de bondad (IAE o ISE) y graficas comparativas respecto a las respuestas reales~~**

- **~~Al menos un controlador diseñado en tiempo continuo para probar en el equipo real.~~**

------------------------------------------------------------

### Incluir en el pdf del avance: 

- ~~Ecuaciones de los modelos obtenidos~~. 
- ~~Figuras comparativas respecto a los sistemas reales.~~
- ~~Analisis de resultados.~~
- Conclusiones 
- ~~Referencias~~
- Subir archivos Matlab que generan y respaldan resultados.
   
### Pendientes final
- Realizar el controlador discreto, verificar los tiempos de asentamiento, el sobrepaso máximo y la señal de control.
- Medir las especificaciones de diseño (rendimiento, esfuerzo de control y robustez) esto a partir de los resultados obtenidos a través de simulaciones en matlab utilizadas en el funcionamiento de servocontrol y de control regulatorio **ACOMODARLO EN TABLAS**.
- Medir las especificaciones de diseño (índices de error integral,
esfuerzo de control, sobrepaso máximo y tiempos
de asentamiento, etc.) de acuerdo al lazo de control en el cual se enfoca el controlador, en nuestro caso en regulatorio, entonces medir el error máximo, esfuerzo de control, tiempo al 2% del error, etc, las que son pertenecientes al regulatorio, y también agregar una que otra de servocontrol, sin embargo enfocarse plenamente en **REGULATORIO** obtenidas en los resultados realizados en el controlador real.
- Comparar los resultados obtenidos en lo ideal (MATLAB) con los obtenidos en el controlador real, hacerlo con los 3 controladores, y colocar los resultados en **TABLAS** 
- Conclusiones con base a los resultados, diciendo que cuál es el mejor controlador, dando las justificaciones del porqué e indicar las posibles mejoras a realizar en el diseño propuesto.
- Mejorar el matlab, para que abra todo él solo, además de colocar en el matlab que se va a enviar eliminar que se tienen los datos en la carpeta de data, ya que a la hora de subirlo esto no va a estar, sino colocar solamente el nombre del archivo, sin el path.

