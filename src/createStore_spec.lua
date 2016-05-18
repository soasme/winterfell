local createStore = require('createStore')

describe("createStore spec", function()
    it("should create store success", function()
        function reducer(state, action)
            return {action = action.type}
        end
        local store = createStore(reducer)
        assert.are.equal(store.getState().action, '__INIT__')
    end)
end)
