
-- 靶体接口
function Target()

--校验和
  write_msg(channels.target,protocols.target,{check=0})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了靶体信息', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")

  --发送包头错误的数据包
  write_msg(channels.target,protocols.target,{header=0x5511})
  etimer.delay(1000)
  local res = ask("yesno",{title='提示', msg='请确认是否收到了靶体信息', default=false})
  check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")

    write_msg(channels.target,protocols.target,{data1=0x55})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了靶体信息', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")

    write_msg(channels.target,protocols.target,{zone=0x9})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了靶体信息', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")

    write_msg(channels.target,protocols.target,{data2=0x55})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了靶体信息', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")

    write_msg(channels.target,protocols.target,{tail=0x5511})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了靶体信息', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")




end


function entry()
    -- 此处输入程序代码
    Target()
    exit()
end