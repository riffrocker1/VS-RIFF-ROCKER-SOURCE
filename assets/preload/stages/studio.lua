function onCreate()
	-- background shit
	makeLuaSprite('bg', 'riff/studio/bg', -600, -300);
	setScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('roof', 'riff/studio/roof', -840, -330);
	setScrollFactor('roof', 0.9, 0.9);
	scaleObject('roof', 1.1, 1.1);
	
	makeLuaSprite('wall', 'riff/studio/walls', 1120, -300);
	setScrollFactor('wall', 0.9, 0.9);

	makeLuaSprite('wall2', 'riff/studio/walls', -600, -300);
	setScrollFactor('wall2', 0.9, 0.9);
	
	makeLuaSprite('door', 'riff/studio/door', -600, 100);
	setScrollFactor('door', 0.9, 0.9);

	addLuaSprite('bg', false);
	addLuaSprite('roof', false);
	addLuaSprite('wall', false);
	addLuaSprite('wall2', false);
	addLuaSprite('door', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end