local players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local event = ReplicatedStorage:WaitForChild("events")

local v1 = {};
local l__ReplicatedStorage__2 = game.ReplicatedStorage;
local v3 = require(game.ReplicatedStorage.Lightning);
--local v4 = require(game.ReplicatedStorage.Modules.Xeno);
local l__TweenService__5 = game.TweenService;
local l__Debris__6 = game.Debris;
local camshaker = require(game.ReplicatedStorage.CameraShaker);

event:FindFirstChild("Announce").OnServerEvent:Connect(function(one,two)
	local TonkaBell = game.ReplicatedStorage["Purple Tonka"].Bell:Clone();
	TonkaBell.coolsound:Play()
	TonkaBell.Parent = workspace
	l__Debris__6:AddItem(TonkaBell, 13.5)
	--local v8 = TonkaBell.AnimationController:LoadAnimation(TonkaBell.Animation);
	--v8:Play(0.1, 1, 1);
	local u2 = nil;
		task.delay(0.45, function()
			TonkaBell.VFX.Attachment.Glow.Enabled = true;
			
			local Valueone = 0;
			local ValueTwo = nil;
			
				Valueone = Valueone + 1;
				for getting = 1, 8 do
					local Color = game.ReplicatedStorage["Purple Tonka"].ColorCorrection:Clone();
					Color.Parent = game.Lighting;
					game.TweenService:Create(Color, TweenInfo.new(1), {
						TintColor = Color3.fromRGB(255, 255, 255), 
						Brightness = 0, 
						Contrast = 0, 
						Saturation = 0
					}):Play();
					game.Debris:AddItem(Color, 1);
				end;
				
				local Cam = camshaker.new(Enum.RenderPriority.Camera.Value, function(p5)
					workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p5;
				end);
				
				Cam:Start();
				
				Cam:Shake(camshaker.Presets.Bump);
				
				local Attatchment = TonkaBell.VFX.Attachment:Clone();
				Attatchment.Parent = workspace.Terrain;
				
				Attatchment.WorldPosition = (TonkaBell.RootPart.Chain.Bell.DingDong.TransformedWorldCFrame * CFrame.new(0, 6, 0)).Position;
				game.Debris:AddItem(Attatchment, 2);
				
				Attatchment.ParticleEmitter.Enabled = true;
				
				task.delay(0.25, function()
					Attatchment.ParticleEmitter.Enabled = false;
				end);
				
				TonkaBell.VFX.Sound.Volume = 2;
				
				task.delay(0.25, function()
					TonkaBell.VFX.Sound.Volume = 1;
				end);
				
				if Valueone == 3 then
					return;
				end;
				
				if Valueone == 5 then
					TonkaBell.VFX.Attachment.Glow.Enabled = false;
					game.TweenService:Create(TonkaBell.VFX.Sound, TweenInfo.new(2, Enum.EasingStyle.Exponential), {
						Volume = 1
					}):Play();
					for y, v in pairs(TonkaBell:GetChildren()) do
						if v:IsA("BasePart") then
							game.TweenService:Create(v, TweenInfo.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {
								Transparency = 1, 
								Reflectance = 0
							}):Play();
						elseif v:IsA("Beam") then
							game.TweenService:Create(v, TweenInfo.new(3, Enum.EasingStyle.Exponential), {
								Width1 = 0, 
								Width0 = 0
							}):Play();
						end;
					end;
					ValueTwo:Disconnect();
				end;
				

			for v15, v16 in pairs(TonkaBell:GetDescendants()) do
				if v16:IsA("BasePart") then
					game.TweenService:Create(v16, TweenInfo.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {
						Transparency = 0
					}):Play();
				elseif v16:IsA("Beam") then
					game.TweenService:Create(v16, TweenInfo.new(3, Enum.EasingStyle.Exponential), {
						Width1 = 50, 
						Width0 = 50
					}):Play();
				end;
			end;
			local u5 = nil;
			local u6 = 0;
			
				if TonkaBell.Parent == nil then
					u5:Disconnect();
				else
					TonkaBell.VFX.CFrame = TonkaBell.RootPart.Chain.Bell.TransformedWorldCFrame * CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(u6), 0, math.rad(u6));
					TonkaBell.VFX1.CFrame = TonkaBell.RootPart.Chain.Bell.TransformedWorldCFrame * CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(-u6), math.rad(-u6), 0);
				end;
				u6 = u6 + 2.5;


	end);
end)
