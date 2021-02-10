# What is this
This is a docker compose files with jupyter datascience pack and code-server.  
To access code-server 127.0.0.1:8080  
also jupyter notebook 127.0.0.1:8888  

# How to Use
```docker build -t notebook```
```docker run -p 8888:8888 -p8080:8080 -v workdir:/workdir -d notebook```
# Caution
Init jupyter password is null. So if you use set password.
code-server init password is 'password'

# References
https://qiita.com/dfurusaka/items/24263b8194cdf0af2298
