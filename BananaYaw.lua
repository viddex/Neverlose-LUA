local LuaVersion = "4.6"	
local HSYaw = Menu.Switch("BananaYaw","Enable", false, "")
local HSYawMode = Menu.Combo("BananaAA", "Mode", {"BananaYaw","JitterYaw", "Random"}, 0, "")
local HSYaw_On_ShotAA = Menu.Switch("BananaAA","OnShot AA", false, "")
local Yaw_Limit_Min = Menu.SliderInt("BananaAA","Random - Min", 0, 0, 60)
local Yaw_Limit_Max = Menu.SliderInt("BananaAA","Random - Max", 0, 0, 60)
local Lagsync_speed = Menu.SliderInt("BananaAA","Random - YawAdd", 0, 0, 60)
Yaw_Limit_Min:SetVisible(false)
Yaw_Limit_Max:SetVisible(false)
Lagsync_speed:SetVisible(false)

local Desync_Indica = Menu.Switch("Banana", "Indicator", false, "")
local Desync_Text_Outline = Menu.Switch("Banana","Text Outline", true, "")
local Desync_Info_Col_Top = Menu.ColorEdit("Banana","Top Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local Desync_Info_Col_bottom = Menu.ColorEdit("Banana","Bottom Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local Desync_Info_Col_middle = Menu.ColorEdit("Banana","Middle Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local Desync_Col_Text = Menu.ColorEdit("Banana","Text Color",Color.new(1.0, 1.0, 1.0, 1.0),"")

local E_Peek = Menu.Switch("E Peek","Enable E Peek", false, "")
local E_Peek_Checkhostage = Menu.Switch("E Peek","Check to carried the hostage", true, "If you turn on this features, Legit-AA still work when carried hostage")
local E_Peek_RealPeek = Menu.Switch("E Peek","Auto Peek Real", false, "Set Freestanding Desync To Peek Real")
local E_Peek_YawLimit = Menu.SliderInt("E Peek","Yaw Limit", 0, 0, 60)
local E_Peek_YawAdd = Menu.SliderInt("E Peek","Yaw Add", 0, -180, 180)
local E_Peek_YawModifer_Degree = Menu.SliderInt("E Peek","Yaw Modifer Degree", 0, -25, 25)

local ClanTag_Enable = Menu.Switch("Misc","ClanTag", false, "")
local LegAA = Menu.Switch("Misc","LegAA", false, "")
local Anti_BruteForce = Menu.Switch("Misc","Anti Bruteforce", false, "")
local text = Menu.Text("Misc", "----------------------------------------------")
local WaterMark_Enable = Menu.Switch("Misc","WaterMark", false, "")
local WaterMark_Text_Outline = Menu.Switch("Misc","Text Outline", true, "")
local WaterMark_Col_Top = Menu.ColorEdit("Misc","Top Left Color",Color.new(1.0, 1.0, 1.0, 0.4),"")
local WaterMark_Col_Top_Right = Menu.ColorEdit("Misc","Top Right Color",Color.new(1.0, 1.0, 1.0, 0.4),"")
local WaterMark_Col_LeftFill = Menu.ColorEdit("Misc","Left Fill Color",Color.new(0.082, 0.42, 0.725, 1.0),"")
local WaterMark_Col_Left_Background = Menu.ColorEdit("Misc","Left Background Color",Color.new(0, 0, 0, 200 / 255),"")
local WaterMark_Col_Right_Background = Menu.ColorEdit("Misc","Right Background Color",Color.new(0, 0, 0, 33 / 255),"")
local WaterMark_Col_Text = Menu.ColorEdit("Misc","Text Color",Color.new(1.0, 1.0, 1.0, 1.0),"")

local HSYaw_Edge = Menu.Switch("EdgeYaw","Enable EdgeYaw", false, "")
local HSYaw_Edge_YawBase_Restore = Menu.Combo("EdgeYaw", "Restore YawBase", {"Forward","Backward", "Right","Left","At Target","Freestanding"}, 4, "")
local HSYaw_Edge_Condition = Menu.MultiCombo("EdgeYaw", "Enemy's Weapon", {"Scout", "AWP", "AutoSniper","Rifle","Pistol"}, 0, "Enemy's Weapon Conditions")

local FakeLagEnable = Menu.Switch("FakeLag","Advanced FakeLag", false, "")
local FakeLagYawMode = Menu.Combo("FakeLag", "Mode", {"Normal", "Beta"}, 0, "")
local FL_SendLimit = Menu.SliderInt("FakeLag","SendLimit", 1, 1, 14)
local FL_ChockLimit = Menu.SliderInt("FakeLag","ChockLimit", 1, 1, 14)
local text = Menu.Text("FakeLag", "----------------------------------------------")
local FakeLag_Indica = Menu.Switch("FakeLag","Indicator", false, "")
local FakeLag_Text_Outline = Menu.Switch("FakeLag","Text Outline", true, "")
local FakeLag_Info_Col_Top = Menu.ColorEdit("FakeLag","Top Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local FakeLag_Info_Col_bottom = Menu.ColorEdit("FakeLag","Bottom Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local FakeLag_Info_Col_middle = Menu.ColorEdit("FakeLag","Middle Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local FakeLag_Col_Text = Menu.ColorEdit("FakeLag","Text Color",Color.new(1.0, 1.0, 1.0, 1.0),"")


local Enable_DoubleTap = Menu.Switch("Exploits","Override DoubleTap", false, "")
local DoubleTap_Mode = Menu.Combo("Exploits", "Exploits", {"Adaptation", "Custom"}, 0, "")
local DT_Tickbase = Menu.SliderInt("Exploits","Speed Tick", 1, 1, 20)
--local DT_Preserve_Tick = Menu.SliderInt("Exploits","Preserve Tick", 0, 0, 8)
-- local Force_Recharge = Menu.Switch("Exploits","Force Recharge", false, "")
-- local DT_Recharge_Tick = Menu.SliderInt("Exploits","Recharge Tick", 0, 0, 20)
--DT_Recharge_Tick:SetVisible(false)
local text = Menu.Text("Exploits", "---------------------------------------------")
local DoubleTap_Indica = Menu.Switch("Exploits","Indicator", false, "")
local DoubleTap_Text_Outline = Menu.Switch("Exploits","Text Outline", true, "")
local DoubleTap_Info_Col_Top = Menu.ColorEdit("Exploits","Top Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local DoubleTap_Info_Col_bottom = Menu.ColorEdit("Exploits","Bottom Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local DoubleTap_Info_Col_middle = Menu.ColorEdit("Exploits","Middle Color",Color.new(1.0, 1.0, 1.0, 1.0),"")
local DoubleTap_Col_Text = Menu.ColorEdit("Exploits","Text Color",Color.new(1.0, 1.0, 1.0, 1.0),"")


local text = Menu.Text("Indicator Setting", "If the Cheat does not load your saved colors , please reload the config")
local Desync_Pos_X = Menu.SliderInt("Indicator Setting","Desync Pos X", 0, -2560, 2560)
Desync_Pos_X:SetVisible(false)
local Desync_Pos_Y = Menu.SliderInt("Indicator Setting","Desync Pos Y", 0, -1440, 1440)
Desync_Pos_Y:SetVisible(false)
local FL_Pos_X = Menu.SliderInt("Indicator Setting","FL Pos X", 0, -2560, 2560)
FL_Pos_X:SetVisible(false)
local FL_Pos_Y = Menu.SliderInt("Indicator Setting","FL Pos Y", 0, -1440, 1440)
FL_Pos_Y:SetVisible(false)
local DT_Pos_X = Menu.SliderInt("Indicator Setting","DT Pos X", 0, -2560, 2560)
DT_Pos_X:SetVisible(false)
local DT_Pos_Y = Menu.SliderInt("Indicator Setting","DT Pos Y", 0, -1440, 1440)
DT_Pos_Y:SetVisible(false)

local shots = 0
local WeaponFired = false
local real_rotation = 0.0
local fake_fraction = 0.0
local username = Cheat.GetCheatUserName()

local E_Peek_Is_Run = false
local EdgeYaw_Is_Run = false
local Glboal_Ping = 0


-----------------------------------------------------Some Shit------------------------------------------------------------------------

local function CheckDTMode_Object()
    if DoubleTap_Mode:Get() == 1 then
        DT_Tickbase:SetVisible(true)
    else
        DT_Tickbase:SetVisible(false)
    end
end

DoubleTap_Mode:RegisterCallback(CheckDTMode_Object)
CheckDTMode_Object()

local function HSYawMode_Callback()
    if HSYawMode:Get() == 2 then
        Yaw_Limit_Min:SetVisible(true)
        Yaw_Limit_Max:SetVisible(true)
        Lagsync_speed:SetVisible(true)
    elseif HSYawMode:Get() ~= 2 then
        Yaw_Limit_Min:SetVisible(false)
        Yaw_Limit_Max:SetVisible(false)
        Lagsync_speed:SetVisible(false)
    end
end
HSYawMode_Callback()
HSYawMode:RegisterCallback(HSYawMode_Callback)

ffi.cdef[[
typedef int(__fastcall* clantag_t)(const char*, const char*);
]]
local fn_change_clantag = Utils.PatternScan("engine.dll", "53 56 57 8B DA 8B F9 FF 15")
local set_clantag = ffi.cast("clantag_t", fn_change_clantag)

local last_tag_iter = -1
local tag_str =
{
    [1] = " ☠B/",
    [2] = " ☠Ba[",
    [3] = " ☠Ban%",
    [4] = " ☠Bana$",
    [5] = " ☠Banan>",
    [6] = " ☠Banana(",
    [7] = " ☠Banana()",
    [8] = " ☠BananaY<",
    [9] = " ☠BananaYa|",
    [10] = " ☠BananaYaw",																	
    [11] = " ☠BananaY4w",																
    [12] = " ☠BananaYaw",																													
    [13] = " ☠Ban4naYaw",																	
    [14] = " ☠BananaYaw",
    [15] = " ☠BananaY4w",
    [16] = " ☠BananaYaw",
    [17] = " ☠Banan3Yaw",
    [18] = " ☠BananaYa3",
    [19] = " ☠BananaYa+",
    [20] = " ☠BananaY-",
    [21] = " ☠Banana<",
    [22] = " ☠Banan<>",
    [23] = " ☠Bana%",
    [24] = " ☠Ban",
    [25] = " ☠B0/",
    [26] = " ☠Ba",
    [27] = " ☠B]",
    [28] = " ☠",
    [29] = " ☠",
    [30] = " ☠",
    [31] = " ☠",
    [32] = " ☠",
    [33] = " ☠",
    [34] = " ☠"
}

ffi.cdef[[
typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);

struct c_animstate_128983475223458080 { 
    char pad[ 3 ];
    char m_bForceWeaponUpdate; //0x4
    char pad1[ 91 ];
    void* m_pBaseEntity; //0x60
    void* m_pActiveWeapon; //0x64
    void* m_pLastActiveWeapon; //0x68
    float m_flLastClientSideAnimationUpdateTime; //0x6C
    int m_iLastClientSideAnimationUpdateFramecount; //0x70
    float m_flAnimUpdateDelta; //0x74
    float m_flEyeYaw; //0x78
    float m_flPitch; //0x7C
    float m_flGoalFeetYaw; //0x80
    float m_flCurrentFeetYaw; //0x84
    float m_flCurrentTorsoYaw; //0x88
    float m_flUnknownVelocityLean; //0x8C
    float m_flLeanAmount; //0x90
    char pad2[ 4 ];
    float m_flFeetCycle; //0x98
    float m_flFeetYawRate; //0x9C
    char pad3[ 4 ];
    float m_fDuckAmount; //0xA4
    float m_fLandingDuckAdditiveSomething; //0xA8
    char pad4[ 4 ];
    float m_vOriginX; //0xB0
    float m_vOriginY; //0xB4
    float m_vOriginZ; //0xB8
    float m_vLastOriginX; //0xBC
    float m_vLastOriginY; //0xC0
    float m_vLastOriginZ; //0xC4
    float m_vVelocityX; //0xC8
    float m_vVelocityY; //0xCC
    char pad5[ 4 ];
    float m_flUnknownFloat1; //0xD4
    char pad6[ 8 ];
    float m_flUnknownFloat2; //0xE0
    float m_flUnknownFloat3; //0xE4
    float m_flUnknown; //0xE8
    float m_flSpeed2D; //0xEC
    float m_flUpVelocity; //0xF0
    float m_flSpeedNormalized; //0xF4
    float m_flFeetSpeedForwardsOrSideWays; //0xF8
    float m_flFeetSpeedUnknownForwardOrSideways; //0xFC
    float m_flTimeSinceStartedMoving; //0x100
    float m_flTimeSinceStoppedMoving; //0x104
    bool m_bOnGround; //0x108
    bool m_bInHitGroundAnimation; //0x109
    float m_flTimeSinceInAir; //0x10A
    float m_flLastOriginZ; //0x10E
    float m_flHeadHeightOrOffsetFromHittingGroundAnimation; //0x112
    float m_flStopToFullRunningFraction; //0x116
    char pad7[ 4 ]; //0x11A
    float m_flMagicFraction; //0x11E
    char pad8[ 60 ]; //0x122
    float m_flWorldForce; //0x15E
    char pad9[ 462 ]; //0x162
    float m_flMaxYaw; //0x334
};
]]

local ENTITY_LIST_POINTER = ffi.cast("void***", Utils.CreateInterface("client.dll", "VClientEntityList003")) or error("Failed to find VClientEntityList003!")
local GET_CLIENT_ENTITY_FN = ffi.cast("GetClientEntity_4242425_t", ENTITY_LIST_POINTER[0][3])
local ffi_helpers = 
{
    -- get entity address.
    get_entity_address = function(entity_index)
        local addr = GET_CLIENT_ENTITY_FN(ENTITY_LIST_POINTER, entity_index)
        return addr
    end
}

local normalize_yaw = function ( m_flValue )
    
    while m_flValue < -180 do
        m_flValue = m_flValue + 360.0;
    end
    
    while m_flValue > 180 do
        m_flValue = m_flValue - 360.0;
    end
    
    return m_flValue;
    
end

-- basic clamp function lol.
local clamp = function( value, low, high ) 
    
    if value <= low then
        return low
    end
    
    if value >= high then
        return high
    end
    
    return value
    
end

-- max_delta func vel based.
local m_max_delta = function()        
    
    -- get local player.
    local _ent_idx = EngineClient.GetLocalPlayer()
    local _ent = EntityList.GetClientEntity(_ent_idx)
    local local_player = _ent:GetPlayer()
    
    -- Get a local player
    -- animstate ptr.
    local animstate = ffi.cast("struct c_animstate_128983475223458080**", ffi_helpers.get_entity_address( local_player:EntIndex() ) + 0x3914 )[0]
    
    -- if animstate is not initialized.
    if not animstate then
        return 0.0;
    end
    
    -- speed factor.
    local speedfactor = clamp(animstate.m_flFeetSpeedForwardsOrSideWays, 0.0, 1.0);
    
    --avr.
    local avg_speedfactor = (animstate.m_flStopToFullRunningFraction * -0.3 - 0.2) * speedfactor + 1.0;
    
    -- duckamount.
    local duck_amount = animstate.m_fDuckAmount;
    
    -- ducking.
    if  duck_amount > 0.0 then
        
        -- animated max vel.
        local max_velocity = clamp(animstate.m_flFeetSpeedUnknownForwardOrSideways, 0.0, 1.0);
        
        -- duck speed.
        local duck_speed = duck_amount * max_velocity;
        
        -- recalc avg_speedfactor.
        avg_speedfactor = avg_speedfactor + ( duck_speed * (0.5 - avg_speedfactor) );
    end
    
    -- return :).
    return animstate.m_flMaxYaw * avg_speedfactor;
    
end


local chokeValue = {0,0,0,0,0}
local function setup_command(C_UserCmd)
    
    if ClientState.m_choked_commands < chokeValue[5] then --sent
        chokeValue[1] = chokeValue[2]
        chokeValue[2] = chokeValue[3]
        chokeValue[3] = chokeValue[4]
        chokeValue[4] = chokeValue[5]
    end
    chokeValue[5] = ClientState.m_choked_commands
    
end

function getmax()
    local max = 0
    max = math.max(chokeValue[4], chokeValue[3], chokeValue[2], chokeValue[1])
    return max
end

function getmin()
    local min = 0
    min = math.min(chokeValue[4], chokeValue[3], chokeValue[2], chokeValue[1])
    return min
end

function getfluctuate()
    local fluctuate = 0
    
    fluctuate = chokeValue[4] - chokeValue[3]
    if fluctuate < 0 then
        fluctuate = fluctuate * -1
    end
    
    return fluctuate
end

local frame_rate = 0.0
local function get_abs_fps()
    frame_rate = 0.9 * frame_rate + (1.0 - 0.9) * GlobalVars.absoluteframetime
    return math.floor((1.0 / frame_rate) + 0.5)
end

local function norm(angle)
    local angle = math.fmod( angle, 360.0 )
    return angle
end

function VT3_Normalize(self) -- normalizes this vector and returns the length
    local l = self:Length()
    if l <= 0.0 then
        return 0.0
    end
    
    self.x = self.x / l
    self.y = self.y / l
    self.z = self.z / l
    
    return l
end

local function CalcDesync()
    
    -- this is our fake goalfeetyaw
    -- a.k.a desynced yaw.
    local m_fake_rot =  AntiAim.GetFakeRotation()

    
    -- this is our real goalfeetyaw
    -- non desynced yaw.
    local m_real_rot = AntiAim.GetCurrentRealRotation()
    
    local m_delta =  AntiAim.GetMaxDesyncDelta()
    
    -- difference between real and fake goalfeetyaw.
    local m_r_f_diff = math.abs(  normalize_yaw( m_real_rot - m_fake_rot )  )
    
    -- fake delta :rofl: if u m_delta u can extend it to > 58.0 :)
    fake_fraction = math.min(m_r_f_diff / AntiAim.GetMaxDesyncDelta(), 1.0) * m_delta
end

function GetvecVelocity()
    local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    local velocity0 = me:GetProp("m_vecVelocity[0]")
    local velocity1 = me:GetProp("m_vecVelocity[1]")
    local velocity2 = me:GetProp("m_vecVelocity[2]")
    local Vec = Vector.new(velocity0,velocity1,velocity2)
    return Vec:Length2D()
end

function GetHandWeaponID()
    local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    if me == nil then
        return 0
    end
    local player = me:GetPlayer()
    if player == nil then
        return 0
    end
    local weapon = player:GetActiveWeapon()
    if weapon == nil then
        return 0
    end
    local weapon_id = weapon:GetWeaponID()
    return weapon_id
end

function CalcDistance(self,entity)
    local d = (entity.x - self.x) * (entity.x - self.x) + (entity.y - self.y) * (entity.y - self.y) + (entity.z - self.z) * (entity.z - self.z)
    return math.sqrt(d) / 30
end

local function GetDistance(self,entity)
    return math.sqrt((entity.x-self.x)^2 + (entity.y-self.y)^2 + (entity.z-self.z)^2)
end

local function get_closest_player()
    -- Get local player entindex and origin so we can get the distance of players from that point
    local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    local Local_Orig = me:GetProp("m_vecOrigin")
    
    local closest_ent = nil
    local closest_distance = math.huge
    
    if me:GetProp("m_iHealth") <= 0 then
        return closest_ent
    end

    for i = 1, 64 do
        local entity = EntityList.GetClientEntity(i)
        if entity ~= nil and entity ~= me then
            if entity:IsPlayer() == true then
                local player = entity:GetPlayer()
                if player ~= nil then
                    if player:IsDormant() == false then
                        if entity:GetProp("m_iTeamNum") ~= me:GetProp("m_iTeamNum") then
                            if entity:GetProp("m_iHealth") > 0 then
                                local weapon = player:GetActiveWeapon()
                                if weapon ~= nil then
                                    local entity_orig = entity:GetProp("m_vecOrigin")
                                    local distance = GetDistance(Local_Orig,entity_orig)
                                    if distance <= closest_distance then
                                        closest_ent = entity
                                        closest_distance = distance
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return closest_ent
end

Menu.Button("Indicator Setting", "Reset Desync Indicator Pos"):RegisterCallback(function()
    Desync_Pos_X:Set(0)
    Desync_Pos_Y:Set(0)
end)

Menu.Button("Indicator Setting", "Reset FakeLag Indicator Pos"):RegisterCallback(function()
    FL_Pos_X:Set(0)
    FL_Pos_Y:Set(0)
end)

Menu.Button("Indicator Setting", "Reset DT Indicator Pos"):RegisterCallback(function()
    DT_Pos_X:Set(0)
    DT_Pos_Y:Set(0)
end)

----------------------------------------------------------EdgeYaw----------------------------------------------------------------------------------
local YawAdd_Brute = 0
local restore_yawbase = Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Get()
local function DoEdgeYaw()
    local LocalPlayer = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    local gPlayer = LocalPlayer:GetPlayer()
    
    local IsWeapon = false
    local entity = get_closest_player()
    local player
    if entity ~= nil then
        player = entity:GetPlayer()
        local weapon = player:GetActiveWeapon()
        if weapon ~= nil then
            local weapon_id = weapon:GetWeaponID()
            if bit.band(HSYaw_Edge_Condition:Get(),1) == 1 and weapon_id == 40 then --Scout
                IsWeapon = true
            elseif bit.band(HSYaw_Edge_Condition:Get(),2) == 2 and weapon_id == 9 then --AWP
                IsWeapon = true
            elseif bit.band(HSYaw_Edge_Condition:Get(),4) == 4 and (weapon_id == 11 or weapon_id == 38) then --Auto
                IsWeapon = true
            elseif bit.band(HSYaw_Edge_Condition:Get(),8) == 8 and weapon:IsRifle() == true then --Rifle
                IsWeapon = true
            elseif bit.band(HSYaw_Edge_Condition:Get(),16) == 16 and weapon:IsPistol() == true then --Pistol
                IsWeapon = true
            else
                IsWeapon = false
                if EdgeYaw_Is_Run == true then
                    Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Set(HSYaw_Edge_YawBase_Restore:Get())
                    EdgeYaw_Is_Run = false
                end
            end
        end
    end

    if IsWeapon == true then
        local is_visible = false
        local traced
        for y = 0, 360 do
            local view_angles_yaw = EngineClient.GetViewAngles().yaw
            view_angles_yaw = view_angles_yaw + y
            local tmpe = Vector.new(10.0, view_angles_yaw, 0.0)
            tmpe.y = tmpe.y + y;
            local forward = Cheat.AngleToForward(QAngle.new(tmpe.x,tmpe.y,tmpe.z))
            local length = ( ( 16.0 + 3.0 ) + ( ( 16.0 + 3.0 ) * math.sin( math.rad( 10.0 ) ) ) ) + 7.0;
            forward.x = forward.x * length
            forward.y = forward.y * length
            forward.z = forward.z * length
            traced = EngineTrace.TraceRay(gPlayer:GetEyePosition(), gPlayer:GetEyePosition() + forward, LocalPlayer, 0x200400B)
        end
        
        local Bullet = Cheat.FireBullet(gPlayer, gPlayer:GetEyePosition(), player:GetHitboxCenter(0))
        local Bullet2 = Cheat.FireBullet(gPlayer, gPlayer:GetEyePosition(), player:GetHitboxCenter(11))
        local Bullet3 = Cheat.FireBullet(gPlayer, gPlayer:GetEyePosition(), player:GetHitboxCenter(12))
        local Bullet4 = Cheat.FireBullet(gPlayer, gPlayer:GetEyePosition(), player:GetHitboxCenter(16))
        local Bullet5 = Cheat.FireBullet(gPlayer, gPlayer:GetEyePosition(), player:GetHitboxCenter(18))
        if traced.fraction >= 0.93 then
            if Bullet.damage > 0 or Bullet2.damage > 0 or Bullet3.damage > 0 or Bullet4.damage > 0 or Bullet5.damage > 0 then
                is_visible = true
            else
                is_visible = false
            end
        else
            is_visible = true
        end
        
        if is_visible == false then
            Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Set(0)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Fake Options"):Set(0)
            Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(0)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(57)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(57)
            Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(0)
            EdgeYaw_Is_Run = true
        else
            Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Set(HSYaw_Edge_YawBase_Restore:Get())
            EdgeYaw_Is_Run = false
        end
    else
        if EdgeYaw_Is_Run == true then
            Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Set(HSYaw_Edge_YawBase_Restore:Get())
            EdgeYaw_Is_Run = false
        end
    end
end
local EdgeTimer = 0
local function EdgeYaw_Thread() -- when createmove running weapon shoot will lagging 1 tick
    if EngineClient.IsInGame() == true then
        if GlobalVars.tickcount - EdgeTimer > 3 then -- 運行太快fps過低
            EdgeTimer = GlobalVars.tickcount
            local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
            if me ~= nil then
                if HSYaw_Edge:Get() == true and E_Peek_Is_Run == false then
                    DoEdgeYaw()
                end
            end
        end
    end
end

local function EdgeYaw_Callback()
    if EdgeYaw_Is_Run == true then
        Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Set(HSYaw_Edge_YawBase_Restore:Get())
        Edge_IsRestore = false
        EdgeYaw_Is_Run = false
    end
end
HSYaw_Edge:RegisterCallback(EdgeYaw_Callback)
----------------------------------------------------------HSYaw----------------------------------------------------------------------------------
local ref_slow_walk = Menu.FindVar("Aimbot", "Anti Aim", "Misc", "Slow Walk")
local function DoSlowWalkAA()
    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(2)
    if ClientState.m_choked_commands >= 1 then
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(48)
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(48)
        Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(Utils.RandomInt(10,13))
        Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(Utils.RandomInt(-3,5))
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Fake Options"):Set(4)
    else
        Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Modifier"):Set(1)
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(1)
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(22)
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(22)
        Menu.FindVar("Aimbot", "Anti Aim", "Main", "Modifier Degree"):Set(Utils.RandomInt(-1, 3))
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Fake Options"):Set(0)
    end
    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(0)
end

local function DoSleepingPill()
    if YawAdd_Brute ~= 0 and YawAdd_Brute <= 5 then
        return
    end
    Menu.FindVar("Aimbot", "Anti Aim", "Main", "Pitch"):Set(1)
    local isSniper = false
    local entity = get_closest_player()
    if entity ~= nil then
        player = entity:GetPlayer()
        local weapon = player:GetActiveWeapon()
        if weapon ~= nil then
            local weapon_id = weapon:GetWeaponID()
            if weapon_id == 40 or weapon_id == 9 then
                isSniper = true
            end
        end
    end
    
    if ClientState.m_choked_commands == 0 then
        if isSniper == true then
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(1)
            Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Modifier"):Set(1)
            Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(Utils.RandomInt(-8,8))
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(35)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(35)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Fake Options"):Set(3)
            Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(Utils.RandomInt(-2,2))
        else
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(2)
            Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Modifier"):Set(Utils.RandomInt(-3,6))
            Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(1)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(26)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(26)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Fake Options"):Set(3)
            Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(Utils.RandomInt(-7,7))
        end
    else
        Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Modifier"):Set(2)
        if ClientState.m_choked_commands == 1 then
            if isSniper == true then
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(51)
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(51)
            end
        end
        if ClientState.m_choked_commands >= 10 then
            
            if isSniper == true then
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(Utils.RandomInt(32,50))
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(Utils.RandomInt(32,50))
            else
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(40)
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(30)
            end
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Fake Options"):Set(4)
        else
            if isSniper == true then
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(Utils.RandomInt(32,47))
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(Utils.RandomInt(32,47))
            else
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(38)
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(38)
            end
            if ClientState.m_choked_commands >= 1 then
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(0)
            end
        end
    end
    
    if ref_slow_walk:Get() ~= 0 then
        --DoSlowWalkAA()
    end
    
    
end

local function DoHSYaw()
    if YawAdd_Brute ~= 0 and YawAdd_Brute <= 5 then
        return
    end
    Menu.FindVar("Aimbot", "Anti Aim", "Main", "Pitch"):Set(1)
    if ClientState.m_choked_commands == 0 then
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(0)
        Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Modifier"):Set(3) --offset
        Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(1)
        if ref_slow_walk:Get() ~= 0 then
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(34)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(34)
        else
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(26)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(26)
        end
        
    else
        if ClientState.m_choked_commands >= 1 and ClientState.m_choked_commands < 4 and YawAdd_Brute <= 1 then
            Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(ClientState.m_choked_commands)
        end
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(Utils.RandomInt(1,2))
        Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Modifier"):Set(2) --offset
        if ref_slow_walk:Get() ~= 0 then
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(33)
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(33)
            if ClientState.m_choked_commands >= 10 then
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(Utils.RandomInt(ClientState.m_choked_commands, 34))
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(Utils.RandomInt(ClientState.m_choked_commands, 34))
            end
            Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(Utils.RandomInt(-1, 1))
        else
            if ClientState.m_choked_commands >= 10 then
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(34)
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(34)
            else
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(26)
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(26)
            end
        end
    end
    
end

local function DoRandomAA()
    if YawAdd_Brute ~= 0 and YawAdd_Brute <= 5 then
        return
    end
    Menu.FindVar("Aimbot", "Anti Aim", "Main", "Pitch"):Set(1)
    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(Utils.RandomInt(Yaw_Limit_Min:Get(), Yaw_Limit_Max:Get()))
    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(Utils.RandomInt(Yaw_Limit_Min:Get(), Yaw_Limit_Max:Get()))
    Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(Utils.RandomInt(0, 5))
    Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(Utils.RandomInt(Lagsync_speed:Get() * -1, Lagsync_speed:Get()))
end

local leg_time = 0
local Leg_Movement = Menu.FindVar("Aimbot", "Anti Aim", "Misc", "Leg Movement")
local function DoLegAA()
    if leg_time > GlobalVars.tickcount then
        leg_time = GlobalVars.tickcount
    end
    if Leg_Movement:Get() == 0 then
        Leg_Movement:Set(1)
        leg_time = GlobalVars.tickcount
    elseif Leg_Movement:Get() == 1 then
        if GlobalVars.tickcount - leg_time > 0.22 then
            Leg_Movement:Set(2)
            leg_time = GlobalVars.tickcount
        end
    elseif Leg_Movement:Get() == 2 then
        if GlobalVars.tickcount - leg_time > 1.1 then
            Leg_Movement:Set(1)
            leg_time = GlobalVars.tickcount
        end
    end
end

Cheat.RegisterCallback('frame_stage', function()
    if LegAA:Get() == true then
        local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
        if not me then return end
        me:SetProp("m_flPoseParameter", 6, 0)
    end
end)


local aim_shots = 0
local aim_nextshots = 0
local aim_shots_reset = false
local function aim_shot()
    aim_shots = aim_shots + 1
end

local function aim_shot_reset()
    if GetHandWeaponID() == 0 or GetHandWeaponID() == nil then
        return
    else
        if (aim_shots ~= 0)then
            aim_shots_reset = true
        end
        if aim_shots_reset == true then
            if (GlobalVars.realtime >= aim_nextshots) then
                aim_shots = 0
                aim_shots_reset = false
                aim_nextshots = GlobalVars.realtime + 0.22
                Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(0)
            end	
        end
    end
end

local inverter = 1
local function anti_bruteforce()
    if aim_shots >= 1 then
        inverter = inverter * -1
        Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(58 * inverter)
        Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(158 * inverter)
        Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(58 * inverter)
        Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(158 * inverter)
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(0)
    end
end

local function HSYawThread(C_UserCmd) -- onCreateMove
    if HSYaw:Get() == true and WeaponFired == false then
        if HSYawMode:Get() == 0 and E_Peek_Is_Run == false and EdgeYaw_Is_Run == false then
            DoHSYaw()
        end
        if HSYawMode:Get() == 1 and E_Peek_Is_Run == false and EdgeYaw_Is_Run == false then
            DoSleepingPill()
        end
        if HSYawMode:Get() == 2 and E_Peek_Is_Run == false and EdgeYaw_Is_Run == false then
            DoRandomAA()
        end
    end
    
    if HSYaw_On_ShotAA:Get() == true then
        anti_bruteforce()
        aim_shot_reset()
    end
    
    
    if LegAA:Get() == true then
        DoLegAA()
    end
    
    if YawAdd_Brute >= 1 then
        YawAdd_Brute = YawAdd_Brute + 1
        if YawAdd_Brute >= 10 then
            YawAdd_Brute = 0
            Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Add"):Set(0)
        end
    end
    
end

local function HSYawEvents(event) -- onEvents
    local event_name = event:GetName()
    local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    local localTeam = me:GetProp("m_iTeamNum")
    -- weapon_fire
    if event_name == "weapon_fire" then
        local userid = event:GetInt("userid")
        if userid ~= EngineClient.GetLocalPlayer() then
            if Anti_BruteForce:Get() == true then
                if Utils.RandomInt(0, 1) == 1 then
                    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Inverter"):Set(true)
                else
                    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Inverter"):Set(false)
                end
                
                if HSYawMode:Get() == 1 then
                    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle" ,"Left Limit"):Set(Utils.RandomInt(48, 52))
                    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle" ,"Right Limit"):Set(Utils.RandomInt(48, 52))
                end
                Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(Utils.RandomInt(-40, 40))
                Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(Utils.RandomInt(-40, 40))
                YawAdd_Brute = YawAdd_Brute + 1
            end
        else
            if HSYaw_On_ShotAA:Get() == true then
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle" ,"Desync On Shot"):Set(Utils.RandomInt(0, 3))
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle" ,"Left Limit"):Set(Utils.RandomInt(38, 59))
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle" ,"Right Limit"):Set(Utils.RandomInt(32, 59))
            end
        end
        
        if userid == EngineClient.GetLocalPlayer() then
            shots = shots + 1
        end
    end
    -- round_start
    if event_name == "round_start" then
        if HSYaw:Get() == true and WeaponFired == true then
            WeaponFired = false
            DoRandomAA()
        end
    end
end

--------------------------------------------------------DoubleTap---------------------------------------------------------------------------
local cmd_tick = 0
local Recharge_cmd_tick = 0
local function DoubleTapThread(C_UserCmd) -- onCreateMove
    cmd_tick = C_UserCmd.tick_count
    
    if Menu.FindVar("Aimbot", "Ragebot", "Exploits", "Double Tap"):Get() == true then
        if  EngineClient.GetNetChannelInfo() == nil then
        else
            latency =  EngineClient.GetNetChannelInfo():GetLatency(0)
            Glboal_Ping = math.max(0.0, latency) * 1000.0
        end
        
        if Enable_DoubleTap:Get() == true then
            if DoubleTap_Mode:Get() == 1 then
                Exploits.OverrideDoubleTapSpeed(DT_Tickbase:Get())
            else
                
                if Glboal_Ping > 100 then
                    DT_Tickbase:Set(13)
                    Exploits.OverrideDoubleTapSpeed(13)
                end
                
                if Glboal_Ping > 70 then
                    DT_Tickbase:Set(15)
                    Exploits.OverrideDoubleTapSpeed(15)
                end
                
                if Glboal_Ping > 16 and  Glboal_Ping < 58 then
                    DT_Tickbase:Set(16)
                    Exploits.OverrideDoubleTapSpeed(16)
                end
                
                if Glboal_Ping < 15 then
                    DT_Tickbase:Set(17)
                    Exploits.OverrideDoubleTapSpeed(17)
                end
                
            end
            --exploits.OverrideDoubleTapPreserve(DT_Preserve_Tick:Get())
            if DT_Tickbase:Get() < 16 then
                CVar.FindVar("sv_maxusrcmdprocessticks"):SetInt(16)
            else
                CVar.FindVar("sv_maxusrcmdprocessticks"):SetInt(16)
            end
            if CVar.FindVar("sv_maxusrcmdprocessticks"):GetInt() >= 16 then
                CVar.FindVar("cl_clock_correction"):SetInt(1)
                CVar.FindVar("cl_clock_correction_adjustment_max_amount"):SetInt(100)
                CVar.FindVar("cl_clock_correction_adjustment_max_offset"):SetInt(800)
                CVar.FindVar("cl_clock_correction_adjustment_min_offset"):SetInt(10)
                CVar.FindVar("cl_clock_correction_force_server_tick"):SetInt(999)
                CVar.FindVar("cl_clockdrift_max_ms"):SetInt(100)
            end
        end
    end
    
    -- if Force_Recharge:Get() == true then
    --     if Recharge_cmd_tick > 1 and (C_UserCmd.tick_count - Recharge_cmd_tick) >= DT_Recharge_Tick:Get() * 5 then
    --         if exploits.GetCharge() ~= 1 then
    --             exploits.ForceCharge()
    --         end
    --         Recharge_cmd_tick = 0
    --     end
    -- end
    
end

local function DoubleTapEvents(event) -- onCreateMove
    -- local event_name = event:GetName()
    -- if event_name == "weapon_fire" then
    --     local userid = EngineClient.GetPlayerForUserId(event:Get("userid", 0))
    --     if userid == EngineClient.GetLocalPlayer() then
    --         if Force_Recharge:Get() == true then
    --             Recharge_cmd_tick = cmd_tick
    --         end
    --     end
    -- end
end

local function DoubleTap_Ragebot_Shot(ragebot_shot)
    
end
---------------------------------------------------------FAKE LAG---------------------------------------------------------------------------
local alter_send_limit = 0
local alter_send_cond = 0
local FL_velocity = 0
local int_alternative_lag = true
local vec_data = Vector.new(0,0,0)
local lag_dst = 0.0

local function DoAdvancedFakeLag()
    local int_alternative_lag = true
    if GlobalVars.tickcount % alter_send_cond >= alter_send_limit then
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Enable Fake Lag"):Set(true)
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Limit"):Set(FL_ChockLimit:Get())
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Randomization"):Set(alter_send_limit)
        if FL_ChockLimit:Get() == 14 and (FL_velocity > 100) then
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Limit"):Set(14)
        else
            Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Limit"):Set(FL_ChockLimit:Get())
        end
    end
end

local traced

local function NormalFL(C_UserCmd)
    local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    local player = me:GetPlayer()
    FL_velocity = GetvecVelocity()
    if ClientState.m_choked_commands == 0 then
        vec_data = me:GetProp("m_vecOrigin")
        local newz = vec_data.z - 8192
        local lp_idx = EngineClient.GetLocalPlayer()
        local lp_ent = EntityList.GetClientEntity(lp_idx)
        traced = EngineTrace.TraceRay(Vector.new(vec_data.x, vec_data.y, vec_data.z), Vector.new(vec_data.x, vec_data.y, newz), lp_ent, 0xFFFFFFFF)
        lag_dst = math.abs(traced.endpos.z - vec_data.z)
    end
    
    if lag_dst > 11 then 
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Limit"):Set(1)
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Randomization"):Set(0)
    end
    
    alter_send_limit = FL_SendLimit:Get() - 1
    if FL_ChockLimit:Get() == 14 then
        alter_send_cond = FL_SendLimit:Get() + FL_ChockLimit:Get()
    else
        alter_send_cond = 1 + FL_SendLimit:Get() + FL_ChockLimit:Get()
    end
    
    DoAdvancedFakeLag()
end

local function BetaFL(C_UserCmd)
    
    if ClientState.m_choked_commands == 0 then
        local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
        vec_data = me:GetProp("m_vecOrigin")
        local newz = vec_data.z - 8192
        local lp_idx = EngineClient.GetLocalPlayer()
        local lp_ent = EntityList.GetClientEntity(lp_idx)
        traced = EngineTrace.TraceRay(Vector.new(vec_data.x, vec_data.y, vec_data.z), Vector.new(vec_data.x, vec_data.y, newz), lp_ent, 0xFFFFFFFF)
        lag_dst = math.abs(traced.endpos.z - vec_data.z)
    end
    
    alter_send_limit = FL_SendLimit:Get() - 1
    if FL_ChockLimit:Get() == 14 then
        alter_send_cond = FL_SendLimit:Get() + FL_ChockLimit:Get()
    else
        alter_send_cond = 1 + FL_SendLimit:Get() + FL_ChockLimit:Get()
    end
    
    
    FL_velocity = GetvecVelocity()
    if FL_velocity <= 79 then
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Limit"):Set(alter_send_limit)
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Randomization"):Set(0)
    elseif FL_velocity >= 80 and FL_velocity < 129 then
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Limit"):Set(FL_ChockLimit:Get())
    elseif FL_velocity >= 130 then
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Limit"):Set(FL_ChockLimit:Get())
    end
    
    if lag_dst > 11 then 
        Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Limit"):Set(Utils.RandomInt(1,5))
    end
end

local function FakeLagThread(C_UserCmd) -- onCreateMove
    if FakeLagYawMode:Get() == 0 then
        NormalFL(C_UserCmd)
    else
        BetaFL(C_UserCmd)
    end
end

local function FakeLagOnDraw()
    --Render.Text(string.format("alter_send_cond:%s", alter_send_limit), Vector2.new(10.0, 15.0), Color.new(1.0, 1.0, 1.0), 16)
end
--------------------------------------------------------E Peeek--------------------------------------------------------------------------
local E_PeekStatus = false
local SaveYawBase = 0
local SavePitch = 0
local SaveFreeStandingDes = 0
function IsCan_Do_E_Peek(C_UserCmd)
    local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    local Team = me:GetProp("m_iTeamNum")
    if Team == 2 then
        if GetHandWeaponID() ~= 49 then -- not has bomb
            EngineClient.ExecuteClientCmd('-use')
            EngineClient.ExecuteClientCmd('unbind e')
            return true
        else
            EngineClient.ExecuteClientCmd('bind e +use')
            return false
        end
    end
    if Team == 3 then
        
        if E_Peek_Checkhostage:Get() == true then
            local CarriedHostage = me:GetProp("m_hCarriedHostageProp")
            if CarriedHostage ~= 4294967295 then
                EngineClient.ExecuteClientCmd('-use')
                EngineClient.ExecuteClientCmd('unbind e')
                return true
            end
        end
        
        local entity = EntityList.GetEntitiesByName("CPlantedC4")
        for i = 1, #entity do
            local Dist = CalcDistance(me:GetProp("m_vecOrigin"),entity[i]:GetProp("m_vecOrigin"))
            if Dist < 4 then
                EngineClient.ExecuteClientCmd('bind e +use')
                return false
            else
                EngineClient.ExecuteClientCmd('-use')
                EngineClient.ExecuteClientCmd('unbind e')
                return true
            end
        end
        
        local entity2 = EntityList.GetEntitiesByName("CHostage")
        local DistTarget = 0
        for i2 = 1, #entity2 do
            local Dist = CalcDistance(me:GetProp("m_vecOrigin"),entity2[i2]:GetProp("m_vecOrigin"))
            if Dist < 4 then
                DistTarget = DistTarget + 1
            end
        end
        
        if DistTarget == 0 then
            EngineClient.ExecuteClientCmd('-use')
            EngineClient.ExecuteClientCmd('unbind e')
            return true
        else
            EngineClient.ExecuteClientCmd('bind e +use')
            return false
        end
        EngineClient.ExecuteClientCmd('-use')
        EngineClient.ExecuteClientCmd('unbind e')
        return true
    end
    return false
end

local function E_PeekOnCreateMove(C_UserCmd)
    if E_Peek:Get() == true then
        if Cheat.IsKeyDown(0x45) == true then
            E_Peek_Is_Run = IsCan_Do_E_Peek(C_UserCmd)
            if E_Peek_Is_Run == true then
                if E_PeekStatus == false then
                    SavePitch = Menu.FindVar("Aimbot", "Anti Aim", "Main", "Pitch"):Get()
                    SaveYawBase = Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Get()
                    SaveFreeStandingDes = Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Freestanding Desync"):Get()
                    E_PeekStatus = true
                end
                Menu.FindVar("Aimbot", "Anti Aim", "Main", "Pitch"):Set(0)
                Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Set(0)
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Left Limit"):Set(E_Peek_YawLimit:Get())
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Right Limit"):Set(E_Peek_YawLimit:Get())
                Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Modifier"):Set(1) -- Center
                Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(E_Peek_YawModifer_Degree:Get())
                Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Yaw Add"):Set(E_Peek_YawAdd:Get())
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "LBY Mode"):Set(1) -- Opposite
                if E_Peek_RealPeek:Get() == true then
                    Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Freestanding Desync"):Set(2)
                end
            end
        else
            if E_PeekStatus == true then
                EngineClient.ExecuteClientCmd('bind e +use')
                Menu.FindVar("Aimbot", "Anti Aim", "Main", "Yaw Base"):Set(SaveYawBase)
                Menu.FindVar("Aimbot", "Anti Aim", "Main", "Pitch"):Set(SavePitch)
                Menu.FindVar("Aimbot", "Anti Aim", "Fake Angle", "Freestanding Desync"):Set(SaveFreeStandingDes)
                Menu.FindVar("Aimbot", "Anti Aim", "Main" ,"Modifier Degree"):Set(0)
                E_Peek_Is_Run = false
                E_PeekStatus = false
            end
        end
    end
end

local function E_PeekOnEvents(event)
    
end

local function E_PeekOnDraw()
    -- local weapon_id = GetHandWeaponID()
    -- local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    -- local flags = me:GetProp("m_iTeamNum")
    -- local IsDefusing = me:GetProp("m_hCarriedHostage")
    
    -- local entity = EntityList.GetEntitiesByName("CHostage") --CHostage CPlantedC4
    -- for i = 1, #entity do
    --     local position = entity[i]:GetProp("m_vecOrigin")
    --     Render.Circle3D(position, 128, 18.0, Color.new(1.0, 1.0, 1.0))
    --     local position2d = Render.ScreenPosition(position)
    --     Render.Text(string.format('%s', CalcDistance(me:GetProp("m_vecOrigin"),position)), position2d, Color.new(1.0, 1.0, 1.0, 1.0), 20)
    --     --Render.Text(entity[i]:GetClassName(), position2d, Color.new(1.0, 1.0, 1.0, 1.0), 20)
    -- end
    
    -- for i = 1, 1024 do
    --     local entity = EntityList.GetClientEntity(i)
    --     if entity ~= nil then
    --         if entity:IsPlayer() == false then
    --             local position = entity:GetProp("m_vecOrigin")
    --             Render.Circle3D(position, 128, 18.0, Color.new(1.0, 1.0, 1.0))
    --             local position2d = Render.ScreenPosition(position)
    --             Render.Text(entity:GetClassName(), position2d, Color.new(1.0, 1.0, 1.0, 1.0), 20)
    --         end 
    --     end
    -- end
end

--------------------------------------------------------Indicators--------------------------------------------------------------------------
local screen = EngineClient.GetScreenSize()

local function gradient(PosX,PosY,Width,heigh,Col1,Col2)
    Render.GradientBoxFilled(Vector2.new(PosX,PosY), Vector2.new(PosX+Width,PosY+heigh), Col1, Col2, Col1, Col2)
end

local function gradient2(PosX,PosY,Width,heigh,Col1,Col2)
    Render.GradientBoxFilled(Vector2.new(PosX,PosY), Vector2.new(PosX+Width,PosY+heigh), Col1, Col1, Col2, Col2)
end

local function Box(PosX,PosY,Width,heigh,Col,Fill)
    if Fill == false then
        Render.Box(Vector2.new(PosX, PosY), Vector2.new(PosX + Width, PosY + heigh), Col)
    else
        Render.BoxFilled(Vector2.new(PosX, PosY), Vector2.new(PosX + Width, PosY + heigh), Col)
    end
end

local smooth_fl = 0.01
local function FakeLag_Indicator()
    local max_weight = (200/(15-2))*chokeValue[4]
    smooth_fl = smooth_fl + (GlobalVars.frametime * 5.99)
    if smooth_fl >= 1 then 
        smooth_fl = 0.01
    end
    local FakeLag_Max_Weight
    if (max_weight * smooth_fl) <= 200 then
        FakeLag_Max_Weight = max_weight * smooth_fl
    else
        FakeLag_Max_Weight = 200
    end
    
    gradient(3 + FL_Pos_X:Get(), (screen.y/2) - 36 + FL_Pos_Y:Get(), 200, 15, Color.new(0, 0, 0, 222/255), Color.new(0, 0, 0, 33 / 255)) --上灰層
    gradient(3 + FL_Pos_X:Get(), (screen.y/2) - 20 + FL_Pos_Y:Get(), 200, 15, Color.new(0, 0, 0, 222/255), Color.new(0, 0, 0, 33 / 255)) --下灰層
    
    if chokeValue[4] <= 1 then
        for i = 0,1 do
            gradient(3 + FL_Pos_X:Get(), (screen.y/2) - 21.2 + FL_Pos_Y:Get(), FakeLag_Max_Weight, 2, FakeLag_Info_Col_middle:GetColor(),Color.new(0, 0, 0, 0))--中間假卡條
        end
    else
        for i = 0,0 do
            gradient(3 + FL_Pos_X:Get(), (screen.y/2) - 21.2 + FL_Pos_Y:Get(), FakeLag_Max_Weight, 2, FakeLag_Info_Col_middle:GetColor(),Color.new(0, 0, 0, 0))--中間假卡條
        end
    end
    
    gradient(0 + FL_Pos_X:Get(), (screen.y/2) - 39 + FL_Pos_Y:Get(), 49, 3, FakeLag_Info_Col_Top:GetColor(), Color.new(FakeLag_Info_Col_Top:GetColor().r, FakeLag_Info_Col_Top:GetColor().g, FakeLag_Info_Col_Top:GetColor().b, 0)) --上
    gradient2(0 + FL_Pos_X:Get(), (screen.y/2) - 39 + FL_Pos_Y:Get(), 3, 37, FakeLag_Info_Col_Top:GetColor(), FakeLag_Info_Col_bottom:GetColor()) --中
    gradient(0 + FL_Pos_X:Get(), (screen.y/2) - 5 + FL_Pos_Y:Get(), 99, 3, FakeLag_Info_Col_bottom:GetColor(), Color.new(FakeLag_Info_Col_bottom:GetColor().r, FakeLag_Info_Col_bottom:GetColor().g, FakeLag_Info_Col_bottom:GetColor().b, 0)) --下
    
    gradient(0 + FL_Pos_X:Get(), (screen.y/2) - 39 + FL_Pos_Y:Get(), 77, 3, Color.new(220 / 255, 220 / 255, 220/255, 20/255), Color.new(220 / 255, 220 / 255, 220/255, 0))--上
    gradient2(0 + FL_Pos_X:Get(), (screen.y/2) - 39 + FL_Pos_Y:Get(), 3, 37, Color.new(220 / 255, 220 / 255, 220/255, 20/255), Color.new(220 / 255, 220 / 255, 220/255, 0))--中
    gradient(0 + FL_Pos_X:Get(), (screen.y/2) - 5 + FL_Pos_Y:Get(), 99, 3, Color.new(220 / 255, 220 / 255, 220/255, 20/255), Color.new(220 / 255, 220 / 255, 220/255, 0))--下
    
    Render.Text("FAKE LAG:  ", Vector2.new(7 + FL_Pos_X:Get(), (screen.y/2) - 35 + FL_Pos_Y:Get()), FakeLag_Col_Text:GetColor(), 12, FakeLag_Text_Outline:Get())
    Render.Text(string.format('%s', chokeValue[4]), Vector2.new(60 + FL_Pos_X:Get(), (screen.y/2) - 35 + FL_Pos_Y:Get()), FakeLag_Col_Text:GetColor(), 12)
    
    Render.Text("HISTORY:  ", Vector2.new(7 + FL_Pos_X:Get(), (screen.y/2) - 18 + FL_Pos_Y:Get()), FakeLag_Col_Text:GetColor(), 12, FakeLag_Text_Outline:Get())
    Render.Text(string.format('%i-%i-%i-%i    ', chokeValue[4], chokeValue[3], chokeValue[2], chokeValue[1]), Vector2.new(60 + FL_Pos_X:Get(), (screen.y/2) - 18 + FL_Pos_Y:Get()), FakeLag_Col_Text:GetColor(), 12, FakeLag_Text_Outline:Get())
    Render.Text(string.format('M: %i  F: %i', getmax(), getfluctuate()), Vector2.new(144 + FL_Pos_X:Get(), (screen.y/2) - 18 + FL_Pos_Y:Get()), FakeLag_Col_Text:GetColor(), 12, FakeLag_Text_Outline:Get())
    
end

local function Desync_Indicator()
    local me = EngineClient.GetLocalPlayer()
    gradient(3 + Desync_Pos_X:Get(), (screen.y/2) + 3 + Desync_Pos_Y:Get(), 200, 15, Color.new(0, 0, 0, 222/255), Color.new(0, 0, 0, 33 / 255)) --上灰層
    gradient(3 + Desync_Pos_X:Get(), (screen.y/2) + 19 + Desync_Pos_Y:Get(), 200, 15, Color.new(0, 0, 0, 222/255), Color.new(0, 0, 0, 33 / 255)) --下灰層
    
    gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + Desync_Pos_Y:Get(), 49, 3, Desync_Info_Col_Top:GetColor(), Color.new(Desync_Info_Col_Top:GetColor().r, Desync_Info_Col_Top:GetColor().g, Desync_Info_Col_Top:GetColor().b, 0)) --上
    gradient2(0 + Desync_Pos_X:Get(), (screen.y/2) + Desync_Pos_Y:Get(), 3, 37, Desync_Info_Col_Top:GetColor(), Desync_Info_Col_bottom:GetColor()) --中
    gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + 34 + Desync_Pos_Y:Get(), 99, 3, Desync_Info_Col_bottom:GetColor(), Color.new(Desync_Info_Col_bottom:GetColor().r, Desync_Info_Col_bottom:GetColor().g, Desync_Info_Col_bottom:GetColor().b, 0)) --下
    
    if shots >= 1 then ----開槍閃爍----
        gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + Desync_Pos_Y:Get(), 77, 3, Color.new(220 / 255, 220 / 255, 220/255, 100/255), Color.new(0, 0, 0, 0))--上
        gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + Desync_Pos_Y:Get(), 22, 37, Color.new(220 / 255, 220 / 255, 220/255, 100/255), Color.new(0, 0, 0, 0))--中
        gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + 34 + Desync_Pos_Y:Get(), 99, 3, Color.new(220 / 255, 220 / 255, 220/255, 100/255), Color.new(0, 0, 0, 0))--下
        gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + 18 + Desync_Pos_Y:Get(), 203, 2, Color.new(0,0,0,0), Desync_Info_Col_middle:GetColor())--開槍閃爍
        shots = 0
    elseif shots == 0 then 
        gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + Desync_Pos_Y:Get(), 77, 3, Color.new(220 / 255, 220 / 255, 220/255, 111/255), Color.new(0, 0, 0, 0))--上
        gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + Desync_Pos_Y:Get(), 11, 37, Color.new(220 / 255, 220 / 255, 220/255, 111/255), Color.new(0, 0, 0, 0))--中
        gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + 34 + Desync_Pos_Y:Get(), 99, 3, Color.new(220 / 255, 220 / 255, 220/255, 111/255), Color.new(0, 0, 0, 0))--下
        gradient(0 + Desync_Pos_X:Get(), (screen.y/2) + 18 + Desync_Pos_Y:Get(), (fake_fraction / 60) * 203, 2, Color.new(0,0,0,0), Desync_Info_Col_middle:GetColor())--假身
    end
    --gradient(205, (screen.y/2) + 18, 1, 37, Desync_Info_Col_middle:GetColor(), Color.new(0,0,0,1))--右
    Render.Text("DESYNC: ", Vector2.new(7 + Desync_Pos_X:Get(), (screen.y/2) + 5 + Desync_Pos_Y:Get()), Desync_Col_Text:GetColor(), 12, Desync_Text_Outline:Get())
    Render.Text(string.format('%1.f°    ', fake_fraction), Vector2.new(57 + Desync_Pos_X:Get(), (screen.y/2) + 5 + Desync_Pos_Y:Get()), Desync_Col_Text:GetColor(), 12, Desync_Text_Outline:Get())
    Render.Text(string.format('BananaYaw %s | %s', LuaVersion,username), Vector2.new(7 + Desync_Pos_X:Get(), (screen.y/2) + 20 + Desync_Pos_Y:Get()), Desync_Col_Text:GetColor(), 12, Desync_Text_Outline:Get())
