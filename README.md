# What is this
This is a docker files with jupyter datascience pack and code-server.  
To access code-server 127.0.0.1:8080  
also jupyter notebook 127.0.0.1:8888  
Main image uses this image  
https://hub.docker.com/r/ktakita1011/simple_jupyter_codeserver

# How to Use
```docker build -t notebook .```  
```docker run -p 8888:8888 -p 8080:8080 -v /${PWD}:/workdir --name notebook notebook```

# Caution
Init jupyter password is null. So if you use set password.  
code-server init password is 'password'
To change jupyter password, edit `Dockerfile`
To change code-server password, edit `run.sh`

# References
https://qiita.com/dfurusaka/items/24263b8194cdf0af2298
