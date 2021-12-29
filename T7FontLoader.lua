EnableGlobals()

function FontLoader(Sender, Fonts, filePath)
	if not Sender then
		Engine.ComError(Enum.errorCode.ERROR_UI, "Sender in FontLoader were not specified") 
		return	
	end

	if not Fonts then
		Engine.ComError(Enum.errorCode.ERROR_UI, "Fonts in FontLoader were not specified")
		return	
	end

	if not filePath then
		filePath = "Fonts/" -- Set default path, 9/10 people use this
	end

	local fontTable = {}

	if type(Fonts) ~= "table" then
		table.insert(fontTable, Fonts)
	else
		fontTable = Fonts
	end

	for index, font in pairs(fontTable) do
		Sender[font] = LUI.UIText.new()
		Sender[font]:setTopBottom(true, true, -50, 50) 
		Sender[font]:setLeftRight(true, true, -1500, -1000) -- Set it out of bounds
		Sender[font]:setTTF(filePath .. font .. ".ttf")
		Sender[font]:setText("Hello!") -- Set any text so that the font is actually loaded
		Sender[font]:setScale(0.01) -- Make it super tiny so it doesn't have the chance to occupy anything
		Sender:addElement(Sender[font])
	end
end

DisableGlobals()