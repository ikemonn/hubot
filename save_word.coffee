module.exports = (robot) ->
  robot.hear /save (.*) (.*)$/i, (msg) ->
    key = msg.match[1]
    val = msg.match[2]
    msg.send "#{key} is #{val}"
    if not robot.brain.data[key]
      robot.brain.data[key] = val

    robot.brain.save()

    msg.send "OK! I memorized #{key} is #{val}"
