const express = require('express');
const app = express();
const path = require('path');
const databaseConnection = require('./config/database');



databaseConnection.connect();

app.set('views',path.join(__dirname,'views'));
app.set('view engine','ejs');
app.use(express.static(path.join(__dirname,'public')));



app.get('/',(req,res)=>{
      databaseConnection.query('select * from products',(error,data)=>{
            if(error){
                console.log(error);
            }
            res.render('index',{
                titulo:"Playeras",
                products: data      
            })
      });    
});

app.get('/contacto',(req,res)=>{
    res.render('./pages/contacto');
})

app.get('/nosotros',(req,res)=>{
    res.render('./pages/nosotros');
})


const port = 3000;

app.listen(port,()=>{
    console.log('servidor a su servicio en el puerto',port)
})
