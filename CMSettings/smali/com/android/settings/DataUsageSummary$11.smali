.class Lorg/flerovium/settings/DataUsageSummary$11;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lorg/flerovium/settings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1324
    iput-object p1, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lorg/flerovium/settings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1327
    new-instance v0, Lorg/flerovium/settings/net/ChartDataLoader;

    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-virtual {v1}, Lorg/flerovium/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lorg/flerovium/settings/DataUsageSummary;->access$1700(Lorg/flerovium/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lorg/flerovium/settings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lorg/flerovium/settings/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lorg/flerovium/settings/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lorg/flerovium/settings/net/ChartData;",
            ">;",
            "Lorg/flerovium/settings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1332
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lorg/flerovium/settings/net/ChartData;>;"
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # setter for: Lorg/flerovium/settings/DataUsageSummary;->mChartData:Lorg/flerovium/settings/net/ChartData;
    invoke-static {v0, p2}, Lorg/flerovium/settings/DataUsageSummary;->access$1802(Lorg/flerovium/settings/DataUsageSummary;Lorg/flerovium/settings/net/ChartData;)Lorg/flerovium/settings/net/ChartData;

    .line 1333
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChart:Lorg/flerovium/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$1500(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChartData:Lorg/flerovium/settings/net/ChartData;
    invoke-static {v1}, Lorg/flerovium/settings/DataUsageSummary;->access$1800(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lorg/flerovium/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1334
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChart:Lorg/flerovium/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$1500(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChartData:Lorg/flerovium/settings/net/ChartData;
    invoke-static {v1}, Lorg/flerovium/settings/DataUsageSummary;->access$1800(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lorg/flerovium/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1337
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    const/4 v1, 0x1

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/DataUsageSummary;->access$800(Lorg/flerovium/settings/DataUsageSummary;Z)V

    .line 1338
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$1900(Lorg/flerovium/settings/DataUsageSummary;)V

    .line 1341
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChartData:Lorg/flerovium/settings/net/ChartData;
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$1800(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lorg/flerovium/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$2000(Lorg/flerovium/settings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1344
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1324
    check-cast p2, Lorg/flerovium/settings/net/ChartData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/flerovium/settings/DataUsageSummary$11;->onLoadFinished(Landroid/content/Loader;Lorg/flerovium/settings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lorg/flerovium/settings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lorg/flerovium/settings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1348
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # setter for: Lorg/flerovium/settings/DataUsageSummary;->mChartData:Lorg/flerovium/settings/net/ChartData;
    invoke-static {v0, v1}, Lorg/flerovium/settings/DataUsageSummary;->access$1802(Lorg/flerovium/settings/DataUsageSummary;Lorg/flerovium/settings/net/ChartData;)Lorg/flerovium/settings/net/ChartData;

    .line 1349
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChart:Lorg/flerovium/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$1500(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1350
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$11;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # getter for: Lorg/flerovium/settings/DataUsageSummary;->mChart:Lorg/flerovium/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$1500(Lorg/flerovium/settings/DataUsageSummary;)Lorg/flerovium/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1351
    return-void
.end method
