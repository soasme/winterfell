local utils = require('reducers/utils')

describe("utils", function()
            it("should copy old table on assigning table", function()
                  local old = {old = 'OLD'}
                  local data = utils.assign(old, {})
                  assert.are.equal(data.old, 'OLD')
                  assert.are.equal(old.old, 'OLD')
            end)

            it("should add new prop on assigning table", function()
                  local old = {old = 'OLD'}
                  local data = utils.assign(old, {new = 'NEW'})
                  assert.are.equal(data.old, 'OLD')
                  assert.are.equal(data.new, 'NEW')
                  assert.are.equal(old.old, 'OLD')
                  assert.falsy(old.new)
            end)

            it("should preserve old prop on assigning table", function()
                  local old = {old = 'OLD'}
                  local data = utils.assign(old, {old = 'NEW'})
                  assert.are.equal(data.old, 'NEW')
                  assert.are.equal(old.old, 'OLD')
            end)
end)
