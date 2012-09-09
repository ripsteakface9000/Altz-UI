
  -----------------------------
  -- INIT
  -----------------------------

  --get the addon namespace
  local addon, ns = ...
  local gcfg = ns.cfg

  -----------------------------
  -- HIDE FRAMES
  -----------------------------

  --hide blizzard
  local blizzHider = CreateFrame("Frame","rABS_BizzardHider")
  blizzHider:Hide()
  --hide main menu bar frames
  if gcfg.bars.bar12.enable then
    MainMenuBar:SetParent(blizzHider)
    MainMenuBarPageNumber:SetParent(blizzHider)
    ActionBarDownButton:SetParent(blizzHider)
    ActionBarUpButton:SetParent(blizzHider)
	-- bag
	MainMenuBarBackpackButton:SetParent(blizzHider)
  end
  --hide override actionbar frames
  if gcfg.bars.overridebar.enable then
    OverrideActionBarExpBar:SetParent(blizzHider)
    OverrideActionBarHealthBar:SetParent(blizzHider)
    OverrideActionBarPowerBar:SetParent(blizzHider)
    OverrideActionBarPitchFrame:SetParent(blizzHider) --maybe we can use that frame later for pitchig and such
  end

  -----------------------------
  -- HIDE TEXTURES
  -----------------------------

  --remove some the default background textures
  StanceBarLeft:SetTexture(nil)
  StanceBarMiddle:SetTexture(nil)
  StanceBarRight:SetTexture(nil)
  SlidingActionBarTexture0:SetTexture(nil)
  SlidingActionBarTexture1:SetTexture(nil)
  PossessBackground1:SetTexture(nil)
  PossessBackground2:SetTexture(nil)

  if gcfg.bars.bar12.enable then
    MainMenuBarTexture0:SetTexture(nil)
    MainMenuBarTexture1:SetTexture(nil)
    MainMenuBarTexture2:SetTexture(nil)
    MainMenuBarTexture3:SetTexture(nil)
    MainMenuBarLeftEndCap:SetTexture(nil)
    MainMenuBarRightEndCap:SetTexture(nil)
  end

  --remove OverrideBar textures
  if gcfg.bars.overridebar.enable then
    local textureList =  {
      "_BG",
      "EndCapL",
      "EndCapR",
      "_Border",
      "Divider1",
      "Divider2",
      "Divider3",
      "ExitBG",
      "MicroBGL",
      "MicroBGR",
      "_MicroBGMid",
      "ButtonBGL",
      "ButtonBGR",
      "_ButtonBGMid",
    }

    for _,tex in pairs(textureList) do
      OverrideActionBar[tex]:SetAlpha(0)
    end
  end