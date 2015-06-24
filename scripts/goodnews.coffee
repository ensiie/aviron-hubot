module.exports = (robot) ->
  formatMessage = (message) ->
    """
    ```
    Bonjour Yann et Léo,\n
    Super nouvelle :simple_smile:\n\n
    #{message}\n\n
    Amicalement\n
    Octave
    ```
    """

  robot.respond /GOOD NEWS (.*)$/i, (msg) ->
    msg.send formatMessage(msg.match[1])

  robot.hear /!supernouvelle (.*)$/i, (msg) ->
    msg.send formatMessage(msg.match[1])

