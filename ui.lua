local uiRbs = {}
function rno(classname,pArent,prot)
  local intak = Instance.new(classname)
  intak.Parent = pArent
  for key , v in pairs(prot) do 
    intak[key] = v
  end 
  return intak 
end
    
local cofingui = {
  Size = UDim2.fromOffset(441,268),
  colortextred= Color3.fromRGB(255, 0, 0)
}

local devs = {
  dev_1_nick = "Alexander",rank_2 ="المصمم/سـكربتر",img_dev1 = "https://ik.imagekit.io/17xocy4pg/Rakan.jpg?updatedAt=1788993377160",
  dev_2_nick = "Ronaldo",rank_3 = "سكـربتر",img_dev2 = "https://www.roblox.com/headshot-thumbnail/image?userId=6233008733&width=420&height=420&format=png",
  owner_nick = "Omar",rank_owner = "سكـربتر",img_owner = "rbxassetid://86388577296664",
}
task.spawn(function()
function add_dev(nameimg,urlimg)
  pcall(function() delfile(nameimg) end)
  local dev_rakan = game:HttpGet(urlimg)
  writefile(nameimg,dev_rakan)
  local getasset = getcustomasset(nameimg)
return getasset 
end
end)

local dev_rakan = add_dev("rakan_dev.jpg",devs.img_dev1)

local icons = {
  ["home"] = "rbxassetid://107208695593314",
  ["skull"] = "rbxassetid://10734962068",
  ["clipboard-copy"] = "rbxassetid://125851897718493",
  ["sliders"] = "rbxassetid://10734963400",
  ["keyboard"] = "rbxassetid://121474456068237",
  ["Close"] = "rbxassetid://10747384394",
  ["list"] = "rbxassetid://10723433811",
  ["user"] = "rbxassetid://10747373176",
  ["crown"] = "rbxassetid://10709818626"
}

uiRbs.icons = icons

getgenv().state = {
  anmntionState = true
}

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
function cor(parentk,Raduis)
local UICorner = Instance.new("UICorner", parentk)
UICorner.CornerRadius = UDim.new(0, Raduis)
end


function cot(parnetkm)
local UIGradient = Instance.new("UIGradient", parnetkm)
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(17, 17, 17)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(53, 53, 53))
}
end

local TweenService = game:GetService("TweenService")
function sot(pr)
local UIStroke = Instance.new("UIStroke", pr)
UIStroke.Thickness = 2.45
UIStroke.Color = Color3.fromRGB(255,255,255)

local gradient = Instance.new("UIGradient", UIStroke)
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255,0,0)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0,0,0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255,0,0))
}

task.spawn(function()
    while gradient.Parent do
        gradient.Rotation = 0
        local tween = TweenService:Create(gradient, TweenInfo.new(3.5, Enum.EasingStyle.Linear), {Rotation = 360})
        tween:Play()
        tween.Completed:Wait()
    end
end)
end



local FrameMain = rno("Frame", ScreenGui,{
Active = true,
Draggable = true,
BorderSizePixel = 0,
BackgroundColor3 = Color3.fromRGB(255, 255, 255),
Size = cofingui.Size,
Position = UDim2.new(0, 330, 0, 80),
Name = "FrameMain"
})


cor(FrameMain,16)
cot(FrameMain)
local UIStroke_4 = Instance.new("UIStroke")
UIStroke_4.Name = "UIStroke"
UIStroke_4.Color = Color3.fromRGB(195, 0, 0)
UIStroke_4.Thickness = 7
UIStroke_4.Transparency = 0.50
UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_4.Parent = FrameMain

task.spawn(function()
    while state.anmntionState do 
      local tween = game:GetService("TweenService")
      local anmtion = tween:Create(UIStroke_4,TweenInfo.new(1),{Transparency = 0.83})
      anmtion:Play()
      anmtion.Completed:Wait() 
      local anmtion_2 = tween:Create(UIStroke_4,TweenInfo.new(1),{Transparency = 0.50})
      anmtion_2:Play()
    wait(1.80)
    end 
  end)



local role67tbutton4 = rno("Frame",ScreenGui , {
    BorderSizePixel = 0,
    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
    Size = UDim2.new(0, 200, 0, 200),
    Position = UDim2.new(0, 460, 0, 60),
    BackgroundTransparency = 0,
    AnchorPoint = Vector2.new(0, 0),
    Visible = false,
    Name = "frameclose",
    AutomaticSize = Enum.AutomaticSize.None
})

cor(role67tbutton4,6)


local kkButton = rno("TextButton",role67tbutton4,{
    Size = UDim2.new(0, 160, 0, 50),
    Position = UDim2.new(0, 20, 0, 30 ),
    Text = "اغلاق الواجهة",
    Font = Enum.Font.RobotoCondensed,
    TextSize = 22,
    TextColor3 = Color3.fromRGB(220, 220, 220),
    BackgroundColor3 = Color3.fromRGB(30, 30, 30)
})
cor(kkButton,6)
local kkBut11ton = rno("TextButton",role67tbutton4,{
    Size = UDim2.new(0, 160, 0, 50),
    Position = UDim2.new(0, 20, 0, 95),
    Text = "تراجع",
    Font = Enum.Font.RobotoCondensed,
    TextSize = 22,
    TextColor3 = Color3.fromRGB(220, 220, 220),
    BackgroundColor3 = Color3.fromRGB(30, 30, 30)
})

