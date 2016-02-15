.class Lorg/flerovium/settings/sim/MultiSimEnablerPreference$6;
.super Landroid/os/Handler;
.source "MultiSimEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lorg/flerovium/settings/sim/MultiSimEnablerPreference$6;->this$0:Lorg/flerovium/settings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 460
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 474
    :goto_0
    return-void

    .line 462
    :pswitch_0
    iget-object v0, p0, Lorg/flerovium/settings/sim/MultiSimEnablerPreference$6;->this$0:Lorg/flerovium/settings/sim/MultiSimEnablerPreference;

    const-string v1, "EVT_SHOW_RESULT_DLG"

    # invokes: Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->access$700(Lorg/flerovium/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lorg/flerovium/settings/sim/MultiSimEnablerPreference$6;->this$0:Lorg/flerovium/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->update()V

    .line 464
    iget-object v0, p0, Lorg/flerovium/settings/sim/MultiSimEnablerPreference$6;->this$0:Lorg/flerovium/settings/sim/MultiSimEnablerPreference;

    # invokes: Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->dismissProgressDialog()V
    invoke-static {v0}, Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->access$1000(Lorg/flerovium/settings/sim/MultiSimEnablerPreference;)V

    .line 465
    iget-object v0, p0, Lorg/flerovium/settings/sim/MultiSimEnablerPreference$6;->this$0:Lorg/flerovium/settings/sim/MultiSimEnablerPreference;

    # getter for: Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->access$1100(Lorg/flerovium/settings/sim/MultiSimEnablerPreference;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 468
    :pswitch_1
    iget-object v0, p0, Lorg/flerovium/settings/sim/MultiSimEnablerPreference$6;->this$0:Lorg/flerovium/settings/sim/MultiSimEnablerPreference;

    const-string v1, "EVT_PROGRESS_DLG_TIME_OUT"

    # invokes: Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->access$700(Lorg/flerovium/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lorg/flerovium/settings/sim/MultiSimEnablerPreference$6;->this$0:Lorg/flerovium/settings/sim/MultiSimEnablerPreference;

    # invokes: Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->dismissProgressDialog()V
    invoke-static {v0}, Lorg/flerovium/settings/sim/MultiSimEnablerPreference;->access$1000(Lorg/flerovium/settings/sim/MultiSimEnablerPreference;)V

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
