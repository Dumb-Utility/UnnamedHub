-- Gui to Lua
-- Version: 3.2

-- Instances:

local UI = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local shadowHolder = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local MainFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Session = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Section = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local TextButton = Instance.new("TextButton")
local Shadow = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Separator = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")
local TextButtonDisabled = Instance.new("TextButton")
local Shadow_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local ToggleBox = Instance.new("TextLabel")
local Shadow_3 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local check = Instance.new("ImageLabel")
local TextLabel_4 = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local UIGradient_3 = Instance.new("UIGradient")
local Frame_5 = Instance.new("Frame")
local shadowHolder_2 = Instance.new("Frame")
local umbraShadow_2 = Instance.new("ImageLabel")
local penumbraShadow_2 = Instance.new("ImageLabel")
local ambientShadow_2 = Instance.new("ImageLabel")
local InputBox = Instance.new("TextLabel")
local InputShadow = Instance.new("Frame")
local InputName = Instance.new("TextLabel")
local InputBox_2 = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")

--Properties:

Toggle.Name = "Toggle"
-- Toggle.Parent = UI
Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
Toggle.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Toggle.Position = UDim2.new(0.5, 0, 0, 0)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Font = Enum.Font.Arcade
Toggle.Text = "UH"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextSize = 20.000
Toggle.TextWrapped = true

UICorner.Parent = Toggle

-- Frame.Parent = UI
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.Position = UDim2.new(0.5, 0, 0.400000006, 0)
Frame.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)

shadowHolder.Name = "shadowHolder"
shadowHolder.Parent = Frame
shadowHolder.BackgroundTransparency = 1.000
shadowHolder.Size = UDim2.new(1, 0, 1, 0)
shadowHolder.ZIndex = 0

umbraShadow.Name = "umbraShadow"
umbraShadow.Parent = shadowHolder
umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow.BackgroundTransparency = 1.000
umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
umbraShadow.Size = UDim2.new(1, 2, 1, 2)
umbraShadow.ZIndex = 0
umbraShadow.Image = "rbxassetid://1316045217"
umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow.ImageTransparency = 0.860
umbraShadow.ScaleType = Enum.ScaleType.Slice
umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow.Name = "penumbraShadow"
penumbraShadow.Parent = shadowHolder
penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow.BackgroundTransparency = 1.000
penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
penumbraShadow.Size = UDim2.new(1, 2, 1, 2)
penumbraShadow.ZIndex = 0
penumbraShadow.Image = "rbxassetid://1316045217"
penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow.ImageTransparency = 0.880
penumbraShadow.ScaleType = Enum.ScaleType.Slice
penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow.Name = "ambientShadow"
ambientShadow.Parent = shadowHolder
ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow.BackgroundTransparency = 1.000
ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
ambientShadow.Size = UDim2.new(1, 2, 1, 2)
ambientShadow.ZIndex = 0
ambientShadow.Image = "rbxassetid://1316045217"
ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow.ImageTransparency = 0.880
ambientShadow.ScaleType = Enum.ScaleType.Slice
ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

MainFrame.Name = "MainFrame"
MainFrame.Parent = Frame
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
MainFrame.BackgroundTransparency = 1.000
MainFrame.Position = UDim2.new(0.0417744666, 0, 0.223618656, 0)
MainFrame.Size = UDim2.new(0.9, 0, 0.7, 0)
MainFrame.ZIndex = 2
MainFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = MainFrame
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

Session.Name = "Session"
Session.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Session.BackgroundTransparency = 0.900
Session.Position = UDim2.new(0.0362844691, 0, 0, 0)
Session.Size = UDim2.new(0, 269, 0, 353)

UIListLayout_2.Parent = Session
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 15)

Section.Name = "Section"
Section.Parent = Session
Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section.BackgroundTransparency = 1.000
Section.Position = UDim2.new(0.0416810885, 0, 0.260416657, 0)
Section.Size = UDim2.new(0, 271, 0, 15)
Section.Font = Enum.Font.SourceSans
Section.Text = "SectionName"
Section.TextColor3 = Color3.fromRGB(255, 255, 255)
Section.TextSize = 16.000
Section.TextWrapped = true

