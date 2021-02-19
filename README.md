# What is this
This is a docker files with jupyter datascience pack and code-server.  
To access code-server 127.0.0.1:18080  
also jupyter notebook 127.0.0.1:18888  
Main image uses this image  
https://hub.docker.com/r/ktakita1011/simple_jupyter_codeserver

# How to Use
``` git clone https://github.com/ktakita1011/jupyter_codeserver.git```  
``` cd jupyter_codeserver```  
```docker-compose build```  
```docker-compose up -d```

# Caution
Init jupyter password is null. So if you use, set password.  
code-server init password is 'password'  
To change jupyter password, edit `Dockerfile`  
To change code-server password, edit `run.sh`

# References
https://qiita.com/dfurusaka/items/24263b8194cdf0af2298
