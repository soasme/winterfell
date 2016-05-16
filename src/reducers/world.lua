local worldReducer = {}
local utils = require('reducers/utils')
local assign = utils.assign

worldReducer.initialState = {
   matrix = {},
   size = {
      height = 0,
      width = 0,
   },
   focus = {
      height = 0,
      width = 0
   },
}

function worldReducer.reducer(state, action)
   if action.type == 'MOVE_UP' then
      if state.focus.height < state.size.height then
         local focus = assign(state.focus, {height = state.focus.height + 1})
         return assign(state, {focus = focus})
      else
         return state
      end
   elseif action.type == 'MOVE_DOWN' then
      if state.focus.height > 0 then
         local focus = assign(state.focus, {height = state.focus.height - 1})
         return assign(state, {focus = focus})
      else
         return state
      end
   elseif action.type == 'MOVE_RIGHT' then
      if state.focus.width < state.size.width then
         local focus = assign(state.focus, {width = state.focus.width + 1})
         return assign(state, {focus = focus})
      else
         return state
      end
   elseif action.type == 'MOVE_LEFT' then
      if state.focus.width > 0 then
         local focus = assign(state.focus, {width = state.focus.width - 1})
         return assign(state, {focus = focus})
      else
         return state
      end
   else
      return state
   end
end


return worldReducer
