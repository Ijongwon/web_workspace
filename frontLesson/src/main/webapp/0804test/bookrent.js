const addDate = document.forms[0].rentdate
const endDate = document.forms[0].date2
const custid = document.forms[0].custID
const bookcode = document.forms[0].bookcode

let today = new Date()
addDate.value = dateFormat(today,'-')

let temp = new Date()
temp.setDate(temp.getDate()+14)	
endDate.value = dateFormat(temp,'-')

/*document.getElementById('btn').addEventListener('click', () => {
alert(`${custid.value} 회원님, 대여도서 [${bookcode.value}]의 반납 기한 날짜는 ${endDate.value}입니다`)})*/


document.getElementById('rdate').addEventListener('change',returnDate)



function dateFormat(vdate,symbol) {
	
	let year = vdate.getFullYear()
	let month = (vdate.getMonth()+1).toString().padStart(2,'0')
	let date = vdate.getDate().toString().padStart(2,'0')
	let result = [year,month,date].join(symbol)
	return result
}

function returnDate() {
	let brDate = new Date(addDate.value)
	brDate.setDate(brDate.getDate()+14)
	endDate.value = dateFormat(brDate,'-')
	
}