cor(kkBut11ton,6)

local TopBar = rno("Frame", FrameMain, {
		Size = UDim2.new(1, 0, 0, 28),
		BackgroundTransparency = 1,
		Name = "Top Bar"
	})
	local b3roO = Instance.new("UIGradient")
b3roO.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.000, Color3.fromRGB(47, 47, 47)),
	ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
})

b3roO.Parent = TopBar
	
	local TopBarStroke = rno("Frame", TopBar, {
    Size = UDim2.new(1, 0, 0, 1),
    Position = UDim2.new(0, 0, 1, 0),
    BackgroundColor3 = Color3.fromRGB(56, 56, 56),
    BorderSizePixel = 0
})

function uiRbs:title(titlerbs)
local Title = rno("TextLabel", TopBar, {
		Position = UDim2.new(0, 15, 0.5),
		AnchorPoint = Vector2.new(0, 0.5),
		AutomaticSize = "XY",
		Text = titlerbs,
		TextXAlignment = "Left",
		TextSize = 12,
		TextColor3 = cofingui.colortextred,
		BackgroundTransparency = 1,
		Font = Enum.Font.GothamMedium,
		Name = "Title"
	})
end


local CloseButton = rno("ImageButton", TopBar,{
		Name = "Close",
		Size = UDim2.new(0, 23, 0, 23),
		Position = UDim2.new(1, -10, 0.5),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundTransparency = 1,
		Image = icons.Close,
		AutoButtonColor = false
		
	})


local XvContner = rno("Frame", FrameMain,{
Active = true,
BorderSizePixel = 0,
BackgroundTransparency = 0.3,
BackgroundColor3 = Color3.fromRGB(255, 255, 255),
Size = UDim2.new(0, 158, 0, 215),
Position = UDim2.new(0, 5, 0, 40),
Name = "XvContner"
})

cor(XvContner,8)
cot(XvContner)


local ScrollTabs = Instance.new("ScrollingFrame")
ScrollTabs.Name = "ScrollTabs"
ScrollTabs.Parent = XvContner
ScrollTabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollTabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollTabs.Position = UDim2.new(0, 3, 0, 0)
ScrollTabs.BorderSizePixel = 0
ScrollTabs.Size = UDim2.new(0, 158, 0, 215)
ScrollTabs.ScrollBarThickness = 5
ScrollTabs.BackgroundTransparency = 1
ScrollTabs.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollTabs.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollTabs.ScrollBarImageTransparency = 2
ScrollTabs.ScrollingDirection = Enum.ScrollingDirection.Y
cor(ScrollTabs,8)
cot(ScrollTabs)




local paddingTab = Instance.new("UIPadding",ScrollTabs)
paddingTab.PaddingTop = UDim.new(0,8)
paddingTab.PaddingBottom = UDim.new(0,8)

local layout = Instance.new("UIListLayout", ScrollTabs)
layout.FillDirection = Enum.FillDirection.Vertical
layout.Padding = UDim.new(0, 13)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center


local mytabs = {}
function uiRbs:AddTab(TitleTab,inco,show)
local LvContner = rno("Frame", FrameMain,{
Active = true,
BackgroundTransparency = 0.1,
BorderSizePixel = 0,
BackgroundColor3 = Color3.fromRGB(230, 230, 230),
Size = UDim2.new(0, 263, 0, 220),
Position = UDim2.new(0, 170, 0, 40),
Visible = show == true,
Name = TitleTab
})
cor(LvContner,8)
cot(LvContner)

local ScrollMan = Instance.new("ScrollingFrame")
ScrollMan.Name = "ScrollMan"
ScrollMan.Parent = LvContner
ScrollMan.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
ScrollMan.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollMan.Position = UDim2.new(0, 0, 0, 0)
ScrollMan.BorderSizePixel = 0
ScrollMan.Size = UDim2.new(0, 263, 0, 220)
ScrollMan.ScrollBarThickness = 5
ScrollMan.BackgroundTransparency = 2
ScrollMan.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollMan.Visible = show == true
ScrollMan.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollMan.ScrollBarImageTransparency = 2
ScrollMan.ScrollingDirection = Enum.ScrollingDirection.Y


cor(LvContner,8)
cot(LvContner)

local padding = Instance.new("UIPadding",ScrollMan)
padding.PaddingTop = UDim.new(0,8)
padding.PaddingBottom = UDim.new(0,8)

local layout = Instance.new("UIListLayout", ScrollMan)
layout.FillDirection = Enum.FillDirection.Vertical
layout.Padding = UDim.new(0, 13)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center



local roletbutton = rno("Frame", ScrollTabs, {
    BorderSizePixel = 0,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    Size = UDim2.new(0, 137, 0, 24),
    Position = UDim2.new(0, 1, 0, 16),
    Name = "roletbutton",
    AutomaticSize = Enum.AutomaticSize.None
})

