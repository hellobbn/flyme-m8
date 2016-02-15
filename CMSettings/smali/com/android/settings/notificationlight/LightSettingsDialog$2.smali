.class Lorg/flerovium/settings/notificationlight/LightSettingsDialog$2;
.super Landroid/os/Handler;
.source "LightSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/notificationlight/LightSettingsDialog;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lorg/flerovium/settings/notificationlight/LightSettingsDialog$2;->this$0:Lorg/flerovium/settings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 266
    iget-object v0, p0, Lorg/flerovium/settings/notificationlight/LightSettingsDialog$2;->this$0:Lorg/flerovium/settings/notificationlight/LightSettingsDialog;

    # invokes: Lorg/flerovium/settings/notificationlight/LightSettingsDialog;->updateLed()V
    invoke-static {v0}, Lorg/flerovium/settings/notificationlight/LightSettingsDialog;->access$200(Lorg/flerovium/settings/notificationlight/LightSettingsDialog;)V

    .line 267
    return-void
.end method
