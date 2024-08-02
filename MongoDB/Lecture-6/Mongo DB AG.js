db.Books.find()

// aggregation pipeline => []
 db.Books.find({"country" : "Italy", "language" : "Italian"})

db.Books.aggregate([
    {
        $match : {"country" : "Italy", "pages" : {$lt: 700}}
    }
])



// --------- 3 type particular column show --------------------
db.Books.find({} , {"author":1, _id:0, title:1 , "year":1})
db.Books.find({}).select({"author":1, _id:0, title:1 })
db.Books.find({}).project({year:1 , title:1})

// -----------------------------------------------------------

db.Books.aggregate([
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
db.Books.find({}).sort({year:1 , country:1})
db.Books.aggregate([
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
db.Books.find({}).skip(5).limit(3)
db.Books.aggregate([
    {$limit:15},
    {$skip: 10},
])

// -------------Count------------------------
db.Books.find({}).count()

db.Books.aggregate([
    {$match : {country: "Italy"}},
    {$count : "country"}
    ])