-- Using Gui to Lua | Version 3.2

-- UI --

local UI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Selection = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SelectionBox = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local SelectionButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Shadow = Instance.new("Frame")
local Logo = Instance.new("TextLabel")
local shadowHolder = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local Tabs = Instance.new("Frame")
local TabName = Instance.new("ScrollingFrame")
local TabNameLayout = Instance.new("UIListLayout")
--local RemoveMe = Instance.new("Frame")
local Session = Instance.new("Frame")
local SubTabName = Instance.new("ScrollingFrame")
local TextButton = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local Shadow_2 = Instance.new("Frame")
local ToggleBox = Instance.new("TextLabel")
local Shadow_3 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local ToggleBox_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local check = Instance.new("ImageLabel")
local TextButtonDisabled = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local Shadow_4 = Instance.new("Frame")
local InputBox = Instance.new("TextLabel")
local InputName = Instance.new("TextLabel")
local InputBox_2 = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local InputShadow = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local SliderFrame = Instance.new("Frame")
local Slider = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local SliderContent = Instance.new("TextLabel")
local Empty = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local SubTabSelect = Instance.new("ScrollingFrame")
local SubTabButton = Instance.new("TextButton")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

local DropBoxTemplate = Instance.new("TextLabel")
local DropCorner = Instance.new("UICorner")
local DropBox = Instance.new("TextButton")
local Open = Instance.new("ImageButton")
local DropFrame = Instance.new("Frame")
local Scrolling = Instance.new("ScrollingFrame")
local ScrollingUI = Instance.new("UIListLayout")
local DropButton = Instance.new("TextButton")
local DropCorner_2 = Instance.new("UICorner")
local CheckBox = Instance.new("TextButton")
local DropCheck = Instance.new("ImageButton")
local DropCorner_3 = Instance.new("UICorner")
local DropCorner_4 = Instance.new("UICorner")
local DropCorner_5 = Instance.new("UICorner")

local CommandsScroll = Instance.new("ScrollingFrame")
local listpayout = Instance.new("UIListLayout")
local Command = Instance.new("Frame")
local commandcorner = Instance.new("UICorner")
local CmdName = Instance.new("TextBox")
local Seperator = Instance.new("Frame")
local Description = Instance.new("TextBox")
local CmdBarHandler = Instance.new("Frame")
local Cool = Instance.new("TextLabel")
local CmdCorner = Instance.new("UICorner")
local CmdSeparator = Instance.new("Frame")
local CmdBar = Instance.new("TextBox")
local CmdBarCorner = Instance.new("UICorner")

-- Properties --

Frame.Parent = UI
Frame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.237740234, 0, 0.066236414, 0)
Frame.Size = UDim2.new(0, 795, 0, 444)

Selection.Name = "Selection"
Selection.Parent = Frame
Selection.BackgroundColor3 = Color3.fromRGB(122, 122, 122)
Selection.Position = UDim2.new(0, 0, 0.852702677, 0)
Selection.Size = UDim2.new(0, 796, 0, 101)

UICorner.CornerRadius = UDim.new(0.400000006, 0)
UICorner.Parent = Selection

SelectionBox.Name = "SelectionBox"
SelectionBox.Parent = Selection
SelectionBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectionBox.BackgroundTransparency = 1.000
SelectionBox.Position = UDim2.new(0.148241207, 0, 0, 0)
SelectionBox.Size = UDim2.new(0, 647, 0, 50)

UIListLayout.Parent = SelectionBox
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 10)

SelectionButton.Name = "SelectionButton"
--SelectionButton.Parent = SelectionBox
SelectionButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
SelectionButton.BorderSizePixel = 0
SelectionButton.Size = UDim2.new(0.164572865, 0, 0, 32)
SelectionButton.ZIndex = 2
SelectionButton.Font = Enum.Font.GothamMedium
SelectionButton.Text = ""
SelectionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectionButton.TextScaled = true
SelectionButton.TextSize = 14.000
SelectionButton.TextWrapped = true

TextLabel.Parent = SelectionButton
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

Shadow.Name = "Shadow"
Shadow.Parent = SelectionButton
Shadow.BackgroundColor3 = Color3.fromRGB(6, 0, 91)
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1, 0, 1, 4)

Logo.Name = "Logo"
Logo.Parent = Selection
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.Position = UDim2.new(0.0226130653, 0, 0.0396039635, 0)
Logo.Size = UDim2.new(0, 83, 0, 46)
Logo.Font = Enum.Font.SourceSansBold
Logo.Text = "Unnamed\nHub"
Logo.TextColor3 = Color3.fromRGB(0, 0, 0)
Logo.TextSize = 20.000

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

Tabs.Name = "Tabs"
Tabs.Active = false
Tabs.Parent = Frame
Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tabs.BackgroundTransparency = 1.000
Tabs.Size = UDim2.new(1, 0, 1, 0)

TabName.Name = "TabName"
TabName.Active = false
--TabName.Parent = Tabs
TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabName.BackgroundTransparency = 1.000
TabName.Size = UDim2.new(1, 0, 1, 0)

--TabNameLayout.Parent = TabName

-- RemoveMe.Name = "RemoveMe"
-- RemoveMe.Parent = TabName
-- RemoveMe.BackgroundColor3 = Color3.fromRGB(24, 25, 36)
-- RemoveMe.BorderColor3 = Color3.fromRGB(255, 255, 255)
-- RemoveMe.ClipsDescendants = true
-- RemoveMe.Position = UDim2.new(0.516981125, 0, 0, 0)
-- RemoveMe.Size = UDim2.new(0, 385, 0, 232)

Session.Name = "Session"
--Session.Parent = TabName
Session.BackgroundColor3 = Color3.fromRGB(24, 25, 36)
Session.BorderColor3 = Color3.fromRGB(255, 255, 255)
Session.Size = UDim2.new(0, 385, 0, 232)

SubTabName.Name = "SubTabName"
--SubTabName.Parent = Session
SubTabName.Active = true
SubTabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubTabName.BackgroundTransparency = 1.000
SubTabName.Position = UDim2.new(0.0207792204, 0, 0.0258620698, 0)
SubTabName.Size = UDim2.new(0, 370, 0, 218)
SubTabName.ScrollBarThickness = 5
SubTabName.ZIndex = 0

