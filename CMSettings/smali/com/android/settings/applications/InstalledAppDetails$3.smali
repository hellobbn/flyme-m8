.class Lorg/flerovium/settings/applications/InstalledAppDetails$3;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 1394
    iput-object p1, p0, Lorg/flerovium/settings/applications/InstalledAppDetails$3;->this$0:Lorg/flerovium/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1397
    iget-object v1, p0, Lorg/flerovium/settings/applications/InstalledAppDetails$3;->this$0:Lorg/flerovium/settings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lorg/flerovium/settings/applications/InstalledAppDetails$3;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lorg/flerovium/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V
    invoke-static {v1, v0}, Lorg/flerovium/settings/applications/InstalledAppDetails;->access$1700(Lorg/flerovium/settings/applications/InstalledAppDetails;Z)V

    .line 1398
    return-void

    .line 1397
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
