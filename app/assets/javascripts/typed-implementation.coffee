ready = ->
  Typed.new '.element',
    strings: [
      'Hello and welcome to Neutrino Software Company.'
      'I am <strong>Curtis Dunne</strong>, the founder and CEO and I am so happy that you stopped by.'
      'Please feel free to look around our website.'
      "Don't forget to check out our Blog page as well as our Portfolio page to help you get a better
      idea of what we are all about and what problems we can solve for you."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
