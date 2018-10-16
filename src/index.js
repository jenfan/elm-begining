require('./index.scss')

const app = require('./Main.elm').Elm.Main.init({
    node: document.getElementById('main'),
    flags: null,
})