--TextButton.Parent = SubTabName
TextButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.27189216, 0, 0.443336934, 0)
TextButton.Size = UDim2.new(1, 0, 0, 32)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.GothamMedium
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextLabel_2.Parent = TextButton
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(1, -20, 1, -20)
TextLabel_2.ZIndex = 2
TextLabel_2.Font = Enum.Font.GothamMedium
TextLabel_2.Text = "TextButton"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

Shadow_2.Name = "Shadow"
Shadow_2.Parent = TextButton
Shadow_2.BackgroundColor3 = Color3.fromRGB(6, 0, 91)
Shadow_2.BorderSizePixel = 0
Shadow_2.Size = UDim2.new(1, 0, 1, 4)

ToggleBox.Name = "ToggleBox"
--ToggleBox.Parent = SubTabName
ToggleBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleBox.Position = UDim2.new(0.0471647196, 0, 0.716145873, 0)
ToggleBox.Size = UDim2.new(0, 239, 0, 32)
ToggleBox.Font = Enum.Font.SourceSans
ToggleBox.Text = ""
ToggleBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBox.TextSize = 20.000

Shadow_3.Name = "Shadow"
Shadow_3.Parent = ToggleBox
Shadow_3.BackgroundColor3 = Color3.fromRGB(6, 0, 91)
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
TextLabel_3.Text = "TextLabel"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

ToggleBox_2.Name = "TextButton"
ToggleBox_2.Text = ""
ToggleBox_2.Parent = ToggleBox
ToggleBox_2.BackgroundColor3 = Color3.fromRGB(6, 0, 91)
ToggleBox_2.BorderSizePixel = 0
ToggleBox_2.Position = UDim2.new(1, 0, 0.1875, 0)
ToggleBox_2.Size = UDim2.new(0.100000001, 0, 0.59375, 4)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = ToggleBox_2

check.Name = "check"
check.Parent = ToggleBox_2
check.Active = false
check.BackgroundTransparency = 1.000
check.LayoutOrder = 6
check.Position = UDim2.new(-0.0217391253, 0, -0.0217391253, 0)
check.Size = UDim2.new(0, 25, 0, 25)
check.ZIndex = 2
check.Image = "rbxassetid://3926305904"
check.ImageRectOffset = Vector2.new(312, 4)
check.ImageRectSize = Vector2.new(24, 24)

TextButtonDisabled.Name = "TextButton.Disabled"
--TextButtonDisabled.Parent = SubTabName
TextButtonDisabled.BackgroundColor3 = Color3.fromRGB(121, 0, 0)
TextButtonDisabled.BorderSizePixel = 0
TextButtonDisabled.Position = UDim2.new(0.05163325, 0, 0.570585787, 0)
TextButtonDisabled.Size = UDim2.new(1, 0, 0, 32)
TextButtonDisabled.ZIndex = 2
TextButtonDisabled.Font = Enum.Font.GothamMedium
TextButtonDisabled.Text = ""
TextButtonDisabled.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButtonDisabled.TextScaled = true
TextButtonDisabled.TextSize = 14.000
TextButtonDisabled.TextWrapped = true

TextLabel_4.Parent = TextButtonDisabled
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_4.Size = UDim2.new(1, -20, 1, -20)
TextLabel_4.ZIndex = 2
TextLabel_4.Font = Enum.Font.GothamMedium
TextLabel_4.Text = "TextDisabled"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000
TextLabel_4.TextStrokeTransparency = 0.000
TextLabel_4.TextTransparency = 0.500
TextLabel_4.TextWrapped = true

Shadow_4.Name = "Shadow"
Shadow_4.Parent = TextButtonDisabled
Shadow_4.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
Shadow_4.BorderSizePixel = 0
Shadow_4.Size = UDim2.new(1, 0, 1, 4)

InputBox.Name = "InputBox"
--InputBox.Parent = SubTabName
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.Position = UDim2.new(0.665696383, 0, 0.588768125, 0)
InputBox.Size = UDim2.new(0, 239, 0, 32)
InputBox.Font = Enum.Font.SourceSans
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.TextSize = 20.000

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
InputName.Text = "InputBox"
InputName.TextColor3 = Color3.fromRGB(255, 255, 255)
InputName.TextSize = 14.000
InputName.TextWrapped = true

InputBox_2.Name = "InputBox"
InputBox_2.Parent = InputBox
InputBox_2.BackgroundColor3 = Color3.fromRGB(6, 0, 91)
InputBox_2.Position = UDim2.new(1.06474817, 0, 0.25, 0)
InputBox_2.Size = UDim2.new(0, 23, 0, 24)
InputBox_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
InputBox_2.ClearTextOnFocus = false
InputBox_2.Font = Enum.Font.SourceSans
InputBox_2.PlaceholderText = "..."
InputBox_2.Text = ""
InputBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox_2.TextSize = 14.000

UICorner_3.Parent = InputBox_2

InputShadow.Name = "InputShadow"
InputShadow.Parent = InputBox
InputShadow.BackgroundColor3 = Color3.fromRGB(6, 0, 91)
InputShadow.BorderSizePixel = 0
InputShadow.Size = UDim2.new(1, 0, 1, 4)

UIListLayout_2.Parent = SubTabName
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 10)

SliderFrame.Name = "SliderFrame"
--SliderFrame.Parent = SubTabName
SliderFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
SliderFrame.Position = UDim2.new(0, 0, 0.8853212, 0)
SliderFrame.Size = UDim2.new(0, 347, 0, 19)

Slider.Name = "Slider"
Slider.Parent = SliderFrame
Slider.AnchorPoint = Vector2.new(0.5, 0.5)
Slider.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Slider.BorderSizePixel = 0
Slider.Position = UDim2.new(0.5, 0, 0.5, 0)
Slider.Size = UDim2.new(0.0250000004, 0, 1.25, 0)
Slider.AutoButtonColor = false
Slider.Font = Enum.Font.SourceSans
Slider.Text = ""
Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
Slider.TextSize = 14.000

UICorner_4.Parent = Slider

SliderContent.Name = "SliderContent"
SliderContent.Parent = SliderFrame
SliderContent.Active = false
SliderContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderContent.BackgroundTransparency = 1.000
SliderContent.Size = UDim2.new(0, 347, 0, 21)
SliderContent.Font = Enum.Font.Code
SliderContent.Text = "Name : Value"
SliderContent.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderContent.TextSize = 14.000

