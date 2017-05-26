let sub = document.querySelector('.sub');
let add = document.querySelector('.add');
let count = +document.querySelector('#count').value;
let no_comment = document.getElementsByClassName('no_comment')[0];
let comment = document.getElementsByTagName('textarea')[0];
let comment_width = comment.clientWidth;
let comment_height = comment.clientHeight;

console.log(comment_width);
console.log(comment_height);
console.log(no_comment);


window.onload=function () {
	console.log(no_comment);
	no_comment.style.width = comment_width + 'px';
	no_comment.style.height = comment_height + 'px';
}

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