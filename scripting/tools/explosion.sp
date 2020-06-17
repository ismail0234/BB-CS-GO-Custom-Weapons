methodmap Explosion < StringMap
{
	/**
	 *
	 * Sınıfı başlatır.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public Explosion()
	{
		return view_as<Explosion>(new StringMap());
	}
	
	/**
	 *
	 * Sınıfı Siler.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void dispose()
	{
		delete this;
	}

	/**
	 *
	 * Patlamanın olacağı koordinat
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void setOrigin(float origin[3])
	{
		this.SetArray("origin", origin, sizeof origin);
	}

	/**
	 *
	 * Patlama sesini kapatır/açar.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void setSound(bool type)
	{
		this.SetValue("sound", type);
	}

	/**
	 *
	 * Patlama efektini yapan kişiyi belirler
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void setAttacker(int attacker)
	{
		this.SetValue("attacker", attacker);
	}

	/**
	 *
	 * Oyuncu öldüğünde hangi silah ile öldüğünü değiştirir.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void setWeapon(char[] weapon)
	{
		this.SetString("weapon", weapon);
	}

	/**
	 *
	 * Patlamanın verdiği hasarı ayarlar.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void setDamage(int damage)
	{
		this.SetValue("damage", damage);
	}

	/**
	 *
	 * Patlamanın verdiği alanı ayarlar.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public void setRadius(int radius)
	{
		this.SetValue("radius", radius);
	}

	/**
	 *
	 * Oluşturma işlemini yapar.
	 *
	 * @author Ismail Satilmis <ismaiil_0234@hotmail.com>
	 *
	 */
	public int create(bool dispose = true)
	{
		int explosion = CreateEntityByName("env_explosion");
		if(explosion == -1) {
			return explosion;
		}

		char bufferString[128]; float bufferVector[3]; bool bufferBoolean; int bufferInt; int soundFlag;

		if(this.GetArray("origin", bufferVector, sizeof bufferVector)) 
		{
			DispatchKeyValueVector(explosion, "origin", bufferVector);
		}

		if(this.GetString("classname", bufferString, sizeof bufferString)) 
		{
			DispatchKeyValue(explosion, "classname", bufferString);
		}

		if(this.GetValue("damage", bufferInt)) 
		{
			IntToString(bufferInt, bufferString, sizeof bufferString);
			DispatchKeyValue(explosion, "iMagnitude", bufferString);
		}

		if(this.GetValue("radius", bufferInt)) 
		{
			IntToString(bufferInt, bufferString, sizeof bufferString);
			DispatchKeyValue(explosion, "iRadiusOverride", bufferString);
		}

		if(this.GetValue("sound", bufferBoolean) && !bufferBoolean) 
		{
			soundFlag |= 64;
		}

		if(soundFlag > 0) 
		{
			IntToString(soundFlag, bufferString, sizeof bufferString);
			DispatchKeyValue(explosion, "spawnflags", bufferString);
		}

		DispatchSpawn(explosion);

		if (this.GetValue("attacker", bufferInt)) 
		{
			SetEntPropEnt(explosion, Prop_Data, "m_hOwnerEntity", bufferInt);
		}

		AcceptEntityInput(explosion, "Explode");
		AcceptEntityInput(explosion, "Kill");

		if(dispose) {
			this.dispose();
		}

		return explosion;
	}	
}
