// show collections
// db.books.find({})
// show collections;
// db.books.find({})

// Comparison Operater//
// -> The Following Operaters Can Be Used In Queries To Compara Values
// -> $eq, $gt, $gte, $lt, $lte, $ne,

// $EQ 
// -> It Is Used To Math The Value Of The Fields That are EQUAL To The Specified Values
db.books.find({"pages":{$eq: 784}})
db.books.find ({"author":{$eq:"unknown"}})

// $GT
// -> It Is Used To Match The Value Of The Fields That Are GREATER THAN EQUL TO The Specified Values
db.books.find({"pages": {$gt: 505}})

// $GTE
// -> It Is Used To Match The Value Of The Fields That Are GREATER THAN OR EQUAL TO The Specifind Values
db.books.find( {"pages": {$gte: 505}})

// $ne
// -> It Is Used To Match The Value Of The Fields That Are NOT EQUAL TO The Specified Values
db.books.find({"author":{$ne:"unknown"}})
db.books.find( {"pages": {$ne: 784}})

//$IT
// -> It Is Used To Match The Value Of The Fields That Are LESS THAN The Specified Values
db.books.find( {"pages": {$it: 784}})

// $ITE
// -> It Is Used To Match The Value Of The Fields That Are LESS THAN OR EQUAL TO The Specified Values
db.books.find( {"pages": {$ite: 784}})

// $IN
// -> It Is Used To Match The Value Of The Fields That Are IN The Specified Values
db.books.find({"author": {$in: ["Unknown", "Hans Christian Andersen"]}})

// $NIN
// -> It Is Used To Match The Value Of The Fields That Are NOT IN The Specified Values
db.books.find({"author": {$nin: ["Unknown", "Hans Christian Andersen"]}})

// $LT
// -> It Is Used To Match The Value Of The Fields That Are LESS THAN The Specified Values
db.books.find( {"pages": {$lt: 500}})

// $LTE
// -> It Is Used To Match The Value Of The Fields That Are LESS THAN OR EQUAL TO The Specifind Values
db.books.find({"pages": {$lte: 505}})