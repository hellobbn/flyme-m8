.class final Lorg/flerovium/settings/bluetooth/DunServerProfile$DunServiceListener;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/bluetooth/DunServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DunServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/bluetooth/DunServerProfile;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/bluetooth/DunServerProfile;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/flerovium/settings/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/DunServerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/bluetooth/DunServerProfile;Lorg/flerovium/settings/bluetooth/DunServerProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/bluetooth/DunServerProfile;
    .param p2, "x1"    # Lorg/flerovium/settings/bluetooth/DunServerProfile$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/flerovium/settings/bluetooth/DunServerProfile$DunServiceListener;-><init>(Lorg/flerovium/settings/bluetooth/DunServerProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 64
    # getter for: Lorg/flerovium/settings/bluetooth/DunServerProfile;->V:Z
    invoke-static {}, Lorg/flerovium/settings/bluetooth/DunServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DunServerProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/DunServerProfile;

    check-cast p2, Landroid/bluetooth/BluetoothDun;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lorg/flerovium/settings/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;
    invoke-static {v0, p2}, Lorg/flerovium/settings/bluetooth/DunServerProfile;->access$102(Lorg/flerovium/settings/bluetooth/DunServerProfile;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;

    .line 66
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/DunServerProfile;

    const/4 v1, 0x1

    # setter for: Lorg/flerovium/settings/bluetooth/DunServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/bluetooth/DunServerProfile;->access$202(Lorg/flerovium/settings/bluetooth/DunServerProfile;Z)Z

    .line 67
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 70
    # getter for: Lorg/flerovium/settings/bluetooth/DunServerProfile;->V:Z
    invoke-static {}, Lorg/flerovium/settings/bluetooth/DunServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DunServerProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lorg/flerovium/settings/bluetooth/DunServerProfile;

    const/4 v1, 0x0

    # setter for: Lorg/flerovium/settings/bluetooth/DunServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/bluetooth/DunServerProfile;->access$202(Lorg/flerovium/settings/bluetooth/DunServerProfile;Z)Z

    .line 72
    return-void
.end method