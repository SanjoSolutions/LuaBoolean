local addOnName = ...
local version = '1.0.0'

if not Library.isRegistered(addOnName, version) then
  --- @class Boolean
  local Boolean = {}

  Library.register(addOnName, version, Boolean)

  function Boolean.toBoolean(value)
    return not not value
  end
end
