let sub = document.querySelector('.sub');
let add = document.querySelector('.add');
let count = +document.querySelector('#count').value;

sub.onclick = () => {
	if(count > 0){
		count--;
		document.querySelector('#count').value = count;
	}
}
add.onclick = () => {
	count++;
	document.querySelector('#count').value = count;
}