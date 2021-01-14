c=require("component")
ci=c.cipher
f1=io.open("anim.c","r")
f2=io.open("anim","w")
fd={}
for i in f1:lines() do table.insert(fd,i) end
f1:close()
for _,i in pairs(fd) do f2:write(ci.decrypt(i).."\n") end
f2:close()
