let seller_select = document.querySelector('.select-seller');
let vip_select = document.querySelector('.select-vip');
let seller = document.querySelector('#sellerManage');
let vip = document.querySelector('#vipManage');
let li = document.getElementsByTagName('li');

seller_select.onclick = () => {
	seller.classList.remove('seller_gn');
	seller.classList.add('seller_gb');
	vip.classList.remove('vip_gb');
	vip.classList.add('seller_gn');
	li[1].classList.remove('active');
	li[0].classList.add('active');
}

vip_select.onclick = () => {
	vip.classList.remove('vip_gn');
	vip.classList.add('vip_gb');
	seller.classList.remove('seller_gb');
	seller.classList.add('seller_gn');
	li[0].classList.remove('active');
	li[1].classList.add('active');
}