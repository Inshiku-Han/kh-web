const info = {
		name : '한인식'
	, age : '26'
	, gender : '남'
	, likeFood : ['egg', 'sandwitch', 'cheeseCake']
	, favFood : [
		{
			name : 'Kimchi', 
			fatty : false
		},
		{
			name : 'Cheese burger', 
			fatty : true
		}
	]
}

//function sayHello(name, age){
//	console.log(`Hello ${name} you are ${age} years old`);
//}
//
//sayHello('Gamza', 7);

//function sayHi(name, age){
//	return `my name is ${name} and ${age} years old`;
//}
//
//const act = sayHi('Han', 26);
//
//console.log(act);

//const calculator = {
//		plus : function(a, b){
//			return a + b;
//		},
//		multi : function(a, b){
//			return a * b;
//		},
//		devide : function(a, b){
//			return a / b;
//		},
//}
//const result = calculator.plus(5, 5)
//console.log(result)
//const multiResult = calculator.multi(10, 3)
//console.log(multiResult)
//const devideResult = calculator.devide(30, 3)
//console.log(devideResult)

const title = document.getElementById('title');

title.innerHTML = 'JS파일에 의해 변한 HTML';

title.style.color = 'red';

document.title = 'Today is Friday';


function handleResize(){
	console.log("I have been resized");
}

window.addEventListener("resize", handleResize);














