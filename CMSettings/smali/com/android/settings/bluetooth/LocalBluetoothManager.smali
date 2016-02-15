.class public final Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# static fields
.field private static sInstance:Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private mDiscoverableEnabler:Lorg/flerovium/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private final mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/content/Context;

.field private final mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4
    .param p1, "adapter"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    .line 77
    new-instance v0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 78
    new-instance v0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;-><init>(Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    .line 80
    new-instance v0, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mProfileManager:Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;

    .line 82
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v3, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->sInstance:Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_1

    .line 53
    invoke-static {}, Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;->getInstance()Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 54
    .local v0, "adapter":Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    if-nez v0, :cond_0

    .line 55
    const/4 v2, 0x0

    .line 62
    .end local v0    # "adapter":Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    :goto_0
    monitor-exit v3

    return-object v2

    .line 58
    .restart local v0    # "adapter":Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v0, v1}, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;-><init>(Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->sInstance:Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;

    .line 62
    .end local v0    # "adapter":Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_1
    sget-object v2, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->sInstance:Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getBluetoothAdapter()Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method getCachedDeviceManager()Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getDiscoverableEnabler()Lorg/flerovium/settings/bluetooth/BluetoothDiscoverableEnabler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lorg/flerovium/settings/bluetooth/BluetoothDiscoverableEnabler;

    return-object v0
.end method

.method getEventManager()Lorg/flerovium/settings/bluetooth/BluetoothEventManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    return-object v0
.end method

.method getProfileManager()Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mProfileManager:Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 102
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
