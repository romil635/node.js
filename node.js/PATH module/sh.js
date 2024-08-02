const http = require('http');
const fs = require('fs')
 
// Create a server object
const server = http.createServer()
const server1 = http.createServer()
const server2 = http.createServer()
const server3 = http.createServer()
const server4 = http.createServer()


server.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 2221')
     res.end('<h2>Thank you for conecting 2221 port....</h2>')
}).listen(2221 , () =>{
    console.log('Server Start at http://localhost:2221');
}) 
server1.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 2222')
    res.end('<h2>Thank you for conecting 2222 port....</h2>')
}).listen(2222 , () =>{
    console.log('Server Start at http://localhost:2222');
})
server2.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 2223')
    res.end('<h2>Thank you for conecting 2223 port....</h2>')
}).listen(2223 , () =>{
    console.log('Server Start at http://localhost:2223');
})
server3.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 2224')
    res.end('<h2>Thank you for conecting 2224 port....</h2>')
}).listen(2224 , () =>{
    console.log('Server Start at http://localhost:2224');
})
server4.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 2225')
    res.end('<h2>Thank you for conecting 2225 port....</h2>')
}).listen(2225 , () =>{
    console.log(`Server Start at http://localhost:2225`);
})

fs.open('task.js' ,(err , result) => {
    if(err)
        console.log(err);
    else
        console.log('File open successfully......');
})