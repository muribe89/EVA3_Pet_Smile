Feature: Realizacion de casos ingresando nombre de usuario y contrase�a
Scenario: Verificacion de ingreso de sesion
Given Abrir Chrome
When ingresar Username "MURIBE" y Password "12345"
Then inicia sesion