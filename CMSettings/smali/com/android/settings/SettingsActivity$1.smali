.class Lorg/flerovium/settings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lorg/flerovium/settings/SettingsActivity$1;->this$0:Lorg/flerovium/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 347
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-static {p2}, Lorg/flerovium/settings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 351
    .local v1, "batteryPresent":Z
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity$1;->this$0:Lorg/flerovium/settings/SettingsActivity;

    # getter for: Lorg/flerovium/settings/SettingsActivity;->mBatteryPresent:Z
    invoke-static {v2}, Lorg/flerovium/settings/SettingsActivity;->access$000(Lorg/flerovium/settings/SettingsActivity;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 352
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity$1;->this$0:Lorg/flerovium/settings/SettingsActivity;

    # setter for: Lorg/flerovium/settings/SettingsActivity;->mBatteryPresent:Z
    invoke-static {v2, v1}, Lorg/flerovium/settings/SettingsActivity;->access$002(Lorg/flerovium/settings/SettingsActivity;Z)Z

    .line 353
    iget-object v2, p0, Lorg/flerovium/settings/SettingsActivity$1;->this$0:Lorg/flerovium/settings/SettingsActivity;

    const/4 v3, 0x1

    # invokes: Lorg/flerovium/settings/SettingsActivity;->invalidateCategories(Z)V
    invoke-static {v2, v3}, Lorg/flerovium/settings/SettingsActivity;->access$100(Lorg/flerovium/settings/SettingsActivity;Z)V

    .line 356
    .end local v1    # "batteryPresent":Z
    :cond_0
    return-void
.end method
