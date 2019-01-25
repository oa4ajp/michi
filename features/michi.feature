Feature: Michi

Scenario: Mostrar titulo de juego
  Given Visito el index
  Then Debo ver "Welcome to Michi"

Scenario: Al hacer click en boton 1
  Given Visito el index
  When El jugador A hace click en el boton "boton1"
  Then Debo ver "X"

Scenario: Al hacer click en boton 2
  Given Visito el index
  When El jugador A hace click en el boton "boton2"
  Then Debo ver "X"

Scenario: Al hacer click en boton 3
  Given Visito el index
  When El jugador A hace click en el boton "boton3"
  Then Debo ver "X"

Scenario: Verificar ganador jugador A
    Given Visito el index
    When El jugador A hace click en el boton "boton1"
    And El jugador B hace click en el boton "boton4"
    And El jugador A hace click en el boton "boton2"
    And El jugador B hace click en el boton "boton5"
    And El jugador A hace click en el boton "boton3"
    Then Debo ver "El ganador es el Jugador A"

Scenario: Validar marcar casilla 0
    Given Visito el index
    When El jugador A hace click en el boton "boton1"
    And El jugador A hace click en el boton "boton1"
    Then Debo ver "La casilla ya ha sido marcada"

Scenario: El jugador B hace click en boton 1
  Given Visito el index
  When El jugador A hace click en el boton "boton2"
  And El jugador B hace click en el boton "boton1"
  Then Debo ver "O"    

Scenario: Reiniciar Juego
  Given Visito el index
  When El jugador A hace click en el boton "Reiniciar Juego"
  Then Debo ver "Juego Reiniciado"

Scenario: Verificar empate
    Given Visito el index
    When El jugador A hace click en el boton "boton1"
    And El jugador B hace click en el boton "boton2"
    And El jugador A hace click en el boton "boton3"
    And El jugador A hace click en el boton "boton5"
    And El jugador B hace click en el boton "boton4"
    And El jugador A hace click en el boton "boton7"
    And El jugador B hace click en el boton "boton6"
    And El jugador A hace click en el boton "boton9"
    And El jugador B hace click en el boton "boton8"
    Then Debo ver "El juego queda empatado"

Scenario: Mostrar el turno del Jugador A
  Given Visito el index
  Then Debo ver "Ronda 1"
  And Debo ver "Puntaje: 0 - 0"
  And Debo ver "Turno de Jugador A"
  And Debo ver "Jugador A es X"

