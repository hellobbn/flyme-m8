.class Lorg/flerovium/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lorg/flerovium/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;Lorg/flerovium/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lorg/flerovium/settings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 194
    const-string v4, "android.bluetooth.device.settings.RSSI"

    const/16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 195
    .local v3, "rssi":S
    const-string v4, "android.bluetooth.device.settings.CLASS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 196
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    const-string v4, "android.bluetooth.device.settings.NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1200(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 200
    .local v1, "cachedDevice":Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_0

    .line 201
    iget-object v4, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1200(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1000(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mProfileManager:Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v6}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1300(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p3}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;Lorg/flerovium/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 202
    const-string v4, "BluetoothEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # invokes: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v4, v1}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1400(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;)V

    .line 207
    :cond_0
    invoke-virtual {v1, v3}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 208
    invoke-virtual {v1, v0}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 209
    invoke-virtual {v1, v2}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->setNewName(Ljava/lang/String;)V

    .line 210
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 211
    return-void
.end method
