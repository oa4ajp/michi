Feature: Michi

Scenario: Mostrar titulo de juego
  Given Visito el index
  Then Debo ver "Welcome to Michi"

  Scenario: Al hacer click en boton 1
  Given Visito el index
  When El jugador A hace click en el boton "boton1"
  Then Debo ver la "X"

  Scenario: Al hacer click en boton 2
  Given Visito el index
  When El jugador A hace click en el boton "boton2"
  Then Debo ver la "X"

  Scenario: Al hacer click en boton 3
  Given Visito el index
  When El jugador A hace click en el boton "boton3"
  Then Debo ver la "X"  