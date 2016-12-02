
abstract class ScriptBaseEntity : ScriptClassInterface
{
	ScriptBaseEntity()
	{
		@m_pSelf = null;
		@m_pPev = null;
	}
	private CBaseEntity@ m_pSelf;
	CBaseEntity@ self
	{
		get const { return @m_pSelf; }
	}
	void SetSelf(CBaseEntity@ pValue) final
	{
		if( this.m_pSelf !is null )
			 return;
		@this.m_pSelf = cast<CBaseEntity>(@pValue);
	}
	private entvars_t@ m_pPev;
	entvars_t@ pev
	{
		get const { return @m_pPev; }
	}
	void SetPev(entvars_t@ pValue) final
	{
		if( this.m_pPev !is null )
			 return;
		@this.m_pPev = cast<entvars_t>(@pValue);
	}
	private BaseEntity@ m_pBaseClass;
	BaseEntity@ BaseClass
	{
		get const { return @m_pBaseClass; }
	}
	void SetBaseClass(BaseEntity@ pValue) final
	{
		if( this.m_pBaseClass !is null )
			 return;
		@this.m_pBaseClass = cast<BaseEntity>(@pValue);
	}
	private CustomEntityCallbackHandler@ m_pCallbackHandler;
	CustomEntityCallbackHandler@ callback
	{
		get const { return @m_pCallbackHandler; }
	}
	void SetCallbackHandler(CustomEntityCallbackHandler@ pValue) final
	{
		if( this.m_pCallbackHandler !is null )
			 return;
		@this.m_pCallbackHandler = cast<CustomEntityCallbackHandler>(@pValue);
	}
	void SetThink(ThinkFunction@ pFunction) final
	{
		callback.SetThinkFunction(pFunction);
	}
	void SetTouch(TouchFunction@ pFunction) final
	{
		callback.SetTouchFunction(pFunction);
	}
	void SetBlocked(BlockedFunction@ pFunction) final
	{
		callback.SetBlockedFunction(pFunction);
	}
	void SetUse(UseFunction@ pFunction) final
	{
		callback.SetUseFunction(pFunction);
	}
}

abstract class ScriptBaseAnimating : ScriptClassInterface
{
	ScriptBaseAnimating()
	{
		@m_pSelf = null;
		@m_pPev = null;
	}
	private CBaseAnimating@ m_pSelf;
	CBaseAnimating@ self
	{
		get const { return @m_pSelf; }
	}
	void SetSelf(CBaseEntity@ pValue) final
	{
		if( this.m_pSelf !is null )
			 return;
		@this.m_pSelf = cast<CBaseAnimating>(@pValue);
	}
	private entvars_t@ m_pPev;
	entvars_t@ pev
	{
		get const { return @m_pPev; }
	}
	void SetPev(entvars_t@ pValue) final
	{
		if( this.m_pPev !is null )
			 return;
		@this.m_pPev = cast<entvars_t>(@pValue);
	}
	private BaseEntity@ m_pBaseClass;
	BaseEntity@ BaseClass
	{
		get const { return @m_pBaseClass; }
	}
	void SetBaseClass(BaseEntity@ pValue) final
	{
		if( this.m_pBaseClass !is null )
			 return;
		@this.m_pBaseClass = cast<BaseEntity>(@pValue);
	}
	private CustomEntityCallbackHandler@ m_pCallbackHandler;
	CustomEntityCallbackHandler@ callback
	{
		get const { return @m_pCallbackHandler; }
	}
	void SetCallbackHandler(CustomEntityCallbackHandler@ pValue) final
	{
		if( this.m_pCallbackHandler !is null )
			 return;
		@this.m_pCallbackHandler = cast<CustomEntityCallbackHandler>(@pValue);
	}
	void SetThink(ThinkFunction@ pFunction) final
	{
		callback.SetThinkFunction(pFunction);
	}
	void SetTouch(TouchFunction@ pFunction) final
	{
		callback.SetTouchFunction(pFunction);
	}
	void SetBlocked(BlockedFunction@ pFunction) final
	{
		callback.SetBlockedFunction(pFunction);
	}
	void SetUse(UseFunction@ pFunction) final
	{
		callback.SetUseFunction(pFunction);
	}
}

