module.exports = (robot) ->
  formatMessage = (message) ->
    """
    ```
    Bonjour Yann et Léo,
    Super nouvelle :-)

    #{message}

    Amicalement,
    Octave
    ```
    """

  robot.respond /GOOD NEWS (.*)$/i, (msg) ->
    msg.send formatMessage(msg.match[1])

  robot.hear /!supernouvelle (.*)$/i, (msg) ->
    msg.send formatMessage(msg.match[1])

