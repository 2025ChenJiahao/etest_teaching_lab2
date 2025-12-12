
-- 接收靶区信息
function Target()
--slow cha1
-- for i=1,10 do
--   write_msg(channels.target,protocols.target,{zone=5})
--   etimer.delay(5000)
-- end
--slow liang2
for i=1,24 do
  write_msg(channels.target,protocols.target,{zone=6})
  etimer.delay(100)
end
-- for i=1,5 do
--   write_msg(channels.target,protocols.target,{zone=2})
--   etimer.delay(100)
-- end
--slow liang3
-- for i=1,10 do
--   write_msg(channels.target,protocols.target,{zone=2})
--   etimer.delay(100)
-- end
--slow you
-- for i=1,10 do
--   write_msg(channels.target,protocols.target,{zone=1})
--   etimer.delay(100)
-- end
end

function entry()
    -- 此处输入程序代码
    Target()
    exit()
end