abstract class ScriptBaseMonsterEntity : ScriptClassInterface
{
	ScriptBaseMonsterEntity()
	{
		@m_pSelf = null;
		@m_pPev = null;
	}
	private CBaseMonster@ m_pSelf;
	CBaseMonster@ self
	{
		get const { return @m_pSelf; }
	}
	void SetSelf(CBaseEntity@ pValue) final
	{
		if( this.m_pSelf !is null )
			 return;
		@this.m_pSelf = cast<CBaseMonster>(@pValue);
	}
	private entvars_t@ m_pPev;
	entvars_t@ pev
	{
		get const { return @m_pPev; }
	}
	void SetPev(entvars_t@ pValue) final
	{
		if( this.m_pPev !is null )
			 return;
		@this.m_pPev = cast<entvars_t>(@pValue);
	}
	private BaseMonster@ m_pBaseClass;
	BaseMonster@ BaseClass
	{
		get const { return @m_pBaseClass; }
	}
	void SetBaseClass(BaseEntity@ pValue) final
	{
		if( this.m_pBaseClass !is null )
			 return;
		@this.m_pBaseClass = cast<BaseMonster>(@pValue);
	}
	private CustomEntityCallbackHandler@ m_pCallbackHandler;
	CustomEntityCallbackHandler@ callback
	{
		get const { return @m_pCallbackHandler; }
	}
	void SetCallbackHandler(CustomEntityCallbackHandler@ pValue) final
	{
		if( this.m_pCallbackHandler !is null )
			 return;
		@this.m_pCallbackHandler = cast<CustomEntityCallbackHandler>(@pValue);
	}
	void SetThink(ThinkFunction@ pFunction) final
	{
		callback.SetThinkFunction(pFunction);
	}
	void SetTouch(TouchFunction@ pFunction) final
	{
		callback.SetTouchFunction(pFunction);
	}
	void SetBlocked(BlockedFunction@ pFunction) final
	{
		callback.SetBlockedFunction(pFunction);
	}
	void SetUse(UseFunction@ pFunction) final
	{
		callback.SetUseFunction(pFunction);
	}
	array<ScriptSchedule@>@ m_Schedules;
	Schedule@ ScheduleFromName(const string& in szName)
	{
		for (uint uiIndex = 0; uiIndex < m_Schedules.length(); ++uiIndex)
		{
			ScriptSchedule@ pSchedule = @m_Schedules[uiIndex];
			if (pSchedule.szName() == szName)
				return pSchedule;
		}
		return BaseClass.ScheduleFromName(szName);
	}
}

abstract class ScriptBaseTankEntity : ScriptClassInterface
{
	ScriptBaseTankEntity()
	{
		@m_pSelf = null;
		@m_pPev = null;
	}
	private CBaseTank@ m_pSelf;
	CBaseTank@ self
	{
		get const { return @m_pSelf; }
	}
	void SetSelf(CBaseEntity@ pValue) final
	{
		if( this.m_pSelf !is null )
			 return;
		@this.m_pSelf = cast<CBaseTank>(@pValue);
	}
	private entvars_t@ m_pPev;
	entvars_t@ pev
	{
		get const { return @m_pPev; }
	}
	void SetPev(entvars_t@ pValue) final
	{
		if( this.m_pPev !is null )
			 return;
		@this.m_pPev = cast<entvars_t>(@pValue);
	}
	private BaseTank@ m_pBaseClass;
	BaseTank@ BaseClass
	{
		get const { return @m_pBaseClass; }
	}
	void SetBaseClass(BaseEntity@ pValue) final
	{
		if( this.m_pBaseClass !is null )
			 return;
		@this.m_pBaseClass = cast<BaseTank>(@pValue);
	}
	private CustomEntityCallbackHandler@ m_pCallbackHandler;
	CustomEntityCallbackHandler@ callback
	{
		get const { return @m_pCallbackHandler; }
	}
	void SetCallbackHandler(CustomEntityCallbackHandler@ pValue) final
	{
		if( this.m_pCallbackHandler !is null )
			 return;
		@this.m_pCallbackHandler = cast<CustomEntityCallbackHandler>(@pValue);
	}
	void SetThink(ThinkFunction@ pFunction) final
	{
		callback.SetThinkFunction(pFunction);
	}
	void SetTouch(TouchFunction@ pFunction) final
	{
		callback.SetTouchFunction(pFunction);
	}
	void SetBlocked(BlockedFunction@ pFunction) final
	{
		callback.SetBlockedFunction(pFunction);
	}
	void SetUse(UseFunction@ pFunction) final
	{
		callback.SetUseFunction(pFunction);
	}
}

