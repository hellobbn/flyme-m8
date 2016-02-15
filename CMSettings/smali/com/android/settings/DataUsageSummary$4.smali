.class Lorg/flerovium/settings/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 726
    iput-object p1, p0, Lorg/flerovium/settings/DataUsageSummary$4;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v0, p0, Lorg/flerovium/settings/DataUsageSummary$4;->this$0:Lorg/flerovium/settings/DataUsageSummary;

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lorg/flerovium/settings/DataUsageSummary;->access$100(Lorg/flerovium/settings/DataUsageSummary;)V

    .line 731
    return-void
.end method
