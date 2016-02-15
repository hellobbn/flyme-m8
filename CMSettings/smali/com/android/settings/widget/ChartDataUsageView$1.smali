.class Lorg/flerovium/settings/widget/ChartDataUsageView$1;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$1;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/flerovium/settings/widget/ChartSweepView;

    .line 95
    .local v0, "sweep":Lorg/flerovium/settings/widget/ChartSweepView;
    iget-object v1, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$1;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # invokes: Lorg/flerovium/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lorg/flerovium/settings/widget/ChartSweepView;)V
    invoke-static {v1, v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$000(Lorg/flerovium/settings/widget/ChartDataUsageView;Lorg/flerovium/settings/widget/ChartSweepView;)V

    .line 96
    iget-object v1, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$1;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # invokes: Lorg/flerovium/settings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$100(Lorg/flerovium/settings/widget/ChartDataUsageView;)V

    .line 99
    iget-object v1, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$1;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    const/4 v2, 0x1

    # invokes: Lorg/flerovium/settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lorg/flerovium/settings/widget/ChartSweepView;Z)V
    invoke-static {v1, v0, v2}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$200(Lorg/flerovium/settings/widget/ChartDataUsageView;Lorg/flerovium/settings/widget/ChartSweepView;Z)V

    .line 100
    return-void
.end method
