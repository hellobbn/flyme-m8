.class final Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

.field private mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mDunProfile:Lorg/flerovium/settings/bluetooth/DunServerProfile;

.field private final mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lorg/flerovium/settings/bluetooth/HidProfile;

.field private final mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

.field private mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

.field private mOppProfile:Lorg/flerovium/settings/bluetooth/OppProfile;

.field private final mPanProfile:Lorg/flerovium/settings/bluetooth/PanProfile;

.field private final mPbapProfile:Lorg/flerovium/settings/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSapProfile:Lorg/flerovium/settings/bluetooth/SapServerProfile;

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "eventManager"    # Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 106
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    .line 109
    iput-object p3, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 110
    iput-object p4, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    .line 112
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)V

    .line 113
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->setProfileManager(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)V

    .line 115
    invoke-virtual {p2}, Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 118
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 123
    :cond_0
    new-instance v1, Lorg/flerovium/settings/bluetooth/HidProfile;

    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, p1, v2, v3, p0}, Lorg/flerovium/settings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lorg/flerovium/settings/bluetooth/HidProfile;

    .line 124
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lorg/flerovium/settings/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Lorg/flerovium/settings/bluetooth/PanProfile;

    invoke-direct {v1, p1}, Lorg/flerovium/settings/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lorg/flerovium/settings/bluetooth/PanProfile;

    .line 128
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lorg/flerovium/settings/bluetooth/PanProfile;

    const-string v2, "PAN"

    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "Adding local MAP profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v1, Lorg/flerovium/settings/bluetooth/MapProfile;

    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v2, v3, v4, p0}, Lorg/flerovium/settings/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

    .line 134
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

    const-string v2, "MAP"

    const-string v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "ro.bluetooth.dun"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v6, :cond_1

    .line 138
    new-instance v1, Lorg/flerovium/settings/bluetooth/DunServerProfile;

    invoke-direct {v1, p1}, Lorg/flerovium/settings/bluetooth/DunServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lorg/flerovium/settings/bluetooth/DunServerProfile;

    .line 139
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lorg/flerovium/settings/bluetooth/DunServerProfile;

    const-string v2, "DUN Server"

    const-string v3, "codeaurora.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_1
    const-string v1, "ro.bluetooth.sap"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v6, :cond_2

    .line 144
    new-instance v1, Lorg/flerovium/settings/bluetooth/SapServerProfile;

    invoke-direct {v1, p1}, Lorg/flerovium/settings/bluetooth/SapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lorg/flerovium/settings/bluetooth/SapServerProfile;

    .line 145
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lorg/flerovium/settings/bluetooth/SapServerProfile;

    const-string v2, "SAP Server"

    const-string v3, "codeaurora.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_2
    new-instance v1, Lorg/flerovium/settings/bluetooth/PbapServerProfile;

    invoke-direct {v1, p1}, Lorg/flerovium/settings/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lorg/flerovium/settings/bluetooth/PbapServerProfile;

    .line 151
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lorg/flerovium/settings/bluetooth/PbapServerProfile;

    const-string v2, "PBAP Server"

    const-string v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method static synthetic access$000(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private addPanProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lorg/flerovium/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 231
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method private addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lorg/flerovium/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 224
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method


# virtual methods
.method addServiceListener(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 295
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 305
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 306
    .local v1, "l":Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 308
    .end local v1    # "l":Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 312
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 313
    .local v1, "listener":Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 315
    .end local v1    # "listener":Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method getA2dpProfile()Lorg/flerovium/settings/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getA2dpSinkProfile()Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHeadsetProfile()Lorg/flerovium/settings/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getMapProfile()Lorg/flerovium/settings/bluetooth/MapProfile;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

    return-object v0
.end method

.method getPbapProfile()Lorg/flerovium/settings/bluetooth/PbapServerProfile;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lorg/flerovium/settings/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    .line 322
    .local v0, "profile":Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 333
    :goto_0
    monitor-exit p0

    return v1

    .line 325
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    .line 326
    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v0}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v1

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    .line 330
    if-eqz v0, :cond_2

    .line 331
    invoke-interface {v0}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 333
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 321
    .end local v0    # "profile":Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 300
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 241
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0, v0}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 245
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 166
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 168
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP SRC profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Lorg/flerovium/settings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/flerovium/settings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    .line 170
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    if-nez v0, :cond_1

    .line 179
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP Sink profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    .line 181
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    const-string v1, "A2DPSink"

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 191
    :cond_2
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_3

    .line 192
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/flerovium/settings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    .line 195
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_3
    :goto_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 204
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lorg/flerovium/settings/bluetooth/OppProfile;

    if-nez v0, :cond_4

    .line 205
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lorg/flerovium/settings/bluetooth/OppProfile;

    invoke-direct {v0}, Lorg/flerovium/settings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lorg/flerovium/settings/bluetooth/OppProfile;

    .line 208
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lorg/flerovium/settings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 216
    return-void

    .line 173
    :cond_5
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 184
    :cond_6
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP Sink profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    :cond_7
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 210
    :cond_8
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lorg/flerovium/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_4

    .line 211
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "localUuids"    # [Landroid/os/ParcelUuid;
    .param p5, "isPanNapConnected"    # Z
    .param p6, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "profiles":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;>;"
    .local p4, "removedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;>;"
    const/4 v2, 0x2

    .line 376
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 377
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 378
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    if-nez p1, :cond_1

    .line 439
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 384
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 385
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    :cond_3
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lorg/flerovium/settings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 394
    :cond_4
    sget-object v0, Lorg/flerovium/settings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 396
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 400
    :cond_5
    sget-object v0, Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_6

    .line 402
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lorg/flerovium/settings/bluetooth/A2dpSinkProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 406
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lorg/flerovium/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_7

    .line 408
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lorg/flerovium/settings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lorg/flerovium/settings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 412
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lorg/flerovium/settings/bluetooth/HidProfile;

    if-eqz v0, :cond_9

    .line 415
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lorg/flerovium/settings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lorg/flerovium/settings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 419
    :cond_9
    if-eqz p5, :cond_a

    .line 420
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lorg/flerovium/settings/bluetooth/PanProfile;

    if-nez v0, :cond_c

    :cond_b
    if-eqz p5, :cond_d

    .line 423
    :cond_c
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lorg/flerovium/settings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lorg/flerovium/settings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 427
    :cond_d
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

    invoke-virtual {v0, p6}, Lorg/flerovium/settings/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 429
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lorg/flerovium/settings/bluetooth/MapProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lorg/flerovium/settings/bluetooth/MapProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 434
    :cond_e
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lorg/flerovium/settings/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lorg/flerovium/settings/bluetooth/PbapServerProfile;

    invoke-virtual {v0, p6}, Lorg/flerovium/settings/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 436
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lorg/flerovium/settings/bluetooth/PbapServerProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lorg/flerovium/settings/bluetooth/PbapServerProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
