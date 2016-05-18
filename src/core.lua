local reducer = require('reducers/init')
local createStore = require('createStore')
store = createStore(reducer)
