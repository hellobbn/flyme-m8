.class Lorg/flerovium/settings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/flerovium/settings/IccLockSettings$1;->this$0:Lorg/flerovium/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 114
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v1, p0, Lorg/flerovium/settings/IccLockSettings$1;->this$0:Lorg/flerovium/settings/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/flerovium/settings/IccLockSettings;->iccLockChanged(Ljava/lang/Throwable;I)V
    invoke-static {v1, v2, v3}, Lorg/flerovium/settings/IccLockSettings;->access$000(Lorg/flerovium/settings/IccLockSettings;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v1, p0, Lorg/flerovium/settings/IccLockSettings$1;->this$0:Lorg/flerovium/settings/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/flerovium/settings/IccLockSettings;->iccPinChanged(Ljava/lang/Throwable;I)V
    invoke-static {v1, v2, v3}, Lorg/flerovium/settings/IccLockSettings;->access$100(Lorg/flerovium/settings/IccLockSettings;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v1, p0, Lorg/flerovium/settings/IccLockSettings$1;->this$0:Lorg/flerovium/settings/IccLockSettings;

    # invokes: Lorg/flerovium/settings/IccLockSettings;->updatePreferences()V
    invoke-static {v1}, Lorg/flerovium/settings/IccLockSettings;->access$200(Lorg/flerovium/settings/IccLockSettings;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
