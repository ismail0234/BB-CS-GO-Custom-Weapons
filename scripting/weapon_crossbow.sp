#pragma semicolon 1
#pragma tabsize 0
#pragma newdecls required

#include <sourcemod>
#include <sdktools> 
#include <sdkhooks> 
#include <cstrike> 
#include <customweapons>

public Plugin myinfo = 
{
	name        = "CrossBow For CSGO",
	author      = "BOT Benson",
	description = "BOT Benson",
	version     = "v1.0",
	url         = "https://www.botbenson.com"
};

#define WEAPON_NAME "Crossbow"

#define WEAPON_VIEW_MODEL    "models/weapons/eminem/advanced_crossbow/v_advanced_crossbow.mdl"
#define WEAPON_WORLD_MODEL   "models/weapons/eminem/advanced_crossbow/w_advanced_crossbow.mdl"
#define WEAPON_DROPPED_MODEL "models/weapons/eminem/advanced_crossbow/w_advanced_crossbow_dropped.mdl"
#define WEAPON_BULLET_MODEL  "models/weapons/eminem/advanced_crossbow/w_crossbow_bolt_dropped.mdl"

#define WEAPON_MAX_ZOOM 2

#define WEAPON_AMMO_LEFT      5
#define WEAPON_AMMO_RIGHT     15
#define WEAPON_AMMO_RIGHT_MAX 30

#define WEAPON_ANIMATION_DRAW_SEQUENCE 5
#define WEAPON_ANIMATION_DRAW_SEQUENCE_TIME 1.1

#define WEAPON_ANIMATION_ATTACK_1_SEQUENCE 1
#define WEAPON_ANIMATION_ATTACK_2_SEQUENCE 2
#define WEAPON_ANIMATION_ATTACK_SEQUENCE_TIME 1.0

#define WEAPON_ANIMATION_RELOAD_SEQUENCE 4
#define WEAPON_ANIMATION_RELOAD_SEQUENCE_TIME 2.9

/**
 *
 * Eklenti başlatıldığında tetiklenir.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
public void OnPluginStart()
{
    	CustomWeapon weapon = new CustomWeapon("weapon_crossbow");
    	weapon.SetName(WEAPON_NAME);
    	weapon.SetViewModel(WEAPON_VIEW_MODEL);
    	weapon.SetWorldModel(WEAPON_WORLD_MODEL);
    	weapon.SetDroppedModel(WEAPON_DROPPED_MODEL);
    	weapon.SetBulletModel(WEAPON_BULLET_MODEL);

        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbow_foley1.wav");
        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbow_foley2.wav");
        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbow_foley3.wav");
        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbow_foley4.wav");
        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbowex_draw.wav");
        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbow-1.wav");
        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbow_explode3.wav");
        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbow_explode4.wav");
        weapon.AddSound("weapons/eminem/advanced_crossbow/crossbow_explode5.wav");

	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbowex_v.vtf");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbowex_v_normal.vtf");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/hand.vmt");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/hand.vtf");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/hand_normal.vtf");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbow_bolt.vmt");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbow_bolt.vtf");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbow_bolt_normal.vtf");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbowex_p.vmt");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbowex_p.vtf");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbowex_p_normal.vtf");
	weapon.AddMaterial("materials/models/weapons/eminem/advanced_crossbow/crossbowex_v.vmt");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/v_advanced_crossbow.dx90.vtx");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/v_advanced_crossbow.mdl");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/v_advanced_crossbow.vvd");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_advanced_crossbow.dx90.vtx");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_advanced_crossbow.mdl");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_advanced_crossbow.vvd");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_advanced_crossbow_dropped.dx90.vtx");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_advanced_crossbow_dropped.mdl");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_advanced_crossbow_dropped.phy");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_advanced_crossbow_dropped.vvd");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_crossbow_bolt_dropped.dx90.vtx");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_crossbow_bolt_dropped.mdl");
	weapon.AddMaterial("models/weapons/eminem/advanced_crossbow/w_crossbow_bolt_dropped.vvd");

        weapon.SetParentWeapon("weapon_awp");
        weapon.SetDefaultAmmo(WEAPON_AMMO_LEFT, WEAPON_AMMO_RIGHT, WEAPON_AMMO_RIGHT_MAX);
        weapon.SetMaxZoomLevel(WEAPON_MAX_ZOOM);

        weapon.SetAnimationDraw(WEAPON_ANIMATION_DRAW_SEQUENCE, WEAPON_ANIMATION_DRAW_SEQUENCE_TIME);
        weapon.SetAnimationPrimaryAttack(WEAPON_ANIMATION_ATTACK_1_SEQUENCE, WEAPON_ANIMATION_ATTACK_2_SEQUENCE, WEAPON_ANIMATION_ATTACK_SEQUENCE_TIME);
        weapon.SetAnimationReload(WEAPON_ANIMATION_RELOAD_SEQUENCE, WEAPON_ANIMATION_RELOAD_SEQUENCE_TIME);

        weapon.Register();
}

/**
 *
 * Özel silahların birincil ateş kancası.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
public void CS_OnWeaponPrimaryAttack(int client, int weaponId, int weaponIndex, float time, int leftAmmo)
{
    	Bullet bullet = new Bullet();
    	bullet.SetOwner(client);
    	bullet.SetModel("models/weapons/eminem/advanced_crossbow/w_crossbow_bolt_dropped.mdl");
    	bullet.SetSpeed(2500.0);
    	int bulletId = bullet.Create();
    	bullet.Fire();

	EmitSoundToAll("weapons/eminem/advanced_crossbow/crossbow-1.wav", bulletId);
	SDKHook(bulletId, SDKHook_StartTouch, Hook_CrossBowTouch);
}

/**
 *
 * Mermiyi patlatır
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
public Action Hook_CrossBowTouch(int entity, int target)
{
    if (IsValidEdict(target))
    {

        int attacker = GetEntPropEnt(entity, Prop_Data, "m_hThrower");

        static float origin[3];
        GetEntPropVector(entity, Prop_Data, "m_vecAbsOrigin", origin);

        Explosion explosion = new Explosion();
        explosion.SetOrigin(origin);
        explosion.SetOwner(attacker);
        explosion.SetWeapon("weapon_crossbow");
        explosion.SetDefaultSound(false);
        explosion.SetDamage(75);
        explosion.SetRadius(225);
        explosion.Fire();

		
	char sound[155];
     	FormatEx(sound, sizeof sound, "weapons/eminem/advanced_crossbow/crossbow_explode%d.wav", GetRandomInt(3, 5));
	EmitAmbientSound(sound, origin);

        RequestFrame(RemoveEntityById, entity);
    }

    return Plugin_Continue;
}