Empty.Name = "Empty"
--Empty.Parent = SubTabName
Empty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Empty.BackgroundTransparency = 1.000
Empty.Position = UDim2.new(0.0416810885, 0, 0.331182063, 0)
Empty.Size = UDim2.new(0, 271, 0, 15)
Empty.Font = Enum.Font.SourceSans
Empty.Text = ""
Empty.TextColor3 = Color3.fromRGB(255, 255, 255)
Empty.TextSize = 16.000
Empty.TextWrapped = true
Empty.TextXAlignment = Enum.TextXAlignment.Left

Frame_2.Parent = Empty
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.00204118714, 0, 0.866666675, 0)
Frame_2.Size = UDim2.new(0, 268, 0, 2)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(36, 36, 36))}
UIGradient.Parent = Frame_2

SubTabSelect.Name = "SubTabSelect"
SubTabSelect.Parent = Session
SubTabSelect.Active = true
SubTabSelect.BackgroundColor3 = Color3.fromRGB(0, 0, 57)
SubTabSelect.Position = UDim2.new(0.0207792204, 0, -0.254172444, 0)
SubTabSelect.Size = UDim2.new(0.981818199, 0, 0, 100)
SubTabSelect.CanvasSize = UDim2.new(0, 0, 0, 0)
SubTabSelect.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
SubTabSelect.ScrollBarThickness = 2

SubTabButton.Name = "SubTabButton"
--SubTabButton.Parent = SubTabSelect
SubTabButton.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
SubTabButton.Position = UDim2.new(0, 0, 0.649999976, 0)
SubTabButton.Size = UDim2.new(0, 79, 0, 36)
SubTabButton.Font = Enum.Font.GothamBold
SubTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubTabButton.TextSize = 14.000

UIListLayout_3.Parent = SubTabSelect
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Bottom

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 2.050


DropBoxTemplate.Name = "DropBoxTemplate"
DropBoxTemplate.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
DropBoxTemplate.Position = UDim2.new(0, 0, 0.784024954, 0)
DropBoxTemplate.Size = UDim2.new(0, 310, 0, 17)
DropBoxTemplate.ZIndex = 5
DropBoxTemplate.Text = "N/A"
DropBoxTemplate.Font = Enum.Font.GothamMedium
DropBoxTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
DropBoxTemplate.TextSize = 12.000

DropCorner.CornerRadius = UDim.new(0, 2)
DropCorner.Name = "DropCorner"
DropCorner.Parent = DropBoxTemplate

DropBox.Name = "DropBox"
DropBox.Parent = DropBoxTemplate
DropBox.AnchorPoint = Vector2.new(0.5, 0)
DropBox.BackgroundColor3 = Color3.fromRGB(6, 0, 91)
DropBox.BorderSizePixel = 0
DropBox.Position = UDim2.new(0.505060971, 0, 0.952970624, 0)
DropBox.Size = UDim2.new(0, 314, 0, 29)
DropBox.Font = Enum.Font.GothamMedium
DropBox.Text = "DropBox"
DropBox.TextColor3 = Color3.fromRGB(255, 255, 255)
DropBox.TextSize = 18.000
DropBox.TextXAlignment = Enum.TextXAlignment.Left

Open.Name = "Open"
Open.Parent = DropBox
Open.BackgroundTransparency = 1.000
Open.Position = UDim2.new(0.884705722, 0, 0.12068966, 0)
Open.Size = UDim2.new(0, 25, 0, 25)
Open.ZIndex = 2
Open.Image = "rbxassetid://3926305904"
Open.ImageRectOffset = Vector2.new(564, 284)
Open.ImageRectSize = Vector2.new(36, 36)

DropFrame.Name = "DropFrame"
DropFrame.Parent = DropBox
DropFrame.Visible = false
DropFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
DropFrame.Position = UDim2.new(0.182779789, 0, 0.965517223, 0)
DropFrame.Size = UDim2.new(0, 198, 0, 100)

Scrolling.Name = "Scrolling"
Scrolling.Parent = DropFrame
Scrolling.Active = true
Scrolling.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Scrolling.BackgroundTransparency = 1.000
Scrolling.BorderSizePixel = 0
Scrolling.Position = UDim2.new(0.022770891, 0, 0.0499993898, 0)
Scrolling.Size = UDim2.new(0, 193, 0, 93)
Scrolling.CanvasSize = UDim2.new(0, 0, 0.899999976, 0)
Scrolling.ScrollBarThickness = 5

ScrollingUI.Name = "ScrollingUI"
ScrollingUI.Parent = Scrolling
ScrollingUI.HorizontalAlignment = Enum.HorizontalAlignment.Center
ScrollingUI.SortOrder = Enum.SortOrder.LayoutOrder
ScrollingUI.Padding = UDim.new(0, 4)

DropButton.Name = "DropButton"
DropButton.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
DropButton.Position = UDim2.new(0.0414507762, 0, 0, 0)
DropButton.Size = UDim2.new(0, 165, 0, 27)
DropButton.Font = Enum.Font.GothamBold
DropButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DropButton.TextSize = 14.000

DropCorner_2.Name = "DropCorner"
DropCorner_2.Parent = DropButton

CheckBox.Name = "CheckBox"
CheckBox.Parent = DropButton
CheckBox.Visible = false
CheckBox.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
CheckBox.Position = UDim2.new(0.817003667, 0, 0.146585941, 0)
CheckBox.Size = UDim2.new(0, 20, 0, 20)
CheckBox.Font = Enum.Font.SourceSans
CheckBox.Text = ""
CheckBox.TextColor3 = Color3.fromRGB(0, 0, 0)
CheckBox.TextSize = 14.000

DropCheck.Name = "DropCheck"
DropCheck.Parent = CheckBox
DropCheck.BackgroundTransparency = 1.000
DropCheck.Position = UDim2.new(-0.0315256119, 0, 0, 0)
DropCheck.Size = UDim2.new(0, 23, 0, 23)
DropCheck.Visible = false
DropCheck.ZIndex = 2
DropCheck.Image = "rbxassetid://3926305904"
DropCheck.ImageRectOffset = Vector2.new(312, 4)
DropCheck.ImageRectSize = Vector2.new(24, 24)

DropCorner_3.Name = "DropCorner"
DropCorner_3.Parent = DropCheck

DropCorner_4.Name = "DropCorner"
DropCorner_4.Parent = CheckBox

DropCorner_5.Name = "DropCorner"
DropCorner_5.Parent = DropFrame


