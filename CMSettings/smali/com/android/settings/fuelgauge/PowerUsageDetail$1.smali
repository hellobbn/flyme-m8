.class Lorg/flerovium/settings/fuelgauge/PowerUsageDetail$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/fuelgauge/PowerUsageDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/fuelgauge/PowerUsageDetail;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lorg/flerovium/settings/fuelgauge/PowerUsageDetail$1;->this$0:Lorg/flerovium/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 662
    iget-object v0, p0, Lorg/flerovium/settings/fuelgauge/PowerUsageDetail$1;->this$0:Lorg/flerovium/settings/fuelgauge/PowerUsageDetail;

    # getter for: Lorg/flerovium/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;
    invoke-static {v0}, Lorg/flerovium/settings/fuelgauge/PowerUsageDetail;->access$000(Lorg/flerovium/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lorg/flerovium/settings/fuelgauge/PowerUsageDetail$1;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 663
    return-void

    .line 662
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
