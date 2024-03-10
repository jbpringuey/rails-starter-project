# README

Starter project to run a rails application using docker compose with bootstrap style.

Prerequesite : Install docker desktop

Step 1 : Clone the repository and run the following script to lift the stack and access the terminal within the container:
```docker-compose run --service-ports web bash```

Step 2 : Once inside , create a new rails app
```rails new .```

That's it !
To start the app you can also use
```docker-compose up```


Below are the steps to add bootstrap without node

Step 3 : Add bootstrap to application.scss
```
@import "bootstrap";
```

Step 4 : Add bootstrap and popper to application.js
```
import "popper"
import "bootstrap"
```

Step 5 : Add bootstrap and popper to importmap.rb
```
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
```

Step 6 : Precompile bootstrap.min.js in assets.rb
```
Rails.application.config.assets.precompile += %w( popper.js bootstrap.min.js )
```
