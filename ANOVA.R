means <- c(31.367, 27.967, 34.933, 35.317)

c = length(means)

diff <- matrix(0, c, c)
for (i in 1:c)
{
  for (j in 1:c)
  {
    diff[i, j] = abs(means[i] - means[j])
  }
}

diff

alpha = 0.05
n_j = 6

qtukey =  3.96
msw = 0.5604

round(diff/sqrt(msw*(1/n_j + 1/n_j)), 4)
round(diff/sqrt(msw*(1/n_j + 1/n_j)), 4) > qtukey



qr = qtukey*sqrt(msw/2 * (2/n_j))
round(qr, 4)
diff > qr

round(mean(means), 4)

round(qf(1-alpha, 3, 20), 4)


