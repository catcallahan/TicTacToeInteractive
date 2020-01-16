let allRows = document.querySelectorAll('.row');
let cells = document.querySelectorAll('.cell');
let winCombos = [
    [cells[0], cells[1], cells[2]],
    [cells[3], cells[4], cells[5]],
    [cells[6], cells[7], cells[8]],
    [cells[0], cells[3], cells[6]],
    [cells[2], cells[5], cells[8]],
    [cells[1], cells[4], cells[7]],
    [cells[2], cells[4], cells[6]],
    [cells[0], cells[4], cells[8]],
]
let topBoxes = document.querySelectorAll('.top');
let bottomBoxes = document.querySelectorAll('.bottom')
let leftBoxes = document.querySelectorAll('.left')
let rightBoxes = document.querySelectorAll('.right')
let centerBox = document.querySelectorAll('.center')
let shape = 'X'
let boxes = [topBoxes, bottomBoxes, rightBoxes, leftBoxes, centerBox]


for (i = 0; i < cells.length; i++) {
    cells[i].addEventListener('click', userClick);

}

function userClick(e) {
    if (e.target.textContent == '') {
        e.target.textContent = shape
        checkWin();
        if (shape == 'X') {
            shape = 'O'
        } else {
            shape = 'X'
        }

    }
};
let cellCounter = 0

function checkWin() {
    cellCounter++
    for (i = 0; i < winCombos.length; i++) {
        let shapeCount = 0
        for (a = 0; a < winCombos[i].length; a++) {
            if (winCombos[i][a].innerHTML == shape) {
                shapeCount++
            }
            if (shapeCount == 3) {
                setTimeout(function () {
                    alert(shape + " wins!");
                     resetGame(); 
                }, 100);
                    return;
            }

            if (shapeCount != 3 && cellCounter == 9) {
                setTimeout(function () {
                    alert("Sorry, mah dudes. It's a draw.");
                }, 100);
                setTimeout(function () {
                    resetGame(); 
                }, 100)
                return;
                
            }
        }
    return
    }

};

function resetGame() {
    shape = 'X'
    cellCounter = 0
    for (i = 0; i < cells.length; i++) {
        cells[i].textContent = "";
    }
}