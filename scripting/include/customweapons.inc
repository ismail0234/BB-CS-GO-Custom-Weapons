/** Double-include prevention */
#if defined _customweapons_included_
  #endinput
#endif
#define _customweapons_included_

/**
 *
 * Özel silah kaydı yapmak için kullanılır.
 *
 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
 *
 */
methodmap CustomWeapon < ArrayList
{
	/**
	 *
	 * Sınıfı başlatır.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native CustomWeapon(char[] weapon);

	/**
	 *
	 * Silahın özel kodunu değiştirir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetCode(char[] weapon);

	/**
	 *
	 * Silahın adını değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetName(char[] name);

	/**
	 *
	 * Silahın ebeveyn silahını değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetParentWeapon(char[] weapon);

	/**
	 *
	 * Silahın seslerini ekler.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void AddSound(char[] sound);

	/**
	 *
	 * Silahın Görünüm modelini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetViewModel(char[] viewModel);

	/**
	 *
	 * Silahın dünya modelini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetWorldModel(char[] worldModel);

	/**
	 *
	 * Silahın düşme modelini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetDroppedModel(char[] droppedModel);

	/**
	 *
	 * Silahın varsayılan cephane değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetDefaultAmmo(int leftAmmo, int rightAmmo, int rightAmmoMax);

	/**
	 *
	 * Silahın dürbün zoom seviyesini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetMaxZoomLevel(int level);

	/**
	 *
	 * Silahın Çekme animasyonunu değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetAnimationDraw(int sequence, float time);

	/**
	 *
	 * Silahın jarjör değiştirme animasyonunu değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetAnimationReload(int sequence, float time);

	/**
	 *
	 * Silahın birincil saldırı animasyonunu değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native void SetAnimationPrimaryAttack(int sequence1, int sequence2, float time);

	/**
	 *
	 * Silahın kaydını tamamlar.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public native int Register();
}
