local package = {}
Boolean = package
setmetatable(package, { __index = _G })
setfenv(1, package)

function toBoolean(value)
  return not not value
end