end

local text_size = 0
local fps = 0
local Timer_nowtime = 0
local Timer_StartTime = 0
local function WaterMark_Indicator()
    Timer_nowtime = Timer_nowtime + 1
    if (Timer_nowtime - Timer_StartTime) >= 20 then
        Timer_StartTime = Timer_nowtime
        fps = get_abs_fps()
    end
    local ping = 0
    local ticks = math.floor(1.0 / GlobalVars.interval_per_tick)
    local username = Cheat.GetCheatUserName()
    local var = screen.x - text_size - 30
    local text = ""
    local x, y, w, h = var - 5 , 10,  text_size + 15, 17
    local wide = Render.CalcTextSize(text, 12)
    local latency = 0
    local ip = ""
    -- WaterMark_Col_Top,WaterMark_Col_bottom
    gradient(x,y + 2, text_size + 10, h, WaterMark_Col_Left_Background:GetColor(), WaterMark_Col_Right_Background:GetColor()) -- 灰層
    gradient(x, y, text_size + 10, h - 15, WaterMark_Col_Top:GetColor(), WaterMark_Col_Top_Right:GetColor())--上
    Render.GradientBoxFilled(Vector2.new(x,y + 2), Vector2.new(x + 4,y + h + 2), WaterMark_Col_LeftFill:GetColor(), WaterMark_Col_LeftFill:GetColor(), WaterMark_Col_LeftFill:GetColor(), WaterMark_Col_LeftFill:GetColor())--左柱
    
    if EngineClient.IsConnected() then
        text = " BananaYaw"
        Render.Text(text, Vector2.new(var,14), WaterMark_Col_Text:GetColor(), 12, WaterMark_Text_Outline:Get())
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
        -------------------------------------------------------
        text =  " | " .. username
        Render.Text(text, Vector2.new(var,14), WaterMark_Col_Text:GetColor(), 12, WaterMark_Text_Outline:Get())
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
        -------------------------------------------------------    
        if EngineClient.GetNetChannelInfo() == nil then
            ip = "None"
        else
            ip =  EngineClient.GetNetChannelInfo():GetAddress()
        end
        text = " | " .. ip
        Render.Text(text, Vector2.new(var, 14), WaterMark_Col_Text:GetColor(), 12)
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
        -------------------------------------------------------    
        if  EngineClient.GetNetChannelInfo() == nil then
        else
            latency =  EngineClient.GetNetChannelInfo():GetLatency(0)
            ping = string.format("%1.f", math.max(0.0, latency) * 1000.0)
        end
        text = " | delay: ".. ping .."ms"
        Render.Text(text, Vector2.new(var,14), WaterMark_Col_Text:GetColor(), 12, WaterMark_Text_Outline:Get())
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
        -------------------------------------------------------    
        text = " | " .. ticks .. "tick"
        Render.Text(text, Vector2.new(var,14), WaterMark_Col_Text:GetColor(), 12, WaterMark_Text_Outline:Get())
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
        -------------------------------------------------------   
        text = " | " .. fps .. "fps "
        Render.Text(text, Vector2.new(var,14), WaterMark_Col_Text:GetColor(), 12, WaterMark_Text_Outline:Get())
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
        -------------------------------------------------------    
    else
        text = " HSYaw"
        Render.Text(text, Vector2.new(var,14), WaterMark_Col_Text:GetColor(), 12, WaterMark_Text_Outline:Get())
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
        -------------------------------------------------------    
        text =  " | " .. username
        Render.Text(text, Vector2.new(var,14), WaterMark_Col_Text:GetColor(), 12, WaterMark_Text_Outline:Get())
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
        -------------------------------------------------------    
        text = " | " .. fps .. "fps "
        Render.Text(text, Vector2.new(var,14), WaterMark_Col_Text:GetColor(), 12, WaterMark_Text_Outline:Get())
        wide = Render.CalcTextSize(text, 12)
        var = var + wide.x
    end
    text_size = var - (screen.x - text_size - 35)
