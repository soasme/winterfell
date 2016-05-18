local player = {}
local utils = require('reducers/utils')
local assign = utils.assign

 player.initialState = {
    direction = 'UP',
    isWalking = false,
}

function player.reducer(state, action)
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

return player
