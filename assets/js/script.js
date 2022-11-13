let card_template = document.getElementById('card-template')
let container = document.getElementById('card-container')
let scrollpos = 0;

let imgs = [
    'cards/Image01.png',
    'cards/Image02.png',
    'cards/Image03.png',
    'cards/Image04.png',
    'cards/Image05.png'
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

function scroll(amount) {

    container.scroll({left: scrollpos, behaviour:'smooth'})
}

load_auctions()