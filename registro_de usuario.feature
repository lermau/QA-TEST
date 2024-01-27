Feature: Registro de nuevo usuario en aplicaciones móviles

Scenario: Registro exitoso de un nuevo usuario en la aplicación iOS
  Given que el usuario ha abierto la aplicación iOS
  When el usuario selecciona la opción de "Registrarse"
    Y completa los campos obligatorios del formulario de registro
    Y proporciona una dirección de correo electrónico válida
    Y elige una contraseña segura
  Then el usuario toca el botón de "Registrar"
    Y el sistema procesa la solicitud de registro
  Then el usuario recibe un mensaje de confirmación exitosa
    Y es redirigido a la pantalla de inicio de sesión
    Y puede iniciar sesión con las credenciales recién registradas

Scenario: Registro exitoso de un nuevo usuario en la aplicación Android
  Given que el usuario ha abierto la aplicación Android
  When el usuario selecciona la opción de "Registrarse"
    Y completa los campos obligatorios del formulario de registro
    Y proporciona una dirección de correo electrónico válida
    Y elige una contraseña segura
  Then el usuario toca el botón de "Registrar"
    Y el sistema procesa la solicitud de registro
  Then el usuario recibe un mensaje de confirmación exitosa
    Y es redirigido a la pantalla de inicio de sesión
    Y puede iniciar sesión con las credenciales recién registradas

Scenario: Registro fallido debido a un correo electrónico ya registrado en la aplicación iOS
  Given que el usuario ha abierto la aplicación iOS
  When el usuario selecciona la opción de "Registrarse"
    Y completa los campos obligatorios del formulario de registro
    Y proporciona una dirección de correo electrónico ya registrada
    Y elige una contraseña segura
  Then el usuario toca el botón de "Registrar"
    Y el sistema informa al usuario sobre la existencia previa del correo electrónico
  Then el usuario ajusta la dirección de correo electrónico y vuelve a intentar el registro

Scenario: Registro fallido debido a una contraseña débil en la aplicación Android
  Given que el usuario ha abierto la aplicación Android
  When el usuario selecciona la opción de "Registrarse"
    Y completa los campos obligatorios del formulario de registro
    Y proporciona una dirección de correo electrónico válida
    Y elige una contraseña débil
  Then el usuario toca el botón de "Registrar"
    Y el sistema informa al usuario sobre la debilidad de la contraseña
  Then el usuario ajusta la contraseña y vuelve a intentar el registro