db.Book.find()

// aggregation pipeline => []
 db.Book.find({"country" : "Italy", "language" : "Italian"})

db.Book.aggregate([
    {
        $match : {"country" : "Italy", "pages" : {$lt: 700}}
    }
])



// --------- 3 type prticuler column show --------------------
db.Book.find({} , {"author":1, _id:0, title:1 , "year":1})
db.Book.find({}).select({"author":1, _id:0, title:1 })
db.Book.find({}).project({year:1 , title:1})

// -----------------------------------------------------------

db.Book.aggregate([
    // using Projection
    {
        $project:{
            "author":1, "title":1 , "year" :1
        }
    },
    {
        $match : {"year" : {$lt : 1300}}
    } 
    ])


// -------------------Sort-------------------
db.Book.find({}).sort({year:1 , country:1})
db.Book.aggregate([
    {
        $project:{
            year:1, Title:1
        }
    },
    {
        $sort:{
            year:1
        }
    }
    ])


// -----------Skip & limit-------------------
db.Book.find({}).skip(5).limit(3)
db.Book.aggregate([
    {$limit:15},
    {$skip: 10},
])

// -------------Count------------------------
db.Book.find({}).count()

db.Book.aggregate([
    {$match : {country: "Italy"}},
    {$count : "country"}
    ])