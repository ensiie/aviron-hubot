module.exports = (robot) ->
  robot.respond /GOOD NEWS (.*)$/i, (msg) ->
    msg.send "```
      Bonjour Yann et Léo,
      Super nouvelle :simple_smile:" +
      msg.match[1] +
      "Amicalement
      Octave
      ```"
