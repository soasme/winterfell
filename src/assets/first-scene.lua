return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.16.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 20,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 22,
  properties = {},
  tilesets = {
    {
      name = "desert",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 1,
      margin = 1,
      image = "tmw_desert_spacing.png",
      imagewidth = 265,
      imageheight = 199,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {
        {
          name = "Sand",
          tile = 29,
          properties = {}
        },
        {
          name = "Dirt",
          tile = 14,
          properties = {}
        },
        {
          name = "Pave",
          tile = 33,
          properties = {}
        },
        {
          name = "Brick",
          tile = 9,
          properties = {}
        }
      },
      tilecount = 48,
      tiles = {
        {
          id = 0,
          terrain = { 0, 0, 0, 3 }
        },
        {
          id = 1,
          terrain = { 0, 0, 3, 3 }
        },
        {
          id = 2,
          terrain = { 0, 0, 3, 0 }
        },
        {
          id = 3,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 4,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 5,
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 6,
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 7,
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 8,
          terrain = { 0, 3, 0, 3 }
        },
        {
          id = 9,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 10,
          terrain = { 3, 0, 3, 0 }
        },
        {
          id = 11,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 12,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 13,
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 14,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 15,
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 16,
          terrain = { 0, 3, 0, 0 }
        },
        {
          id = 17,
          terrain = { 3, 3, 0, 0 }
        },
        {
          id = 18,
          terrain = { 3, 0, 0, 0 }
        },
        {
          id = 19,
          terrain = { 3, 3, 3, 0 }
        },
        {
          id = 20,
          terrain = { 3, 3, 0, 3 }
        },
        {
          id = 21,
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 22,
          terrain = { 1, 1, 0, 0 }
        },
        {
          id = 23,
          terrain = { 1, 0, 0, 0 }
        },
        {
          id = 24,
          terrain = { 0, 0, 0, 2 }
        },
        {
          id = 25,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 26,
          terrain = { 0, 0, 2, 0 }
        },
        {
          id = 27,
          terrain = { 3, 0, 3, 3 }
        },
        {
          id = 28,
          terrain = { 0, 3, 3, 3 }
        },
        {
          id = 29,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 32,
          terrain = { 0, 2, 0, 2 }
        },
        {
          id = 33,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 34,
          terrain = { 2, 0, 2, 0 }
        },
        {
          id = 35,
          terrain = { 2, 2, 2, 0 }
        },
        {
          id = 36,
          terrain = { 2, 2, 0, 2 }
        },
        {
          id = 40,
          terrain = { 0, 2, 0, 0 }
        },
        {
          id = 41,
          terrain = { 2, 2, 0, 0 }
        },
        {
          id = 42,
          terrain = { 2, 0, 0, 0 }
        },
        {
          id = 43,
          terrain = { 2, 0, 2, 2 }
        },
        {
          id = 44,
          terrain = { 0, 2, 2, 2 }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Floor",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "gzip",
      data = "H4sIAAAAAAAAA62UTQ+CMAyGpyLiJ9xEDyRiPKjx//89u2RN6pt2HcTDc1nLs7UrG0MIo+BOnIg20RFD4ga5JeR8T+LlMMVXExuHKT65bjHXVxFnBc93ELUcYZ8LcQU8n0VXeN/ok3Wt/+CT/RuEM67L+Xmk73F+3o6PY9zXJvzOujZT2HfNh3H2eb3n/FrZS/Nx3Jqn3jhXBXH2WXXhP4b7Ro+cv0/y4TkQq1/We6M5NB/WZ703pT6rH8gywwp8Cyc/ssuwB9/WyfeY4/sCU9+QmEAGAAA="
    },
    {
      type = "tilelayer",
      name = "Items",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "gzip",
      data = "H4sIAAAAAAAAA2NgIAzUiVAz0ECNyuYpUNm8UUA+UKCBmfI0MJNegNpuVyBRnFxAirtx2Y2rLNInzSlE2aVHpN0gQO3yZ6gAAP+t7btABgAA"
    },
    {
      type = "objectgroup",
      name = "Meta",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      objects = {
        {
          id = 9,
          name = "word:ponder",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = false,
          properties = {
            ["info"] = "1. vt. 仔细考虑；衡量\\n2.vi. 沉思；考虑\\nponder over\n\n深思，沉思；考虑\\nponder upon the problem\n仔细考虑问题"
          }
        }
      }
    }
  }
}
