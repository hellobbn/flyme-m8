.class Lorg/flerovium/settings/deviceinfo/Status$4;
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
    .line 252
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/Status$4;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "action":Ljava/lang/String;
    # getter for: Lorg/flerovium/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;
    invoke-static {}, Lorg/flerovium/settings/deviceinfo/Status;->access$700()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lorg/flerovium/settings/deviceinfo/Status$4;->this$0:Lorg/flerovium/settings/deviceinfo/Status;

    # getter for: Lorg/flerovium/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/flerovium/settings/deviceinfo/Status;->access$800(Lorg/flerovium/settings/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    :cond_0
    return-void
.end method
