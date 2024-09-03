Rum `bundle` </br>
run `ruby app.rb` </br><br/>

In browser: http://127.0.0.1:4567/
<br/><br/>

In you console:
use `curl` to interact with the API.  </br>
exemples: 
to use get router to see all tasks 
   `curl -X GET http://127.0.0.1:4567/tasks`
</br> </br>
To use post router to add new task </br>
`curl -X POST http://localhost:4567/tasks \
     -H "Content-Type: application/json" \
     -d '{"title": "go to the gym"}'`


