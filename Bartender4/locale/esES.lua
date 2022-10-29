-- Bartender4 Locale
-- Please use the Localization App on WoWAce to Update this
-- http://www.wowace.com/projects/bartender4/localization/ ;¶

local L = LibStub("AceLocale-3.0"):NewLocale("Bartender4", "esES") or LibStub("AceLocale-3.0"):NewLocale("Bartender4", "esMX")
if not L then return end

L[ [=["None" as modifier means its always active, and no modifier is required.

Remember to enable Mouse-Over Casting for the individual bars, on the "State Configuration" tab, if you want it to be active for a specific bar.]=] ] = [=["Ninguno" significa que la función está siempre activa, y no se requiere ningún modificador.

Tienes que activar a lanzar al raton para cada barra individual que deseas, en la pestaña "Configuración de estado" en las opciones para esa barra.]=]
L["|cffff0000WARNING|cffffffff: Pressing the button will reset your complete profile! If you're not sure about this, create a new profile and use that to experiment."] = "¡Apretando el botón restablecerá por completo su perfil! Si no está seguro sobre eso, crea un nuevo perfil y use para probarlo."
L["|cffffff00Click|r to toggle bar lock"] = "|cffffff00Clic|r para fijar/liberar las barras"
L["|cffffff00Right-click|r to open the options menu"] = "|cffffff00Clic derecho|r para abrir el menú de opciones"
L["ActionBar Paging"] = "Paginación de barras de acción"
L["Advanced"] = "Avanzado"
L["Alpha"] = "Transparencia"
L["ALT"] = "Alt"
L["Always Hide"] = "Ocultar siempre"
L["Anchor"] = "Anclar"
L["Apply Preset"] = "Usar preestablecidos."
L["Auto-Assist Casting"] = "Asistente automático"
L["Bag Bar"] = "Barra de bolsas"
L["Bar %s"] = "Barra %s"
L["Bar Options"] = "Opciones de barra"
L["Bar Paging"] = "Paginación de barra"
L["Bar Snapping"] = "Ajuste de barras"
L["Bar Style & Layout"] = "Estilo y disposición de barras"
L["Bars unlocked. Move them now and click Lock when you are done."] = "Barras desbloqueadas. Desplácelas ahora y haga clic en bloquear cuando haya terminado."
L["Bartender4"] = "Bartender4"
L["Blizzard Art"] = "Gráficos Blizzard"
L["Blizzard Art Bar"] = "Barra de gráficos Blizzard"
L["Blizzard interface"] = "Interfaz de Blizzard"
L["Both"] = "Ambos"
L["BOTTOM"] = "INFERIOR"
L["Button %s"] = "Botón %s"
L["Button Grid"] = "Panel de botones"
L["Button Lock"] = "Bloquear botones"
L["Button Look"] = "Aspecto de los botones"
L["Button Offset"] = "Desplazamiento del botón"
L["Button Tooltip"] = "Ventanas emergentes de los botones"
L["Buttons"] = "Botones"
L["Cannot access options during combat."] = "No se puede acceder a las opciones durante el combate"
L["CENTER"] = "CENTRO"
L["Center Horizontally"] = "Centrado horizontalmente"
L["Center Vertically"] = "Centrado verticalmente"
L["Centers the bar horizontally on screen."] = "Centra la barra horizontalmente en la pantalla."
L["Centers the bar vertically on screen."] = "Centra la barra verticalmente en la pantalla."
L["Change the current anchor point of the bar."] = "Cambia el punto de anclaje actual de la barra."
L["Choose between the classic WoW layout and two variations"] = "Elija entre la disposición del WoW clásico y dos variaciones"
L["Choose the ending to the left"] = "Elija el acabado a la izquierda"
L["Choose the ending to the right"] = "Elija el acabado a la derecha"
L["Class Bar %d"] = "Barra de clase %d"
L["Classic"] = "Clásico"
L["Click-Through"] = "Pulsar a través"
L["Colors"] = "Colores"
L["Configure actionbar paging when the %s key is down."] = "Configurar la paginación de la barra de acciones cuando se pulse la tecla %s"
L["Configure all of Bartender to preset defaults"] = "Configure todo Bartender a los valores preestablecidos como predeterminados"
L["Configure Bar %s"] = "Configurar barra %s"
L["Configure Class Bar %d"] = "Configurar la barra de clase %d"
L["Configure how the Out of Range Indicator should display on the buttons."] = "Configurar cómo se debe mostrar el indicador de sin rabia en los botones."
L["Configure the alpha of the bar."] = "Configurar la transparencia de la barra."
L["Configure the Button Tooltip."] = "Configurar ventana emergente de los botones."
L["Configure the Fade Out Alpha"] = "Configurar la transparencia del desvanecimiento."
L["Configure the Fade Out Delay"] = "Configurar el retraso del desvanecimiento."
L["Configure the padding of the buttons."] = "Configurar la separación entre botones."
L["Configure the Reputation Bar"] = "Configurar la barra de reputación"
L["Configure the scale of the bar."] = "Configurar la escala de la barra."
L["Configure the XP Bar"] = "Configurar la barra de XP"
L["Copy Conditionals"] = "Copiar condiciones"
L["Create a copy of the auto-generated conditionals in the custom configuration as a base template."] = "Crear una copia de las condiciones generadas automáticamente en la configuración personalizada como plantilla."
L["CTRL"] = "Ctrl"
L["Custom Conditionals"] = "Condiciones personalizadas"
L["Default Bar State"] = "Estado por defecto de las barras"
L["Direction of the button flyouts on this bar (eg. summon demon/pet)"] = "Dirección de botones desplegables en esta barra (Por ejemplo: Invocar demonio, Llamar a mascota)."
L["Disable any reaction to mouse events on this bar, making the bar click-through."] = "Deshabilitar cualquier reacción a eventos del ratón en esta barra, haciendo que se pueda pulsar a través de ella."
L["Disabled"] = "Deshabilitar"
L["Disabled in Combat"] = "Deshabilitar en combate"
L["Don't Page"] = "No paginar"
L["Down"] = "Abajo"
L["Empty button background"] = "Botón de fondo vacío"
L[ [=[Enable Auto-Assist for this bar.
Auto-Assist will automatically try to cast on your target's target if your target is no valid target for the selected spell.]=] ] = [=[Permitir asistente automático para esta barra.
Asistente automático tratará de lanzar automáticamente la habilidad en el objetivo de tu objetivo, si éste no es un objetivo válido para la habilidad seleccionada.]=]
L[ [=[Enable Bar Switching based on the actionbar controls provided by the game. 
See Blizzard Key Bindings for assignments - Usually Shift-Mouse Wheel and Shift+1 - Shift+6.]=] ] = [=[Permitir intercambio de barras basado en los controles de barras de acciones proporcionados por el juego.
Vea asignación de teclas de Blizzard para referencia - Generalmente "Shift-Rueda del ratón" y "Shift+1" - "Shift+6".]=]
L[ [=[Enable Mouse-Over Casting for this bar.
Mouse-Over Casting will automatically cast onto the unit under your mouse without targeting it, if possible.]=] ] = [=[Permitir a lanzar al razon para esta barra.
Con este función, tus hechizos se lanzan automáticamente en la unidad bajo del raton sin seleccionarla, si es posible.]=]
L["Enable State-based Button Swaping"] = "Permitir intercambio de botones basado en el estado"
L["Enable the Bag Bar"] = "Habilitar la barra de bolsas"
L["Enable the Blizzard Art Bar"] = "Habilite la barra artística de Blizzard"
L["Enable the Extra Action Bar"] = "Activa la barra de acción extra"
L["Enable the FadeOut mode"] = "Habilitar el modo desvanecer"
L["Enable the Micro Menu"] = "Habilitar el micro menú"
L["Enable the Queue Status Bar"] = "Habilitar la barra de estado de cola"
L["Enable the Reputation Bar"] = "Habilitar la barra de reputación"
L["Enable the Status Tracking Bar"] = "Activar la barra de seguimiento de estado"
L["Enable the use of a custom condition, disabling all of the above."] = "Habilitar el uso de una condición personalizada, deshabilitando todas la anteriores."
L["Enable the use of the Blizzard Vehicle UI, hiding any Bartender4 bars in the meantime."] = "Habilitar el uso de la interfaz de vehículos de Blizzard, ocultando cualquier barra de Bartender4 mientras tanto (configurable en cada barra)."
L["Enable the Vehicle Bar"] = "Habilitar la barra de vehículos"
L["Enable the XP Bar"] = "Habilitar la barra de XP"
L["Enable/Disable the bar."] = "Habilitar/deshabilitar la barra."
L["Enabled"] = "Habilitada"
L["Extra Action Bar"] = "Barra de acción extra"
L["Fade Out"] = "Desvanecer"
L["Fade Out Alpha"] = "Transparencia de desvanecimiento"
L["Fade Out Delay"] = "Retraso hasta desvanecerse"
L["FAQ"] = "FAQ"
L["Flyout Direction"] = "Dirección de desplegables"
L["Focus-Cast by modifier"] = "Lanzamiento al foco según modificador"
L["Focus-Cast Modifier"] = "Modificador para lanzamiento al foco"
L["Frequently Asked Questions"] = "Preguntas frecuentes"
L["Full Button Mode"] = "Modo todos los botones"
L["Full reset"] = "Restablecer por completo"
L["General Settings"] = "Opciones generales"
L["Griffin"] = "Grifo"
L["Hide Artwork"] = "Ocultar ilustraciones"
L["Hide Equipped Border"] = "Ocultar borde equipado"
L["Hide Hotkey"] = "Ocultar tecla de acceso rápido"
L["Hide in Combat"] = "Ocultar en combate"
L["Hide in Stance/Form"] = "Ocultar en estado/forma"
L["Hide Macro Text"] = "Ocultar texto de macro"
L["Hide on Vehicle"] = "Ocultar en vehículo"
L["Hide out of Combat"] = "Ocultar fuera de combate"
L["Hide the Extra Action Button artwork."] = "Oculta la ilustración del botón de acción adicional."
L["Hide the Hotkey on the buttons of this bar."] = "Ocultar las teclas de acceso rápido de los botones de esta barra."
L["Hide the inner border indicating the equipped status on the buttons of this bar."] = "Ocultar el borde interior indicando el estado de equipamiento en los botones de esta barra."
L["Hide the Macro Text on the buttons of this bar."] = "Ocultar el texto de macros de los botones de esta barra."
L["Hide this bar in a specific Stance or Form."] = "Ocultar esta barra en un estado o forma específico."
L["Hide this bar when a override bar is active."] = "Oculta esta barra cuando una barra predominante está activa."
L["Hide this bar when the game wants to show a vehicle UI."] = "Ocultar esta barra cuando el juego quiera mostrar una interfaz de usuario de vehículo."
L["Hide this bar when you are possessing a NPC."] = "Ocultar esta barra cuando se posea un PNJ."
L["Hide this bar when you are riding on a vehicle."] = "Ocultar esta barra cuando se monte en un vehículo."
L["Hide this bar when you have a pet."] = "Ocultar esta barra cuando se tenga una mascota."
L["Hide this bar when you have no pet."] = "Ocultar esta barra cuando no se tenga una mascota."
L["Hide when Possessing"] = "Ocultar en posesión"
L["Hide with Override Bar"] = "Ocultar con barra predominante"
L["Hide with pet"] = "Ocultar con mascota"
L["Hide with Vehicle UI"] = "Ocultar con la interfaz de usuario del vehículo"
L["Hide without pet"] = "Ocultar sin mascota"
L["Horizontal Growth"] = "Crecimiento horizontal"
L["Horizontal growth direction for this bar."] = "Dirección de crecimiento horizontal para esta barra"
L["Hotkey Mode"] = "Modo de acceso rápido"
L["How many buttons to offset the action to the left. This can be used, for example, to use the same actions on two individual shorter bars (front and back)."] = "Cuántos botones desplazar la acción hacia la izquierda. Esto se puede utilizar, por ejemplo, para utilizar las mismas acciones en dos barras individuales más cortas (anverso y reverso)."
L["Its simple! Just check the Keyring option in the BagBars configuration menu, and it'll appear next to your bags."] = "¡Es simple! Simplemente marque la opción Llavero en el menú de configuración de BagBars, y aparecerá junto a sus bolsas."
L["I've found a bug! Where do I report it?"] = "¡¡He encontrado un error!! ¿Dónde puedo reportarlo?"
L["Key Bindings"] = "Asignación de teclas"
L["Keyring"] = "Llavero"
L["Layout"] = "Disposición"
L["Left"] = "Izquierda"
L["Left ending"] = "Terminado a la izquierda"
L["Lion"] = "León"
L["Lock"] = "Bloquear"
L["Lock all bars."] = "Bloquear todas las barras"
L["Micro Menu"] = "Micro menú"
L["Minimap Icon"] = "Icono del Minimapa"
L["Modifier Based Switching"] = "Intercambio basado en modificadores"
L["Mouse-Over Casting"] = "Lanzar al raton"
L["Mouse-Over casting can be limited to be only active when a modifier key is being held down. You can configure the modifier in the global \"Bar\" Options."] = "Lanzar al raton puede ser limitada para activar sólo mientras se pulsa una tecla modificadora. El modificador se puede configurar en las opciones globales \"Barra\"."
L["Mouse-Over Casting Modifier"] = "Modificador para lanzar al raton"
L["My BagBar does not have the Keyring on it, how do i get it back?"] = "Mi BagBar no tiene el llavero, ¿cómo lo recupero?"
L["No Display"] = "No mostrar"
L["No Stance/Form"] = "Sin estado/forma"
L["None"] = "Nada"
L["Note: Enabling Custom Conditionals will disable all of the above settings!"] = "Nota: ¡Habilitar las condiciones personalizadas deshabilitará todas las opciones anteriores!"
L["Number of buttons."] = "Número de botones"
L["Number of rows."] = "Número de filas"
L["Offset in X direction (horizontal) from the given anchor point."] = "Desplazado en la dirección X (horizontal) desde el punto de anclaje dado."
L["Offset in Y direction (vertical) from the given anchor point."] = "Desplazado en la dirección Y (vertical) desde el punto de anclaje dado."
L["Once open, simply hover the button you want to bind, and press the key you want to be bound to that button. The keyBound tooltip and on-screen status will inform you about already existing bindings to that button, and the success of your binding attempt."] = "Una vez abierto, simplemente pasa el ratón por encima del botón que quieres asociar, y presiona la tecla a la que quieres asociarlo. La ventana emergente y la información en pantalla te dirán si ya existe una tecla asociada a ese botón, y si has asociado con éxito la tecla."
L["One action bar only"] = "Una única barra"
L["One Bag"] = "Una bolsa"
L["Only show one Bag Button in the BagBar."] = "Mostrar sólo un botón de bolsa en la barra de bolsas"
L["Out of Mana Indicator"] = "Indicador sin maná"
L["Out of Range Indicator"] = "Indicador de fuera de rango"
L["Padding"] = "Espaciado"
L["Page %2d"] = "Página %2d"
L["Page %2d (%s)"] = "Página %2d (%s)"
L["Pet Bar"] = "Barra de mascotas"
L["Positioning"] = "Posicionamiento"
L["Possess Bar"] = "Barra de posesión"
L["Presets"] = "Preprogramado"
L["Queue Status"] = "Estado de cola"
L["Queue Status Bar"] = "Barra de estado de cola"
L["Reputation Bar"] = "Barra de reputación"
L["Reset Position"] = "Restablecer posición"
L["Reset the position of this bar completly if it ended up off-screen and you cannot reach it anymore."] = "Restablecer la posición de esta barra completamente si terminó fuera de la pantalla y no puede acceder a ella."
L["Right"] = "Derecha"
L["Right ending"] = "Terminado a la derecha"
L["Right-click Self-Cast"] = "Autolanzarse con el botón derecho"
L["Rows"] = "Filas"
L["Scale"] = "Escala"
L["Select a modifier for Mouse-Over Casting"] = "Selecciona un modificador para lanzar al raton"
L["Select the Focus-Cast Modifier"] = "Seleccione el modificador de lanzamiento al foco"
L["Select the Self-Cast Modifier"] = "Seleccione el modificador de lanzamiento sobre sí mismo"
L["Self-Cast by modifier"] = "Lanzar sobre sí mismo según modificador"
L["Self-Cast Modifier"] = "Modificador de lanzamiento sobre sí mismo"
L["SHIFT"] = "Shift"
L["Show a Icon to open the config at the Minimap"] = "Mostrar un icono para abrir la configuración en el Minimapa"
L["Show the keyring button."] = "Muestra el botón del llavero."
L["Smart Target selection"] = "Selección intelligente de objetivo"
L["Specify the Color of the Out of Mana Indicator"] = "Especificar el color del indicador sin maná"
L["Specify the Color of the Out of Range Indicator"] = "Especificar el color del indicador de fuera de alcance"
L["Stance Bar"] = "Barra de estados"
L["Stance Configuration"] = "Configuración de estados"
L["State Configuration"] = "Configuración de estado"
L["Status Tracking Bar"] = "Barra de seguimiento de estado"
L["Status Tracking Bar (XP/Rep/...)"] = "Barra de seguimiento de estado (XP/Rep/...)"
L["Switch this bar to the Possess Bar when possessing a npc (eg. Mind Control)"] = "Cambia esta barra a la barra de posesión cuando se posea un PNJ (Ej: Control mental)"
L["Switch to key-binding mode"] = "Cambiar al modo asignación de tecla"
L["The background of button places where no buttons are placed"] = "El fondo de los huecos de los botones cuando no hay botones puestos"
L["The bar default is to be visible all the time, you can configure conditions here to control when the bar should be hidden."] = "Por defecto la barra es visible todo el tiempo, aquí se pueden configurar condiciones para controlar cuando se desea ocultar la barra."
L["The default behaviour of this bar when no state-based paging option affects it."] = "Comportamiento por defecto de esta barra cuando no le afectan opciones de paginación basadas en el estado."
L["The Positioning options here will allow you to position the bar to your liking and with an absolute precision."] = "Las opciones de posicionamiento le permitirá posicionar la barra a su gusto y con una precisión absoluta."
L["These options can automatically select a different target for your spell, based on macro conditions. Note however that they will overrule any target changes from normal macros."] = "Estas opciones pueden seleccionar un objectivo different para tu hechizo mediante condiciones de macros. Sin embargo, estas condiciones ignorarán cualquier cambio de objectivo por los macros normales."
L["This bar will be hidden once you enter combat."] = "Esta barra se ocultará estando en combate."
L["This bar will be hidden whenever you are not in combat."] = "Esta barra se ocultará siempre que no esté en combate."
L["Three bars stacked"] = "Tres barras apiladas"
L["Toggle actions on key press instead of release"] = "Realizar las acciones cuando se presionen las teclas en vez de cuando las sueltes."
L[ [=[Toggle Button Zoom
For more style options you need to install Masque]=] ] = [=[Activar/desactivar botón Zoom
Para más opciones de estilo se debe instalar Masque]=]
L["Toggle the button grid."] = "Alinear los botones a la cuadrícula"
L["Toggle the use of the modifier-based focus-cast functionality."] = "Alternar el uso de la funcionalidad de lanzamiento al foco basado en modificadores."
L["Toggle the use of the modifier-based self-cast functionality."] = "Alternar el uso de la funcionalidad de lanzamiento sobre uno mismo basado en modificadores."
L["Toggle the use of the right-click self-cast functionality."] = "Alternar el uso de la funcionalidad de lanzamiento sobre uno mismo con el botón derecho."
L["TOP"] = "SUPERIOR"
L["Two action bars"] = "Dos barras de acción"
L["Two bars wide"] = "Dos barras amplias"
L["Up"] = "Arriba"
L["Use Blizzard Vehicle UI"] = "Usar la interfaz de vehículos de Blizzard"
L["Use Custom Condition"] = "Usar condiciones personalizadas"
L["Usually used for druid shapeshift forms, but can be re-used for additional bars on other classes"] = "Usualmente se usa para los cambios de forma del druida, pero se puede reutilizar para barras adicionales en otras clases"
L["Vehicle Bar"] = "Barra de vehículos"
L["Vertical Growth"] = "Crecimiento vertical"
L["Vertical growth direction for this bar."] = "Dirección de crecimiento vertical para esta barra"
L["Visibility"] = "Visibilidad"
L["When reporting a bug, make sure you include the |cffffff78steps on how to reproduce the bug|r, supply any |cffffff78error messages|r with stack traces if possible, give the |cffffff78revision number|r of Bartender4 the problem occured in and state whether you are using an |cffffff78English client or otherwise|r."] = "Cuando reportes un error, asegúrate de que incluyes lo pasos que te llevaron a ese error, acompáñalo con una transcripción del error si es posible, proporciona la versión y revisión de Bartender4 que ha provocado ese error y el idioma del cliente que uses."
L["Who wrote this cool addon?"] = "¿Quién creó este simpático Addon?"
L["Width"] = "Ancho"
L["X Offset"] = "Desplazamiento X"
L["XP Bar"] = "Barra de XP"
L["Y Offset"] = "Desplazamiento Y"
L["You can either click the KeyBound button in the options, or use the |cffffff78/kb|r chat command to open the keyBound control. Alternatively, you can also use the Blizzard Keybinding Interface."] = [=[Puedes hacer clic en el botón para asociar un botón en las opciones, o usar el comando de Chat para abrir el control de asociación de teclas.
De manera alternativa, también puedes usar la interfaz para asociar teclas de Blizzard.]=]
L["You can set the bar to be always hidden, if you only wish to access it using key-bindings."] = "Si solo desea acceder a una barra mediante las teclas asignadas, puede mantenerla siempre oculta."
L[ [=[You can use any macro conditionals in the custom string, using "show" and "hide" as values.

Example: [combat]hide;show]=] ] = [=[Puede emplear cualquier condición de macro en el texto personalizado, empleando "show" (Mostrar) y "hide"(Ocultar) como valores.

Ejemplo: [combat]hide;show]=]
L[ [=[You can use any macro conditionals in the custom string, using the number of the bar as target value.
Example: [form:1]9;0]=] ] = [=[Puede emplear cualquier condición de macro en el texto personalizado, empleando el número de la barra como valor de destino.
Ejemplo: [form:1]9,0]=]
L["You can use the preset defaults as a starting point for setting up your interface. Just choose your preferences here and click the button below to reset your profile to the preset default. Note that not all defaults show all bars."] = "Puedes usar los valores preestablecidos como un punto de comienzo para configurar tu interfaz. Solo elige tus preferencias aquí y haz clic en el botón de más abajo para reiniciar tu perfil al perfil preestablecido. Ten en cuenta que no todos los valores preestablecidos muestran todas las barras."
L["You have to exit the vehicle in order to be able to change the Vehicle UI settings."] = "Tienes que salir del vehículo a fin de poder cambiar la configuración de la interfaz de usuario del vehículo."
L["Zoom"] = "Zoom"

