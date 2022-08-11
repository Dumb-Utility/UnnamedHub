local Global = getgenv and getgenv() or _G

module = {}
function module:CreateGui(name)
	local Window = {}
	local AlreadyLoaded = false
	for _,v in pairs(game:GetService("CoreGui"):GetChildren()) do
		if v:IsA("ScreenGui") and v:GetAttribute("Loaded") ~= nil then
			AlreadyLoaded = true	
		end
	end
	if AlreadyLoaded == true then return end
	if Global.Activate == nil then Global.Activate = "rightshift" end

	--# UI Parts
	
	local ScreenGui = Instance.new("ScreenGui")
	local Hide = Instance.new("Frame")
	local Template = Instance.new("Folder")
	local StringBoxTemplate = Instance.new("TextButton")
	local Open = Instance.new("TextButton")
	local TextBox = Instance.new("TextBox")
	local CheckTemplate = Instance.new("TextButton")
	local CheckBox = Instance.new("TextButton")
	local check = Instance.new("ImageLabel")
	local ButtonTemplate = Instance.new("TextButton")
	local NumberBoxTemplate = Instance.new("TextButton")
	local Open_2 = Instance.new("TextButton")
	local TextBox_2 = Instance.new("TextBox")
	local FrameTemplate = Instance.new("Frame")
	local Content = Instance.new("Folder")
	local CategoryText = Instance.new("TextLabel")
	local CategoryName = Instance.new("Frame")
	local Close = Instance.new("TextButton")
	local Frames = Instance.new("Folder")

	--Properties:
	local synprotect = nil
	if syn then
           synprotect = syn.protect_gui 
	end
	if synprotect then
	      synprotect(ScreenGui)
	end
	
	ScreenGui.Name = "UH"
	ScreenGui.Parent = game:GetService("CoreGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.ResetOnSpawn = false
	ScreenGui:SetAttribute("Loaded", true)

	Template.Name = "Template"
	Template.Parent = ScreenGui
	Hide.Parent = ScreenGui
	Hide.Size = UDim2.new(1,0,1,0)
	Hide.ZIndex = 0
	Hide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Hide.BackgroundTransparency = 0.5

	StringBoxTemplate.Name = "StringBoxTemplate"
	StringBoxTemplate.Parent = Template
	StringBoxTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	StringBoxTemplate.BackgroundTransparency = 1.000
	StringBoxTemplate.BorderSizePixel = 0
	StringBoxTemplate.Position = UDim2.new(0.0345604606, 0, 5.23529387, 0)
	StringBoxTemplate.Size = UDim2.new(0, 168, 0, 29)
	StringBoxTemplate.Font = Enum.Font.Arcade
	StringBoxTemplate.Text = "TextBox"
	StringBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	StringBoxTemplate.TextSize = 18.000
	StringBoxTemplate.TextXAlignment = Enum.TextXAlignment.Left

	Open.Name = "Open"
	Open.Parent = StringBoxTemplate
	Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Open.BackgroundTransparency = 1.000
	Open.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Open.BorderSizePixel = 0
	Open.Position = UDim2.new(0.808369935, 0, -0.00608562585, 0)
	Open.Size = UDim2.new(0, 33, 0, 29)
	Open.Font = Enum.Font.Arcade
	Open.Text = ">>"
	Open.TextColor3 = Color3.fromRGB(255, 255, 255)
	Open.TextSize = 18.000
	Open.TextXAlignment = Enum.TextXAlignment.Left

	TextBox.Parent = Open
	TextBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	TextBox.BackgroundTransparency = 0.500
	TextBox.BorderColor3 = Color3.fromRGB(94, 94, 94)
	TextBox.Position = UDim2.new(1, 0, -0.206896558, 0)
	TextBox.Size = UDim2.new(0, 200, 0, 35)
	TextBox.Visible = false
	TextBox.Font = Enum.Font.Arcade
	TextBox.PlaceholderText = "Insert Text Here"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 14.000

	CheckTemplate.Name = "CheckTemplate"
	CheckTemplate.Parent = Template
	CheckTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CheckTemplate.BackgroundTransparency = 1.000
	CheckTemplate.BorderSizePixel = 0
	CheckTemplate.Position = UDim2.new(0.0288461745, 0, 3.52941179, 0)
	CheckTemplate.Size = UDim2.new(0, 168, 0, 29)
	CheckTemplate.Font = Enum.Font.Arcade
	CheckTemplate.Text = "CheckBox"
	CheckTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	CheckTemplate.TextSize = 18.000
	CheckTemplate.TextXAlignment = Enum.TextXAlignment.Left

	CheckBox.Name = "CheckBox"
	CheckBox.Parent = CheckTemplate
	CheckBox.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
	CheckBox.Position = UDim2.new(0.817003667, 0, 0.146585941, 0)
	CheckBox.Size = UDim2.new(0, 24, 0, 24)
	CheckBox.Font = Enum.Font.SourceSans
    CheckBox.Text = ""
    CheckBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    CheckBox.TextSize = 14.000

	check.Name = "check"
	check.Parent = CheckBox
	check.BackgroundTransparency = 1.000
	check.Position = UDim2.new(-0.0315256119, 0, 0, 0)
	check.Size = UDim2.new(0, 24, 0, 24)
	check.Visible = false
	check.ZIndex = 2
	check.Image = "rbxassetid://3926305904"
	check.ImageRectOffset = Vector2.new(312, 4)
	check.ImageRectSize = Vector2.new(24, 24)

	ButtonTemplate.Name = "ButtonTemplate"
	ButtonTemplate.Parent = Template
	ButtonTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonTemplate.BackgroundTransparency = 1.000
	ButtonTemplate.BorderSizePixel = 0
	ButtonTemplate.Position = UDim2.new(0.0288461745, 0, 1.47058821, 0)
	ButtonTemplate.Size = UDim2.new(0, 168, 0, 29)
	ButtonTemplate.Font = Enum.Font.Arcade
	ButtonTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	ButtonTemplate.TextSize = 18.000
	ButtonTemplate.TextXAlignment = Enum.TextXAlignment.Left

	NumberBoxTemplate.Name = "NumberBoxTemplate"
	NumberBoxTemplate.Parent = Template
	NumberBoxTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NumberBoxTemplate.BackgroundTransparency = 1.000
	NumberBoxTemplate.BorderSizePixel = 0
	NumberBoxTemplate.Position = UDim2.new(0.0345604606, 0, 7.11764717, 0)
	NumberBoxTemplate.Size = UDim2.new(0, 168, 0, 29)
	NumberBoxTemplate.Font = Enum.Font.Arcade
	NumberBoxTemplate.Text = "NumberBox"
	NumberBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
	NumberBoxTemplate.TextSize = 18.000
	NumberBoxTemplate.TextXAlignment = Enum.TextXAlignment.Left

	Open_2.Name = "Open"
	Open_2.Parent = NumberBoxTemplate
	Open_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Open_2.BackgroundTransparency = 1.000
	Open_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Open_2.BorderSizePixel = 0
	Open_2.Position = UDim2.new(0.808369935, 0, -0.00608562585, 0)
	Open_2.Size = UDim2.new(0, 33, 0, 29)
	Open_2.Font = Enum.Font.Arcade
	Open_2.Text = ">>"
	Open_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Open_2.TextSize = 18.000
	Open_2.TextXAlignment = Enum.TextXAlignment.Left

	TextBox_2.Parent = Open_2
	TextBox_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	TextBox_2.BackgroundTransparency = 0.500
	TextBox_2.BorderColor3 = Color3.fromRGB(94, 94, 94)
	TextBox_2.Position = UDim2.new(1, 0, 0, 0)
	TextBox_2.Size = UDim2.new(0, 200, 0, 29)
	TextBox_2.Visible = false
	TextBox_2.Font = Enum.Font.Arcade
	TextBox_2.PlaceholderText = "Insert Number Here"
	TextBox_2.Text = ""
	TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox_2.TextSize = 14.000

	FrameTemplate.Name = "FrameTemplate"
	FrameTemplate.Parent = Template
	FrameTemplate.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	FrameTemplate.BackgroundTransparency = 0.500
	FrameTemplate.BorderColor3 = Color3.fromRGB(94, 94, 94)
	FrameTemplate.Position = UDim2.new(0.033036869, 0, 0.0456620641, 0)
	FrameTemplate.Size = UDim2.new(0, 175, 0, 34)
	FrameTemplate.Visible = false

	Content.Name = "Content"
	Content.Parent = FrameTemplate

	CategoryText.Name = "CategoryText"
	CategoryText.Parent = FrameTemplate
	CategoryText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CategoryText.BackgroundTransparency = 1.000
	CategoryText.BorderColor3 = Color3.fromRGB(27, 42, 53)
	CategoryText.Position = UDim2.new(0.0288461745, 0, -0.00588226318, 0)
	CategoryText.Size = UDim2.new(0, 169, 0, 34)
	CategoryText.Font = Enum.Font.Arcade
	CategoryText.Text = "CategoryName"
	CategoryText.TextColor3 = Color3.fromRGB(255, 255, 255)
	CategoryText.TextSize = 16.000
	CategoryText.TextXAlignment = Enum.TextXAlignment.Left

	CategoryName.Name = "ContentFrame"
	CategoryName.Parent = FrameTemplate
	CategoryName.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	CategoryName.BackgroundTransparency = 0.500
	CategoryName.BorderColor3 = Color3.fromRGB(94, 94, 94)
	CategoryName.Position = UDim2.new(-0.000617065409, 0, 0.9868384, 0)
	CategoryName.Size = UDim2.new(0, 175, 0, 333)

	Close.Name = "Close"
	Close.Parent = FrameTemplate
	Close.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
	Close.Position = UDim2.new(0.857142806, 0, 0.251544297, 0)
	Close.Size = UDim2.new(0, 17, 0, 16)
	Close.Font = Enum.Font.SourceSans
	Close.Text = ""
	Close.TextColor3 = Color3.fromRGB(0, 0, 0)
	Close.TextSize = 14.000

	Frames.Name = "Frames"
	Frames.Parent = ScreenGui
	-- Scripts:
	local LastPos = 0
	local First = 1
	local vis = false
	local Activate = Global.Activate
	Hide.Visible = vis
	local UserInputService = game:GetService("UserInputService")
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		-- print(input.KeyCode.Name:lower())
		if input.KeyCode.Name:lower() ~= Activate:lower() then return end
		vis = not vis
		Hide.Visible = vis
		for _,v in pairs(Frames:GetChildren()) do
			v.Visible = vis
		end
	end)

	function Window:AddFrame(FName, Size)
		local Tab = {}
		local Cop = FrameTemplate:Clone()
		Cop.Name = FName
		Cop:FindFirstChild("CategoryText").Text = FName
		Cop.Parent = Frames
		Cop.Visible = vis
		if First == 0 then
			Cop.Position = UDim2.fromOffset(LastPos.X.Offset + 230, 0)
		else
			First = 0
		end
		LastPos = Cop.Position
		if Size ~= nil then
			Cop.Size = UDim2.fromOffset(Cop.Size.X.Offset, Size)
		end
		Cop:SetAttribute("First", 0)
		local e = Instance.new("ObjectValue", Cop)
		e.Name = "LastBut"
		Cop:WaitForChild("Close").MouseButton1Click:Connect(function()
			if Cop:WaitForChild("CategoryFrame").Visible == true then
				Cop:WaitForChild("Button").Rotation = 0
			else
				Cop:WaitForChild("Button").Rotation = 180
			end
			for _,v in pairs(Cop:WaitForChild("Content"):GetChildren()) do
				v.Visible = not Cop:WaitForChild("ContentFrame").Visible
			end
			Cop:WaitForChild("ContentFrame").Visible = not Cop:WaitForChild("ContentFrame").Visible
		end)
		Cop.Active = true
		Cop.Draggable = true

		local Thing = Cop
		function Tab:AddButton(Name, Run)
			local Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = ButtonTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end
				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			but.MouseButton1Click:Connect(function()
				Run()
			end)
		end

		function Tab:AddTextBox(Name)
			local Box = {}
			Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = StringBoxTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end
				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			but.Open.MouseButton1Click:Connect(function()
			    but.Open.TextBox.Visible = not but.Open.TextBox.Visible
			end)
			function Box:GetString()
				h = but.Open.TextBox
				if (not h:IsA("TextBox") and #h:GetChildren() > 0) then error("The item isn't a string box !") return end
				return h.Text
			end
			return Box
		end

		function Tab:AddNumberBox(Name, Run)
			local Num = {}
			Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = NumberBoxTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end
				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			local TextBox = but.Open.TextBox
			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				TextBox.Text = TextBox.Text:gsub('%D+', '');
			end)
			but.Open.MouseButton1Click:Connect(function()
			    but.Open.TextBox.Visible = not but.Open.TextBox.Visible
			end)
			but.MouseButton1Click:Connect(function()
				if but.Open.TextBox.Text == "" then return end
				local Number = tonumber(but.Open.TextBox.Text)
				Run()
			end)
			function Num:GetNumber()
				h = but.Open.TextBox
				if (not h:IsA("TextBox") and #h:GetChildren() > 0) then error("The item isn't a string box !") return end
				return tonumber(h.Text)		
			end
			return Num
		end

		function Tab:AddCheckBox(Name, On, Off)
			Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = CheckTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 70)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 90)
					end
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 20)
					else
						but.Position = UDim2.fromOffset(7, LastBut.Position.Y.Offset + 40)
					end

				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
			-- print(Thing:WaitForChild("LastBut").Value)
			but:WaitForChild("CheckBox").MouseButton1Click:Connect(function()
				but.CheckBox.check.Visible = not but.CheckBox.check.Visible
				-- Using not to fix the thing going opposite (on = off, off = on)
				local activ = not but.CheckBox.check.Visible
				if activ then
					On()
				else
					Off()
				end
			end)

		end

		return Tab
	end	
	return Window
end
return module
