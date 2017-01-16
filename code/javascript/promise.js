let randVal = 18;

var p3 = new Promise(function(resolve, reject){
    if(randVal < 17) {
        reject("p3: Can't vote") ;
    } else {
        resolve("p3: Can vote");
    }
});
p3.then((val) => console.log(val), (err) => console.log(err));

var p4 = new Promise(function(resolve, reject){
    if(randVal <= 17) {
        setTimeout(() => { throw new Error("p4: Can't vote"); }, 2000);
    } else {
        setTimeout(() => resolve("p4: Can vote"), 2000);
    }
});
p4.then((val) => console.log(val)).catch((err) => console.log(err));

console.log("Waiting for 2 seconds...");
