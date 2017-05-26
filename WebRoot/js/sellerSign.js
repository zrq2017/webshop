let password = document.getElementById('password')
let repassword = document.getElementById('repassword')
let password_group = document.getElementsByClassName('form-group')[1]
let repassword_group = document.getElementsByClassName('form-group')[2]
let p = document.getElementsByTagName('p')
repassword.onblur = () => {
	if(password.value != repassword.value){
		password_group.classList.add('has-error');
		repassword_group.classList.add('has-error');
		p[1].classList.remove('hidden');
	}
	if(password.value == repassword.value){
		password_group.classList.remove('has-error');
		repassword_group.classList.remove('has-error');
		p[1].classList.add('hidden');
	}
}