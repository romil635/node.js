const http = require("http");
const data = [
  {
    id: 1,
    Name: "Romil",
    age: 20,
  },
  {
    id: 2,
    Name: "Meet",
    age: 18,
  },
  {
    id: 3,
    Name: "Om",
    age: 21,
  },
  {
    id: 4,
    Name: "Annirudh",
    age: 23,
  },
  {
    id: 5,
    Name: "Darshan",
    age: 21,
  },
  {
    id: 6,
    Name: "Jasmi",
    age: 18,
  },
  {
    id: 7,
    Name: "Srushti",
    age: 20,
  },
  {
    id: 8,
    Name: "Priyanshi",
    age: 21,
  },
];
const server = http.createServer();
server.on("request", (req, res) => {
//   console.log(req.url);
  let items = req.url.split("/");
  console.log(items);
  if (items[1] === "user"){
    res.setHeader("Content-Type", "text/html");
    res.write("<h2>Welcome to Web Page</h2>");
    res.end();
  } 
  else if (items[1] === "admin"){
    res.setHeader("Content-Type", "text/html");
    res.write("<h2>Welcome to Admin Page</h2>");
    res.end();
  } 
  else if (items[1] === "Friends"){
    res.setHeader("Content-type", "application/json");
    if (items.length === 3){
      let friIndex = +items[2];
      res.write(json.stringify(data.filter(e => e.id === friIndex)));
    } 
    else 
    res.write(json.stringify(data));
    res.end();
  }
   else {
    res.setHeader("Content-type", "text/html");
    res.write('<h2 style="color:red">Page is Not Found</h2>');
    res.end();
  }
});
server.listen(2221, () => {
  console.log("Server start at http://127.0.0.1:2221");
});
