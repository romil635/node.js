// Logical Operator //



// -> The Following Operator Can Logicaly Compare Multiple Queries 
//  $AND
// ->It Is Used To Join Query Clauses Witha Logical AND And return all Documents That Match The Given Conditions Of Both Clauses.
// EX:- 
db.collection.find({
  $and: [
    { status: "active" },
    { age: { $gte: 18 } }
  ]
});

//  $OR
// -> It Is Used To Join Query Clauses Witha Logical OR And return all Documents That Match the Given Conditions Of Cither Clause.
//EX:-
db.collection.find({    
    $or: [
        { status: "active" },
        { age: { $gte: 18 } }
        ]
        });

//  $NOT
// -> It Is Used To Negate The Given Query Clause And return all Documents That Do Not Match The Query Exeression.
// EX:-
db.collection.find({
    status: { $not: { $eq: "inactive" } }
  });

//  $NOR
// -> It Is Used To Negate The Given Query Clause With a Logical NOB And return all Documents That Fail To Match Both Cluses.
// EX:-
db.collection.find({
    $nor: [
        { status: "active" },
        { age: { $gte: 18 } }
        ]
        });

