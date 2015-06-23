module.exports = (robot) ->
  robot.respond /GOOD NEWS (.*)$/i, (msg) ->
    msg.send "```" +
      "Bonjour Yann et Léo,\n" +
      "Super nouvelle :simple_smile:\n\n" +
      msg.match[1] +
      "\n\nAmicalement\n" +
      "Octave" +
      "```"
