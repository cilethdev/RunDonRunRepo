/// @description Insert description here
// You can write your code in this editor
//camera
instance_create_layer(0,0,"Instances",cont_camera);
#region //Movement Vars
vx = 0;
vxMax = 4;
vy = 0;
vyMax = 10;
jspd = 9;
grav = 0.4;
acc = 0.1;
fric = 0.5;
airAcc = 0.5;
airFric = 0.1;
jNum = 0;

IDLE = 0;
RUN = 1;
JUMP = 2;
PUSH = 3;
HOVERBOARD = 4;
DEATH = 5;

state = RUN;

onGround = OnGround();
landed = false;
bounce = false;
inSand = false;
#endregion

#region // Visuals
outfit = 0;
sprites[0,0] = spr_playerRunUndies;
sprites[0,1] = spr_playerJumpUndies;
sprites[0,2] = spr_playerFallUndies;
sprites[0,3] = spr_playerPushUndies;
sprites[0,4] = spr_playerIdleUndies;
sprites[0,5] = spr_playerHBUndies;
sprites[0,6] = spr_playerHBTUndies;
sprites[0,7] = spr_playerDeathUndies;
sprites[1,0] = spr_playerRunJeans;
sprites[1,1] = spr_playerJumpJeans;
sprites[1,2] = spr_playerFallJeans;
sprites[1,3] = spr_playerPushJeans;
sprites[1,4] = spr_playerIdleJeans;
sprites[1,5] = spr_playerHBJeans;
sprites[1,6] = spr_playerHBTJeans;
facing = 1;
xscale = 1;
yscale = 1;
partT = 0;
runPart = false;
flash = 0;
flashT = 0;

//SFX
deathSound = false;

#endregion

#region powerups
powerUpT = 0;
armor = 0;
cantHit = 0;
#endregion