local button = rno("TextButton", roletbutton, {
    Size = UDim2.new(0, 137, 0, 24),
    Text = "",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    TextColor3 = cofingui.colortextred,
    Font = Enum.Font.SourceSans,
    AutoButtonColor = false,
    TextSize = 16
})

rno("UIGradient", button, {
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
    })
})

rno("UIGradient", roletbutton, {
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
    })
})

rno("UICorner", button, {
    Name = "ButtonCorner",
    CornerRadius = UDim.new(0, 4)
})

rno("UICorner", roletbutton, {
    Name = "ButtonCorner",
    CornerRadius = UDim.new(0, 4)
})

rno("TextLabel", button, {
    Name = "ButtonLabel",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 2,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0, -50, 0,2),
    Size = UDim2.new(0, 228, 0, 20),
    Font = Enum.Font.RobotoCondensed,
    Text = TitleTab,
    TextColor3 = cofingui.colortextred,
    TextSize = 17.000,
    TextXAlignment = Enum.TextXAlignment.Center
})

rno("ImageLabel", button, {
    Name = "ButtonImage",
    BackgroundColor3 = Color3.fromRGB(65, 65, 65),
    BackgroundTransparency = 2,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.0270000007, 0, 0, 1),
    Size = UDim2.new(0, 19, 0, 19),
    Image = inco,
    ImageColor3 = Color3.fromRGB(255, 255, 255)
})




table.insert(mytabs,{
    tabbttuon = button,
    conterner = LvContner,
    scrollPage = ScrollMan
})

button.MouseButton1Click:Connect(function()
    for _, tabnow in pairs(mytabs) do 
      tabnow.conterner.Visible = false
      tabnow.scrollPage.Visible = false 
    end
    LvContner.Visible = true
    ScrollMan.Visible = true
  end)

sot(roletbutton)
return {
  tabbttuon = button,
  conterner = LvContner,
  scrollPage = ScrollMan
}      
end



function uiRbs:AddButton(tab,name,callback)
local Frame_Bttuon9 = rno("Frame", tab.scrollPage, {
    BorderSizePixel = 0,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    Size = UDim2.new(0, 250, 0, 24),
    Name = "Frame_Bttuon9",
    AutomaticSize = Enum.AutomaticSize.None
})

local ButtonClicknw = rno("TextButton", Frame_Bttuon9, {
    Size = UDim2.new(1, 0, 0, 24),
    Text = "",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    TextColor3 = cofingui.colortextred,
    Font = Enum.Font.SourceSans,
    AutoButtonColor = false,
    TextSize = 16
})

rno("UIGradient", ButtonClicknw, {
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
    })
})

rno("UIGradient", Frame_Bttuon9, {
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
    })
})

rno("UICorner", ButtonClicknw, {
    Name = "ButtonCorner",
    CornerRadius = UDim.new(0, 4)
})

rno("UICorner", Frame_Bttuon9, {
    Name = "ButtonCorner",
    CornerRadius = UDim.new(0, 4)
})

rno("TextLabel", ButtonClicknw, {
    Name = "ButtonLabel",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 2,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0, 30, 0,2),
    Size = UDim2.new(0, 228, 0, 20),
    Font = Enum.Font.RobotoCondensed,
    Text = name,
    TextColor3 = cofingui.colortextred,
    TextSize = 17,
    TextXAlignment = Enum.TextXAlignment.Left
})

rno("ImageLabel", ButtonClicknw, {
    Name = "ButtonImage",
    BackgroundColor3 = Color3.fromRGB(65, 65, 65),
    BackgroundTransparency = 2,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.0270000007, 0, 0, 1),
    Size = UDim2.new(0, 22, 0, 22),
    Image = "rbxassetid://18280363338",
    ImageColor3 = Color3.fromRGB(60, 60, 60)
})

ButtonClicknw.Activated:Connect(callback)

sot(Frame_Bttuon9)

return ButtonClicknw
end

function uiRbs:Toggle(tab,name, callback)
    local roletbutton3 = rno("Frame", tab.scrollPage, {
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Size = UDim2.new(0, 250, 0, 24),
        Name = "roletbutton3",
        AutomaticSize = Enum.AutomaticSize.None,
    })

    local But727tonCorner = rno("UICorner", roletbutton3, {
        Name = "But727tonCorner",
        CornerRadius = UDim.new(0, 3),
        Parent = roletbutton3,
    })

    local Toggle = rno("TextButton", roletbutton3, {
        Name = "Toggle",
        Parent = roletbutton3,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 24),
        AutoButtonColor = false,
        Font = Enum.Font.SourceSans,
        Text = "",
        TextColor3 = Color3.fromRGB(0, 0, 0),
        TextSize = 14.000,
    })

    local ToggleCorner = rno("UICorner", Toggle, {
        Name = "ToggleCorner",
        CornerRadius = UDim.new(0, 3),
        Parent = Toggle,
    })

    local ToggleLabel = rno("TextLabel", Toggle, {
        Name = "ToggleLabel",
        Parent = Toggle,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 2.000,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0, 30, 0,2),
        Size = UDim2.new(0, 228, 0, 20),
        Font = Enum.Font.RobotoCondensed,
        Text = name,
        TextColor3 = cofingui.colortextred,
        TextSize = 17.000,
        TextXAlignment = Enum.TextXAlignment.Left,
    })

    local ToggleImage = rno("ImageLabel", Toggle, {
        Name = "ToggleImage",
        Parent = Toggle,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 2.000,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.0270000007, 0, 0, 0),
        Size = UDim2.new(0, 23, 0, 23),
        Image = "rbxassetid://11293978956",
        ImageColor3 = Color3.fromRGB(255, 0, 0),
    })

    local callback = callback or function() end
    local ToggleEnabled = false

    local bor9o3 = rno("UIGradient", Toggle, {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
            ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
        }),
        Parent = Toggle,
    })

    Toggle.MouseButton1Down:Connect(function()
        ToggleEnabled = not ToggleEnabled

        if ToggleEnabled then
            ToggleImage.ImageColor3 = Color3.fromRGB(0, 211, 0)
        else
            ToggleImage.ImageColor3 = Color3.fromRGB(211, 0, 0)       
      end     
        pcall(callback, ToggleEnablnd)
        end)
    sot(roletbutton3)
