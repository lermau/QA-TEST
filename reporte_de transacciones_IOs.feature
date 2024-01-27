Feature: Reportar transacciones en la aplicación móvil iOS

Scenario: Reportar una transacción exitosa desde la aplicación móvil iOS
  Given que el usuario ha iniciado sesión en la aplicación iOS
    Y la aplicación está conectada al backend
  When el usuario navega a la sección de "Reportar Transacción"
    Y completa los detalles de la transacción, incluyendo el monto y la descripción
    Y selecciona la opción de confirmar la transacción
  Then la aplicación envía la solicitud de reporte al backend
    Y el backend valida y registra la transacción correctamente
    Y el backend actualiza la información en el back office
  Then la aplicación muestra un mensaje de confirmación al usuario
    Y el usuario recibe una notificación de la transacción exitosa
