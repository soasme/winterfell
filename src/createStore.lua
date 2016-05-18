function createStore(reducer)
    local currentReducer = reducer
    local currentState = nil

    function getState()
        return currentState
    end

    function dispatch(action)
        currentState = currentReducer(currentState, action)
        return action
    end

    dispatch({type = '__INIT__'})

    return {
        getState = getState,
        dispatch = dispatch,
    }
end

return createStore