end

local refk_DT = Menu.FindVar("Aimbot", "Ragebot", "Exploits", "Double Tap") -- bool
local refk_HS = Menu.FindVar("Aimbot", "Ragebot", "Exploits", "Hide Shots") -- bool

local function Get_Number_of_bullets(weap)
    local weapon_id = weap:GetWeaponID()
    if weap:IsGun() == false or weapon_id == 31 then
        return 0
    end
    if weapon_id == 40 or weapon_id == 64 then
        return 1
    end
    return 2
end

local function DoubleTap_Indicator()
    local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    local weapon_id = GetHandWeaponID()
    
    local DT_ModeStr = "None"
    if refk_DT:Get() == true then
        DT_ModeStr = "Double Tap"
    end
    
    if refk_HS:Get() == true and refk_DT:Get() == false then
        DT_ModeStr = "Hide Shots"
    end
    
    
    gradient(3 + DT_Pos_X:Get(), (screen.y/2) - 76 + DT_Pos_Y:Get(), 200, 15, Color.new(20 / 255, 20 / 255, 20 / 255, 177 / 255), Color.new(0, 0, 0, 33 / 255)) --上灰層
    gradient(3 + DT_Pos_X:Get(), (screen.y/2) - 60 + DT_Pos_Y:Get(), 200, 15, Color.new(20 / 255, 20 / 255, 20 / 255, 177 / 255), Color.new(0, 0, 0, 33 / 255)) --下灰層
    
    gradient(0 + DT_Pos_X:Get(), (screen.y/2) - 61 + DT_Pos_Y:Get(), 203, 2, Color.new(DoubleTap_Info_Col_middle:GetColor().r, DoubleTap_Info_Col_middle:GetColor().g, DoubleTap_Info_Col_middle:GetColor().b, 0), Color.new(DoubleTap_Info_Col_middle:GetColor().r, DoubleTap_Info_Col_middle:GetColor().g, DoubleTap_Info_Col_middle:GetColor().b, Exploits.GetCharge()))
    
    gradient(0 + DT_Pos_X:Get(), (screen.y/2) - 78 + DT_Pos_Y:Get(), 49, 3, DoubleTap_Info_Col_Top:GetColor(), Color.new(DoubleTap_Info_Col_Top:GetColor().r, DoubleTap_Info_Col_Top:GetColor().g, DoubleTap_Info_Col_Top:GetColor().b, 0)) --上
    gradient2(0 + DT_Pos_X:Get(), (screen.y/2) - 78 + DT_Pos_Y:Get(), 3, 37, DoubleTap_Info_Col_Top:GetColor(), DoubleTap_Info_Col_bottom:GetColor()) --中
    gradient(0 + DT_Pos_X:Get(), (screen.y/2) - 44 + DT_Pos_Y:Get(), 99, 3, DoubleTap_Info_Col_bottom:GetColor(), Color.new(DoubleTap_Info_Col_bottom:GetColor().r, DoubleTap_Info_Col_bottom:GetColor().g, DoubleTap_Info_Col_bottom:GetColor().b, 0)) --下
    
    gradient(0 + DT_Pos_X:Get(), (screen.y/2) - 78 + DT_Pos_Y:Get(), 77, 3, Color.new(220 / 255, 220 / 255, 220/255, 20/255), Color.new(220 / 255, 220 / 255, 220/255, 0))--上
    gradient2(0 + DT_Pos_X:Get(), (screen.y/2) - 78 + DT_Pos_Y:Get(), 3, 37, Color.new(220 / 255, 220 / 255, 220/255, 20/255), Color.new(220 / 255, 220 / 255, 220/255, 0))--中
    gradient(0 + DT_Pos_X:Get(), (screen.y/2) - 44 + DT_Pos_Y:Get(), 99, 3, Color.new(220 / 255, 220 / 255, 220/255, 20/255), Color.new(220 / 255, 220 / 255, 220/255, 0))--下
    
    Render.Text(string.format("Exploits Mode : [%s]",DT_ModeStr), Vector2.new(7 + DT_Pos_X:Get(), (screen.y/2) - 74 + DT_Pos_Y:Get()), DoubleTap_Col_Text:GetColor(), 12,DoubleTap_Text_Outline:Get())
    if weapon_id ~= 0 then
        Render.WeaponIcon(weapon_id, Vector2.new(7 + DT_Pos_X:Get(), (screen.y/2) - 60 + DT_Pos_Y:Get()), Color.new(1.0, 1.0, 1.0), 15)
    else
        Render.WeaponIcon(508, Vector2.new(7 + DT_Pos_X:Get(), (screen.y/2) - 60 + DT_Pos_Y:Get()), Color.new(1.0, 1.0, 1.0), 15)
    end
    
    if DT_ModeStr == "Double Tap" then
        if weapon_id ~= 0 then
            local player = me:GetPlayer()
            local weapon = player:GetActiveWeapon()
            for i = 1,Get_Number_of_bullets(weapon) do
                local num = i - 1
                Render.WeaponIcon(46, Vector2.new((55 + (5 * num) + DT_Pos_X:Get()), (screen.y/2) - 60 + DT_Pos_Y:Get()), Color.new(1.0, 1.0, 1.0,Exploits.GetCharge()), 16)
            end
        else
        end
    end
    
    local ChargeStatus = "None"
    if Exploits.GetCharge() == 1 then
        ChargeStatus = "Done"
    end
    Render.Text(string.format("Charge: %s",ChargeStatus), Vector2.new(125 + DT_Pos_X:Get(), (screen.y/2) - 58 + DT_Pos_Y:Get()), DoubleTap_Col_Text:GetColor(), 12,DoubleTap_Text_Outline:Get())
    --g_Render.WeaponIcon(46, Vector2.new(55, (screen.y/2) - 60), Color.new(1.0, 1.0, 1.0), 15)
    --g_Render.WeaponIcon(46, Vector2.new((55 + (5 * 2)), (screen.y/2) - 60), Color.new(1.0, 1.0, 1.0), 15)
    
