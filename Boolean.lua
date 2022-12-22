local addOnName = ...

--- @class Boolean
local Boolean = {}

Library.register(addOnName, '1.0.0', Boolean)

function Boolean.toBoolean(value)
  return not not value
end
