redis = (loadfile "redis.lua")()
io.write("Enter or Set Bot ID:-")
local last = io.read()
io.popen('rm -rf ~/.telegram-cli/gold-'..last..' gold-'..last..'.lua gold-'..last..'.sh gold_'..last..'_logs.txt')
redis:del('gold:'..last..':*')
print("Done!\nAll Data/Files Of gold Deleted\ngold ID : "..last)