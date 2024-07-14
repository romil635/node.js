// db.users.find({})
// db.users.find({"movies.Floop":"Sui-dhaga"}) 
db.users.findOne({"gender" : "Female"})


// DATA UPDATE
//SYNTEXT:- db.users.updateOne({filter} , {update data} , {upsert:true})
// db.users.updateMany()

db.users.updateOne(
    {gender : 'Female'},
    {$set:{age:25 , email: "jolly@test.in"}},
    {upsert:true}
)

db.users.updateMany(
    {gender: 'Female'},
    {$set:{
        passion: "Make-up"
    }},
    {upsert: true}
)

//DELETE DATA
//SYNTEXT:-  db.users.deleteOne({filter})

db.users.deleteOne({_id:objectId('668d397bb5b7d023becc8988')})


db.users.deleteMany({gender : 'Female'})

db.users.drop()
// show collections
db.dropDatabse()