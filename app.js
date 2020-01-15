let allRows = document.querySelectorAll('.row');
let cells = document.querySelectorAll('.cell')
let shape = 'X'


cells.forEach(function(rows) {
    rows.addEventListener('click', userClick);

});

function userClick(e) {
e.target.textContent = shape
    if (shape == 'X') {
        shape = 'O'
    }
     else {shape = 'X'}
    }