.class Lorg/flerovium/settings/bluetooth/BluetoothSettings$1;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/BluetoothSettings$1;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/BluetoothSettings$1;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothSettings;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lorg/flerovium/settings/bluetooth/BluetoothSettings;->access$000(Lorg/flerovium/settings/bluetooth/BluetoothSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/BluetoothSettings$1;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothSettings;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothSettings;->mActivity:Lorg/flerovium/settings/SettingsActivity;
    invoke-static {v0}, Lorg/flerovium/settings/bluetooth/BluetoothSettings;->access$100(Lorg/flerovium/settings/bluetooth/BluetoothSettings;)Lorg/flerovium/settings/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/flerovium/settings/SettingsActivity;->invalidateOptionsMenu()V

    .line 110
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/BluetoothSettings$1;->this$0:Lorg/flerovium/settings/bluetooth/BluetoothSettings;

    # getter for: Lorg/flerovium/settings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lorg/flerovium/settings/bluetooth/BluetoothSettings;->access$000(Lorg/flerovium/settings/bluetooth/BluetoothSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 113
    return-void
.end method
