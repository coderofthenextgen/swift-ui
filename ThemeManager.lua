local ThemeManager = {}
ThemeManager.Library = nil
ThemeManager.Folder = "SwiftUI"
ThemeManager.FileName = "SwiftUI/theme.json"
ThemeManager.BuiltInThemes = {
    SwiftDark = {
        Background = Color3.fromRGB(10, 10, 12),
        Main = Color3.fromRGB(14, 14, 16),
        Sidebar = Color3.fromRGB(12, 12, 14),
        Element = Color3.fromRGB(22, 22, 26),
        ElementHover = Color3.fromRGB(30, 30, 34),
        Outline = Color3.fromRGB(48, 48, 52),
        OutlineLight = Color3.fromRGB(62, 62, 66),
        Accent = Color3.fromRGB(124, 92, 255),
        Font = Color3.fromRGB(240, 240, 240),
        FontDim = Color3.fromRGB(165, 165, 170),
        FontDark = Color3.fromRGB(110, 110, 115),
    },
    Midnight = {
        Background = Color3.fromRGB(8, 10, 14),
        Main = Color3.fromRGB(14, 16, 20),
        Sidebar = Color3.fromRGB(10, 12, 16),
        Element = Color3.fromRGB(24, 26, 32),
        ElementHover = Color3.fromRGB(32, 34, 42),
        Outline = Color3.fromRGB(36, 38, 46),
        OutlineLight = Color3.fromRGB(48, 50, 60),
        Accent = Color3.fromRGB(88, 101, 242),
        Font = Color3.fromRGB(235, 235, 245),
        FontDim = Color3.fromRGB(155, 155, 170),
        FontDark = Color3.fromRGB(100, 100, 115),
    },
    Crimson = {
        Background = Color3.fromRGB(18, 10, 12),
        Main = Color3.fromRGB(26, 16, 18),
        Sidebar = Color3.fromRGB(20, 12, 14),
        Element = Color3.fromRGB(38, 24, 28),
        ElementHover = Color3.fromRGB(48, 32, 36),
        Outline = Color3.fromRGB(52, 32, 38),
        OutlineLight = Color3.fromRGB(64, 42, 48),
        Accent = Color3.fromRGB(231, 76, 60),
        Font = Color3.fromRGB(245, 235, 235),
        FontDim = Color3.fromRGB(175, 145, 148),
        FontDark = Color3.fromRGB(120, 90, 95),
    },
    Forest = {
        Background = Color3.fromRGB(10, 16, 12),
        Main = Color3.fromRGB(16, 22, 18),
        Sidebar = Color3.fromRGB(12, 18, 14),
        Element = Color3.fromRGB(26, 34, 28),
        ElementHover = Color3.fromRGB(34, 42, 36),
        Outline = Color3.fromRGB(38, 48, 40),
        OutlineLight = Color3.fromRGB(48, 58, 50),
        Accent = Color3.fromRGB(46, 204, 113),
        Font = Color3.fromRGB(235, 245, 235),
        FontDim = Color3.fromRGB(155, 175, 158),
        FontDark = Color3.fromRGB(100, 120, 105),
    },
    Ocean = {
        Background = Color3.fromRGB(10, 14, 20),
        Main = Color3.fromRGB(16, 20, 28),
        Sidebar = Color3.fromRGB(12, 16, 24),
        Element = Color3.fromRGB(24, 30, 42),
        ElementHover = Color3.fromRGB(32, 38, 50),
        Outline = Color3.fromRGB(36, 44, 58),
        OutlineLight = Color3.fromRGB(46, 54, 68),
        Accent = Color3.fromRGB(52, 152, 219),
        Font = Color3.fromRGB(235, 240, 250),
        FontDim = Color3.fromRGB(155, 165, 180),
        FontDark = Color3.fromRGB(100, 110, 125),
    },
    Arctic = {
        Background = Color3.fromRGB(18, 20, 24),
        Main = Color3.fromRGB(24, 26, 30),
        Sidebar = Color3.fromRGB(20, 22, 26),
        Element = Color3.fromRGB(32, 36, 42),
        ElementHover = Color3.fromRGB(40, 44, 50),
        Outline = Color3.fromRGB(50, 54, 62),
        OutlineLight = Color3.fromRGB(62, 66, 74),
        Accent = Color3.fromRGB(0, 200, 200),
        Font = Color3.fromRGB(240, 242, 245),
        FontDim = Color3.fromRGB(160, 165, 175),
        FontDark = Color3.fromRGB(105, 110, 120),
    },
    Sunset = {
        Background = Color3.fromRGB(20, 12, 10),
        Main = Color3.fromRGB(28, 18, 16),
        Sidebar = Color3.fromRGB(22, 14, 12),
        Element = Color3.fromRGB(40, 28, 24),
        ElementHover = Color3.fromRGB(50, 36, 30),
        Outline = Color3.fromRGB(56, 40, 36),
        OutlineLight = Color3.fromRGB(68, 50, 44),
        Accent = Color3.fromRGB(255, 150, 50),
        Font = Color3.fromRGB(245, 238, 235),
        FontDim = Color3.fromRGB(175, 155, 148),
        FontDark = Color3.fromRGB(120, 100, 95),
    },
    Lavender = {
        Background = Color3.fromRGB(16, 12, 20),
        Main = Color3.fromRGB(22, 18, 26),
        Sidebar = Color3.fromRGB(18, 14, 22),
        Element = Color3.fromRGB(30, 26, 36),
        ElementHover = Color3.fromRGB(38, 34, 44),
        Outline = Color3.fromRGB(48, 42, 56),
        OutlineLight = Color3.fromRGB(58, 52, 66),
        Accent = Color3.fromRGB(180, 120, 255),
        Font = Color3.fromRGB(240, 236, 245),
        FontDim = Color3.fromRGB(165, 155, 175),
        FontDark = Color3.fromRGB(110, 100, 120),
    },
}

