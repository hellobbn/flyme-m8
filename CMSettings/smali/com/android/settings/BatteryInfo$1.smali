.class Lorg/flerovium/settings/BatteryInfo$1;
.super Landroid/os/Handler;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/BatteryInfo;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/BatteryInfo;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/flerovium/settings/BatteryInfo$1;->this$0:Lorg/flerovium/settings/BatteryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lorg/flerovium/settings/BatteryInfo$1;->this$0:Lorg/flerovium/settings/BatteryInfo;

    # invokes: Lorg/flerovium/settings/BatteryInfo;->updateBatteryStats()V
    invoke-static {v0}, Lorg/flerovium/settings/BatteryInfo;->access$000(Lorg/flerovium/settings/BatteryInfo;)V

    .line 58
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lorg/flerovium/settings/BatteryInfo$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
