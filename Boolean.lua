local addOnName = ...
local version = '1.0.0'

if (_G.Library and not Library.retrieve(addOnName, version)) or not _G.Library then
  local Boolean = {}

  function Boolean.toBoolean(value)
    return not not value
  end

  if _G.Library then
    Library.register(addOnName, version, Boolean)
  else
    _G.Boolean = Boolean
  end
end