CommandsScroll.Name = "CommandsScroll"
CommandsScroll.Parent = UI
CommandsScroll.AnchorPoint = Vector2.new(0.5, 0)
CommandsScroll.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CommandsScroll.BackgroundTransparency = 1
CommandsScroll.Position = UDim2.new(0.342507809, 0, 0.324388593, 0)
CommandsScroll.Size = UDim2.new(0.334379137, 0, 1, 0)
CommandsScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
CommandsScroll.ScrollBarThickness = 0

listpayout.Name = "listpayout"
listpayout.Parent = CommandsScroll
listpayout.Padding = UDim.new(0, 10)
listpayout.FillDirection = Enum.FillDirection.Vertical
listpayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listpayout.SortOrder = Enum.SortOrder.LayoutOrder
listpayout.VerticalAlignment = Enum.VerticalAlignment.Bottom

Command.Name = "Command"
Command.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Command.Position = UDim2.new(0.341809809, 0, 0.701426566, 0)
Command.Size = UDim2.new(0, 406, 0, 37)

commandcorner.Name = "commandcorner"
commandcorner.Parent = Command

CmdName.Name = "CmdName"
CmdName.Parent = Command
CmdName.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
CmdName.BackgroundTransparency = 1.000
CmdName.Position = UDim2.new(0.024630541, 0, 0, 0)
CmdName.Size = UDim2.new(0, 0, 1, 0)
CmdName.ClearTextOnFocus = false
CmdName.Font = Enum.Font.GothamMedium
CmdName.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdName.TextSize = 14.000
CmdName.TextXAlignment = Enum.TextXAlignment.Left
CmdName.AutomaticSize = Enum.AutomaticSize.X

Seperator.Name = "Separator"
Seperator.Parent = CmdName
Seperator.AnchorPoint = Vector2.new(1, 0.5)
Seperator.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Seperator.BorderSizePixel = 0
Seperator.Position = UDim2.new(1.10000002, 0, 0.5, 0)
Seperator.Size = UDim2.new(0, 2, 0, 20)

Description.Name = "Description"
Description.Parent = Seperator
Description.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Description.BackgroundTransparency = 1.000
Description.Position = UDim2.new(3, 0, 0, 0)
Description.Size = UDim2.new(-0.0615763552, 104, 1, 0)
Description.ClearTextOnFocus = false
Description.Font = Enum.Font.GothamMedium
Description.TextColor3 = Color3.fromRGB(255, 255, 255)
Description.TextSize = 14.000
Description.TextXAlignment = Enum.TextXAlignment.Left
Description.AutomaticSize = Enum.AutomaticSize.X

CmdBarHandler.Name = "CmdBarHandler"
CmdBarHandler.Parent = UI
CmdBarHandler.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
CmdBarHandler.Position = UDim2.new(0.341809809, 0, 1.5, 0)
CmdBarHandler.AnchorPoint = Vector2.new(0.5, 0)
CmdBarHandler.Size = UDim2.new(0.33520478, 0, 0.062839672, 0)

Cool.Name = "Cool"
Cool.Parent = CmdBarHandler
Cool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cool.BackgroundTransparency = 1.000
Cool.Position = UDim2.new(0, 0, 0.0540540554, 0)
Cool.Size = UDim2.new(0, 33, 0, 35)
Cool.Font = Enum.Font.GothamBlack
Cool.Text = ">"
Cool.TextColor3 = Color3.fromRGB(0, 255, 0)
Cool.TextSize = 18.000

CmdCorner.Name = "CmdCorner"
CmdCorner.Parent = CmdBarHandler

CmdSeparator.Name = "CmdSeparator"
CmdSeparator.Parent = CmdBarHandler
CmdSeparator.AnchorPoint = Vector2.new(0, 0.5)
CmdSeparator.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
CmdSeparator.BorderSizePixel = 0
CmdSeparator.Position = UDim2.new(0.0960591137, 0, 0.5, 0)
CmdSeparator.Size = UDim2.new(0, 2, 0, 20)

CmdBar.Name = "CmdBar"
CmdBar.Parent = CmdBarHandler
CmdBar.AnchorPoint = Vector2.new(0.5, 0.5)
CmdBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CmdBar.BackgroundTransparency = 1.000
CmdBar.Position = UDim2.new(0.562592983, 0, 0.525676012, 0)
CmdBar.Size = UDim2.new(0.866995096, 0, 1.05405414, 0)
CmdBar.Font = Enum.Font.Gotham
CmdBar.PlaceholderText = "insert command"
CmdBar.Text = ""
CmdBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdBar.TextSize = 16.000
CmdBar.TextXAlignment = Enum.TextXAlignment.Left
CmdBar.AutomaticSize = Enum.AutomaticSize.X

CmdBarCorner.Parent = CmdBar

-------------------------------------------------


-- Functions
local Debugging = true

function DebugPrint(...)
    if not Debugging then return end
    print("[UNNAMEDHUB] =>", ...)
end

function DebugWarn(...)
    if not Debugging then return end
    warn("[UNNAMEDHUB] =>", ...)
end


function merge(s: string)
    local x = {}
    for word,v in s:gmatch("%S+") do 
        table.insert(x, word)
    end
    return x
end

function TableFind(Table: table, Arg: any)
	for _,v in pairs(Table) do
		if v == Arg then return true end
	end
	return nil
end

function TableRemove(tab: table, arg: any)
	--DebugPrint("remove", tab)
	for n,v in pairs(tab) do
		if v == arg then
			--DebugPrint("removed", v)
			table.remove(tab, n)
		end
	end
	return tab
end

function TableAdd(tab: table, arg: any, pos: number?)
	--DebugPrint("add", tab)
	if pos then
		table.insert(tab, arg, pos)
	else
		--DebugPrint("ok for", arg)
		table.insert(tab, arg)
	end
	return tab
end

-- Script --
local Data = {}

local gsTween = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Drag, dragging, dragInput, dragStart, startPos = Frame, nil, nil, nil, nil
function update(input)
    local delta = input.Position - dragStart
    local dragTime = 0.04 -- smoothness
    local SmoothDrag = {}
    SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
    dragSmoothFunction:Play()
end
Drag.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Drag.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
Drag.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging and Drag.Size then
        update(input)
    end
end)


local global = getgenv and getgenv() or _G
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local SoundService = game:GetService("SoundService")

