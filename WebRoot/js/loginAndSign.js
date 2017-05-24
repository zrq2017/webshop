let loginButton = document.getElementsByClassName('select-login')[0];
let signButton = document.getElementsByClassName('select-sign')[0];
let login = document.getElementById('login');
let sign = document.getElementById('sign');
console.log(login);
console.log(loginButton);
console.log(signButton);
loginButton.onclick = function() {
	console.log('123');
	sign.classList.remove('sign-gb');
	sign.classList.add('sign-gn');
	login.classList.remove('login-gn');
	login.classList.add('login-gb');
};
signButton.onclick = function() {
	login.classList.remove('login-gb');
	login.classList.add('login-gn');
	sign.classList.remove('sign-gn');
	sign.classList.add('sign-gb');
}