ThemeManager.AccentColors = {
    Swift = Color3.fromRGB(124, 92, 255),
    Blurple = Color3.fromRGB(88, 101, 242),
    Red = Color3.fromRGB(231, 76, 60),
    Orange = Color3.fromRGB(230, 126, 34),
    Yellow = Color3.fromRGB(241, 196, 15),
    Green = Color3.fromRGB(46, 204, 113),
    Cyan = Color3.fromRGB(0, 200, 200),
    Pink = Color3.fromRGB(232, 67, 147),
    White = Color3.fromRGB(240, 240, 240),
    Coral = Color3.fromRGB(255, 150, 50),
    Teal = Color3.fromRGB(0, 180, 180),
    Lavender = Color3.fromRGB(180, 120, 255),
}

function ThemeManager:SetLibrary(Library)
    ThemeManager.Library = Library
end

function ThemeManager:SetFolder(Folder)
    ThemeManager.Folder = Folder
    ThemeManager.FileName = Folder .. "/theme.json"
end

function ThemeManager:ApplyTheme(ThemeName)
    if not ThemeManager.Library then return end
    local Theme = ThemeManager.BuiltInThemes[ThemeName]
    if not Theme then
        local Custom = ThemeManager.Library.CustomThemes and ThemeManager.Library.CustomThemes[ThemeName]
        if Custom then Theme = Custom else return end
    end
    ThemeManager.Library:SetTheme(Theme)
    self:SaveTheme()
end

function ThemeManager:SetAccent(Color)
    if not ThemeManager.Library then return end
    ThemeManager.Library.Theme.Accent = Color
    ThemeManager.Library.Theme.AccentHover = Color3.fromRGB(
        math.clamp(Color.R * 255 + 14, 0, 255),
        math.clamp(Color.G * 255 + 14, 0, 255),
        math.clamp(Color.B * 255 + 14, 0, 255)
    )
    ThemeManager.Library:ApplyThemeToAll()
end

function ThemeManager:SaveTheme()
    if not ThemeManager.Library then return false end
    local Data = {}
    for Key, Color in pairs(ThemeManager.Library.Theme) do
        if typeof(Color) == "Color3" then
            Data[Key] = {R = Color.R, G = Color.G, B = Color.B}
        end
    end
    if writefile and isfolder then
        if not isfolder(ThemeManager.Folder) then pcall(makefolder, ThemeManager.Folder) end
        local HttpService = game:GetService("HttpService")
        local Encoded = HttpService:JSONEncode(Data)
        pcall(writefile, ThemeManager.FileName, Encoded)
        return true
    end
    return false
end

function ThemeManager:LoadTheme()
    if not ThemeManager.Library or not isfile or not readfile then return false end
    if not isfile(ThemeManager.FileName) then return false end
    local Content = readfile(ThemeManager.FileName)
    local HttpService = game:GetService("HttpService")
    local Success, Data = pcall(HttpService.JSONDecode, HttpService, Content)
    if not Success or type(Data) ~= "table" then return false end
    ThemeManager.Library:SetTheme(Data)
    return true
end

function ThemeManager:BuildThemeSection(Tab)
    local Group = Tab:AddLeftGroupbox("Theme")
    local ThemeNames = {}
    for Name in pairs(ThemeManager.BuiltInThemes) do table.insert(ThemeNames, Name) end
    if ThemeManager.Library and ThemeManager.Library.CustomThemes then
        for Name in pairs(ThemeManager.Library.CustomThemes) do table.insert(ThemeNames, Name) end
    end
    table.sort(ThemeNames)

    Group:AddDropdown("ThemeName", {
        Text = "Theme",
        Values = ThemeNames,
        Default = "SwiftDark",
        Callback = function(Value)
            ThemeManager:ApplyTheme(Value)
        end,
    })

    local AccentNames = {}
    for Name in pairs(ThemeManager.AccentColors) do table.insert(AccentNames, Name) end
    table.sort(AccentNames)

    Group:AddDropdown("AccentName", {
        Text = "Accent",
        Values = AccentNames,
        Default = "Swift",
        Callback = function(Value)
            local Color = ThemeManager.AccentColors[Value]
            if Color then ThemeManager:SetAccent(Color) end
        end,
    })

    Group:AddColorPicker("CustomAccent", {
        Text = "Custom Accent",
        Default = ThemeManager.Library and ThemeManager.Library.Theme.Accent or Color3.fromRGB(124, 92, 255),
        Callback = function(Value)
            ThemeManager:SetAccent(Value)
        end,
    })

    Group:AddDivider()
    Group:AddButton({
        Text = "Save Theme",
        Func = function()
            ThemeManager:SaveTheme()
            ThemeManager.Library:Notify({Title = "Theme", Description = "Theme saved", Time = 2})
        end,
    })

    return Group
end

return ThemeManager
