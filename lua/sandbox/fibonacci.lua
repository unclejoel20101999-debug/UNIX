fibonacci = {}

function fibonacci:new(a, b)
	local t = setmetatable({}, {__index = fibonacci})
	t.a = a or 0
	t.b = b or 1
	return t
end

function fibonacci:next()
	local c = self.a + self.b
	self.a = self.b
	self.b = c
	return c
end

fuck_this = fibonacci:new(0, 1)

for i = 0, 10 do
	print(fuck_this:next())
end

-- :/ this fucking sucks ass
