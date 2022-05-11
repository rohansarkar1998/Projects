"use strict";
const init = function (e) {
	let spn = document.querySelector("#pri");

	let val = localStorage.getItem('cart_price')

	spn.innerHTML = val;
};


document.addEventListener('DOMContentLoaded', function(){ init();});