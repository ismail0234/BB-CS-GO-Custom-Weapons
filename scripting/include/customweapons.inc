/** Double-include prevention */
#if defined _customweapons_included_
  #endinput
#endif
#define _customweapons_included_

/**
 *
 * Silah modellerini ekler.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native void CS_RegisterWeapon(char[] name, char[] weapon, char[] viewModel, char[] worldModel, char[] droppedModel);

/**
 *
 * Silahın ebeveyn modelini değiştirir.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native void CS_SetParentWeapon(char[] weapon, char[] parentweapon);

/**
 *
 * Silah seslerini ekler.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native bool CS_RegisterWeaponSound(char[] sound);

/**
 *
 * Silahın varsayılan cephanelerini ayarlar.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native bool CS_SetWeaponDefaultAmmo(char[] weapon, int leftAmmo, int rightAmmo, int rightAmmoMax);

/**
 *
 * Silahın saldırı animasyonunu değiştirir
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native bool CS_SetWeaponAnimationAttack(char[] weapon, int sequenceId, int sequenceId2, float time);

/**
 *
 * Silahın jarjör değiştirme animasyonunu değiştirir
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native bool CS_SetWeaponAnimationReload(char[] weapon, int sequenceId, float time);

/**
 *
 * Silahın inceleme animasyonunu ayarlar.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native bool CS_SetWeaponAnimationLAW(char[] weapon, int sequenceId, float time);

/**
 *
 * Silahın açılma animasyonunu değiştirir
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native bool CS_SetWeaponAnimationDraw(char[] weapon, int sequenceId, float time);

/**
 *
 * Silahın max zoom seviyesini ayarlar
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native bool CS_SetWeaponMaxZoom(char[] weapon, int maxzoom);

/**
 *
 * Oyuncuya özel silah verir.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
native int CS_GivePlayerItem(int client, char[] weapon);

/**
 *
 * Özel silahların birincil ateş kancası.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
forward void CS_OnWeaponPrimaryAttack(int client, int weaponId, int weaponIndex, float time, int leftAmmo);
