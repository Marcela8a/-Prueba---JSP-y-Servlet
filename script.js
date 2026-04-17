function cambiarColor(select) {
    let opciones = select.options;

    for (let i = 0; i < opciones.length; i++) {
        opciones[i].classList.remove("seleccionado");
    }

    let index = select.selectedIndex;
    if (index >= 0) {
        opciones[index].classList.add("seleccionado");
    }
}