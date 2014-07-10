# Commands:
#  get <no> <answer> - 問題に解答する

module.exports = (robot) ->
  robot.hear /get (.*) (.*)$/i, (msg) ->
    num = msg.match[1]
    answer = msg.match[2]

    data = robot.brain.data[num]
    #msg.send "data[0]は、#{data[0]}"
    #msg.send "data[1]は、#{data[1]}"
    if answer == data[1]
      msg.send "正解！！"
    else
      msg.send "ハズレ！ 正解は#{data[1]}"
