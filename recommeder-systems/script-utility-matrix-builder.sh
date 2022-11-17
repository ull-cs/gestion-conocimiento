#!/bin/bash

# Matrices 5x10
for i in {1..10}
do
  echo "Generating 5x10 matrix: $i"
  java -cp utility-matrix-builder/target/utility-matrix-builder-1.0-SNAPSHOT.jar es.ull.gco.UtilityMatrixBuilder 5 10 > utility-matrix-5-10-${i}.txt
done

# Matrices 10x25
for i in {1..10}
do
  echo "Generating 10x25 matrix: $i"
  java -cp utility-matrix-builder/target/utility-matrix-builder-1.0-SNAPSHOT.jar es.ull.gco.UtilityMatrixBuilder 10 25 > utility-matrix-10-25-${i}.txt
done

# Matrices 25x100
for i in {1..10}
do
  echo "Generating 25x100 matrix: $i"
  java -cp utility-matrix-builder/target/utility-matrix-builder-1.0-SNAPSHOT.jar es.ull.gco.UtilityMatrixBuilder 25 100 > utility-matrix-25-100-${i}.txt
done

# Matrices 50x250
for i in {1..10}
do
  echo "Generating 50x250 matrix: $i"
  java -cp utility-matrix-builder/target/utility-matrix-builder-1.0-SNAPSHOT.jar es.ull.gco.UtilityMatrixBuilder 50 250 > utility-matrix-50-250-${i}.txt
done

# Matrices 100x1000
for i in {1..10}
do
  echo "Generating 100x1000 matrix: $i"
  java -cp utility-matrix-builder/target/utility-matrix-builder-1.0-SNAPSHOT.jar es.ull.gco.UtilityMatrixBuilder 100 1000 > utility-matrix-100-1000-${i}.txt
done