Frame_2.Parent = Section
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.00204118714, 0, 0.866666675, 0)
Frame_2.Size = UDim2.new(0, 268, 0, 2)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(36, 36, 36))}
UIGradient.Parent = Frame_2

TextButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0556759387, 0, 0.434716254, 0)
TextButton.Size = UDim2.new(0, 132, 0, 32)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.GothamMedium
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

Shadow.Name = "Shadow"
Shadow.Parent = TextButton
Shadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1, 0, 1, 4)

TextLabel.Parent = TextButton
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(1, -20, 1, -20)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "TextButton"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Separator.Name = "Separator"
Separator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Separator.BackgroundTransparency = 1.000
Separator.Position = UDim2.new(0.0416810885, 0, 0.331182063, 0)
Separator.Size = UDim2.new(0, 271, 0, 15)
Separator.Font = Enum.Font.SourceSans
Separator.Text = "Separator"
Separator.TextColor3 = Color3.fromRGB(255, 255, 255)
Separator.TextSize = 16.000
Separator.TextWrapped = true
Separator.TextXAlignment = Enum.TextXAlignment.Left

Frame_3.Parent = Separator
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.00204118714, 0, 0.866666675, 0)
Frame_3.Size = UDim2.new(0, 268, 0, 2)

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(36, 36, 36))}
UIGradient_2.Parent = Frame_3

TextButtonDisabled.Name = "TextButton.Disabled"
TextButtonDisabled.BackgroundColor3 = Color3.fromRGB(121, 0, 0)
TextButtonDisabled.BorderSizePixel = 0
TextButtonDisabled.Position = UDim2.new(0.05163325, 0, 0.570585787, 0)
TextButtonDisabled.Size = UDim2.new(0, 132, 0, 32)
TextButtonDisabled.ZIndex = 2
TextButtonDisabled.Font = Enum.Font.GothamMedium
TextButtonDisabled.Text = ""
TextButtonDisabled.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButtonDisabled.TextScaled = true
TextButtonDisabled.TextSize = 14.000
TextButtonDisabled.TextWrapped = true

Shadow_2.Name = "Shadow"
Shadow_2.Parent = TextButtonDisabled
Shadow_2.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
Shadow_2.BorderSizePixel = 0
Shadow_2.Size = UDim2.new(1, 0, 1, 4)

TextLabel_2.Parent = TextButtonDisabled
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(1, -20, 1, -20)
TextLabel_2.ZIndex = 2
TextLabel_2.Font = Enum.Font.GothamMedium
TextLabel_2.Text = "TextDisabled"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeTransparency = 0.000
TextLabel_2.TextTransparency = 0.500
TextLabel_2.TextWrapped = true

ToggleBox.Name = "ToggleBox"
ToggleBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleBox.Position = UDim2.new(0.0471647196, 0, 0.716145873, 0)
ToggleBox.Size = UDim2.new(0, 139, 0, 32)
ToggleBox.Font = Enum.Font.SourceSans
ToggleBox.Text = ""
ToggleBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBox.TextSize = 20.000

Shadow_3.Name = "Shadow"
Shadow_3.Parent = ToggleBox
Shadow_3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow_3.BorderSizePixel = 0
Shadow_3.Size = UDim2.new(1, 0, 1, 4)

TextLabel_3.Parent = ToggleBox
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_3.Size = UDim2.new(1, -20, 1, -20)
TextLabel_3.ZIndex = 2
TextLabel_3.Font = Enum.Font.GothamMedium
TextLabel_3.Text = "Toggle"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextButton_2.Parent = ToggleBox
TextButton_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
TextButton_2.Position = UDim2.new(1, 0, 0.21875, 0)
TextButton_2.Size = UDim2.new(0, 23, 0, 22)
TextButton_2.AutoButtonColor = false
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = TextButton_2

