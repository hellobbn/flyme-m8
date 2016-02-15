.class public Lorg/flerovium/settings/ButtonSettings;
.super Lorg/flerovium/settings/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lorg/flerovium/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lorg/flerovium/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mCameraLaunch:Landroid/preference/SwitchPreference;

.field private mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

.field private mCameraWakeScreen:Landroid/preference/SwitchPreference;

.field private mDisableNavigationKeys:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeAnswerCall:Landroid/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

.field private mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

.field private mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

.field private mPowerEndCall:Landroid/preference/SwitchPreference;

.field private mSwapVolumeButtons:Landroid/preference/SwitchPreference;

.field private mVolumeControlRingStream:Landroid/preference/SwitchPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;

.field private mVolumeMusicControls:Landroid/preference/SwitchPreference;

.field private mVolumeWakeScreen:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 765
    new-instance v0, Lorg/flerovium/settings/ButtonSettings$2;

    invoke-direct {v0}, Lorg/flerovium/settings/ButtonSettings$2;-><init>()V

    sput-object v0, Lorg/flerovium/settings/ButtonSettings;->SEARCH_INDEX_DATA_PROVIDER:Lorg/flerovium/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/flerovium/settings/ButtonSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/ButtonSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/flerovium/settings/ButtonSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/ButtonSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lorg/flerovium/settings/ButtonSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/flerovium/settings/ButtonSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/flerovium/settings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/flerovium/settings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/ButtonSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/flerovium/settings/ButtonSettings;->getPreferencesToRemove(Lorg/flerovium/settings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferencesToRemove(Lorg/flerovium/settings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;
    .locals 35
    .param p0, "settings"    # Lorg/flerovium/settings/ButtonSettings;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/flerovium/settings/ButtonSettings;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v24, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 246
    .local v23, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 248
    .local v22, "res":Landroid/content/res/Resources;
    const v33, 0x10e0054

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 250
    .local v5, "deviceKeys":I
    const v33, 0x10e0055

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 253
    .local v6, "deviceWakeKeys":I
    const/16 v33, 0x1a

    invoke-static/range {v33 .. v33}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v18

    .line 254
    .local v18, "hasPowerKey":Z
    and-int/lit8 v33, v5, 0x1

    if-eqz v33, :cond_19

    const/4 v15, 0x1

    .line 255
    .local v15, "hasHomeKey":Z
    :goto_0
    and-int/lit8 v33, v5, 0x2

    if-eqz v33, :cond_1a

    const/4 v13, 0x1

    .line 256
    .local v13, "hasBackKey":Z
    :goto_1
    and-int/lit8 v33, v5, 0x4

    if-eqz v33, :cond_1b

    const/16 v16, 0x1

    .line 257
    .local v16, "hasMenuKey":Z
    :goto_2
    and-int/lit8 v33, v5, 0x8

    if-eqz v33, :cond_1c

    const/4 v12, 0x1

    .line 258
    .local v12, "hasAssistKey":Z
    :goto_3
    and-int/lit8 v33, v5, 0x10

    if-eqz v33, :cond_1d

    const/4 v11, 0x1

    .line 259
    .local v11, "hasAppSwitchKey":Z
    :goto_4
    and-int/lit8 v33, v5, 0x20

    if-eqz v33, :cond_1e

    const/4 v14, 0x1

    .line 261
    .local v14, "hasCameraKey":Z
    :goto_5
    and-int/lit8 v33, v6, 0x1

    if-eqz v33, :cond_1f

    const/16 v29, 0x1

    .line 262
    .local v29, "showHomeWake":Z
    :goto_6
    and-int/lit8 v33, v6, 0x2

    if-eqz v33, :cond_20

    const/16 v27, 0x1

    .line 263
    .local v27, "showBackWake":Z
    :goto_7
    and-int/lit8 v33, v6, 0x4

    if-eqz v33, :cond_21

    const/16 v30, 0x1

    .line 264
    .local v30, "showMenuWake":Z
    :goto_8
    and-int/lit8 v33, v6, 0x8

    if-eqz v33, :cond_22

    const/16 v26, 0x1

    .line 265
    .local v26, "showAssistWake":Z
    :goto_9
    and-int/lit8 v33, v6, 0x10

    if-eqz v33, :cond_23

    const/16 v25, 0x1

    .line 266
    .local v25, "showAppSwitchWake":Z
    :goto_a
    and-int/lit8 v33, v6, 0x20

    if-eqz v33, :cond_24

    const/16 v28, 0x1

    .line 267
    .local v28, "showCameraWake":Z
    :goto_b
    and-int/lit8 v33, v6, 0x40

    if-eqz v33, :cond_25

    const/16 v31, 0x1

    .line 269
    .local v31, "showVolumeWake":Z
    :goto_c
    invoke-static/range {p1 .. p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v10

    .line 273
    .local v10, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v20, 0x0

    .line 274
    .local v20, "needsNavigationBar":Z
    const/16 v33, 0x20

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v33

    if-eqz v33, :cond_27

    .line 276
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v32

    .line 277
    .local v32, "wm":Landroid/view/IWindowManager;
    invoke-interface/range {v32 .. v32}, Landroid/view/IWindowManager;->needsNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    .line 281
    .end local v32    # "wm":Landroid/view/IWindowManager;
    :goto_d
    if-eqz v20, :cond_26

    .line 282
    const-string v33, "disable_nav_keys"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    :goto_e
    if-eqz v18, :cond_28

    .line 298
    invoke-static/range {p1 .. p1}, Lorg/flerovium/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 299
    const-string v33, "power_end_call"

    const-string v34, "power_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    if-eqz p0, :cond_1

    .line 301
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 308
    :cond_1
    :goto_f
    if-eqz v15, :cond_29

    .line 309
    if-nez v29, :cond_2

    .line 310
    const-string v33, "home_wake_screen"

    const-string v34, "home_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/flerovium/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 314
    if-eqz p0, :cond_3

    .line 315
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 317
    :cond_3
    const-string v33, "home_answer_call"

    const-string v34, "home_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_4
    const v33, 0x10e0050

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 322
    .local v4, "defaultLongPressAction":I
    if-ltz v4, :cond_5

    const/16 v33, 0x8

    move/from16 v0, v33

    if-le v4, v0, :cond_6

    .line 324
    :cond_5
    const/4 v4, 0x0

    .line 327
    :cond_6
    const v33, 0x10e0051

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 329
    .local v3, "defaultDoubleTapAction":I
    if-ltz v3, :cond_7

    const/16 v33, 0x8

    move/from16 v0, v33

    if-le v3, v0, :cond_8

    .line 331
    :cond_7
    const/4 v3, 0x0

    .line 334
    :cond_8
    if-eqz p0, :cond_9

    .line 335
    const-string v33, "key_home_long_press_action"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 338
    .local v19, "longPressAction":I
    const-string v33, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 341
    const-string v33, "key_home_double_tap_action"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 344
    .local v7, "doubleTapAction":I
    const-string v33, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v7}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 352
    .end local v3    # "defaultDoubleTapAction":I
    .end local v4    # "defaultLongPressAction":I
    .end local v7    # "doubleTapAction":I
    .end local v19    # "longPressAction":I
    :cond_9
    :goto_10
    if-eqz v13, :cond_2a

    .line 353
    if-nez v27, :cond_a

    .line 354
    const-string v33, "back_wake_screen"

    const-string v34, "back_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v33, "back_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_a
    :goto_11
    if-eqz v16, :cond_2c

    .line 362
    if-nez v30, :cond_b

    .line 363
    const-string v33, "menu_wake_screen"

    const-string v34, "menu_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_b
    if-eqz p0, :cond_c

    .line 367
    const-string v33, "key_menu_action"

    const/16 v34, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 369
    .local v21, "pressAction":I
    const-string v33, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 372
    const-string v34, "key_menu_long_press_action"

    if-eqz v12, :cond_2b

    const/16 v33, 0x0

    :goto_12
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 375
    .restart local v19    # "longPressAction":I
    const-string v33, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 382
    .end local v19    # "longPressAction":I
    .end local v21    # "pressAction":I
    :cond_c
    :goto_13
    if-eqz v12, :cond_2d

    .line 383
    if-nez v26, :cond_d

    .line 384
    const-string v33, "assist_wake_screen"

    const-string v34, "assist_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_d
    if-eqz p0, :cond_e

    .line 388
    const-string v33, "key_assist_action"

    const/16 v34, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 390
    .restart local v21    # "pressAction":I
    const-string v33, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 393
    const-string v33, "key_assist_long_press_action"

    const/16 v34, 0x4

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 395
    .restart local v19    # "longPressAction":I
    const-string v33, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 402
    .end local v19    # "longPressAction":I
    .end local v21    # "pressAction":I
    :cond_e
    :goto_14
    if-eqz v11, :cond_2e

    .line 403
    if-nez v25, :cond_f

    .line 404
    const-string v33, "app_switch_wake_screen"

    const-string v34, "app_switch_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_f
    if-eqz p0, :cond_10

    .line 408
    const-string v33, "key_app_switch_action"

    const/16 v34, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 410
    .restart local v21    # "pressAction":I
    const-string v33, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 413
    const-string v33, "key_app_switch_long_press_action"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 415
    .restart local v19    # "longPressAction":I
    const-string v33, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/flerovium/settings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 422
    .end local v19    # "longPressAction":I
    .end local v21    # "pressAction":I
    :cond_10
    :goto_15
    if-eqz v14, :cond_2f

    .line 423
    if-nez v28, :cond_11

    .line 424
    const-string v33, "camera_wake_screen"

    const-string v34, "camera_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_11
    const v33, 0x112004e

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 428
    const-string v33, "camera_sleep_on_release"

    const-string v34, "camera_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_12
    :goto_16
    invoke-static/range {p1 .. p1}, Lorg/flerovium/settings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_30

    .line 435
    if-nez v31, :cond_13

    .line 436
    const-string v33, "volume_wake_screen"

    const-string v34, "volume_keys"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_13
    :goto_17
    :try_start_1
    const-string v33, "dev_force_show_navbar"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_31

    const/4 v9, 0x1

    .line 447
    .local v9, "forceNavbar":Z
    :goto_18
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v33

    if-nez v33, :cond_14

    if-eqz v9, :cond_32

    :cond_14
    const/16 v17, 0x1

    .line 450
    .local v17, "hasNavBar":Z
    :goto_19
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/cm/ScreenType;->isPhone(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_15

    .line 451
    const-string v33, "navigation_bar_left"

    const-string v34, "navigation_bar_category"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_15
    if-nez v17, :cond_17

    if-nez v20, :cond_16

    const/16 v33, 0x20

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v33

    if-nez v33, :cond_17

    .line 456
    :cond_16
    const-string v33, "navigation_bar_category"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    .end local v9    # "forceNavbar":Z
    .end local v17    # "hasNavBar":Z
    :cond_17
    :goto_1a
    invoke-static/range {p1 .. p1}, Lorg/flerovium/settings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_18

    invoke-static/range {p1 .. p1}, Lorg/flerovium/settings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_18

    .line 464
    const-string v33, "button_backlight"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_18
    return-object v24

    .line 254
    .end local v10    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    .end local v11    # "hasAppSwitchKey":Z
    .end local v12    # "hasAssistKey":Z
    .end local v13    # "hasBackKey":Z
    .end local v14    # "hasCameraKey":Z
    .end local v15    # "hasHomeKey":Z
    .end local v16    # "hasMenuKey":Z
    .end local v20    # "needsNavigationBar":Z
    .end local v25    # "showAppSwitchWake":Z
    .end local v26    # "showAssistWake":Z
    .end local v27    # "showBackWake":Z
    .end local v28    # "showCameraWake":Z
    .end local v29    # "showHomeWake":Z
    .end local v30    # "showMenuWake":Z
    .end local v31    # "showVolumeWake":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 255
    .restart local v15    # "hasHomeKey":Z
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 256
    .restart local v13    # "hasBackKey":Z
    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 257
    .restart local v16    # "hasMenuKey":Z
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 258
    .restart local v12    # "hasAssistKey":Z
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 259
    .restart local v11    # "hasAppSwitchKey":Z
    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 261
    .restart local v14    # "hasCameraKey":Z
    :cond_1f
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 262
    .restart local v29    # "showHomeWake":Z
    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 263
    .restart local v27    # "showBackWake":Z
    :cond_21
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 264
    .restart local v30    # "showMenuWake":Z
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 265
    .restart local v26    # "showAssistWake":Z
    :cond_23
    const/16 v25, 0x0

    goto/16 :goto_a

    .line 266
    .restart local v25    # "showAppSwitchWake":Z
    :cond_24
    const/16 v28, 0x0

    goto/16 :goto_b

    .line 267
    .restart local v28    # "showCameraWake":Z
    :cond_25
    const/16 v31, 0x0

    goto/16 :goto_c

    .line 285
    .restart local v10    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    .restart local v20    # "needsNavigationBar":Z
    .restart local v31    # "showVolumeWake":Z
    :cond_26
    if-eqz p0, :cond_0

    .line 286
    invoke-direct/range {p0 .. p0}, Lorg/flerovium/settings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/flerovium/settings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    goto/16 :goto_e

    .line 294
    :cond_27
    const-string v33, "disable_nav_keys"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 305
    :cond_28
    const-string v33, "power_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 349
    :cond_29
    const-string v33, "home_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 358
    :cond_2a
    const-string v33, "back_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 372
    .restart local v21    # "pressAction":I
    :cond_2b
    const/16 v33, 0x3

    goto/16 :goto_12

    .line 379
    .end local v21    # "pressAction":I
    :cond_2c
    const-string v33, "menu_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 399
    :cond_2d
    const-string v33, "assist_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 419
    :cond_2e
    const-string v33, "app_switch_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 431
    :cond_2f
    const-string v33, "camera_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 439
    :cond_30
    const-string v33, "volume_keys"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 445
    :cond_31
    const/4 v9, 0x0

    goto/16 :goto_18

    .line 447
    .restart local v9    # "forceNavbar":Z
    :cond_32
    const/16 v17, 0x0

    goto/16 :goto_19

    .line 458
    .end local v9    # "forceNavbar":Z
    :catch_0
    move-exception v8

    .line 459
    .local v8, "e":Landroid/os/RemoteException;
    const-string v33, "SystemSettings"

    const-string v34, "Error getting navigation bar status"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 278
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v33

    goto/16 :goto_d
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    .line 571
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 572
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 573
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    return-void
.end method

.method private handleToggleHomeButtonAnswersCallPreferenceClick()V
    .locals 3

    .prologue
    .line 759
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ring_home_button_behavior"

    iget-object v0, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 763
    return-void

    .line 759
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 752
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lorg/flerovium/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    return-void

    .line 752
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 497
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 498
    .local v0, "list":Landroid/preference/ListPreference;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 502
    .end local v0    # "list":Landroid/preference/ListPreference;
    :goto_0
    return-object v0

    .line 499
    .restart local v0    # "list":Landroid/preference/ListPreference;
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 507
    .local v9, "list":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "recents_long_press_activity"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "componentString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 513
    .local v12, "targetComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 514
    const v14, 0x7f090064

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/flerovium/settings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/ButtonSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 522
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.RECENTS_LONG_PRESS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v14, 0x10000

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 525
    .local v11, "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 527
    const v14, 0x7f090064

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/flerovium/settings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "recents_long_press_activity"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 567
    :goto_1
    return-object v9

    .line 516
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_0

    .line 534
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v3, v14, [Ljava/lang/CharSequence;

    .line 535
    .local v3, "entries":[Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v13, v14, [Ljava/lang/CharSequence;

    .line 537
    .local v13, "values":[Ljava/lang/CharSequence;
    const/4 v14, 0x0

    const v15, 0x7f090064

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/flerovium/settings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 538
    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    .line 539
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 540
    const/4 v5, 0x1

    .line 541
    .local v5, "i":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 545
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_3
    new-instance v4, Landroid/content/ComponentName;

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .local v4, "entryComponent":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 556
    if-eqz v12, :cond_2

    .line 557
    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 559
    aget-object v14, v3, v5

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 560
    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 563
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 564
    goto :goto_2

    .line 546
    .end local v4    # "entryComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 547
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "SystemSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error package not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v14, v3, v5

    goto :goto_3

    .line 565
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {v9, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {v9, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 705
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 706
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dev_force_show_navbar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p0, v1}, Lorg/flerovium/settings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateDisableNavkeysCategories(Z)V
    .locals 10
    .param p1, "navbarEnabled"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 663
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 666
    .local v6, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v7, "home_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 668
    .local v4, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "back_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 670
    .local v2, "backCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "menu_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 672
    .local v5, "menuCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "assist_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 674
    .local v1, "assistCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "app_switch_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 676
    .local v0, "appSwitchCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "button_backlight"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lorg/flerovium/settings/cyanogenmod/ButtonBacklightBrightness;

    .line 681
    .local v3, "backlight":Lorg/flerovium/settings/cyanogenmod/ButtonBacklightBrightness;
    if-eqz v3, :cond_0

    .line 682
    if-nez p1, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v3, v7}, Lorg/flerovium/settings/cyanogenmod/ButtonBacklightBrightness;->setEnabled(Z)V

    .line 683
    invoke-virtual {v3}, Lorg/flerovium/settings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 687
    :cond_0
    if-eqz v4, :cond_1

    .line 688
    if-nez p1, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 690
    :cond_1
    if-eqz v2, :cond_2

    .line 691
    if-nez p1, :cond_8

    move v7, v8

    :goto_2
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 693
    :cond_2
    if-eqz v5, :cond_3

    .line 694
    if-nez p1, :cond_9

    move v7, v8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 696
    :cond_3
    if-eqz v1, :cond_4

    .line 697
    if-nez p1, :cond_a

    move v7, v8

    :goto_4
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 699
    :cond_4
    if-eqz v0, :cond_5

    .line 700
    if-nez p1, :cond_b

    :goto_5
    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 702
    :cond_5
    return-void

    :cond_6
    move v7, v9

    .line 682
    goto :goto_0

    :cond_7
    move v7, v9

    .line 688
    goto :goto_1

    :cond_8
    move v7, v9

    .line 691
    goto :goto_2

    :cond_9
    move v7, v9

    .line 694
    goto :goto_3

    :cond_a
    move v7, v9

    .line 697
    goto :goto_4

    :cond_b
    move v8, v9

    .line 700
    goto :goto_5
.end method

.method private updateDisableNavkeysOption()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dev_force_show_navbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 659
    .local v0, "enabled":Z
    :cond_0
    iget-object v1, p0, Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 660
    return-void
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 634
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 635
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0060

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 638
    .local v0, "defaultBrightness":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dev_force_show_navbar"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 640
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    .line 641
    .local v1, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v4, 0x20

    invoke-virtual {v1, v4, p1}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z

    .line 644
    if-eqz p1, :cond_1

    .line 645
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "button_brightness"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 653
    :goto_1
    return-void

    .end local v1    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    :cond_0
    move v4, v5

    .line 638
    goto :goto_0

    .line 648
    .restart local v1    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    :cond_1
    const-string v4, "pre_navbar_button_backlight"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 650
    .local v2, "oldBright":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "button_brightness"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 145
    invoke-super {p0, p1}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v10, 0x7f060012

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->addPreferencesFromResource(I)V

    .line 149
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 152
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v10, "power_end_call"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 155
    const-string v10, "home_answer_call"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 157
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 160
    const-string v10, "disable_nav_keys"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    .line 162
    const-string v10, "navigation_bar_category"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    .line 165
    const-string v10, "navigation_bar_left"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

    .line 168
    const-string v10, "navigation_recents_long_press"

    invoke-direct {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v10

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    .line 171
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->getPreferencesToRemove(Lorg/flerovium/settings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 173
    .local v7, "prefsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 176
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 180
    .local v6, "preferenceCategory":Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_0

    .line 182
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 186
    .end local v6    # "preferenceCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    invoke-virtual {p0, v3}, Lorg/flerovium/settings/ButtonSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0    # "category":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lorg/flerovium/settings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 191
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "volume_key_cursor_control"

    invoke-static {v10, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, "cursorControlAction":I
    const-string v10, "volume_key_cursor_control"

    invoke-direct {p0, v10, v1}, Lorg/flerovium/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v10

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 196
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "swap_volume_keys_on_rotation"

    invoke-static {v10, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 198
    .local v8, "swapVolumeKeys":I
    const-string v10, "swap_volume_buttons"

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    .line 200
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_3

    .line 201
    iget-object v13, p0, Lorg/flerovium/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-lez v8, :cond_9

    move v10, v11

    :goto_1
    invoke-virtual {v13, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 205
    .end local v1    # "cursorControlAction":I
    .end local v8    # "swapVolumeKeys":I
    :cond_3
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    if-nez v10, :cond_4

    .line 207
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_4
    const-string v10, "camera_wake_screen"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    .line 211
    const-string v10, "camera_sleep_on_release"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    .line 213
    const-string v10, "camera_launch"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mCameraLaunch:Landroid/preference/SwitchPreference;

    .line 215
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_5

    .line 216
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x112004e

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 218
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    const-string v13, "camera_wake_screen"

    invoke-virtual {v10, v13}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 222
    :cond_5
    const-string v10, "volume_wake_screen"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    .line 223
    const-string v10, "volbtn_music_controls"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    .line 225
    const-string v10, "volume_keys_control_ring_stream"

    invoke-virtual {p0, v10}, Lorg/flerovium/settings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    .line 227
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "volume_keys_control_ring_stream"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 229
    .local v9, "volumeControlRingtone":I
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_7

    .line 230
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    if-lez v9, :cond_6

    move v12, v11

    :cond_6
    invoke-virtual {v10, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 233
    :cond_7
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_8

    .line 234
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_8

    .line 235
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    const-string v12, "volume_wake_screen"

    invoke-virtual {v10, v12}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 236
    iget-object v10, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 239
    :cond_8
    return-void

    .end local v9    # "volumeControlRingtone":I
    .restart local v1    # "cursorControlAction":I
    .restart local v8    # "swapVolumeKeys":I
    :cond_9
    move v10, v12

    .line 201
    goto/16 :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 579
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 580
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_home_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    :goto_0
    return v3

    .line 583
    :cond_0
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 584
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v5, "key_home_double_tap_action"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_1
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 588
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_menu_action"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3

    .line 592
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_menu_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_3
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_4

    .line 596
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_assist_action"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_4
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_5

    .line 600
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_assist_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_5
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 604
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_app_switch_action"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_6
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_7

    .line 608
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_app_switch_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_7
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_8

    .line 612
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    const-string v5, "volume_key_cursor_control"

    invoke-direct {p0, v4, p2, v5}, Lorg/flerovium/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_8
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_a

    move-object v1, p2

    .line 618
    check-cast v1, Ljava/lang/String;

    .line 619
    .local v1, "putString":Ljava/lang/String;
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 620
    .local v0, "index":I
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v2, v4, v0

    .line 622
    .local v2, "summary":Ljava/lang/CharSequence;
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 624
    const/4 v1, 0x0

    .line 626
    :cond_9
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "recents_long_press_activity"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 630
    .end local v0    # "index":I
    .end local v1    # "putString":Ljava/lang/String;
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 717
    iget-object v2, p0, Lorg/flerovium/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 718
    iget-object v2, p0, Lorg/flerovium/settings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/cm/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 720
    .local v0, "value":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swap_volume_keys_on_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 748
    .end local v0    # "value":I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    :cond_2
    move v0, v1

    .line 718
    goto :goto_0

    .line 722
    :cond_3
    iget-object v2, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_5

    .line 723
    iget-object v2, p0, Lorg/flerovium/settings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 724
    .restart local v0    # "value":I
    :goto_3
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_keys_control_ring_stream"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v0    # "value":I
    :cond_4
    move v0, v1

    .line 723
    goto :goto_3

    .line 726
    :cond_5
    iget-object v2, p0, Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_6

    .line 727
    iget-object v2, p0, Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 728
    iget-object v2, p0, Lorg/flerovium/settings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 729
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/flerovium/settings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 730
    invoke-direct {p0}, Lorg/flerovium/settings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 731
    invoke-direct {p0, v0}, Lorg/flerovium/settings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    .line 732
    iget-object v1, p0, Lorg/flerovium/settings/ButtonSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lorg/flerovium/settings/ButtonSettings$1;

    invoke-direct {v2, p0}, Lorg/flerovium/settings/ButtonSettings$1;-><init>(Lorg/flerovium/settings/ButtonSettings;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 740
    :cond_6
    iget-object v1, p0, Lorg/flerovium/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_7

    .line 741
    invoke-direct {p0}, Lorg/flerovium/settings/ButtonSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_2

    .line 743
    :cond_7
    iget-object v1, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1

    .line 744
    invoke-direct {p0}, Lorg/flerovium/settings/ButtonSettings;->handleToggleHomeButtonAnswersCallPreferenceClick()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 472
    invoke-super {p0}, Lorg/flerovium/settings/SettingsPreferenceFragment;->onResume()V

    .line 475
    iget-object v6, p0, Lorg/flerovium/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_0

    .line 476
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "incall_power_button_behavior"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 479
    .local v2, "incallPowerBehavior":I
    if-ne v2, v8, :cond_2

    move v3, v4

    .line 481
    .local v3, "powerButtonEndsCall":Z
    :goto_0
    iget-object v6, p0, Lorg/flerovium/settings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 485
    .end local v2    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_0
    iget-object v6, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    .line 486
    invoke-virtual {p0}, Lorg/flerovium/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ring_home_button_behavior"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 489
    .local v1, "incallHomeBehavior":I
    if-ne v1, v8, :cond_3

    move v0, v4

    .line 491
    .local v0, "homeButtonAnswersCall":Z
    :goto_1
    iget-object v4, p0, Lorg/flerovium/settings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 494
    .end local v0    # "homeButtonAnswersCall":Z
    .end local v1    # "incallHomeBehavior":I
    :cond_1
    return-void

    .restart local v2    # "incallPowerBehavior":I
    :cond_2
    move v3, v5

    .line 479
    goto :goto_0

    .end local v2    # "incallPowerBehavior":I
    .restart local v1    # "incallHomeBehavior":I
    :cond_3
    move v0, v5

    .line 489
    goto :goto_1
.end method
