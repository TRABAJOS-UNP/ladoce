$(function () {
      $('[data-toggle="tooltip"]').tooltip()
});
function sumar(selector, cantidad) {
			total = $("#"+selector+" > form.panel-body > label.reservatotal");
			total.text(parseFloat(total.text() )+parseFloat(cantidad));
}
function restar(selector, cantidad) {
	total = $("#"+selector+" > form.panel-body > label.reservatotal");
	total.text(parseFloat(total.text() )-parseFloat(cantidad));
}
function evaluar(entrada, selector, cantidad) {
	if (entrada.checked) sumar(selector,cantidad); else restar(selector,cantidad)
}