end
local Desync_drag = false
local DT_drag = false
local FL_drag = false
local drag_X = 0
local drag_Y = 0
local function move_painted_ui()
    local mouse_pressed = Cheat.IsKeyDown(0x1)
    local mouse_pos = Cheat.GetMousePos()
    ----Desync Mouse event
    if mouse_pressed == false and Desync_drag == true then
        Desync_drag = false
    end
    if mouse_pressed == true and Desync_drag == true then
        Desync_Pos_X:Set(mouse_pos.x - drag_X)
        Desync_Pos_Y:Set(mouse_pos.y - drag_Y)
    end
    if(mouse_pos.x > Desync_Pos_X:Get()) and (mouse_pos.x < Desync_Pos_X:Get() + 200) and (mouse_pos.y > (screen.y/2) + Desync_Pos_Y:Get()) and (mouse_pos.y < (screen.y/2) + 39 + Desync_Pos_Y:Get()) then
        Desync_drag = true
        drag_X = mouse_pos.x - Desync_Pos_X:Get()
        drag_Y = mouse_pos.y - Desync_Pos_Y:Get()	
    end
    ----DoubleTap Mouse event
    if mouse_pressed == false and DT_drag == true then
        DT_drag = false
    end
    if mouse_pressed == true and DT_drag == true then
        DT_Pos_X:Set(mouse_pos.x - drag_X)
        DT_Pos_Y:Set(mouse_pos.y - drag_Y)
    end
    if(mouse_pos.x > DT_Pos_X:Get()) and (mouse_pos.x < DT_Pos_X:Get() + 200) and (mouse_pos.y > (screen.y/2) - 78 + DT_Pos_Y:Get()) and (mouse_pos.y < (screen.y/2) - 50 + DT_Pos_Y:Get()) then
        DT_drag = true
        drag_X = mouse_pos.x - DT_Pos_X:Get()
        drag_Y = mouse_pos.y - DT_Pos_Y:Get()	
    end
    ----FAKELAG Mouse event
    if mouse_pressed == false and FL_drag == true then
        FL_drag = false
    end
    if mouse_pressed == true and FL_drag == true then
        FL_Pos_X:Set(mouse_pos.x - drag_X)
        FL_Pos_Y:Set(mouse_pos.y - drag_Y)
    end
    if(mouse_pos.x > FL_Pos_X:Get()) and (mouse_pos.x < FL_Pos_X:Get() + 200) and (mouse_pos.y > (screen.y/2) - 39 + FL_Pos_Y:Get()) and (mouse_pos.y < (screen.y/2) + FL_Pos_Y:Get()) then
        FL_drag = true
        drag_X = mouse_pos.x - FL_Pos_X:Get()
        drag_Y = mouse_pos.y - FL_Pos_Y:Get()	
    end
