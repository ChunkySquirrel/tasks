const { environment } = require('@rails/webpacker')

<<<<<<< HEAD
const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

=======
>>>>>>> c2670d2b8950f5d246f872278be627777ba05d49
module.exports = environment
