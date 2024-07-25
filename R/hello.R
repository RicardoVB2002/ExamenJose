# Función recursiva para calcular la potencia
potencia_recursiva <- function(base, exponente) {
  if (exponente == 0) {
    return(1)
  } else if (exponente == 1) {
    return(base)
  } else {
    return(base * potencia_recursiva(base, exponente - 1))
  }
}

# Función recursiva para calcular la potencia de una potencia
potencia_de_potencia <- function(base, exponente1, exponente2) {
  # Primero calcular base^exponente1
  resultado_intermedio <- potencia_recursiva(base, exponente1)
  # Luego elevar ese resultado a la potencia exponente2
  return(potencia_recursiva(resultado_intermedio, exponente2))
}

# Solicitar los valores al usuario
base <- as.numeric(readline(prompt = "Ingrese la base (x): "))
exponente1 <- as.numeric(readline(prompt = "Ingrese el exponente (y): "))
exponente2 <- as.numeric(readline(prompt = "Ingrese el segundo exponente (z): "))

# Calcular el resultado
resultado <- potencia_de_potencia(base, exponente1, exponente2)
cat("El resultado de (", base, "^", exponente1, ")^", exponente2, " es: ", resultado, "\n")
