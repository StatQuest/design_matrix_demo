## In this example, we show how to do a t-test and regression at the same 
## time...
Type <- factor(c(
  rep("Control", times=4),
  rep("Mutant", times=4)))
Weight <- c(2.4, 3.5, 4.4, 4.9, 1.7, 2.8, 3.2, 3.9)
Size <- c(1.9, 3, 2.9, 3.7, 2.8, 3.3, 3.9, 4.8)
model.matrix(~Type+Weight)
 
model <- lm(Size~Type + Weight)
summary(model)
 
## In this example we show that the p-value in the bottom
## right hand corner (the overall p-value) isn't the one we
## want.
Lab <- factor(c(
  rep("A", times=6),
  rep("B", times=6)))
Type <- factor(c(
  rep("Control", times=3),
  rep("Mutant", times=3),
  rep("Control", times=3),
  rep("Mutant", times=3)))
Expression <-c(
  1.7, 2, 2.2,
  3.1, 3.6, 3.9,
  0.9, 1.2, 1.9,
  1.8, 2.2, 2.9)
model.matrix(~Lab+Type)
 
batch.lm <- lm(Expression ~ Lab + Type)
summary(batch.lm)
