.class Lorg/flerovium/settings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1393
    iput-object p1, p0, Lorg/flerovium/settings/DataUsageSummary$13;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1401
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$13;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$13;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChart:Lorg/flerovium/settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lorg/flerovium/settings/DataUsageSummary;->access$1500(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lorg/flerovium/settings/DataUsageSummary;->access$1000(Lorg/flerovium/settings/DataUsageSummary;J)V

    .line 1402
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1396
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$13;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$13;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChart:Lorg/flerovium/settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lorg/flerovium/settings/DataUsageSummary;->access$1500(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lorg/flerovium/settings/DataUsageSummary;->access$2600(Lorg/flerovium/settings/DataUsageSummary;J)V

    .line 1397
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$13;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary$LimitEditorFragment;->show(Lorg/flerovium/settings/DataUsageSummary;)V

    .line 1412
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$13;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary$WarningEditorFragment;->show(Lorg/flerovium/settings/DataUsageSummary;)V

    .line 1407
    return-void
.end method
