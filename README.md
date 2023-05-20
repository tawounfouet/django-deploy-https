# django-deploy-https


### Commands

Run new project with docker-compose called app in current directory
-  "--rm" removes the container after running
-  ""sh -c" runs the command in the container
-  "django-admin startproject app ." creates a new project called app in the current directory
```bash
docker-compose run -rm app sh -c "django-admin startproject app ."
```

Run docker-compose up