abstract class ScriptBasePlayerItemEntity : ScriptClassInterface
{
	ScriptBasePlayerItemEntity()
	{
		@m_pSelf = null;
		@m_pPev = null;
	}
	private CBasePlayerItem@ m_pSelf;
	CBasePlayerItem@ self
	{
		get const { return @m_pSelf; }
	}
	void SetSelf(CBaseEntity@ pValue) final
	{
		if( this.m_pSelf !is null )
			 return;
		@this.m_pSelf = cast<CBasePlayerItem>(@pValue);
	}
	private entvars_t@ m_pPev;
	entvars_t@ pev
	{
		get const { return @m_pPev; }
	}
	void SetPev(entvars_t@ pValue) final
	{
		if( this.m_pPev !is null )
			 return;
		@this.m_pPev = cast<entvars_t>(@pValue);
	}
	private BasePlayerItem@ m_pBaseClass;
	BasePlayerItem@ BaseClass
	{
		get const { return @m_pBaseClass; }
	}
	void SetBaseClass(BaseEntity@ pValue) final
	{
		if( this.m_pBaseClass !is null )
			 return;
		@this.m_pBaseClass = cast<BasePlayerItem>(@pValue);
	}
	private CustomEntityCallbackHandler@ m_pCallbackHandler;
	CustomEntityCallbackHandler@ callback
	{
		get const { return @m_pCallbackHandler; }
	}
	void SetCallbackHandler(CustomEntityCallbackHandler@ pValue) final
	{
		if( this.m_pCallbackHandler !is null )
			 return;
		@this.m_pCallbackHandler = cast<CustomEntityCallbackHandler>(@pValue);
	}
	void SetThink(ThinkFunction@ pFunction) final
	{
		callback.SetThinkFunction(pFunction);
	}
	void SetTouch(TouchFunction@ pFunction) final
	{
		callback.SetTouchFunction(pFunction);
	}
	void SetBlocked(BlockedFunction@ pFunction) final
	{
		callback.SetBlockedFunction(pFunction);
	}
	void SetUse(UseFunction@ pFunction) final
	{
		callback.SetUseFunction(pFunction);
	}
}

abstract class ScriptBasePlayerWeaponEntity : ScriptClassInterface
{
	ScriptBasePlayerWeaponEntity()
	{
		@m_pSelf = null;
		@m_pPev = null;
	}
	private CBasePlayerWeapon@ m_pSelf;
	CBasePlayerWeapon@ self
	{
		get const { return @m_pSelf; }
	}
	void SetSelf(CBaseEntity@ pValue) final
	{
		if( this.m_pSelf !is null )
			 return;
		@this.m_pSelf = cast<CBasePlayerWeapon>(@pValue);
	}
	private entvars_t@ m_pPev;
	entvars_t@ pev
	{
		get const { return @m_pPev; }
	}
	void SetPev(entvars_t@ pValue) final
	{
		if( this.m_pPev !is null )
			 return;
		@this.m_pPev = cast<entvars_t>(@pValue);
	}
	private BasePlayerWeapon@ m_pBaseClass;
	BasePlayerWeapon@ BaseClass
	{
		get const { return @m_pBaseClass; }
	}
	void SetBaseClass(BaseEntity@ pValue) final
	{
		if( this.m_pBaseClass !is null )
			 return;
		@this.m_pBaseClass = cast<BasePlayerWeapon>(@pValue);
	}
	private CustomEntityCallbackHandler@ m_pCallbackHandler;
	CustomEntityCallbackHandler@ callback
	{
		get const { return @m_pCallbackHandler; }
	}
	void SetCallbackHandler(CustomEntityCallbackHandler@ pValue) final
	{
		if( this.m_pCallbackHandler !is null )
			 return;
		@this.m_pCallbackHandler = cast<CustomEntityCallbackHandler>(@pValue);
	}
	void SetThink(ThinkFunction@ pFunction) final
	{
		callback.SetThinkFunction(pFunction);
	}
	void SetTouch(TouchFunction@ pFunction) final
	{
		callback.SetTouchFunction(pFunction);
	}
	void SetBlocked(BlockedFunction@ pFunction) final
	{
		callback.SetBlockedFunction(pFunction);
	}
	void SetUse(UseFunction@ pFunction) final
	{
		callback.SetUseFunction(pFunction);
	}
}