end

function uiRbs:addFramdeDev(tab)

local Frame_Dev = Instance.new("Frame", tab.scrollPage)
Frame_Dev.BorderSizePixel = 0
Frame_Dev.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_Dev.Size = UDim2.new(0, 250, 0, 90)
Frame_Dev.Position = UDim2.new(0, 10, 0, 60)
Frame_Dev.BackgroundTransparency = 0
Frame_Dev.Name = "Frame_Dev"
local UICorner_Frame_Dev = Instance.new("UICorner", Frame_Dev)

local Aelxander_Frame = Instance.new("Frame")
Aelxander_Frame.Parent = Frame_Dev
Aelxander_Frame.BorderSizePixel = 0
Aelxander_Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Aelxander_Frame.Size = UDim2.new(0, 130, 0, 95)
Aelxander_Frame.Position = UDim2.new(0, -9, 0, 6)
Aelxander_Frame.BackgroundTransparency = 1
Aelxander_Frame.Name = "Aelxander_Frame"

local TextLabel1 = Instance.new("TextLabel")
TextLabel1.Parent = Aelxander_Frame
TextLabel1.BorderSizePixel = 0
TextLabel1.TextSize = 18
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Size = UDim2.new(0, 120, 0, 22)
TextLabel1.Text = devs.rank_2
TextLabel1.Position = UDim2.new(0, -9, 0, 50)

local TextLabel2 = Instance.new("TextLabel")
TextLabel2.Parent = Aelxander_Frame
TextLabel2.BorderSizePixel = 0
TextLabel2.TextSize = 17
TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Size = UDim2.new(0, 120, 0, 22)
TextLabel2.Text = devs.dev_1_nick
TextLabel2.Position = UDim2.new(0, -9, 0, 65)

local ImageLabel1 = Instance.new("ImageLabel")
ImageLabel1.Parent = Aelxander_Frame
ImageLabel1.BorderSizePixel = 0
ImageLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel1.Image = dev_rakan
ImageLabel1.Size = UDim2.new(0, 50, 0, 50)
ImageLabel1.Position = UDim2.new(0, 26, 0, 2)
local ImageCorner1 = Instance.new("UICorner")
ImageCorner1.Parent = ImageLabel1
ImageCorner1.CornerRadius = UDim.new(0, 444)
sot(ImageLabel1)

local Ronaldo_Frame = Instance.new("Frame")
Ronaldo_Frame.Parent = Frame_Dev
Ronaldo_Frame.BorderSizePixel = 0
Ronaldo_Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Ronaldo_Frame.Size = UDim2.new(0, 130, 0, 95)
Ronaldo_Frame.Position = UDim2.new(0, 57, 0, 6)
Ronaldo_Frame.BackgroundTransparency = 1
Ronaldo_Frame.Name = "Ronaldo_Frame"

local TextLabel3 = Instance.new("TextLabel")
TextLabel3.Parent = Ronaldo_Frame
TextLabel3.BorderSizePixel = 0
TextLabel3.TextSize = 19
TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Size = UDim2.new(0, 120, 0, 22)
TextLabel3.Text = devs.rank_3
TextLabel3.Position = UDim2.new(0, -9, 0, 50)

local TextLabel4 = Instance.new("TextLabel")
TextLabel4.Parent = Ronaldo_Frame
TextLabel4.BorderSizePixel = 0
TextLabel4.TextSize = 17
TextLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Size = UDim2.new(0, 120, 0, 22)
TextLabel4.Text = devs.dev_2_nick
TextLabel4.Position = UDim2.new(0, -9, 0, 65)

local ImageLabel2 = Instance.new("ImageLabel")
ImageLabel2.Parent = Ronaldo_Frame
ImageLabel2.BorderSizePixel = 0
ImageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel2.Image = devs.img_dev2
ImageLabel2.Size = UDim2.new(0, 50, 0, 50)
ImageLabel2.Position = UDim2.new(0, 26, 0, 2)
local ImageCorner2 = Instance.new("UICorner")
ImageCorner2.Parent = ImageLabel2
ImageCorner2.CornerRadius = UDim.new(0, 444)
sot(ImageLabel2)