local CmdBarKey = 44

if global.UH__Destroy then
    global.UH__Destroy()
end

local MainFunctions = {}

function NearestValue(table, number)
    local smallestSoFar, smallestIndex
    for i, y in ipairs(table) do
        if not smallestSoFar or (math.abs(number-y) < smallestSoFar) then
            smallestSoFar = math.abs(number-y)
            smallestIndex = i
        end
    end
    return table[smallestIndex]
end

function calculateSize(Thing, String: string, Max: number)
	local Lines = math.ceil(string.len(String) / Max) -- / 30 should be replaced with the max characters on your line.
	return UDim2.fromOffset(Thing.Size.X.Offset, Lines * Max) -- * 14 should be replaced with however big you want a line to be
    -- Also Replace Tip to whatever TextLabel you're changing the size of.
end

local ConnectionTable, d = {}, false

function AddConnection(f: RBXScriptConnection)
    table.insert(ConnectionTable, f)
end

local OldScale = nil
local Hidden = false
local CmdLocked = false

local CRTLPress, ShiftPress, CmdKeypress = false, false, false

if not game:IsLoaded() then
    DebugWarn("Executed from Auto-Execute")
    OldScale = Frame.Position
    Frame.Position = UDim2.new(0, NearestValue({-2000, 2000}, Frame.Position.X.Offset), 0, NearestValue({-1000, 1000}, Frame.Position.Y.Offset))
    Hidden = not Hidden
    CmdLocked = true
end

function checkpress()
    DebugWarn("Checking CmdLock Requirement")
    if CRTLPress == true and CmdKeypress == true then DebugWarn("Matched > Changing Cmdlock") CmdLocked = not CmdLocked end
end

AddConnection(UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    if input.KeyCode.Value == 282 then
        if Hidden == true then
            local goal = {}
            goal.Position = OldScale
            local tweenInfo = TweenInfo.new(1)
            gsTween:Create(Frame, tweenInfo, goal):Play()
        else
            OldScale = Frame.Position
            local goal = {}
            goal.Position = UDim2.new(0, NearestValue({-2000, 2000}, Frame.Position.X.Offset), 0, NearestValue({-1000, 1000}, Frame.Position.Y.Offset))
            local tweenInfo = TweenInfo.new(1)
            gsTween:Create(Frame, tweenInfo, goal):Play()
        end
        Hidden = not Hidden
    end

    local v = input.KeyCode.Value
    if v == 306 or v == 305 then DebugWarn("CRTL Pressed") CRTLPress = true checkpress() end
    -- if v == 304 or v == 303 then DebugWarn("Shift") ShiftPress = true checkpress() end
    if v == CmdBarKey then DebugWarn("CmdKey Pressed") CmdKeypress = true checkpress() end

    if input.KeyCode.Value == CmdBarKey then
        if CmdLocked == true then DebugWarn("CommandBar is locked, cancelling") else
            DebugPrint("Opening Cmd")
            gsTween:Create(CmdBarHandler, TweenInfo.new(0.5), {Position = UDim2.fromScale(0.5, 0.85), BackgroundTransparency = 0}):Play()
            wait(0.3)
            CmdBar:CaptureFocus()
        end
    end
end)
)

AddConnection(UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    local v = input.KeyCode.Value
    if v == 306 or v == 305 then DebugPrint("end CRTL") CRTLPress = false end
    -- if v == 304 or v == 303 then ShiftPress = false end
    if v == CmdBarKey then DebugPrint("end CmdKey") CmdKeypress = false end
end)
)

AddConnection(CmdBarHandler:GetPropertyChangedSignal("Position"):Connect(function()
    CommandsScroll.Position = UDim2.new(CmdBarHandler.Position.X.Scale, 0, CmdBarHandler.Position.Y.Scale - ( (CommandsScroll.Size.Y.Scale) + 0.01), 0)
end)
)

