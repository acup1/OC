c=require("component")
ci=c.cipher
f1=io.open("anim.c","w")
f2=io.open("anim","r")
fd={}
for i in f2:lines() do table.insert(fd,i) end
f2:close()
for _,i in pairs(fd) do f1:write(ci.encrypt(i).."\n") end
f1:close()
