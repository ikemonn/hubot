# Commands:
#  save <no> <question> <answer> - 問題と解答を記憶させる


module.exports = (robot) ->
  robot.hear /save (.*) (.*) (.*)$/i, (msg) ->
    num = msg.match[1]
    question = msg.match[2]
    answer = msg.match[3]

    robot.brain.data[num] = [question,answer]
    robot.brain.save()

    msg.send "OK! I memorized"
