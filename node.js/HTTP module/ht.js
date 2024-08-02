// Http Module

const http = require('http');

const server = http.createServer((req, res) => {
    res.setHeader("Content-type","text/html")
    // res.write('Welcome to NodeJs');
    // res.setHeader("dummy", "hello world");
    // res.end('<h1>Thank for Connect with me</h1>');
    // res.setHeader("Content-type", "application/json");
    // res.setHeader("Content-type", "text/html");
    // res.end('<h2> Hello World </h2>');  // Send response to client
 });

// const server = http.createServer();
// server.on("request", (req, res) => {
//     res.setHeader("Content-type", "text/html");
//     res.write('Welcome to NodeJs');
//     res.end('<h1>Thank for Connect with me</h1>');
    // res.setHeader("dummy", "hello world");
    // res.setHeader("Content-type", "application/json");
    // res.end('<h2> Hello World </h2>');
// })

server.listen(1122, ()=>{
    console.log(`Server start at http://localhost:1122`);
});