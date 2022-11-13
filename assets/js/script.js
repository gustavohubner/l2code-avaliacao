let card_template = document.getElementById('card-template')
let container = document.getElementById('card-container')
// let scrollpos = 0;

let imgs = [
    'assets/img/cards/Image01.png',
    'assets/img/cards/Image02.png',
    'assets/img/cards/Image03.png',
    'assets/img/cards/Image04.png',
    'assets/img/cards/Image05.png'
]


function load_auctions() {
    for (i = 0; i < imgs.length; i++) {
        let new_card = card_template.cloneNode(true)
        new_card.getElementsByClassName('card-img')[0].src = imgs[i]
        new_card.style.display = 'block'
        new_card.id = ''
        container.append(new_card)
    }
}

// function scroll(amount) {

//     container.scroll({left: scrollpos, behaviour:'smooth'})
// }

load_auctions()