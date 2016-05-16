local playerReducer = {}

local initialState = {
   direction = 'UP',
}

function assign(orig, data)
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


function playerReducer.reducer(state, action)
   if action.type == 'MOVE_UP' then
      return assign(state, {
         direction = 'UP'
      })
   elseif action.type == 'MOVE_DOWN' then
      return assign(state, {
         direction = 'DOWN'
      })
   elseif action.type == 'MOVE_LEFT' then
      return assign(state, {
         direction = 'LEFT'
      })
   elseif action.type == 'MOVE_RIGHT' then
      return assign(state, {
         direction = 'RIGHT'
      })
   else
      return state
   end
end

return playerReducer