check.Name = "check"
check.Parent = TextButton_2
check.Active = false
check.BackgroundTransparency = 1.000
check.LayoutOrder = 6
check.Position = UDim2.new(-0.021739006, 0, -0.0217389166, 0)
check.Selectable = false
check.Size = UDim2.new(0, 25, 0, 25)
check.ZIndex = 2
check.Image = "rbxassetid://3926305904"
check.ImageRectOffset = Vector2.new(312, 4)
check.ImageRectSize = Vector2.new(24, 24)

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Size = UDim2.new(1, 0, 0, 50)
TextLabel_4.Font = Enum.Font.Arcade
TextLabel_4.Text = "UnnamedHub"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 30.000

Frame_4.Parent = TextLabel_4
Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.00942126475, 0, 0.800000012, 0)
Frame_4.Size = UDim2.new(0, 725, 0, 2)

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(63, 63, 63)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(63, 63, 63))}
UIGradient_3.Parent = Frame_4

Frame_5.Parent = Frame
Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_5.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame_5.Position = UDim2.new(0.497531176, 0, 0.57932514, 0)
Frame_5.Size = UDim2.new(0.929258287, 0, 0.715217352, 0)

shadowHolder_2.Name = "shadowHolder"
shadowHolder_2.Parent = Frame_5
shadowHolder_2.BackgroundTransparency = 1.000
shadowHolder_2.Size = UDim2.new(1, 0, 1, 0)
shadowHolder_2.ZIndex = 0

umbraShadow_2.Name = "umbraShadow"
umbraShadow_2.Parent = shadowHolder_2
umbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow_2.BackgroundTransparency = 1.000
umbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
umbraShadow_2.Size = UDim2.new(1, 2, 1, 2)
umbraShadow_2.ZIndex = 0
umbraShadow_2.Image = "rbxassetid://1316045217"
umbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow_2.ImageTransparency = 0.860
umbraShadow_2.ScaleType = Enum.ScaleType.Slice
umbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow_2.Name = "penumbraShadow"
penumbraShadow_2.Parent = shadowHolder_2
penumbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow_2.BackgroundTransparency = 1.000
penumbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
penumbraShadow_2.Size = UDim2.new(1, 2, 1, 2)
penumbraShadow_2.ZIndex = 0
penumbraShadow_2.Image = "rbxassetid://1316045217"
penumbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow_2.ImageTransparency = 0.880
penumbraShadow_2.ScaleType = Enum.ScaleType.Slice
penumbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow_2.Name = "ambientShadow"
ambientShadow_2.Parent = shadowHolder_2
ambientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow_2.BackgroundTransparency = 1.000
ambientShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
ambientShadow_2.Size = UDim2.new(1, 2, 1, 2)
ambientShadow_2.ZIndex = 0
ambientShadow_2.Image = "rbxassetid://1316045217"
ambientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow_2.ImageTransparency = 0.880
ambientShadow_2.ScaleType = Enum.ScaleType.Slice
ambientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

InputBox.Name = "InputBox"
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.Position = UDim2.new(0.665696383, 0, 0.588768125, 0)
InputBox.Size = UDim2.new(0, 139, 0, 32)
InputBox.Font = Enum.Font.SourceSans
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.TextSize = 20.000

InputShadow.Name = "InputShadow"
InputShadow.Parent = InputBox
InputShadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
InputShadow.BorderSizePixel = 0
InputShadow.Size = UDim2.new(1, 0, 1, 4)

InputName.Name = "InputName"
InputName.Parent = InputBox
InputName.AnchorPoint = Vector2.new(0.5, 0.5)
InputName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputName.BackgroundTransparency = 1.000
InputName.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputName.BorderSizePixel = 0
InputName.Position = UDim2.new(0.5, 0, 0.5, 0)
InputName.Size = UDim2.new(1, -20, 1, -20)
InputName.ZIndex = 2
InputName.Font = Enum.Font.GothamMedium
InputName.Text = "Toggle"
InputName.TextColor3 = Color3.fromRGB(255, 255, 255)
InputName.TextSize = 14.000
InputName.TextWrapped = true

