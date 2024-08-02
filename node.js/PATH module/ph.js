// Path Module

const path = require('path')
const base = path.basename('C:\\temp\\myfile.html');
const dir = path.dirname('/foo/bar/baz/asdf/quux');
const ext = path.extname('index.html');
// Output: .html


console.log(base);
console.log(dir);
console.log(ext);


const join=path.join('C:' ,'temp' , 'myfile.html')
console.log(join);

// const abs=path.isAbsolute('C:\\temp\\myfile.html')  //true
const abs =path.isAbsolute('index.html')  // false
console.log(abs);


const parse = path.parse('/home/user/dir/file.txt');
console.log(parse);