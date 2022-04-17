return {
	-- Instances:
	CreateGui = function()
		if _G.Activate == nil then _G.Activate = "rightshift" end
	    local ScreenGui = Instance.new("ScreenGui")
	    local Hide = Instance.new("Frame")
		local Template = Instance.new("Folder")
		local NumberBoxTemplate = Instance.new("TextButton")
		local Frame = Instance.new("Frame")
		local TextBox = Instance.new("TextBox")
		local CheckBoxTemplate = Instance.new("TextLabel")
		local StringBoxTemplate = Instance.new("TextBox")
		local Frame_2 = Instance.new("TextButton")
		local check = Instance.new("ImageLabel")
		local ButtonTemplate = Instance.new("TextButton")
		local SubSectionTemplate = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")
		local SubName = Instance.new("TextLabel")
		local FrameTemplate = Instance.new("Frame")
		local Button = Instance.new("ImageButton")
		local SessionName = Instance.new("TextLabel")
		local ContentFrame = Instance.new("Frame")
		local Content = Instance.new("Folder")
		local Frames = Instance.new("Folder")


		--Properties:
		if syn and syn.protect_gui then
                syn.protect_gui(ScreenGui)
	        end
		ScreenGui.Parent = game:GetService("CoreGui")
		ScreenGui.Name = "UH"
		ScreenGui:SetAttribute("Loaded", true)
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	    ScreenGui.ResetOnSpawn = false
	    ScreenGui.IgnoreGuiInset = true
		Frames.Name = "Frames"
      	Frames.Parent = ScreenGui
	    Hide.Parent = ScreenGui
	    Hide.Size = UDim2.new(1,0,1,0)
	    Hide.ZIndex = 0
	    Hide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	    Hide.BackgroundTransparency = 0.5
 
		Template.Name = "Template"
		Template.Parent = ScreenGui

NumberBoxTemplate.Name = "NumberBoxTemplate"
NumberBoxTemplate.Parent = Template
NumberBoxTemplate.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
NumberBoxTemplate.BorderColor3 = Color3.fromRGB(255, 255, 255)
NumberBoxTemplate.Position = UDim2.new(0, 0, 5.16666698, 0)
NumberBoxTemplate.Size = UDim2.new(0, 129, 0, 25)
NumberBoxTemplate.Font = Enum.Font.GothamSemibold
NumberBoxTemplate.Text = "NumberName"
NumberBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
NumberBoxTemplate.TextSize = 14.000

Frame.Parent = NumberBoxTemplate
Frame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(1.06201553, 0, 0.100000195, 0)
Frame.Size = UDim2.new(0, 26, 0, 25)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Size = UDim2.new(0, 26, 0, 25)
TextBox.Font = Enum.Font.GothamSemibold
TextBox.MultiLine = true
TextBox.PlaceholderText = "0"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

CheckBoxTemplate.Name = "CheckBoxTemplate"
CheckBoxTemplate.Parent = Template
CheckBoxTemplate.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
CheckBoxTemplate.BorderColor3 = Color3.fromRGB(255, 255, 255)
CheckBoxTemplate.Position = UDim2.new(0, 0, 3.63888884, 0)
CheckBoxTemplate.Size = UDim2.new(0, 129, 0, 25)
CheckBoxTemplate.Font = Enum.Font.GothamSemibold
CheckBoxTemplate.Text = "CheckBoxName"
CheckBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckBoxTemplate.TextSize = 14.000

Frame_2.Name = "Frame"
Frame_2.Parent = CheckBoxTemplate
Frame_2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Frame_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.Position = UDim2.new(1.06201553, 0, 0.100000195, 0)
Frame_2.Size = UDim2.new(0, 26, 0, 25)
Frame_2.Text = ""

check.Name = "check"
check.Parent = Frame_2
check.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
check.BackgroundTransparency = 1.000
check.BorderColor3 = Color3.fromRGB(255, 255, 255)
check.Position = UDim2.new(0.0258918181, 0, 0.0812501907, 0)
check.Size = UDim2.new(0, 25, 0, 25)
check.Visible = false
check.ZIndex = 2
check.Image = "rbxassetid://3926305904"
check.ImageRectOffset = Vector2.new(312, 4)
check.ImageRectSize = Vector2.new(24, 24)

ButtonTemplate.Name = "ButtonTemplate"
ButtonTemplate.Parent = Template
ButtonTemplate.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ButtonTemplate.BorderColor3 = Color3.fromRGB(255, 255, 255)
ButtonTemplate.Position = UDim2.new(0.0467836261, 0, 1.33333337, 0)
ButtonTemplate.Size = UDim2.new(0, 155, 0, 25)
ButtonTemplate.Font = Enum.Font.GothamSemibold
ButtonTemplate.Text = "Button Name"
ButtonTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
ButtonTemplate.TextSize = 14.000

SubSectionTemplate.Name = "SubSectionTemplate"
SubSectionTemplate.Parent = Template
SubSectionTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubSectionTemplate.BorderSizePixel = 0
SubSectionTemplate.Position = UDim2.new(0, 0, 1.60000002, 0)
SubSectionTemplate.Size = UDim2.new(0, 171, 0, 5)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(67, 67, 67)), ColorSequenceKeypoint.new(0.34, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(67, 67, 67))}
UIGradient.Parent = SubSectionTemplate

