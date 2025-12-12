
-- 数据传送机接口
function Shoot()

  --发送包头错误的数据包
    write_msg(channels.shoot,protocols.shoot,{header=0x5511})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了飞镖信息输入', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")

    write_msg(channels.shoot,protocols.shoot,{data=0xAA})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了飞镖信息输入', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")
    
    write_msg(channels.shoot,protocols.shoot,{tail=0x5511})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了飞镖信息输入', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")
    write_msg(channels.shoot,protocols.shoot,{check=0})
    etimer.delay(1000)
    local res = ask("yesno",{title='提示', msg='请确认是否收到了飞镖信息输入', default=false})
    check(not res, "包头错误有丢包处理，正确", "包头错误没有丢包处理，错误")




end


function entry()
    -- 此处输入程序代码
    Shoot()
    exit()
end