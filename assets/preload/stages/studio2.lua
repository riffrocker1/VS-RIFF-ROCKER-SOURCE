function onCreate()
	-- background shit
	makeLuaSprite('bg', 'riff/studio/bg', -600, -300);
	setScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('roof', 'riff/studio/roof', -840, -330);
	setScrollFactor('roof', 0.9, 0.9);
	scaleObject('roof', 1.1, 1.1);
	
	makeLuaSprite('walls', 'riff/studio/walls', -600, -300);
	setScrollFactor('walls', 0.9, 0.9);
	
	makeLuaSprite('door', 'riff/studio/door', -600, 100);
	setScrollFactor('door', 0.9, 0.9);
	
	-- outrage stuff
	makeLuaSprite('outrage-bg', 'riff/studio/outrage/bg', -600, 200);
	setScrollFactor('outrage-bg', 0.9, 0.9);
	setProperty('outrage-bg.visible', false);	
	
	makeLuaSprite('fire-wall1', 'riff/studio/outrage/wall1', 1120, 100);
	setScrollFactor('fire-wall1', 0.9, 0.9);
	setProperty('fire-wall1.visible', false);	
	
	makeLuaSprite('fire-wall2', 'riff/studio/outrage/wall2', -600, 100);
	setScrollFactor('fire-wall2', 0.9, 0.9);
	setProperty('fire-wall2.visible', false);

	makeLuaSprite('house1', 'riff/studio/outrage/house1', 800, 50);
	setScrollFactor('house1', 0.9, 0.9);
	scaleObject('house1', 0.5, 0.4);
	setProperty('house1.visible', false);
	
	makeLuaSprite('house2', 'riff/studio/outrage/house2', 1020, 80);
	setScrollFactor('house2', 0.9, 0.9);
	scaleObject('house2', 0.9, 0.9);
	setProperty('house2.visible', false);
	
	makeLuaSprite('house3', 'riff/studio/outrage/house3', 200, 80);
	setScrollFactor('house3', 0.9, 0.9);
	scaleObject('house3', 0.4, 0.4);
	setProperty('house3.visible', false);
	
	makeLuaSprite('skybox', 'riff/studio/outrage/skybox', 0, 0);
	setScrollFactor('skybox', 0.9, 0.9);
	scaleObject('skybox', 1.1, 1.1);
	setProperty('skybox.visible', false);
	
	makeLuaSprite('bgbush', 'riff/studio/outrage/bush-back', 10, 390);
	setScrollFactor('bgbush', 0.9, 0.9);
	scaleObject('bgbush', 0.5, 0.5);
	setProperty('bgbush.visible', false);
	
	makeLuaSprite('bush', 'riff/studio/outrage/bush', 10, 340);
	setScrollFactor('bush', 0.9, 0.9);
	scaleObject('bush', 0.5, 0.5);
	setProperty('bush.visible', false);
	
	makeLuaSprite('storm-cloud', 'riff/studio/outrage/storm_cloud', -600, -700);
	setScrollFactor('storm-cloud', 0.9, 0.9);
	scaleObject('storm-cloud', 1.1, 1.1);
	setProperty('storm-cloud.visible', false);


	addLuaSprite('bg', false);
	addLuaSprite('roof', false);
	addLuaSprite('walls', false);
	addLuaSprite('walls2', false);
	addLuaSprite('door', false);
	
	-- outrage stuff
	addLuaSprite('skybox', false);
	addLuaSprite('storm-cloud', false);
	addLuaSprite('house2', false);
	addLuaSprite('house1', false);
	addLuaSprite('house3', false);
	addLuaSprite('bgbush', false);
	addLuaSprite('bush', false);
	addLuaSprite('outrage-bg', false);
	addLuaSprite('fire-wall1', false);
	addLuaSprite('fire-wall2', false);
	
--	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onEvent(name,value1,value2)
	if name == 'Switch Dumb Stage' then 
		
		if value1 == '2' then
			setProperty('bg.visible', false);
			setProperty('roof.visible', false);
			setProperty('walls.visible', false);
			setProperty('door.visible', false);
			setProperty('outrage-bg.visible', true);
			setProperty('fire-wall1.visible', true);
			setProperty('fire-wall2.visible', true);
			setProperty('house1.visible', true);
			setProperty('house2.visible', true);
			setProperty('house3.visible', true);
			setProperty('skybox.visible', true);
			setProperty('bgbush.visible', true);
			setProperty('bush.visible', true);
			setProperty('storm-cloud.visible', true);
		end

		if value1 == '1' then
			setProperty('bg.visible', true);
			setProperty('roof.visible', true);
			setProperty('walls.visible', true);
			setProperty('door.visible', true);
			setProperty('outrage-bg.visible', false);
			setProperty('fire-wall1.visible', false);
			setProperty('fire-wall2.visible', false);
			setProperty('house1.visible', false);
			setProperty('house2.visible', false);
			setProperty('house3.visible', false);
			setProperty('skybox.visible', false);
			setProperty('bgbush.visible', false);
			setProperty('bush.visible', false);
			setProperty('storm-cloud.visible', false);
		end
	end
end