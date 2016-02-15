.class final Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field private final mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static onDeviceDisappeared(Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 3
    .param p0, "cachedDevice"    # Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 49
    invoke-virtual {p0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method addDevice(Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    .locals 3
    .param p1, "adapter"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    .param p2, "profileManager"    # Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 87
    new-instance v0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 89
    .local v0, "newDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v2

    .line 92
    return-object v0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized clearNonBondedDevices()V
    .locals 4

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 117
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    .line 118
    .local v0, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 119
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 122
    .end local v0    # "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void

    .line 116
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findDevice(Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 70
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    .line 71
    .local v0, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    .end local v0    # "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getCachedDevicesCopy()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 103
    .local v0, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_0
    :goto_0
    return-object v1

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized onBluetoothStateChanged(I)V
    .locals 4
    .param p1, "bluetoothState"    # I

    .prologue
    .line 165
    monitor-enter p0

    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    .line 166
    :try_start_0
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 167
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    .line 168
    .local v0, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 170
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 166
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 165
    .end local v0    # "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 179
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 141
    .local v0, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->refreshBtClass()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDeviceDeleted(Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    const-string v0, "CachedBluetoothDeviceManager"

    const-string v1, "onDeviceDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 54
    .local v0, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->refreshName()V

    .line 57
    :cond_0
    return-void
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .locals 4
    .param p1, "started"    # Z

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 128
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    .line 129
    .local v0, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    if-eqz p1, :cond_1

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 127
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 131
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 127
    .end local v0    # "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 137
    .restart local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 148
    .local v0, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->onUuidChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    .end local v0    # "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
