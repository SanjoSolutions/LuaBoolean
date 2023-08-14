local addOnName = 'Boolean'
local version = '2.0.0'

if _G.Library then
  if not Library.isRegistered(addOnName, version) then
    --- @class Boolean
    local Boolean = {}

    function Boolean.toBoolean(value)
      return not not value
    end

    Library.register(addOnName, version, Boolean)
  end
else
  error(addOnName + ' requires Library. It seems absent.')
end
