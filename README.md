# Gocase Backend Challenge


This is my solution to the Backend Challenge. 

1. First of all, Initiate a server in PostgresQL and create a database

2. To run the API, first go to [api_name]/config/database.yml and insert you Username and Password from postgresql, as well as your database name.


3. If needed, run "bundle install" in your terminal to instal the gems(the only one used is the postgres gem).


4. Do "rails db:migrate" in your terminal to create de database in postgres.


5. Do "rails s" in your terminal to start the server.



## Endpoints:

**To create a order:**

  POST localhost:3000/api/v1/orders

  The payload to send in order to create a order is like so:

  {
  
  "reference": "",
  
  "purchase_channel": "",
  
  "client_name": "",
  
  "adress": "",
  
  "delivery_service": "",
  
  "total_value_RS": "",
  
  "line_items": [""],
  
  "status": ""
  
  }
  

  in which you input the values of the order inside the double quotes ""

**To get the status of a order using the client's name:**

  GET localhost:3000/api/v1/orders/orders?client_name=[name of the client]


**you can also use the reference to get the order status by doing:**

  GET localhost:3000/api/v1/orders/orders?reference=[order's reference]


**to list the orders of a purchase channel:**

  GET localhost:3000/api/v1/orders/orders?purchase_channel=[purchase channel]&[other entity you want, eg: status]=[entity information, eg: ready]


**To create a batch:**

  POST localhost:3000/api/v1/batch


  The payload to send in order to create a batch is like so:

  {
  
  "reference": "",
  
  "purchase_channel": "",
  
  "group_of_orders": ""
  
  }

  in which you input the values of the batch inside the double quotes ""


**To get a batch using the purchase channel:**

  GET localhost:3000/api/v1/batch/batch?purchase_channel=[purchase_channel wanted]


**To pass a batch from production to closing:**

  PUT localhost:3000/api/v1/batch/[batch reference]



I couldn't finish the action "(Bonus) Close part of a Batch for a Delivery Service" on time because i coudn't figure out how to input values from both Batches and Orders at the same time, but if you make so you can input both, to close part of a batch you just have to update the part of the batch with the reference passed and the delivery service passed from "closing" to "sent"