abstract class ScriptBaseItemEntity : ScriptClassInterface
{
	ScriptBaseItemEntity()
	{
		@m_pSelf = null;
		@m_pPev = null;
	}
	private CItem@ m_pSelf;
	CItem@ self
	{
		get const { return @m_pSelf; }
	}
	void SetSelf(CBaseEntity@ pValue) final
	{
		if( this.m_pSelf !is null )
			 return;
		@this.m_pSelf = cast<CItem>(@pValue);
	}
	private entvars_t@ m_pPev;
	entvars_t@ pev
	{
		get const { return @m_pPev; }
	}
	void SetPev(entvars_t@ pValue) final
	{
		if( this.m_pPev !is null )
			 return;
		@this.m_pPev = cast<entvars_t>(@pValue);
	}
	private BaseItem@ m_pBaseClass;
	BaseItem@ BaseClass
	{
		get const { return @m_pBaseClass; }
	}
	void SetBaseClass(BaseEntity@ pValue) final
	{
		if( this.m_pBaseClass !is null )
			 return;
		@this.m_pBaseClass = cast<BaseItem>(@pValue);
	}
	private CustomEntityCallbackHandler@ m_pCallbackHandler;
	CustomEntityCallbackHandler@ callback
	{
		get const { return @m_pCallbackHandler; }
	}
	void SetCallbackHandler(CustomEntityCallbackHandler@ pValue) final
	{
		if( this.m_pCallbackHandler !is null )
			 return;
		@this.m_pCallbackHandler = cast<CustomEntityCallbackHandler>(@pValue);
	}
	void SetThink(ThinkFunction@ pFunction) final
	{
		callback.SetThinkFunction(pFunction);
	}
	void SetTouch(TouchFunction@ pFunction) final
	{
		callback.SetTouchFunction(pFunction);
	}
	void SetBlocked(BlockedFunction@ pFunction) final
	{
		callback.SetBlockedFunction(pFunction);
	}
	void SetUse(UseFunction@ pFunction) final
	{
		callback.SetUseFunction(pFunction);
	}
}

abstract class ScriptBasePlayerAmmoEntity : ScriptClassInterface
{
	ScriptBasePlayerAmmoEntity()
	{
		@m_pSelf = null;
		@m_pPev = null;
	}
	private CBasePlayerAmmo@ m_pSelf;
	CBasePlayerAmmo@ self
	{
		get const { return @m_pSelf; }
	}
	void SetSelf(CBaseEntity@ pValue) final
	{
		if( this.m_pSelf !is null )
			 return;
		@this.m_pSelf = cast<CBasePlayerAmmo>(@pValue);
	}
	private entvars_t@ m_pPev;
	entvars_t@ pev
	{
		get const { return @m_pPev; }
	}
	void SetPev(entvars_t@ pValue) final
	{
		if( this.m_pPev !is null )
			 return;
		@this.m_pPev = cast<entvars_t>(@pValue);
	}
	private BasePlayerAmmo@ m_pBaseClass;
	BasePlayerAmmo@ BaseClass
	{
		get const { return @m_pBaseClass; }
	}
	void SetBaseClass(BaseEntity@ pValue) final
	{
		if( this.m_pBaseClass !is null )
			 return;
		@this.m_pBaseClass = cast<BasePlayerAmmo>(@pValue);
	}
	private CustomEntityCallbackHandler@ m_pCallbackHandler;
	CustomEntityCallbackHandler@ callback
	{
		get const { return @m_pCallbackHandler; }
	}
	void SetCallbackHandler(CustomEntityCallbackHandler@ pValue) final
	{
		if( this.m_pCallbackHandler !is null )
			 return;
		@this.m_pCallbackHandler = cast<CustomEntityCallbackHandler>(@pValue);
	}
	void SetThink(ThinkFunction@ pFunction) final
	{
		callback.SetThinkFunction(pFunction);
	}
	void SetTouch(TouchFunction@ pFunction) final
	{
		callback.SetTouchFunction(pFunction);
	}
	void SetBlocked(BlockedFunction@ pFunction) final
	{
		callback.SetBlockedFunction(pFunction);
	}
	void SetUse(UseFunction@ pFunction) final
	{
		callback.SetUseFunction(pFunction);
	}
}