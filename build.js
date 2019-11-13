const fs = require('fs')
const pug = require('pug')
const sass = require('node-sass')

const html = pug.renderFile('./src/index.pug', { pretty: true })
fs.writeFileSync('./dist/index.html', html)

var { css } = sass.renderSync({ file: './src/main.sass' })
fs.writeFileSync('./dist/main.css', css)
