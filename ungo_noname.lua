local ungo_noname = require "packages/Yuziq/ungo_noname"

local pack_list = {
    ungo_noname,
}

Fk.translations["zh_CN"] = Fk.translations["zh_CN"] or {}

for _, pack in ipairs(pack_list) do
    for _, g in ipairs(pack.generals) do
        local str = "designer:" .. g.name
        if not Fk.translations["zh_CN"][str] or Fk.translations["zh_CN"][str] == "小识" then
            Fk.translations["zh_CN"][str] = "御馔津吃鱼子酱"
        end
    end
end
return pack_list
