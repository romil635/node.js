--  starting command
1. mongosh

2. show dbs

--   use dbName
3. use node5to7 


-- Create Collection



-- insert data (single)
db.users.insertOne({
    "name" :"John Peter",
    "age" : 22,
    "email" : "john@test.in"
});

-- insert data (multiple)
db.users.insertMany([
    {
        "name" : "Jolly Peter",
        "age" : 21,
        "gender" : "Female"
    },
    {
        "name" : "Virat Kohli",
        "age" : 34,
        "email" : "virat@test.in",
        "hobbies" : ["cricket", "music" ,"dancing"]
    },
    {
        "name" : "Anushka Sharma",
        "gender" : "Female",
        "movies": {
            "super_deper" : "PK",
            "most_famous" : "Sultan",
            "Floop" :"Sui-dhaga",
        }
    },
]);

-- show data
db.users.find();