.class Lorg/flerovium/settings/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/Status$1;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lorg/flerovium/settings/deviceinfo/Status$1;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    # getter for: Lorg/flerovium/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v1}, Lorg/flerovium/settings/deviceinfo/Status;->access$200(Lorg/flerovium/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p2}, Lorg/flerovium/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lorg/flerovium/settings/deviceinfo/Status$1;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    # getter for: Lorg/flerovium/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v1}, Lorg/flerovium/settings/deviceinfo/Status;->access$300(Lorg/flerovium/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/deviceinfo/Status$1;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    invoke-virtual {v2}, Lorg/flerovium/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/flerovium/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    return-void
.end method
