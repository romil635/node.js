// file system module

const fs = require('fs');  // comman js
// import * as fs from 'fs'; //esm

//  file open , close , write , read , aapend , update , rename , delete

//  open mode--------------------------------
//  --------------------async method

// fs.open("./hello.txt" , (err , result) =>{
//     if(err)
//          console.log(err);
//         else
//          console.log("file open success");
// })

// --------------------sync method

// fs.openSync("./hello.c");
// console.log('file opened sucessfully');

// ----------------------------------------write
// fs.writeFile('./hello.txt' , this is first line of txt file,(err) =>{
//        if(err)
//         console.log(err);

//        else
//        console.log(write successfully);
// })

// ---------------------sunc method

//  let data =`
//   #include<stdio.h>
//   int main(){
//   printf("this is  data stote variable in print method");
//   return 0;
//   }
//  `

// fs.writeFileSync('./hello.c',data);
// console.log(it's worked);

// ------------------------------read

// fs.readFile('./hello.txt' , 'Utf8' , (err , data) =>{
//     if(err)
//         console.log(err);
//     else
//     console.log(data);
// })

// ------------------------ sync method

// // let aa = fs.readFileSync('./hello.c' ,'utf-16le')
// // let aa = fs.readFileSync('./hello.c' ,'ucs-2')
// let aa = fs.readFileSync('./hello.c' ,'utf-8')
// console.log(aa);

// ----------------------------append
// fs.appendFileSync('./hello.txt' , data)
// console.log('append success');

// --------------- async

// let data =  hello this is append and this is a second method async
//  fs.appendFile('./hello.txt',data,(err) =>{
//     if(err)
//         console.log(err);
//     else
//     console.log('sucess');
// })

// ---------------rename
// fs.renameSync('./hello.c' ,'./skill.c');
// console.log('append is worked');

// ---------------- async method

// fs.rename('./hello.txt' ,'./qode.txt',(err) =>{
//     if(err)
//         console.log(err);

//     else
//     console.log('successfully');
// })

// delete ---------------------

// fs.unlinkSync('./hello.c');
// console.log('deleterd......');

// ----------------------- async
// fs.unlink('./hello.txt',(err) =>{
//     if(err)
//         console.log(err);
//     else
//      console.log('success');
// })

// ===========================================================  async and sync  how to worked............

// function add(a,b){
//     return a+b;

// }
// function mul(a,b){

//     return a* b;
// }

// ---------------------------------- async
//  let t1 = performance.now();
//  console.log('stating---------->',t1);
//  console.log('addition ----------->>>>>>>', add(10,20));
//  fs.readFile('./qode.txt' , 'Utf8' , (err , data) =>{
//     if(err)
//         console.log(err);
//     else
//     console.log(data);
// })
// let t2 = performance.now();
// console.log('end time ----------->' ,t2);
// console.log('total time ----------->' ,t2-t1);

// ------------------------ sync

// let t1 = performance.now();
//  console.log('stating---------->',t1);
//  console.log('addition ----------->>>>>>>', add(10,20));
// let aa = fs.readFileSync('./qode.txt' ,'utf-8')
// console.log(aa);
// console.log('multi->>>>>>>>' ,mul(10,50));
// let t2 = performance.now();
// console.log('end time ----------->' ,t2);
// console.log('total time ----------->' ,t2-t1);