local Mecry_Owner_Frame = Instance.new("Frame")
Mecry_Owner_Frame.Parent = Frame_Dev
Mecry_Owner_Frame.BorderSizePixel = 0
Mecry_Owner_Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Mecry_Owner_Frame.Size = UDim2.new(0, 130, 0, 95)
Mecry_Owner_Frame.Position = UDim2.new(0, 125, 0, 6)
Mecry_Owner_Frame.BackgroundTransparency = 1
Mecry_Owner_Frame.Name = "Mecry_Owner_Frame"

local Mecry_Owner_TextLabel1 = Instance.new("TextLabel")
Mecry_Owner_TextLabel1.Parent = Mecry_Owner_Frame
Mecry_Owner_TextLabel1.BorderSizePixel = 0
Mecry_Owner_TextLabel1.TextSize = 18
Mecry_Owner_TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mecry_Owner_TextLabel1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Mecry_Owner_TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
Mecry_Owner_TextLabel1.BackgroundTransparency = 1
Mecry_Owner_TextLabel1.Size = UDim2.new(0, 120, 0, 22)
Mecry_Owner_TextLabel1.Text = devs.rank_owner
Mecry_Owner_TextLabel1.Position = UDim2.new(0, -9, 0, 50)

local Mecry_Owner_TextLabel2 = Instance.new("TextLabel")
Mecry_Owner_TextLabel2.Parent = Mecry_Owner_Frame
Mecry_Owner_TextLabel2.BorderSizePixel = 0
Mecry_Owner_TextLabel2.TextSize = 17
Mecry_Owner_TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mecry_Owner_TextLabel2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Mecry_Owner_TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
Mecry_Owner_TextLabel2.BackgroundTransparency = 1
Mecry_Owner_TextLabel2.Size = UDim2.new(0, 120, 0, 22)
Mecry_Owner_TextLabel2.Text = devs.owner_nick
Mecry_Owner_TextLabel2.Position = UDim2.new(0, -9, 0, 65)

local Mecry_Owner_ImageLabel1 = Instance.new("ImageLabel")
Mecry_Owner_ImageLabel1.Parent = Mecry_Owner_Frame
Mecry_Owner_ImageLabel1.BorderSizePixel = 0
Mecry_Owner_ImageLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mecry_Owner_ImageLabel1.Image = devs.img_owner
Mecry_Owner_ImageLabel1.Size = UDim2.new(0, 50, 0, 50)
Mecry_Owner_ImageLabel1.Position = UDim2.new(0, 26, 0, 2)
local Mecry_Owner_ImageCorner1 = Instance.new("UICorner")
Mecry_Owner_ImageCorner1.Parent = Mecry_Owner_ImageLabel1
Mecry_Owner_ImageCorner1.CornerRadius = UDim.new(0, 444)
sot(Mecry_Owner_ImageLabel1)

cot(Frame_Dev)
sot(Frame_Dev)
end


function uiRbs:wlc(tab,PImage)
local WlcFrame = rno("Frame", tab.scrollPage, {
				Size = UDim2.new(0, 250, 0, 100),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				Name = "PlayerFrame"
			})
			
local PlayerImage = rno("ImageLabel", WlcFrame, {
				Size = UDim2.new(0, 73, 0, 73),
				Position = UDim2.new(0, 20, 0.5, -5),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Image = PImage
			})			
			


local WlcText = rno("TextLabel", WlcFrame, {
				Size = UDim2.new(0, 164, 0, 27),
				Position = UDim2.new(0, 115, 0.5, -27),
				BackgroundTransparency = 1,
				Font = Enum.Font.SourceSans,
				Text = "مرحبا نورت",
				TextColor3 = cofingui.colortextred,
				TextSize = 24,
				TextXAlignment = "Left"
			})
			local plrname = rno("TextLabel", WlcFrame, {
				Size = UDim2.new(0, 164, 0, 27),
				Position = UDim2.new(0, 109, 0.5, -3),
				BackgroundTransparency = 1,
				Font = Enum.Font.SourceSans,
				Text = game.Players.LocalPlayer.Name,
				TextColor3 = cofingui.colortextred,
				TextSize = 19,
				TextXAlignment = "Left"
			})

			
sot(PlayerImage)
cor(PlayerImage,444)			
sot(WlcFrame)
cor(WlcFrame,3)
cot(WlcFrame)			
end

function uiRbs:label(tab,name)
    local roletbutton982164csh = rno("Frame", tab.scrollPage, {
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Size = UDim2.new(0, 250, 0, 24),
        Position = UDim2.new(0, 1, 0, 16),
        Name = "roletbutton982164csh",
        AutomaticSize = Enum.AutomaticSize.None
    })

    local FrameTextLabel = rno("Frame", roletbutton982164csh, {
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BorderSizePixel = 0,
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(0, 250, 0, 24)
    })

    local bor9oO = rno("UIGradient", FrameTextLabel, {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
            ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
        })
    })

    local But777tonCorner = rno("UICorner", roletbutton982164csh, {
        Name = "But777tonCorner",
        CornerRadius = UDim.new(0, 4)
    })

    local TextLabelConner = rno("UICorner", FrameTextLabel, {
        Name = "TextLabelConner",
        CornerRadius = UDim.new(0, 4)
    })

    local txtLabel = rno("TextLabel", FrameTextLabel, {
        BackgroundColor3 = cofingui.colortextred,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Position = UDim2.new(0, 4, 0, 0),
        Size = UDim2.new(0, 0, 1, 0),
        AutomaticSize = Enum.AutomaticSize.X,
        Font = Enum.Font.RobotoCondensed,
        Text = name,
        TextColor3 = cofingui.colortextred,
        TextSize = 17,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextWrapped = false
    })

    sot(roletbutton982164csh)

    return FrameTextLabel