local Commands = {}
function ExecuteCmd(name: string, args: table)
    DebugPrint("Executing", name)
    local cmd = Commands[name]
    if cmd == nil then
        for _,v in next, Commands do
            for _,alias in next, v["Aliases"] do
                if name == alias then cmd = v end 
            end
        end
    end
    if cmd == nil then return "No Commands Found" end
    cmd["Function"](MainFunctions, table.unpack(args, 2, #args))
    return true
end

function ShowCommand(Name: string, Cmd: table)
    DebugPrint("Showing", Name)
    local CmdB = Command:Clone()
    CmdB.Parent = CommandsScroll
    CmdB.Name = Name
    CmdB.CmdName.Text = Name
    CmdB.CmdName.Separator.Description.Text = Cmd["Description"]
end

function HideCommands()
    for _,v in next, CommandsScroll:GetChildren() do if v:IsA("Frame") then v:Destroy() end end
end

CmdBar:GetPropertyChangedSignal("Text"):Connect(function()
    HideCommands()
    local content = CmdBar.Text
    if (content == nil or #string.gsub(content, "^%s*(.-)%s*$", "%1") == 0) then return end
    if content == "cmds" or content == "commands" then
        for n,v in next, Commands do ShowCommand(n, v) end
        return
    end
    for n,v in next, Commands do
        if string.sub(string.lower(n), 0, string.len(content)) == string.lower(content) then ShowCommand(n, v) continue end
        local foundalias = false
        for _,alias in next, v["Aliases"] do
            if foundalias == true then continue end
            if string.sub(string.lower(alias), 0, string.len(content)) == string.lower(content) then ShowCommand(n, v) foundalias = true continue end
        end
    end
end)

AddConnection(CmdBar.FocusLost:Connect(function(IsEnter)
    CmdBar.TextEditable = false
    local cmd = string.lower(CmdBar.Text)
    gsTween:Create(CmdBarHandler, TweenInfo.new(1), {Position = UDim2.fromScale(0.5, 1.5), BackgroundTransparency = 1}):Play()
    if IsEnter then
        local merged = merge(cmd)
        local test = ExecuteCmd(merged[1], merged)
        if test ~= true then DebugWarn("Command Error ::", test) else DebugPrint("Execution Success") end
    end
    DebugWarn("Closing CmdBar")
    CmdBar.Text = ""
    CmdBar.TextEditable = true
end)
)

function MainFunctions:Create()
    local UIFunctions = {}
    local Par = CoreGui
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
    Frame.Parent  = UI

    Selection.MouseLeave:Connect(function(x, y)
        local goal = {}
        goal.Position = UDim2.new(0, 0, 0.95, 0)
        local tweenInfo = TweenInfo.new(0.5)
        gsTween:Create(Selection, tweenInfo, goal):Play()
    end)

    Selection.MouseEnter:Connect(function(x, y)
        local goal = {}
        goal.Position = UDim2.new(0, 0, 0.853, 0)
        local tweenInfo = TweenInfo.new(0.5)
        gsTween:Create(Selection, tweenInfo, goal):Play()   
    end)

    local TabID = 0
    function UIFunctions:Tab(Nam: string)
        local SessionFunctions = {}
        local Name = Nam or "UnnamedTab"
        local CurNum = 1
        local Old = nil
        local Se = TabName:Clone()
        Se.Parent = Tabs
        Se.Visible = (TabID == 0)
        TabID += 1
        if Tabs:FindFirstChild(Name) then
            local bro = 0
            for _,v in next, Tabs:GetChildren() do
                if v.Name == Name then
                    bro += 1 
                end
            end
            Name = Name.."_"..tostring(bro)
        end
        Se.Name = Name

        local but = SelectionButton:Clone()
        but.Parent = SelectionBox
        but.Name = Name
        but.TextLabel.Text = Name
        but.MouseButton1Click:Connect(function()
            for _,Tab in next, Tabs:GetChildren() do
                Tab.Visible = (Name == Tab.Name)
            end
        end)

        local PageName = Name
        Data[PageName] = {}

        function SessionFunctions:Page(Name: string)
            CurNum += 1
            local PageFunctions = {}
            local SS = Session:Clone()
            Old = SS
            SS.Parent = Se
            --DebugPrint(CurNum, Name)
            if CurNum % 3 == 1 then
                --DebugPrint("3 !!!!", Name)
                SS.Position = UDim2.new(SS.Position.X.Scale, SS.Position.X.Offset, 0, Old.Position.Y.Offset + 15)
            end
            if CurNum % 2 == 1 then
                --DebugPrint("2 !!!!", Name)
                SS.Position = UDim2.new(Old.Position.X.Scale + 0.517, SS.Position.X.Offset, 0, Old.Position.Y.Offset)
            end

            SS.SubTabSelect.MouseEnter:Connect(function(x, y)
                local goal = {}
                goal.Position = UDim2.new(0.021, 0, -0.254, 0)
                local tweenInfo = TweenInfo.new(0.5)
                gsTween:Create(SS.SubTabSelect, tweenInfo, goal):Play()
            end)

            SS.SubTabSelect.MouseLeave:Connect(function(x, y)
                local goal = {}
                goal.Position = UDim2.new(0.021, 0, -0.404, 0)
                local tweenInfo = TweenInfo.new(0.5)
                gsTween:Create(SS.SubTabSelect, tweenInfo, goal):Play()   
            end)

            task.spawn(function()
                task.wait(.3 * (CurNum - 1))
                local goal = {}
                goal.Position = UDim2.new(0.021, 0, -0.404, 0)
                local tweenInfo = TweenInfo.new(0.5)
                gsTween:Create(SS.SubTabSelect, tweenInfo, goal):Play() 
            end)


            local CatCount = 0

            local PName = Name
            Data[PageName][PName] = {}

            function PageFunctions:Category(Name: string)
                local PageFunctions = {}
                Name = Name or "Category"
                if Name == "SubTabSelect" then Name = "Category" end
                if SS:FindFirstChild(Name) then
                    local bro = 0
                    for _,v in next, SS:GetChildren() do
                        if v.Name == "SubTabSelect" then continue end
                        if v.Name == Name then
                            bro += 1 
                        end
                    end
                    Name = Name.."_"..tostring(bro)
                end
                local S = SubTabName:Clone()
                S.Parent = SS
                S.Visible = (CatCount == 0)
                --DebugPrint((CatCount ~= 0))
                CatCount += 1
                S.Name = Name
                local but = SubTabButton:Clone()
                but.Parent = SS.SubTabSelect
                but.Name = Name
                but.Text = Name
                but.MouseButton1Click:Connect(function()
                    for _,Tab in next, SS:GetChildren() do
                        if Tab.Name == "SubTabSelect" then continue end
                        Tab.Visible = (Name == Tab.Name)
                    end
                end)

                local Pages = S
                Pages.CanvasSize = UDim2.new(0, 0, 0, Pages.UIListLayout.AbsoluteContentSize.Y)
                Pages.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    Pages.CanvasSize = UDim2.new(0, 0, 0, Pages.UIListLayout.AbsoluteContentSize.Y)
                end)
            S.Name = Name or "UnnamedSession"
    
            local CatName = Name
            Data[PageName][PName][CatName] = {}

            function PageFunctions:Button(Name: string, Execute: any, Enabled: boolean)
                if typeof(Enabled) ~= "boolean" then Enabled = true end
                if not Execute then Execute = function() end end
                local Button = nil
                if Enabled == true then Button = TextButton:Clone() else Button = TextButtonDisabled:Clone() end
                Button.Parent = S
                Button.TextLabel.Text = Name
                if Enabled then
                    AddConnection(Button.MouseButton1Click:Connect(Execute))
                end       
            end
    
            function PageFunctions:Toggle(Name, State, Execute)
                local ok = {}
                if typeof(State) ~= "boolean" then State = false end
                if typeof(Execute) ~= "function" then Execute = function() end end
                ok.Type = "Toggle"
                local Toggle = ToggleBox:Clone()
                Toggle.Parent = S
                Toggle.TextLabel.Text = Name
                local Enabled = State
    
                Toggle.TextButton.check.Visible = Enabled
                if Enabled == true then Execute(Enabled) end
    
                AddConnection(Toggle.TextButton.MouseButton1Click:Connect(function()
                    Enabled = not Enabled
                    Toggle.TextButton.check.Visible = Enabled
                    Execute(Enabled)
                    Data[PageName][PName][CatName][Name] = {
                        ["Type"] = ok.Type,
                        ["Value"] = ok:Get()
                    }
                end)
                )
                function ok:Get()
                    if d then return end
                    return Enabled
                end
    
                Data[PageName][PName][CatName][Name] = {
                    ["Type"] = ok.Type,
                    ["Value"] = ok:Get()
                }

                return ok
            end
    
            function PageFunctions:Input(Name, MaxChar, Execute)
                local ok = {}
                if typeof(MaxChar) ~= "number" and not MaxChar == true then MaxChar = 0 end
                if typeof(Execute) ~= "function" then Execute = function() end end
                ok.Type = "Input"
                local Toggle = InputBox:Clone()
                Toggle.Parent = S
                Toggle.InputName.Text = Name
                local focused = false
    
                Toggle.InputBox.Focused:Connect(function()
                    focused = true
                end)
                Toggle.InputBox.FocusLost:Connect(function()
                    focused = false
                end)
    
                AddConnection(UserInputService.InputBegan:Connect(function(Key, gameProcessedEvent) -- Input detected!
                    if focused == true and MaxChar == true then
                        local B = Key.KeyCode.Name
                        if B == "Unknown" then return end
                        Toggle.InputBox:ReleaseFocus()
                        Toggle.InputBox.Text = B
                    end
                end)
                )
    
                AddConnection(Toggle.InputBox.Changed:Connect(function()
                    if MaxChar ~= 0 and MaxChar ~= true then
                        Toggle.InputBox.Text = Toggle.InputBox.Text:sub(1,MaxChar)
                    end
                    Execute(false)
                    -- Toggle.InputBox.Size = calculateSize(Toggle.InputBox, Toggle.InputBox.Text, MaxChar)
                    Data[PageName][PName][CatName][Name] = {
                        ["Type"] = ok.Type,
                        ["Value"] = ok:Get()
                    }
                end)
                )

                AddConnection(Toggle.InputBox.FocusLost:Connect(function()
                    if MaxChar ~= 0 and MaxChar ~= true then
                        Toggle.InputBox.Text = Toggle.InputBox.Text:sub(1,MaxChar)
                    end
                    Execute(true)
                    -- Toggle.InputBox.Size = calculateSize(Toggle.InputBox, Toggle.InputBox.Text, MaxChar)
                    Data[PageName][PName][CatName][Name] = {
                        ["Type"] = ok.Type,
                        ["Value"] = ok:Get()
                    }
                end)
                )
    
                function ok:Get()
                    if d then return end
                    return Toggle.InputBox.Text
                end

                function ok:Clear()
                    Toggle.InputBox.Text = ""
                end
    
                Data[PageName][PName][CatName][Name] = {
                    ["Type"] = ok.Type,
                    ["Value"] = ok:Get()
                }
                
                return ok
            end

            function PageFunctions:Slider(Nam: string, mi: number, ma: number, def: number, OnChange: any)
                local Funcs = {}
                local Name = Nam or "UnnamedScroller"
                if typeof(OnChange) ~= "function" then OnChange = function() end end
                local min = mi or 0
                local max = ma or 100
                local default = def or 0

                Funcs.Type = "Slider"
                local SliderFrame: Frame = SliderFrame:Clone()
                SliderFrame.Parent = S
                local Slider: GuiButton = SliderFrame.Slider
                local Content: TextLabel = SliderFrame.SliderContent

                local Selected = false
                local Value = 0

                Slider.MouseButton1Down:Connect(function(x, y)
                    Selected = true
                end)
                SliderFrame.MouseLeave:Connect(function(x, y)
                    if Selected == false then return end
                    Selected = false
                    OnChange(Value)
                end)
                Slider.MouseButton1Up:Connect(function(x, y)
                    if Selected == false then return end
                    Selected = false
                    OnChange(Value)
                end)

                AddConnection(UserInputService.InputChanged:Connect(function(Input, Processed)
                    --if Processed then return end
                    if Input.UserInputType == Enum.UserInputType.MouseMovement and Selected == true then
                        local MousePos = UserInputService:GetMouseLocation()
                        local Relative = MousePos-SliderFrame.AbsolutePosition
                        local percent = math.clamp(Relative.X/SliderFrame.AbsoluteSize.X,0,1)
                        Slider.Position = UDim2.new(percent,0,.5,0)
                        Value = math.round( (min * (1 - percent)) + (max * percent) )
                        Content.Text = Name.." : "..tostring(Value)
                        Data[PageName][PName][CatName][Name] = {
                            ["Type"] = Funcs.Type,
                            ["Value"] = Funcs:Get()
                        }
                    end
                end))

                function Funcs:Set(Val)
                    Slider.Position = UDim2.new(Val/max,0,.5,0)
                    Value = Val
                    OnChange(Value)
                end

                function Funcs:Get()
                    return Value
                end

                Funcs:Set(default)
                Content.Text = Name.." : "..tostring(Value)

                Data[PageName][PName][CatName][Name] = {
                    ["Type"] = Funcs.Type,
                    ["Value"] = Funcs:Get()
                }

                return Funcs
            end

            function PageFunctions:Empty()
                local Emptyfunc = {}
                local E = Empty:Clone()
                E.Parent = S
                function Emptyfunc:Show()
                    E.Visible = true
                end
                function Emptyfunc:Hide()
                    E.Visible = false
                end
                return Emptyfunc
            end

            function PageFunctions:Dropbox(Name: string, callback: any, Check: boolean)
                local Box = {};
                callback = callback or function() end
                if not type(Check) == "boolean" then Check = false end
                local but: TextLabel = DropBoxTemplate:Clone()
                but.Parent = S
                local ok = {}
                PageFunctions:Empty()
                PageFunctions:Empty()
                for i=1, 3 do
                    table.insert(ok, PageFunctions:Empty())
                end
                local CurElement
                if Check == true then CurElement = {} end
                but.Name = Name
                but.DropBox.Text = Name
                local Pages = but.DropBox.DropFrame.Scrolling
                local layout = Pages:FindFirstChildWhichIsA("UIListLayout")
                Pages.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
                            layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                                  Pages.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
                            end)
            
                local function Update(New)
                    local TextLab = but
                    local Old     = TextLab.Text
                    if New == Old and Check == false then
                        TextLab.Text = "N/A"
                        CurElement     = nil
                        return
                    end
                    TextLab.Text = New
                end
            
                local function SizeOf(Name, Loc)
                    local siz = 0
                    for _,v in pairs(Loc) do
                        if v.Name == Name then siz += 1 end
                    end
                    return siz
                end
            
                but.DropBox.Open.MouseButton1Click:Connect(function()
                    but.DropBox.DropFrame.Visible = not but.DropBox.DropFrame.Visible
                    if but.DropBox.DropFrame.Visible == true then
                        for _,v in next, ok do
                            v:Show()
                        end
                    else
                        for _,v in next, ok do
                            v:Hide()
                        end
                    end
                end)

                for _,v in next, ok do
                    v:Hide()
                end
            
                function Box:GetSelected()
                    return CurElement
                end

                function Box:Find(element)
                    return but.DropBox.DropFrame.Scrolling:FindFirstChild(element)
                end
            
                but.DropBox.MouseButton1Click:Connect(function()
                    local selected = Box:GetSelected()
                    callback(selected)
                end)
            
                function Box:Add(Name: string, Value: any)
                    local NewEl = DropButton:Clone()
                    -- Avoid Clones
                    NewEl.Name = Name
                    if but.DropBox.DropFrame.Scrolling:FindFirstChild(Name) then
                        NewEl.Name = Name.."_"..tostring(SizeOf(Name, but.DropBox.DropFrame.Scrolling)+1)
                    end
                    if Check then
                        NewEl.CheckBox.Visible = true
                    end
                    NewEl.Text = NewEl.Name
                    NewEl.Parent = but.DropBox.DropFrame.Scrolling
                    NewEl.MouseButton1Click:Connect(function()
                        if Check == false then
                            if but.DropBox.Open.TextLabel.Text == NewEl.Text then return end
                        end
                        Update(NewEl.Name)
                        if Check then
                            local fix
                            NewEl.CheckBox.DropCheck.Visible = not NewEl.CheckBox.DropCheck.Visible
                            local activ = NewEl.CheckBox.DropCheck.Visible
                            --DebugPrint(activ)
                            if activ == true then
                                fix = TableAdd
                            else
                                fix = TableRemove
                            end
                            if typeof(Value) == "table" then
                                for _,ok in pairs(Value) do
                                    CurElement = fix(CurElement, ok)
                                end
                            else
                                --DebugPrint(CurElement)
                                CurElement = fix(CurElement, Value)
                                --DebugPrint("debuggg", CurElement)
                            end
                            --DebugPrint("new", CurElement)
                        else
                            CurElement = Value
                        end
                        callback(CurElement)
                        Data[PageName][PName][CatName][Name] = {
                            ["Type"] = Box.Type,
                            ["Value"] = Box:Get()
                        }
                    end)
                end
            
                function Box:Remove(element: string)
                    local el = but.DropBox.DropFrame.Scrolling:FindFirstChild(element)
                    if not el then error("No element found.") return nil end
                    Update(el.Name)
                    el:Destroy()
                end

                function Box:Clear()
                    CurElement = {}
                    for _,v in next, but.DropBox.DropFrame.Scrolling:GetChildren() do
                        Box:Remove(v.Name)
                    end
                end
            
                Data[PageName][PName][CatName][Name] = {
                    ["Type"] = Box.Type,
                    ["Value"] = Box:Get()
                }

                return Box
            end

            return PageFunctions
            end  
            return PageFunctions
        end
        return SessionFunctions
    end

    return UIFunctions
end

function MainFunctions:Destroy()
	for _,v in pairs(ConnectionTable) do
	    v:Disconnect()
		v = nil
	end
    UI:Destroy()
    d = true
end

function MainFunctions:Play(ID: number, data: table)
    task.spawn(function()
        local func = {}
        if typeof(data) ~= "table" then data = {} end
        local sound = Instance.new("Sound")
	    sound.SoundId = ID
        sound.Volume = data["Volume"] or 10
        sound.Looped = data["Loop"] or false
	    SoundService:PlayLocalSound(sound)
        function func:Stop()
            sound:Stop()
            sound:Destroy()
        end
        if data["Loop"] == false then
	    sound.Ended:Wait()
	    sound:Destroy()
        end
        return func
    end)
end

function MainFunctions:Command(name: string, description: string, execute: any, aliases: table)
    if typeof(name) ~= "string" then return "Name Required" end
    Commands[string.lower(name)] = {
        ["Description"] = description or "No Description",
        ["Function"] = execute or function() end,
        ["Aliases"] = aliases or {}
        }
end

local Notifs = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dumb-Utility/UnnamedStorage/main/lib/Notification.lua"))() -- For my sanity
function MainFunctions:Notify(Message: string, Tim: number)
    Notifs:Notify(Message, Tim)
end

global.UH__Destroy = function()
    MainFunctions:Destroy()
end

MainFunctions:Command("CmdLock", "Locks the Cmd-Bar (can be toggled)", function()
CmdLocked = not CmdLocked
end, {"lock", "nocmd"})

MainFunctions:Command("stopscript", "Closes UnnamedHub", function()
    MainFunctions:Destroy()
end, {"stop", "noscript", "stopuh"})

MainFunctions:Command("notify", "Sends a notification to the client", function(env, message)
    if not message then return end
    MainFunctions:Notify(message)
end)

-- Saving Shits --
local FolderCheck = isfolder("UnnamedHub_LocalStorage")
if not FolderCheck then makefolder("UnnamedHub_LocalStorage") end

function GetFile(Name: string)
    if isfile("UnnamedHub_LocalStorage/"..Name) then return readfile("UnnamedHub_LocalStorage/"..Name) end
    makefile("UnnamedHub_LocalStorage/"..Name)
    return readfile("UnnamedHub_LocalStorage/"..Name)
end

function CheckFolder(Name: string)
    if not isfolder("UnnamedHub_LocalStorage/"..Name) then makefolder("UnnamedHub__LocalStorage/"..Name) end
end

function WriteFile(Name: string, Content: string)
    writefile("UnnamedHub_LocalStorage/"..Name, Content)
end

function MainFunctions:Save()
    if true then return "Not Available Yet" end
    WriteFile("DataTest.txt", game:GetService("HttpService"):JSONEncode(Data))
end

-- Custom Commands --
CheckFolder("Commands")
for _,v in next, listfiles("UnnamedHub_LocalStorage/Commands") do
    local cmdData = loadstring(readfile(v))()
    if not cmdData["Name"] or not cmdData["Description"] or not cmdData["Execute"] or not cmdData["Aliases"] then warn("Missing Argument(s) in", v) continue end
    MainFunctions:Command(cmdData["Name"], cmdData["Description"].." [CUSTOM]", cmdData["Execute"], cmdData["Aliases"])
    DebugPrint("Added Command", cmdData["Name"])
end

-- Custom Sounds [SOON] --
CheckFolder("Sounds")

return MainFunctions
