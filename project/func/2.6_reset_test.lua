function ResetFunctionTest()
  -- F-2.6-01 投镖结束状态复位
  etimer.delay(2000)
  local res1 = ask("yesno", {
      title = "提示",
      msg = "待测件已复位到准备投镖状态了吗？",
      default = true
  })
  -- 发送3枚轻镖
  write_msg(channels.shoot,protocols.shoot,{type=1,number=3})
  etimer.delay(1000)
  local res2 = ask("yesno", {
      title = "提示",
      msg = "点击开始后，待测件进入开始投镖状态了吗？",
      default = true
  })
  -- 发送3次外牛眼，剩余飞镖归0
  for i=1,3 do
    write_msg(channels.target,protocols.target,{zone=2})
    etimer.delay(1000)
  end
  local res3 = ask("yesno", {
      title = "提示",
      msg = "待测件显示投镖结束状态了吗？",
      default = true
  })
  local res4 = ask("yesno", {
      title = "提示",
      msg = "点击复位后，状态=准备投镖、飞镖类型/数量=上次值、剩余/总分/投中=0吗？",
      default = true
  })
  check(res4, "F-2.6-01投镖结束状态复位正确", "F-2.6-01投镖结束状态复位错误")

  -- F-2.6-02 准备/投镖中状态复位无效
  etimer.delay(1000)
  local res5 = ask("yesno", {
      title = "提示",
      msg = "待测件已切到准备投镖状态了吗？",
      default = true
  })
  local res6 = ask("yesno", {
      title = "提示",
      msg = "点击复位按钮后，状态/参数没变化吧？",
      default = true
  })
  check(res6, "F-2.6-02准备投镖状态复位无效正确", "F-2.6-02准备投镖状态复位生效错误")

  local res7 = ask("yesno", {
      title = "提示",
      msg = "已把待测件切到开始投镖状态了吗？",
      default = true
  })
  local res8 = ask("yesno", {
      title = "提示",
      msg = "再次点击复位后，状态/剩余飞镖等参数没变化吧？",
      default = true
  })
  check(res8, "F-2.6-02投镖中状态复位无效正确", "F-2.6-02投镖中状态复位生效错误")
end

function entry()
  ResetFunctionTest()
  exit()
end