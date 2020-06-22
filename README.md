#gocasebackend

This is my solution to the Backend Challenge. 
To run the API, first go to [api_name]/config/database.yml and insert you Username and Password from postgresql.
If needed, run "bundle install" in your terminal to instal the gems(the only one used is the postgres gem).
Do "rails db:migrate" in your terminal to create de database in postgres.

Endpoints:
To create a batch:

POST localhost:3000/api/v1/orders

To get the status of a order using the client's name:

GET localhost:3000/api/v1/orders/orders?client_name=[name of the client]

you can also use the reference to get the order status by doing:

GET localhost:3000/api/v1/orders/orders?reference=[order's reference]

to list the orders of a purchase channel:

GET localhost:3000/api/v1/orders/orders?purchase_channel=[purchase channel]&[other entity you want, eg: status]=[entity information,    eg: ready]

To create a batch:

POST localhost:3000/api/v1/batch

To get a batch using the purchase channel:

GET localhost:3000/api/v1/batch/batch?purchase_channel=[purchase_channel wanted]

To pass a batch from production to closing:

PUT localhost:3000/api/v1/batch/[batch reference]


I couldn't finish the action "(Bonus) Close part of a Batch for a Delivery Service" on time because i coudn't figure out how to input values from both Batches and Orders at the same time, but if you make so you can input both, to close part of a batch you just have to update the part of the batch with the reference passed and the delivery service passed from "closing" to "sent"