SubName.Name = "SubName"
SubName.Parent = SubSectionTemplate
SubName.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SubName.BackgroundTransparency = 1.000
SubName.Position = UDim2.new(0.0760233924, 0, -3.79999971, 0)
SubName.Size = UDim2.new(0, 145, 0, 19)
SubName.Font = Enum.Font.GothamSemibold
SubName.Text = "SubName"
SubName.TextColor3 = Color3.fromRGB(255, 255, 255)
SubName.TextSize = 14.000
SubName.TextWrapped = true

StringBoxTemplate.Name = "StringBoxTemplate"
StringBoxTemplate.Parent = Template
StringBoxTemplate.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
StringBoxTemplate.BorderColor3 = Color3.fromRGB(255, 255, 255)
StringBoxTemplate.Position = UDim2.new(0.0701754391, 0, 2.02777767, 0)
StringBoxTemplate.Size = UDim2.new(0, 147, 0, 25)
StringBoxTemplate.Font = Enum.Font.GothamSemibold
StringBoxTemplate.MultiLine = true
StringBoxTemplate.Text = ""
StringBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
StringBoxTemplate.TextScaled = true
StringBoxTemplate.TextSize = 14.000
StringBoxTemplate.TextWrapped = true

FrameTemplate.Name = "FrameTemplate"
FrameTemplate.Parent = Template
FrameTemplate.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
FrameTemplate.BorderColor3 = Color3.fromRGB(255, 255, 255)
FrameTemplate.BorderSizePixel = 2
FrameTemplate.Position = UDim2.new(0.0383838378, 0, 0.0683371276, 0)
FrameTemplate.Size = UDim2.new(0, 171, 0, 36)
FrameTemplate.Visible = false

Button.Name = "Button"
Button.Parent = FrameTemplate
Button.BackgroundTransparency = 1.000
Button.Position = UDim2.new(0.850877166, 0, 0.138888896, 0)
Button.Size = UDim2.new(0, 25, 0, 25)
Button.ZIndex = 2
Button.Image = "rbxassetid://3926307971"
Button.ImageRectOffset = Vector2.new(204, 484)
Button.ImageRectSize = Vector2.new(36, 36)

SessionName.Name = "SessionName"
SessionName.Parent = FrameTemplate
SessionName.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SessionName.BackgroundTransparency = 1.000
SessionName.Size = UDim2.new(0, 145, 0, 36)
SessionName.Font = Enum.Font.GothamSemibold
SessionName.Text = "FrameName"
SessionName.TextColor3 = Color3.fromRGB(255, 255, 255)
SessionName.TextSize = 20.000
SessionName.TextWrapped = true

ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = FrameTemplate
ContentFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
ContentFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
ContentFrame.BorderSizePixel = 2
ContentFrame.Position = UDim2.new(0, 0, 1, 0)
ContentFrame.Size = UDim2.new(0, 171, 0, 325)