end



function uiRbs:boxing(tab,name, txt)
local roletbutton4 = rno("Frame", tab.scrollPage, {
    BorderSizePixel = 0,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    Size = UDim2.new(0, 250, 0, 24),
    Position = UDim2.new(0, 1, 0, 16),
    Name = "roletbutton4",
    AutomaticSize = Enum.AutomaticSize.None
})

local But7997tonCorner = rno("UICorner", roletbutton4, {
    Name = "But7997tonCorner",
    CornerRadius = UDim.new(0, 4)
})

local FrameTextBox = rno("Frame", roletbutton4, {
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0, 0, 0, 0),
    Size = UDim2.new(0, 250, 0, 24)
})

local bor18o3 = rno("UIGradient", FrameTextBox, {
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
    })
})

local TextLabelConner = rno("UICorner", FrameTextBox, {
    Name = "TextLabelConner",
    CornerRadius = UDim.new(0, 4)
})



local ImageTextLabel = rno("ImageButton", FrameTextBox, {
    Name = "ImageTextLabel",
    BackgroundTransparency = 1,
    Position = UDim2.new(0.0270000007, 3, 0, 5),
    Size = UDim2.new(0, 16, 0, 16),
    Image = "rbxassetid://105134879483436",
    ImageColor3 = Color3.fromRGB(60, 60, 60)
})




local TextB777ox = rno("TextBox", FrameTextBox, {
    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
    BackgroundTransparency = 0.6,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0, 145, 0, 0),
    Size = UDim2.new(0, 96, 0, 25),
    PlaceholderText = txt,
    Font = Enum.Font.RobotoCondensed,
    Text = txt,
    TextColor3 = cofingui.colortextred,
    TextSize = 16,
    TextWrapped = true,
    TextTruncate = Enum.TextTruncate.AtEnd
})

local LabelTextBox = rno("TextLabel", FrameTextBox, {
    Name = "LabelTextBox",
    BackgroundColor3 = cofingui.colortextred,
    BackgroundTransparency = 1,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0, 35, 0, 0),
    Size = UDim2.new(0, 0, 1, 0),
    AutomaticSize = Enum.AutomaticSize.X,
    Font = Enum.Font.RobotoCondensed,
    Text = name,
    TextColor3 = cofingui.colortextred,
    TextSize = 17,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextWrapped = false
})

sot(roletbutton4)
return TextB777ox
end
local Players = game:GetService("Players")





