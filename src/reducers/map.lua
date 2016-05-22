local utils = require('reducers/utils')
local assign = utils.assign

function reducer(state, action)
    if action.type == '__INIT__' then
        return {
            object_index = {},
            map = map,
        }
    elseif action.type == 'LOAD_MAP' then
        local object_index = {}
        for _, layer in ipairs(action.map.layers) do
            object_index[layer.name] = {}
            if layer.objects then
                for gid, object in pairs(layer.objects) do
                    object_index[layer.name][object.x .. ',' .. object.y] = gid
                end
            end
        end

        return assign(state, {
            map = map,
            object_index = object_index,
        })
    else
        return state
    end
end

return reducer
