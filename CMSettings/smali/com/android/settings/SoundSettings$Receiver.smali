.class Lorg/flerovium/settings/SoundSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lorg/flerovium/settings/SoundSettings;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lorg/flerovium/settings/SoundSettings$Receiver;->this$0:Lorg/flerovium/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/SoundSettings;Lorg/flerovium/settings/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/SoundSettings;
    .param p2, "x1"    # Lorg/flerovium/settings/SoundSettings$1;

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lorg/flerovium/settings/SoundSettings$Receiver;-><init>(Lorg/flerovium/settings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 595
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lorg/flerovium/settings/SoundSettings$Receiver;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mHandler:Lorg/flerovium/settings/SoundSettings$H;
    invoke-static {v1}, Lorg/flerovium/settings/SoundSettings;->access$200(Lorg/flerovium/settings/SoundSettings;)Lorg/flerovium/settings/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/flerovium/settings/SoundSettings$H;->sendEmptyMessage(I)Z

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lorg/flerovium/settings/SoundSettings$Receiver;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mHandler:Lorg/flerovium/settings/SoundSettings$H;
    invoke-static {v1}, Lorg/flerovium/settings/SoundSettings;->access$200(Lorg/flerovium/settings/SoundSettings;)Lorg/flerovium/settings/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/flerovium/settings/SoundSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 581
    iget-boolean v1, p0, Lorg/flerovium/settings/SoundSettings$Receiver;->mRegistered:Z

    if-ne v1, p1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 582
    :cond_0
    if-eqz p1, :cond_1

    .line 583
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 584
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lorg/flerovium/settings/SoundSettings$Receiver;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/SoundSettings;->access$700(Lorg/flerovium/settings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-boolean p1, p0, Lorg/flerovium/settings/SoundSettings$Receiver;->mRegistered:Z

    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lorg/flerovium/settings/SoundSettings$Receiver;->this$0:Lorg/flerovium/settings/SoundSettings;

    # getter for: Lorg/flerovium/settings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/SoundSettings;->access$700(Lorg/flerovium/settings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method
