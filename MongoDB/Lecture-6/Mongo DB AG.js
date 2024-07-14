// Mongo DB Aggregation //
//  Aggregation Operations Process Data Recods Are Return Computed Result Mongo DB Provides Three Ways To Perfrom Aggregation The Aggregation Pipeline .The Map-Reduce Function And Single - Purpose Aggregation Methods. 

// 1. $MATCH
//-> This Is Filter Operation It Filters The Documents To Pass Only Document That Match The Specified Condition (S) To The Next Pipeline Stage.
// EX:- 
// Basic Filtering:
db.collection.aggregate([
    { $match: { status: "active" } }
])
//   Using Comparison Operators:
db.collection.aggregate([
    { $match: { age: { $gte: 18 } } }
])
//   Combining Conditions:
db.collection.aggregate([
    { $match: { $and: [{ status: "active" }, { age: { $gte: 18 } }] } }
])
//   Using $or:
db.collection.aggregate([
    { $match: { $or: [{ status: "inactive" }, { age: { $lt: 18 } }] } }
])

// 2. $PROJECT
//-> This Is Operation Can Add New Field , Remove Existing Fields,Or Reshape A Document's Data.
// EX:-
// Basic Field Inclusion:
db.collection.aggregate([
    { $project: { _id: 0, name: 1 } }
])
//Field Exclusion:
db.collection.aggregate([
    { $project: { _id: 0, name: 1 } }
])
//Adding New Fields:
db.collection.aggregate([
    {
        $project: {
            _id: 0, name: 1, age: {
                $add: [{ $toInt: "$age" }, 1]
            }
        }
    }
])
// Renaming Fields:
db.collection.aggregate([
    {
        $project: {
            _id: 0, name: 1, age: {
                $add: [{ $toInt: "$age" }, 1]
            }
        }
    }
])
//Creating Computed Fields:
db.collection.aggregate([
    {
        $project: {
            _id: 0, name: 1, age: {
                $add: [{ $toInt: "$age" }, 1]
            }
        }
    }
])
// Nested Fields:
db.collection.aggregate([
    {
        $project: {
            _id: 0, name: 1, age: {
                $add: [{ $toInt: "$age" }, 1]
            }
        }
    }
])


// 3. $LIMIT
// This Operation Can Restricts The Numbar Of Documents That Can Through The Pipeline.
// Syntax:
// { $limit: <number> }
// Example:
//Basic Usage:
db.collection.aggregate([
    { $limit: 5 }
])
//Combining with $match:
db.collection.aggregate([
    { $match: { status: "active" } },
    { $limit: 3 }
])
//Combining with $sort:  
db.collection.aggregate([
    {
        $sort: {
            age: -1
        }
    },
    { $limit: 3 }
])

// 4. $SORT
// This Operation Can Sort The Documents In The Pipeline.
// Syntax:
// { $sort: { <field1>: <1| -1>, <field2>:
// <1| -1>, ... } }
// Example:
// Basic Usage:
db.collection.aggregate([
    { $sort: { age: 1 } }
    ])
    // Combining with $limit:
    db.collection.aggregate([
        {
            $sort: {
                age: -1
                }
                },
                { $limit: 3 }
                ])
                
// 5. $UNWIND
// 6. $GROUP
// 7. $REDUCE
// 8. $OUT
// 9. $WITH
// 10. $COUNT
// 11. $SUM
// 12. $AVG
// 13. $MAX
// 14. $MIN
// 15. $STDDEV
// 16. $STDDEVPOP
// 17. $STDDEVSP
// 18. $VARIANCE
// 19. $VARIANCEPOP
// 20. $VARIANCESP
// 21. $TOLOWER