end
------------------------------------------RegisterCallback----------------------------------------------------

local function mod(a, b)
    return a - math.floor(a/b)*b
end
local Restore_ClanTag = Menu.FindVar("Miscellaneous", "Main", "Spammers", "Clantag")
local Closed_ClanTag = false
local ClanTag_Running = false
local function DoClanTag()
    if ClanTag_Enable:Get() == true then
        
        if Restore_ClanTag:Get() == true then
            Restore_ClanTag:Set(false)
            Closed_ClanTag = true
        end
        
        if EngineClient.IsConnected() then
            local netchann_info = EngineClient.GetNetChannelInfo()
            if netchann_info == nil then 
                return
            end
            
            local raw_latency = netchann_info:GetLatency(0)
            local latency = raw_latency / GlobalVars.interval_per_tick
            local tickcount_pred = GlobalVars.tickcount + latency
            local iter = math.floor(mod(tickcount_pred / 15.5, #tag_str))
            
            if iter ~= last_tag_iter then 
                ClanTag_Running = true
                local tag = tag_str[iter]
                set_clantag(tag, tag)
                last_tag_iter = iter
            end
        end
    else
        if ClanTag_Running == true then
            EngineClient.ExecuteClientCmd("cl_clanid 0")
        end
    end
end

local function onCreateMove(C_UserCmd)
    local me = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
    if me == nil then -- Fix Crash ?_? idk retarded
        return
    end
    CalcDesync()
    setup_command(C_UserCmd)
    HSYawThread(C_UserCmd)
    DoubleTapThread(C_UserCmd)
    if FakeLagEnable:Get() == true then
        FakeLagThread(C_UserCmd)
    end
    E_PeekOnCreateMove(C_UserCmd)
    WeaponFired = false
end

local function events(event)
    HSYawEvents(event)
    DoubleTapEvents(event)
    E_PeekOnEvents(event)
end

local function prediction(C_UserCmd)
end

local function ragebot_shot(ragebot_shot)
    WeaponFired = true
    shots = shots + 1
    aim_shot()
    DoubleTap_Ragebot_Shot(ragebot_shot)
end

local function registered_shot(registered_shot)
    WeaponFired = false
end

local function onPanel()
    EdgeYaw_Thread()
    if FakeLag_Indica:Get() == true then
        FakeLag_Indicator()
    end
    
    if Desync_Indica:Get() == true then
        Desync_Indicator()
    end
    
    if WaterMark_Enable:Get() == true then
        WaterMark_Indicator()
    end
    
    if DoubleTap_Indica:Get() == true then
        DoubleTap_Indicator()
    end
    FakeLagOnDraw()
    E_PeekOnDraw()
    if Cheat.IsMenuVisible() == true then
        move_painted_ui()
    end
    DoClanTag()
end


local function destroy()
    WeaponFired = false
    EngineClient.ExecuteClientCmd('bind e +use')
    DoRandomAA()
    if Closed_ClanTag == true then
        EngineClient.ExecuteClientCmd("cl_clanid 0")
    end
end

Cheat.RegisterCallback("draw", register_draw)
Cheat.RegisterCallback("createmove", onCreateMove)
Cheat.RegisterCallback("events", events)
Cheat.RegisterCallback("ragebot_shot", ragebot_shot)
Cheat.RegisterCallback("registered_shot", registered_shot)
Cheat.RegisterCallback("draw", onPanel)
Cheat.RegisterCallback("prediction", prediction)
Cheat.RegisterCallback("destroy", destroy)
