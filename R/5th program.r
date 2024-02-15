sieve_of_eratosthenes<-function(n){
  primes<-rep(TRUE,n) 
  primes[1]<-FALSE
  for(i in 2:sqrt(n)){
    if(primes[i]){
      primes[i*i:n]<-FALSE
    }
  }
  return(which(primes))
}
n<-50
prime_numbers<-sieve_of_eratosthenes(n)
print(prime_numbers)