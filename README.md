# docker-angular-cli
This repository contains the Angular CLI tool (1.6.x) running over Docker. This project will help you to develop in not time any web application using the latest version of NodeJS (9.x)

* [Builded Image in Docker HUB - Download](https://hub.docker.com/r/sandovaledwin/angular-cli/).

## Prerequisites
### Install Docker
* [Mac OS X](https://store.docker.com/editions/community/docker-ce-desktop-mac).
* [Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows).

## 1. Clone the project.
After installing the Docker CLI tool, now you're ready to start working with *docker-angular-cli* app.

### 1.1 Clone the repository.
  ```
  git clone https://github.com/sandovaledwin/docker-angular-cli
  ```

### 1.2 Go into the directory.
  ```
  cd docker-angular-cli
  ```

## 2. Creating the Docker Image.
Now, you're ready for creating the new docker-angular-cli Docker Image in your computer.
  ```
  docker build -t docker-angular-cli:1.6.8 .
  ```

## 3. Creating your first Angular project.
```
docker run -it --rm -w /app -v $(pwd):/app docker-angular-cli:1.6.8 ng new my-project
```

## 4. Running the project.
```
docker run -it --rm -w /app -v $(pwd)/my-project:/app -p 4200:4200 docker-angular-cli:1.6.8 ng serve --host 0.0.0.0
```

## 5. Testing the project.
In order to test that the project is running ok, you'll need to open the next url in the browser.

### 5.1 Open in the Browser the next url.
  ```
  http://localhost:4200
  ```  