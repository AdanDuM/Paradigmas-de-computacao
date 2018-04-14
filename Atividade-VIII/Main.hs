module Main (main) where

  import Formas
  import Pontos
  import Tree
  import Pilha
  import Queue

  main = do
    print (area (Retangulo 5 2))
    print (area (Circulo 5))
    print (area (Trapezio 2 2 2))
    print (distancia (Ponto2D (1, 2)) (Ponto2D(3, 2)))
    --print (colineares (Ponto2D (1, 1)))
    print (somaElementos (minhaArvore))
    print (top (Stack [1,2,3]))
    print (enqueue (Queue [1,2]) 2)
