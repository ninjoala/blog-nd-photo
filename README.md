This is my fork of popular nextjs + tailwind blog setup. 

I added a dockerfile so that I can easily deploy it. 

This application will serve as a baseline for my future blog projects.


##If you want to use docker:
```
cd blog-nd-photo
docker build -t ndpblog .
docker run -d -p 127.0.0.1:3000:3000 ndpblog
```



##If you aren't using docker:
```
yarn
yarn dev
```

##If you need yarn
```
npm install --global yarn
```

