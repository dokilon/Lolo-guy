function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -360, -250);
	setLuaSpriteScrollFactor('stageback', 0.20, 0.20);
	
	makeLuaSprite('stagefront', '', -360, -250);
	setLuaSpriteScrollFactor('stagefront', 0.8, 0.8);

        makeLuaSprite('stagefront2', 'stagefront', -0, 800);
	setLuaSpriteScrollFactor('stagefront', 0.6, 0.6);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagefront1', false);
	addLuaSprite('stagefront2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end