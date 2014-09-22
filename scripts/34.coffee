module.exports = (robot) ->
  robot.respond /play 34/, (msg) ->
    game = new Game(new Dice(), new Dice())
    resp = "You get: #{game.dice1.value} #{game.dice2.value}\n"
    if game.is34()
      resp += "Ahahah! You lose!"
    else if game.isDouble()
      resp += "It's a double! Play again!"
    else
      resp += "Useless... Next!"
    msg.send resp

class Dice
  constructor: ->
    @value = @generateRandomValue()

  generateRandomValue: ->
    Math.floor(Math.random() * 6) + 1

class Game
  constructor: (@dice1, @dice2) ->
    @dicesResult = @getDicesResult()

  getDicesResult: ->
    [@dice1.value, @dice2.value]

  is34: ->
    @dicesResult.toString() == [3,4].toString() or @dicesResult.toString() == [4,3].toString()

  isDouble: ->
    @dicesResult[0] == @dicesResult[1]
