Feature: Realizacion de casos ingresando nombre de usuario y contraseņa
Scenario: Verificacion de ingreso de sesion
Given Abrir Chrome
When ingresar Username "MURIBE" y Password "1234"
Then inicia sesion