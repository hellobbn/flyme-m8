.class final Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/bluetooth/A2dpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "A2dpServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/bluetooth/A2dpProfile;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/bluetooth/A2dpProfile;Lorg/flerovium/settings/bluetooth/A2dpProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/bluetooth/A2dpProfile;
    .param p2, "x1"    # Lorg/flerovium/settings/bluetooth/A2dpProfile$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lorg/flerovium/settings/bluetooth/A2dpProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 60
    # getter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->V:Z
    invoke-static {}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "A2dpProfile"

    const-string v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v3, p2}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$102(Lorg/flerovium/settings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 63
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    # getter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v3}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$100(Lorg/flerovium/settings/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 65
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 66
    .local v2, "nextDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    # getter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$200(Lorg/flerovium/settings/bluetooth/A2dpProfile;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 68
    .local v0, "device":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 69
    const-string v3, "A2dpProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A2dpProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    # getter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$200(Lorg/flerovium/settings/bluetooth/A2dpProfile;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    # getter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$300(Lorg/flerovium/settings/bluetooth/A2dpProfile;)Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    # getter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->mProfileManager:Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$400(Lorg/flerovium/settings/bluetooth/A2dpProfile;)Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 72
    :cond_1
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lorg/flerovium/settings/bluetooth/LocalBluetoothProfile;I)V

    .line 73
    invoke-virtual {v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 75
    .end local v0    # "device":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    .end local v2    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    const/4 v4, 0x1

    # setter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->mIsProfileReady:Z
    invoke-static {v3, v4}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$502(Lorg/flerovium/settings/bluetooth/A2dpProfile;Z)Z

    .line 76
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 79
    # getter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->V:Z
    invoke-static {}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    # setter for: Lorg/flerovium/settings/bluetooth/A2dpProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/bluetooth/A2dpProfile;->access$502(Lorg/flerovium/settings/bluetooth/A2dpProfile;Z)Z

    .line 81
    return-void
.end method