function uiRbs:DiscordInvite(tab, title, description, logo, invite)
    local InviteHolder = Instance.new("Frame")
    InviteHolder.Name = "DiscordInvite"
    InviteHolder.Size = UDim2.new(0, 230, 0, 80)
    InviteHolder.BackgroundTransparency = 1
    InviteHolder.Parent = tab.scrollPage

    local InviteLabel = Instance.new("TextLabel")
    InviteLabel.Size = UDim2.new(1, -10, 0, 15)
    InviteLabel.Position = UDim2.new(0, 5, 0, 0)
    InviteLabel.Text = invite
    InviteLabel.TextColor3 = Color3.fromRGB(40, 150, 255)
    InviteLabel.Font = Enum.Font.RobotoCondensed
    InviteLabel.TextXAlignment = Enum.TextXAlignment.Left
    InviteLabel.BackgroundTransparency = 1
    InviteLabel.TextSize = 10
    InviteLabel.Parent = InviteHolder

    local FrameHolder = Instance.new("Frame")
    FrameHolder.Size = UDim2.new(0, 230, 0, 80)
    FrameHolder.Position = UDim2.new(0, 0, 1, -65)
    FrameHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FrameHolder.BackgroundTransparency = 0
    FrameHolder.Parent = InviteHolder

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
    })
    gradient.Parent = FrameHolder

    cor(InviteHolder,6)
    cor(FrameHolder,6)
    

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(45, 45, 45)
    stroke.Thickness = 1
    stroke.Parent = FrameHolder

    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Size = UDim2.new(0, 50, 0, 50)
    ImageLabel.Position = UDim2.new(0, 7, 0, 7)
    ImageLabel.Image = logo
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Parent = FrameHolder

    local imgCorner = Instance.new("UICorner")
    imgCorner.CornerRadius = UDim.new(0, 4)
    imgCorner.Parent = ImageLabel

    local imgStroke = Instance.new("UIStroke")
    imgStroke.Color = Color3.fromRGB(45, 45, 45)
    imgStroke.Parent = ImageLabel

    local LTitle = Instance.new("TextLabel")
    LTitle.Size = UDim2.new(1, -52, 0, 15)
    LTitle.Position = UDim2.new(0, 44, 0, 7)
    LTitle.Text = title
    LTitle.Font = Enum.Font.RobotoCondensed
    LTitle.TextColor3 = cofingui.colortextred
    LTitle.TextXAlignment = Enum.TextXAlignment.Left
    LTitle.BackgroundTransparency = 1
    LTitle.TextSize = 12
    LTitle.Parent = FrameHolder

    local LDesc = Instance.new("TextLabel")
    LDesc.Size = UDim2.new(1, -52, 0, 0)
    LDesc.Position = UDim2.new(0, 60, 0, 22)
    LDesc.Text = description
    LDesc.Font = Enum.Font.RobotoCondensed
    LDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
    LDesc.TextXAlignment = Enum.TextXAlignment.Left
    LDesc.BackgroundTransparency = 1
    LDesc.TextSize = 15
    LDesc.AutomaticSize = Enum.AutomaticSize.Y
    LDesc.TextWrapped = true
    LDesc.Parent = FrameHolder

    local JoinButton = Instance.new("TextButton")
    JoinButton.Size = UDim2.new(1, -14, 0, 16)
    JoinButton.Position = UDim2.new(0.5, 0, 1, -3)
    JoinButton.AnchorPoint = Vector2.new(0.5, 1)
    JoinButton.Text = "نسخ رابط ديسكورد"
    JoinButton.Font = Enum.Font.RobotoCondensed
    JoinButton.TextSize = 12
    JoinButton.TextColor3 = Color3.fromRGB(220, 220, 220)
    JoinButton.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
    JoinButton.Parent = FrameHolder

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = JoinButton

    local ClickDelay = false
    JoinButton.MouseButton1Click:Connect(function()
        setclipboard(invite)
        if ClickDelay then return end
        ClickDelay = true
        JoinButton.Text = "Copied to Clipboard"
        JoinButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        JoinButton.TextColor3 = Color3.fromRGB(150, 150, 150)
        task.wait(5)
        JoinButton.Text = "دخول سيرفرنا"
        JoinButton.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
        JoinButton.TextColor3 = Color3.fromRGB(220, 220, 220)
        ClickDelay = false
    end)

    return InviteHolder
end

function uiRbs:TargetTextBox(tab,image, name, id)
    local TargetFrame = rno("Frame", tab.scrollPage, {
        Name = "TargetFrame",
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(0, 235, 0, 95)
    })
    sot(TargetFrame)

    cor(TargetFrame,6)

          local Grad77ient = rno("UIGradient", TargetFrame, {
        Color = ColorSequence.new({
          ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
          ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
        })
      })





    local TargetImage = rno("ImageLabel", TargetFrame, {
        Name = "TargetImage",
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.073, -3, 0.15, -8),
        Size = UDim2.new(0, 70, 0, 70),
        Image = image
    })
    
    sot(TargetImage)

    local PlayerImageCorner_2 = rno("UICorner", TargetImage, {
        Name = "PlayerImageCorner",
        CornerRadius = UDim.new(0, 35)
    })

    local TargetName = rno("TextLabel", TargetFrame, {
        Name = "TargetName",
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.394, 0, 0.52, 0),
        Size = UDim2.new(0, 140, 0, 18),
        Font = Enum.Font.RobotoCondensed,
        Text = "Target :" .. name,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 15,
        TextXAlignment = Enum.TextXAlignment.Left
    })

    local TargetTextBox = rno("TextBox", TargetFrame, {
        Name = "TargetTextBox",
        BackgroundColor3 = Color3.fromRGB(112, 112, 112),
        BorderSizePixel = 0,
        Position = UDim2.new(0.394, 0, 0.15, 0),
        Size = UDim2.new(0, 118, 0, 31),
        Font = Enum.Font.RobotoCondensed,
        PlaceholderText = "اسم اللاعب",
        Text = "",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 14
    })

    local TargetTextBoxCorner = rno("UICorner", TargetTextBox, {
        Name = "TargetTextBoxCorner",
        CornerRadius = UDim.new(0, 4)
    })

    local TargetTextBoxStroke = rno("UIStroke", TargetTextBox, {
        Name = "TargetTextBoxStroke",
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        Color = Color3.fromRGB(155, 155, 155),
        Thickness = 1
    })

    local TargetId = rno("TextLabel", TargetFrame, {
        Name = "TargetId",
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.394, 0, 0.7, 0),
        Size = UDim2.new(0, 140, 0, 18),
        Font = Enum.Font.RobotoCondensed,
        Text = "ID : " .. tostring(id),
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 15,
        TextXAlignment = Enum.TextXAlignment.Left
    })
TargetImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=5727089960&width=420&height=420&format=png"
    local function FindPlayer(input)   
        if not input or input == "" then return nil end   
        if input:lower() == "random" then   
            local list = Players:GetPlayers()   
            if #list > 0 then   
                return list[math.random(1, #list)]   
            end   
            return nil   
        end   
        for _, p in ipairs(Players:GetPlayers()) do   
            if p.Name:lower():sub(1, #input) == input:lower() or p.DisplayName:lower():sub(1, #input) == input:lower() then   
                return p   
            end   
        end   
        return nil   
    end   


    local lastText = ""

    local function UpdateTarget()
        local text = TargetTextBox.Text
        if text == lastText then return end
        lastText = text

        local targetPlayer = FindPlayer(text)

        if targetPlayer and targetPlayer ~= Players.LocalPlayer then
            lastPlayer = targetPlayer

            TargetName.Text = "Target Name : @"..targetPlayer.DisplayName
            TargetId.Text = "ID : "..tostring(targetPlayer.UserId)

            local ok, img = pcall(function()
                return Players:GetUserThumbnailAsync(
                    targetPlayer.UserId,
                    Enum.ThumbnailType.HeadShot,
                    Enum.ThumbnailSize.Size420x420
                )
            end)

            if ok then
                TargetImage.Image = img
            end
        else
            TargetName.Text = "Target Name : "..name
            TargetId.Text = "ID : "..tostring(id)
            TargetImage.Image = image
            lastPlayer = nil
        end
    end

    local function CheckLeave()
        if lastPlayer then
            local stillExists = Players:FindFirstChild(lastPlayer.Name)
            if not stillExists then
                lastPlayer = nil
                print("log out Player ")
            end
        end
    end

    TargetTextBox.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            UpdateTarget()
        end
    end)

    task.spawn(function()
        while TargetFrame.Parent do
            UpdateTarget()
            CheckLeave()
            task.wait(1)
        end
    end)

    return TargetTextBox  
end



local NotificationHolder = Instance.new("Frame")
NotificationHolder.Name = "NotificationHolder"
NotificationHolder.BackgroundTransparency = 1
NotificationHolder.Size = UDim2.new(1, 0, 1, 0)
NotificationHolder.Parent = ScreenGui

function uiRbs:MakeNotification(Name, Content, Image, Time)
    task.spawn(function()
        local T=game:GetService("TweenService")
        local p=game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

        local m=Instance.new("ScreenGui")
        m.ResetOnSpawn=false
        m.DisplayOrder=999
        m.IgnoreGuiInset=true
        m.Parent=p

        local f=Instance.new("Frame")
        f.Size=UDim2.new(0,550,0,90) -- كبرنا العرض
        f.Position=UDim2.new(.5,-275,.1,-100) -- عدلنا الموقع عشان يتوسط
        f.BackgroundColor3=Color3.fromRGB(30,30,50)
        f.BorderSizePixel=0
        f.Parent=m
        Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)

        local function a(o,c)
            local s=Instance.new("UIStroke",o)
            s.Color=Color3.fromRGB(255,255,255)
            s.Thickness=3
            s.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
            local g=Instance.new("UIGradient",s)
            g.Color=ColorSequence.new{
                ColorSequenceKeypoint.new(0,c),
                ColorSequenceKeypoint.new(.5,Color3.fromRGB(18,8,38)),
                ColorSequenceKeypoint.new(1,c)}
            task.spawn(function()
                while g.Parent do
                    g.Rotation=0
                    local w=T:Create(g,TweenInfo.new(3.7,Enum.EasingStyle.Linear),{Rotation=360})
                    w:Play()
                    w.Completed:Wait()
                end 
            end)
        end

        a(f,Color3.fromRGB(140,80,255))

        local l=Instance.new("TextLabel")
        l.Size=UDim2.new(0,350,0,40)
        l.Position=UDim2.new(0,100,0,25)
        l.BackgroundColor3=Color3.fromRGB(80,80,80)
        l.BorderSizePixel=0
        l.Text=Name.." | "..Content
        l.TextColor3=Color3.fromRGB(255,255,255)
        l.TextSize=16
        l.Font=Enum.Font.Gotham
        l.Parent=f
        Instance.new("UICorner",l).CornerRadius=UDim.new(0,6)
        a(l,Color3.fromRGB(255,80,200))

        T:Create(f,TweenInfo.new(.8,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{Position=UDim2.new(.5,-275,.1,30)}):Play()

        task.delay(Time,function()
            local w=T:Create(f,TweenInfo.new(.8,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{Position=UDim2.new(.5,-275,.1,-100),BackgroundTransparency=1})
            w:Play()
            w.Completed:Connect(function()m:Destroy()end)
        end)
    end)
end


local imageButt1on = rno("ImageButton",ScreenGui,{
BorderSizePixel = 0,
Name = "icon",
BackgroundColor3 = Color3.fromRGB(255, 255, 255),
Size = UDim2.new(0, 50, 0, 50),
Position = UDim2.new(0, 55, 0.235, -80),
Draggable = true,
Visible = true,
Image = "rbxassetid://121188917608351"
})


sot(imageButt1on)

CloseButton.MouseButton1Click:Connect(function()
FrameMain.Visible = false
role67tbutton4.Visible = true
imageButt1on.Visible = false
end)


local show = true
imageButt1on.MouseButton1Click:Connect(function()
FrameMain.Visible =  not FrameMain.Visible
end)


kkButton.MouseButton1Click:Connect(function()
ScreenGui:Destroy()
end)

kkBut11ton.MouseButton1Click:Connect(function()
role67tbutton4.Visible = false
FrameMain.Visible = true
imageButt1on.Visible = true
end)

return uiRbs
