.class Lorg/flerovium/settings/bluetooth/BluetoothEventManager$NameChangedHandler;
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
    name = "NameChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;Lorg/flerovium/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lorg/flerovium/settings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 243
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothEventManager;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v0}, Lorg/flerovium/settings/bluetooth/BluetoothEventManager;->access$1200(Lorg/flerovium/settings/bluetooth/BluetoothEventManager;)Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/flerovium/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    .line 244
    return-void
.end method
