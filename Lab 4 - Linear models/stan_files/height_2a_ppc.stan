data {
    int N;
    array [N] real weight;
}

generated quantities {
   real alpha = normal_rng(178, 20);
   real beta = normal_rng(0, 10);
   real<lower=0> sigma = abs(exponential_rng(0.067));
   array [N] real height;
   for (i in 1:N) {
       height[i] = normal_rng(weight[i]*beta+alpha,sigma);
   }
}