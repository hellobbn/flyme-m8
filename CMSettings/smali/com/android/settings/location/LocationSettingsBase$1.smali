.class Lorg/flerovium/settings/location/LocationSettingsBase$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/location/LocationSettingsBase;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/location/LocationSettingsBase;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/flerovium/settings/location/LocationSettingsBase$1;->this$0:Lorg/flerovium/settings/location/LocationSettingsBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const-string v0, "LocationSettingsBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "LocationSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received location mode change intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/location/LocationSettingsBase$1;->this$0:Lorg/flerovium/settings/location/LocationSettingsBase;

    invoke-virtual {v0}, Lorg/flerovium/settings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 61
    return-void
.end method
