let loginButton = document.getElementsByClassName('select-login')[0];
let signButton = document.getElementsByClassName('select-sign')[0];
let password = document.getElementById('sign_password');
let repassword = document.getElementById('repassword');
let password_group = document.getElementsByClassName('form-group')[3];
let repassword_group = document.getElementsByClassName('form-group')[4];
let login = document.getElementById('login');
let sign = document.getElementById('sign');
let li = document.getElementsByTagName('li');
let p = document.getElementsByTagName('p');


loginButton.onclick = () => {
	li[0].classList.add('active');
	li[1].classList.remove('active');
	sign.classList.remove('sign-gb');
	sign.classList.add('sign-gn');
	login.classList.remove('login-gn');
	login.classList.add('login-gb');
};
signButton.onclick = () => {
	li[0].classList.remove('active');
	li[1].classList.add('active');
	login.classList.remove('login-gb');
	login.classList.add('login-gn');
	sign.classList.remove('sign-gn');
	sign.classList.add('sign-gb');
}
repassword.onblur = () => {
	if(password.value != repassword.value){
		password_group.classList.add('has-error');
		repassword_group.classList.add('has-error');
		p[2].classList.remove('hidden');
	}
	if(password.value == repassword.value){
		password_group.classList.remove('has-error');
		repassword_group.classList.remove('has-error');
		p[2].classList.add('hidden');
	}
}