Content.Name = "Content"
Content.Parent = FrameTemplate
		-- Scripts:
		
        local LastPos = 0
	local First = 1
	local vis = false
	local Activate = _G.Activate
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
	
		function AddFrame(FName, Size)
			local Cop = FrameTemplate:Clone()
			Cop.Name = FName
			Cop:FindFirstChild("SessionName").Text = FName
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
		Cop:WaitForChild("Button").MouseButton1Click:Connect(function()
			if Cop:WaitForChild("ContentFrame").Visible == true then
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
	
		end

		function AddButton(Thingy, Name, Run)
			local Thing
			Thing = Frames:FindFirstChild(Thingy)
		    if Thing == nil then error("Frame not found !") return end
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

		function AddTextBox(Thingy, Name)
		local Thing
		Thing = Frames:FindFirstChild(Thingy)
		if Thing == nil then error("Frame not found !") return end
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
		end

		function AddNumberBox(Thingy, Name, Run)
		local Thing
		Thing = Frames:FindFirstChild(Thingy)
		if Thing == nil then error("Frame not found !") return end
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
			local TextBox = but.Frame.TextBox
			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				TextBox.Text = TextBox.Text:gsub('%D+', '');
			end)

			but.MouseButton1Click:Connect(function()
				if but.Frame.TextBox.Text == "" then return end
				local Number = tonumber(but.Frame.TextBox.Text)
				Run()
			end)
		end

		function GetNumber(Frame, Button)
		local Thing
		Thing = Frames:FindFirstChild(Frame)
		if Thing == nil then error("Frame not found !") return end
		Thinge = Thing:WaitForChild("Content")
		local h = Thing.Content:FindFirstChild(Button)  
			if not h then error("Button not found !") return end
			if not h:FindFirstChild("Frame"):FindFirstChild("TextBox") then error("The item isn't a number button !") return end
			h = h:FindFirstChild("Frame"):FindFirstChild("TextBox")
			return tonumber(h.Text)		
		end

		function GetString(Frame, Button)
		local Thing
		Thing = Frames:FindFirstChild(Frame)
		if Thing == nil then error("Frame not found !") return end
		Thinge = Thing:WaitForChild("Content")
			local h = Thing.Content:FindFirstChild(Button)  
			if not h then error("Button not found !") return end
			if (not h:IsA("TextBox") and #h:GetChildren() > 0) then error("The item isn't a string box !") return end
			return h.Text
		end

		function AddSubText(Thingy, Name)
		local Thing
		Thing = Frames:FindFirstChild(Thingy)
		if Thing == nil then error("Frame not found !") return end
		Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = SubSectionTemplate:Clone()
			but.Parent = Thinge
			but.Name = Name
			but.SubName.Text = Name
			if FirstBut ~= 0 then
				if FirstBut == 1 then
					but.Position = UDim2.fromOffset(0, LastBut.Position.Y.Offset + 100)
					Thing:SetAttribute("First", 2)
				else
					if LastBut:FindFirstChild("SubName") then
						but.Position = UDim2.fromOffset(0, LastBut.Position.Y.Offset + 30)
					else
						but.Position = UDim2.fromOffset(0, LastBut.Position.Y.Offset + 50)
					end
				end
				--but.Position = UDim2.fromScale(LastBut.Position.X.Scale)
			else
				Thing:SetAttribute("First", 1)
			end
			Thing:WaitForChild("LastBut").Value = but
		end

		function AddCheckBox(Thingy, Name, On, Off)
		local Thing
		Thing = Frames:FindFirstChild(Thingy)
		if Thing == nil then error("Frame not found !") return end
		Thinge = Thing:WaitForChild("Content")
			local FirstBut = Thing:GetAttribute("First")
			local LastBut = Thing:WaitForChild("LastBut").Value
			local but = CheckBoxTemplate:Clone()
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
			but:WaitForChild("Frame").MouseButton1Click:Connect(function()
				but.Frame.check.Visible = not but.Frame.check.Visible
				-- Using not to fix the thing going opposite (on = off, off = on)
				local activ = not but.Frame.check.Visible
				if activ then
					On()
				else
					Off()
				end
			end)
		end	
	
end
}
