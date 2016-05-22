local mapReducer = require('reducers/map')

describe('map reducer', function()

    function initState()
        return mapReducer({}, {type = '__INIT__'})
    end

    it("should build object index on loading map", function()
        local state = initState()
        state = mapReducer(state, {
            type = 'LOAD_MAP',
            map = {
                layers = {
                    { name = 'no-objects' },
                    {
                        name = 'objects',
                        objects = {
                            [100] = {x = 1, y = 1},
                        }
                    },
                }
            }
        })
        assert.are.equal(state.object_index['objects']['1,1'], 100)
        assert.are.equal(#state.object_index['no-objects'], 0)
    end)

end)

