.class Lorg/flerovium/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;Lorg/flerovium/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lorg/flerovium/settings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 158
    const-string v3, "android.bluetooth.adapter.settings.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 161
    .local v2, "state":I
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v3}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1000(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/flerovium/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 163
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1100(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 164
    :try_start_0
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1100(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/bluetooth/BluetoothCallback;

    .line 165
    .local v0, "callback":Lorg/flerovium/settings/bluetooth/BluetoothCallback;
    invoke-interface {v0, v2}, Lorg/flerovium/settings/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_0

    .line 167
    .end local v0    # "callback":Lorg/flerovium/settings/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iget-object v3, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1200(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    .line 170
    return-void
.end method
