.class public interface abstract Lorg/flerovium/settings/widget/ChartDataUsageView$DataUsageChartListener;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataUsageChartListener"
.end annotation


# virtual methods
.method public abstract onLimitChanged()V
.end method

.method public abstract onWarningChanged()V
.end method

.method public abstract requestLimitEdit()V
.end method

.method public abstract requestWarningEdit()V
.end method
