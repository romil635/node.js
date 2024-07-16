
// group:-
db.Book.aggregate([
    {
        $group: {
            _id: "$country",
            total:{
                $sum:1
            },
        },
    }
 ])
 
 db.Students.insertMany([
     {
         "studentId": "std001",
         "stdName"  : "Romil",
         "Course"   : "Fll-stack",
         "faculty"  : "tea002"
     },
          {
         "studentId": "std002",
         "stdName"  : "Jsami",
         "Course"   : "Fll-stack",
         "faculty"  : "tea003"
     },   
     {
         "studentId": "std003",
         "stdName"  : "Meet",
         "Course"   : "Fll-stack",
         "faculty"  : "tea002"
     },
          {
         "studentId": "std004",
         "stdName"  : "srushti",
         "Course"   : "Fll-stack",
         "faculty"  : "tea002"
     },
          {
         "studentId": "std005",
         "stdName"  : "Anirudh",
         "Course"   : "Fll-stack",
         "faculty"  : "tea002"
     },
     {
        "studentId": "std006",
        "stdName"  : "Om ",
        "Course"   : "Fll-stack",
        "faculty"  : "tea002"
     }
     ])
     
 db.Teachers.insertMany([
     {
         "TeacherId": "tea001",
         "TeacherName"  : "Harrdy",
     },
          {
         "TeacherId": "tea002",
          "TeacherName"  : "Sivam",
     },   
     {
         "TeacherId": "tea003",
          "TeacherName"   : "Lalo",
     },
])


db.Students.find({})
db.Teachers.find({})


// lookup & Unwind :- remove to the array
db.Students.aggregate([
    {
        $lookup: {
              from: "Teachers",
              localField: "faculty",
              foreignField: "TeacherId",
              as: "faculty"
             }
    },
    {
        $unwind : "$faculty"
    }
    ])
    