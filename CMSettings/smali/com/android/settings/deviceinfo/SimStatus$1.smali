.class Lorg/flerovium/settings/deviceinfo/SimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/SimStatus$1;->this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, "settingss":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 122
    .end local v2    # "settingss":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v2    # "settingss":Landroid/os/Bundle;
    :cond_1
    const-string v4, "message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 115
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/flerovium/settings/deviceinfo/SimStatus$1;->this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;

    # getter for: Lorg/flerovium/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lorg/flerovium/settings/deviceinfo/SimStatus;->access$000(Lorg/flerovium/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 118
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "latestAreaInfo":Ljava/lang/String;
    iget-object v4, p0, Lorg/flerovium/settings/deviceinfo/SimStatus$1;->this$0:Lorg/flerovium/settings/deviceinfo/SimStatus;

    # invokes: Lorg/flerovium/settings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lorg/flerovium/settings/deviceinfo/SimStatus;->access$100(Lorg/flerovium/settings/deviceinfo/SimStatus;Ljava/lang/String;)V

    goto :goto_0
.end method
