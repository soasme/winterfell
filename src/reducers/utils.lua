local utils = {}

function utils.assign(orig, data)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
        for key, value in pairs(data) do
           copy[key] = value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

return utils
