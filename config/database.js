 const mysql2 = require('mysql2')

const databaseConnection = mysql2.createConnection({

            host: 'localhost',
            user: 'root',
            database: 'productos',
            password: '',
            port: 3306
});

databaseConnection.connect((error)=>{
    if(error){
        console.log(error)
    }else{
        console.log('Servidor conectado a MySql')
    }    
})

module.exports = databaseConnection; 

