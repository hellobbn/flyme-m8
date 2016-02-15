.class Lorg/flerovium/settings/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lorg/flerovium/settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/widget/ChartDataUsageView;
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
    .line 291
    iput-object p1, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lorg/flerovium/settings/widget/ChartSweepView;Z)V
    .locals 2
    .param p1, "sweep"    # Lorg/flerovium/settings/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 294
    if-eqz p2, :cond_2

    .line 295
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # invokes: Lorg/flerovium/settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lorg/flerovium/settings/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$300(Lorg/flerovium/settings/widget/ChartDataUsageView;Lorg/flerovium/settings/widget/ChartSweepView;)V

    .line 296
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # invokes: Lorg/flerovium/settings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$100(Lorg/flerovium/settings/widget/ChartDataUsageView;)V

    .line 298
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mSweepWarning:Lorg/flerovium/settings/widget/ChartSweepView;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$400(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mListener:Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$500(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mListener:Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$500(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mSweepLimit:Lorg/flerovium/settings/widget/ChartSweepView;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$600(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mListener:Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$500(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mListener:Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$500(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    # invokes: Lorg/flerovium/settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lorg/flerovium/settings/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$200(Lorg/flerovium/settings/widget/ChartDataUsageView;Lorg/flerovium/settings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lorg/flerovium/settings/widget/ChartSweepView;)V
    .locals 1
    .param p1, "sweep"    # Lorg/flerovium/settings/widget/ChartSweepView;

    .prologue
    .line 311
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mSweepWarning:Lorg/flerovium/settings/widget/ChartSweepView;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$400(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mListener:Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$500(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mListener:Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$500(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mSweepLimit:Lorg/flerovium/settings/widget/ChartSweepView;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$600(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mListener:Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$500(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/flerovium/settings/widget/ChartDataUsageView$2;->this$0:Lorg/flerovium/settings/widget/ChartDataUsageView;

    # getter for: Lorg/flerovium/settings/widget/ChartDataUsageView;->mListener:Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView;->access$500(Lorg/flerovium/settings/widget/ChartDataUsageView;)Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
