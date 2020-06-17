methodmap CustomWeapon < ArrayList
{
	/**
	 *
	 * Sınıfı başlatır.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public CustomWeapon()
	{
		ArrayList datas = new ArrayList();
		for(int i = 0; i <= CUSTOM_WEAPON_ANIMATION_PRIMARY_ATTACK_SEQUENCE_TIME; i++)
		{
			datas.Push(0);
		}

		return view_as<CustomWeapon>(datas);
	}
	
	/**
	 *
	 * Sınıfı Siler.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void Dispose()
	{
		delete this;
	}

	/**
	 *
	 * Silahın özel kodunu döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void GetCode(char[] name, int length)
	{
		this.GetString(CUSTOM_WEAPON_CODE, name, length);
	}

	/**
	 *
	 * Silahın özel kodunu değiştirir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetCode(char[] name)
	{
		this.SetString(CUSTOM_WEAPON_CODE, name);
	}

	/**
	 *
	 * Silahın aktifliğini değiştirir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetActive(bool type)
	{
		this.Set(CUSTOM_WEAPON_ACTIVE, type);
	}

	/**
	 *
	 * Silahın aktifliğini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public bool isActive()
	{
		return this.Get(CUSTOM_WEAPON_ACTIVE);
	}

	/**
	 *
	 * Silahın adını değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetName(char[] name)
	{
		this.SetString(CUSTOM_WEAPON_NAME, name);
	}

	/**
	 *
	 * Silahın adını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void GetName(char[] name, int length)
	{
		this.GetString(CUSTOM_WEAPON_NAME, name, length);
	}

	/**
	 *
	 * Silahın ebeveyn silahını değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetParentWeapon(char[] name)
	{
		this.SetString(CUSTOM_WEAPON_PARENT_WEAPON, name);
	}

	/**
	 *
	 * Silahın ebeveyn silahını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void GetParentWeapon(char[] name, int length)
	{
		this.GetString(CUSTOM_WEAPON_PARENT_WEAPON, name, length);
	}

	/**
	 *
	 * Silahın Görünüm modelini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetViewModel(char[] name)
	{
		this.SetString(CUSTOM_WEAPON_VIEW_MODEL, name);
	}

	/**
	 *
	 * Silahın Görünüm modelini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void GetViewModel(char[] name, int length)
	{
		this.GetString(CUSTOM_WEAPON_VIEW_MODEL, name, length);
	}

	/**
	 *
	 * Silahın dünya modelini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetWorldModel(char[] name)
	{
		this.SetString(CUSTOM_WEAPON_WORLD_MODEL, name);
	}

	/**
	 *
	 * Silahın dünya modelini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void GetWorldModel(char[] name, int length)
	{
		this.GetString(CUSTOM_WEAPON_WORLD_MODEL, name, length);
	}

	/**
	 *
	 * Silahın düşme modelini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetDroppedModel(char[] name)
	{
		this.SetString(CUSTOM_WEAPON_DROPPED_MODEL, name);
	}

	/**
	 *
	 * Silahın düşme modelini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void GetDroppedModel(char[] name, int length)
	{
		this.GetString(CUSTOM_WEAPON_DROPPED_MODEL, name, length);
	}

	/**
	 *
	 * Silahın Görünüm model indexini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetViewModelIndex(int viewModelIndex)
	{
		this.Set(CUSTOM_WEAPON_VIEW_MODEL_INDEX, viewModelIndex);
	}

	/**
	 *
	 * Silahın Görünüm model indexini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetViewModelIndex()
	{
		return this.Get(CUSTOM_WEAPON_VIEW_MODEL_INDEX);
	}

	/**
	 *
	 * Silahın dünya model indexini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetWorldModelIndex(int worldModelIndex)
	{
		this.Set(CUSTOM_WEAPON_WORLD_MODEL_INDEX, worldModelIndex);
	}

	/**
	 *
	 * Silahın dünya model indexini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetWorldModelIndex()
	{
		return this.Get(CUSTOM_WEAPON_WORLD_MODEL_INDEX);
	}

	/**
	 *
	 * Silahın düşme modeli indexini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetDroppedModelIndex(int droppedModelIndex)
	{
		this.Set(CUSTOM_WEAPON_DROPPED_MODEL_INDEX, droppedModelIndex);
	}

	/**
	 *
	 * Silahın düşme modeli indexini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetDroppedModelIndex()
	{
		return this.Get(CUSTOM_WEAPON_DROPPED_MODEL_INDEX);
	}


	/**
	 *
	 * Silahın varsayılan cephane değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetDefaultAmmo(int leftAmmo, int rightAmmo, int rightAmmoMax)
	{
		this.Set(CUSTOM_WEAPON_LEFT_AMMO, leftAmmo);
		this.Set(CUSTOM_WEAPON_RIGHT_AMMO, rightAmmo);
		this.Set(CUSTOM_WEAPON_RIGHT_AMMO_MAX, rightAmmoMax);
	}

	/**
	 *
	 * Silahın varsayılan sol cephanesini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetDefaultLeftAmmo()
	{
		return this.Get(CUSTOM_WEAPON_LEFT_AMMO);
	}

	/**
	 *
	 * Silahın varsayılan sağ cephanesini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetDefaultRightAmmo()
	{
		return this.Get(CUSTOM_WEAPON_RIGHT_AMMO);
	}

	/**
	 *
	 * Silahın varsayılan sol max cephanesini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetDefaultRightAmmoMax()
	{
		return this.Get(CUSTOM_WEAPON_RIGHT_AMMO_MAX);
	}

	/**
	 *
	 * Silahın dürbün zoom seviyesini değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetMaxZoom(int level)
	{
		this.Set(CUSTOM_WEAPON_ZOOM_MAX_LEVEL, level);
	}

	/**
	 *
	 * Silahın dürbün zoom seviyesini döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetMaxZoom()
	{
		return this.Get(CUSTOM_WEAPON_ZOOM_MAX_LEVEL);
	}

	/**
	 *
	 * Silahın Çekme animasyonunu değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetAnimationDraw(int sequence, float time)
	{
		this.Set(CUSTOM_WEAPON_ANIMATION_DRAW_SEQUENCE, sequence);
		this.Set(CUSTOM_WEAPON_ANIMATION_DRAW_SEQUENCE_TIME, time);
	}

	/**
	 *
	 * Silahın Çekme animasyon Numarasını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetAnimationDrawSequenceId()
	{
		return this.Get(CUSTOM_WEAPON_ANIMATION_DRAW_SEQUENCE);
	}
	
	/**
	 *
	 * Silahın Çekme animasyon zamanını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public float GetAnimationDrawSequenceTime()
	{
		return this.Get(CUSTOM_WEAPON_ANIMATION_DRAW_SEQUENCE_TIME);
	}

	/**
	 *
	 * Silahın jarjör değiştirme animasyonunu değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetAnimationReload(int sequence, float time)
	{
		this.Set(CUSTOM_WEAPON_ANIMATION_RELOAD_SEQUENCE, sequence);
		this.Set(CUSTOM_WEAPON_ANIMATION_RELOAD_SEQUENCE_TIME, time);
	}

	/**
	 *
	 * Silahın jarjör değiştirme animasyon Numarasını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetAnimationReloadSequenceId()
	{
		return this.Get(CUSTOM_WEAPON_ANIMATION_RELOAD_SEQUENCE);
	}


	/**
	 *
	 * Silahın jarjör değiştirme animasyon zamanını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public float GetAnimationReloadSequenceTime()
	{
		return this.Get(CUSTOM_WEAPON_ANIMATION_RELOAD_SEQUENCE_TIME);
	}

	/**
	 *
	 * Silahın birincil saldırı animasyonunu değiştir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void SetAnimationPrimaryAttack(int sequenceFirst, int sequenceLast, float time)
	{
		this.Set(CUSTOM_WEAPON_ANIMATION_PRIMARY_ATTACK_FIRST_SEQUENCE, sequenceFirst);
		this.Set(CUSTOM_WEAPON_ANIMATION_PRIMARY_ATTACK_LAST_SEQUENCE, sequenceLast);
		this.Set(CUSTOM_WEAPON_ANIMATION_PRIMARY_ATTACK_SEQUENCE_TIME, time);
	}

	/**
	 *
	 * Silahın birincil saldırı ilk animasyon Numarasını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetAnimationPrimaryAttackSequenceIdFirst()
	{
		return this.Get(CUSTOM_WEAPON_ANIMATION_PRIMARY_ATTACK_FIRST_SEQUENCE);
	}

	/**
	 *
	 * Silahın birincil saldırı son animasyon Numarasını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int GetAnimationPrimaryAttackSequenceIdLast()
	{
		return this.Get(CUSTOM_WEAPON_ANIMATION_PRIMARY_ATTACK_LAST_SEQUENCE);
	}
	
	/**
	 *
	 * Silahın birincil saldırı animasyon zamanını döner.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public float GetAnimationPrimaryAttackSequenceTime()
	{
		return this.Get(CUSTOM_WEAPON_ANIMATION_PRIMARY_ATTACK_SEQUENCE_TIME);
	}
}