InputBox_2.Name = "InputBox"
InputBox_2.Parent = InputBox
InputBox_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
InputBox_2.Position = UDim2.new(1.06474817, 0, 0.25, 0)
InputBox_2.Size = UDim2.new(0, 23, 0, 24)
InputBox_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
InputBox_2.Font = Enum.Font.SourceSans
InputBox_2.PlaceholderText = "..."
InputBox_2.Text = ""
InputBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox_2.TextSize = 16.000

UICorner_3.Parent = InputBox_2

local MainFunctions = {}

function calculateSize(Thing, String: string, Max: number)
	local Lines = math.ceil(string.len(String) / Max) -- / 30 should be replaced with the max characters on your line.
	return UDim2.fromOffset(Thing.Size.X.Offset, Lines * Max) -- * 14 should be replaced with however big you want a line to be
    -- Also Replace Tip to whatever TextLabel you're changing the size of.
end

function MainFunctions:Create()
    local UIFunctions = {}
    local Par = game:GetService("CoreGui")
	if gethui then
		Par = gethui()
	end
    UI.Name = "_UI_"..tostring(game.PlaceId).."_UH_"..tostring(os.time())
    local synprotect = nil
	if (syn and syn.protect_gui) then
		synprotect = syn.protect_gui 
	end
	if synprotect and not gethui then
		synprotect(UI)
	end
    UI.Parent = Par
    UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    UI.ResetOnSpawn = false
    Toggle.Parent = UI
    Frame.Parent  = UI
    local Pages = MainFrame
    Pages.CanvasSize = UDim2.new(0, Pages.UIListLayout.AbsoluteContentSize.X, 0, 0)
    Pages.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        Pages.CanvasSize = UDim2.new(0, Pages.UIListLayout.AbsoluteContentSize.X, 0, 0)
    end)

    function UIFunctions:AddPage(Name: string)
        local PageFunctions = {}
        local S = Session:Clone()
        S.Parent = MainFrame
        S.Section.Text = Name or "UnnamedSession"

        function PageFunctions:Button(Name: string, Description: string, Enabled: boolean, Execute: any)
            if Description == nil then Description = "" end
            if typeof(Enabled) ~= "boolean" then Enabled = true end
            if not Execute then Execute = function() end end
            local Button = nil
            if Enabled == true then Button = TextButton:Clone() else Button = TextButtonDisabled:Clone() end
            Button.Parent = S
            Button.TextLabel.Text = Name
            if Enabled then
                Button.MouseButton1Click:Connect(Execute)
            end       
        end

        function PageFunctions:Toggle(Name, State, Execute)
            if typeof(State) ~= "boolean" then State = false end
            if typeof(Execute) ~= "function" then Execute = function() end end
            local Toggle = ToggleBox:Clone()
            Toggle.Parent = S
            Toggle.TextLabel.Text = Name
            local Enabled = State

            Toggle.TextButton.check.Visible = Enabled
            if Enabled == true then Execute(Enabled) end

            Toggle.TextButton.MouseButton1Click:Connect(function()
                Enabled = not Enabled
                Toggle.TextButton.check.Visible = Enabled
                Execute(Enabled)
            end)
        end

        function PageFunctions:Input(Name, MaxChar)
            local ok = {}
            if typeof(MaxChar) ~= "number" then MaxChar = 0 end
            local Toggle = InputBox:Clone()
            InputBox.Parent = S
            Toggle.InputName.Text = Name
            Toggle.InputBox.Changed:Connect(function()
                if MaxChar ~= 0 then
                    Toggle.InputBox.Text = Toggle.InputBox.Text:sub(1,10)
                end
                -- Toggle.InputBox.Size = calculateSize(Toggle.InputBox, Toggle.InputBox.Text, MaxChar)
            end)

            function ok:Get()
                return Toggle.InputBox.Text
            end

            return ok
        end

        return PageFunctions
    end

    return UIFunctions
end

function MainFunctions:Destroy()
    UI:Destroy()
end

return MainFunctions
