.class Lorg/flerovium/settings/dashboard/DashboardSummary$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/flerovium/settings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lorg/flerovium/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/dashboard/DashboardSummary;Lorg/flerovium/settings/dashboard/DashboardSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/dashboard/DashboardSummary;
    .param p2, "x1"    # Lorg/flerovium/settings/dashboard/DashboardSummary$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/flerovium/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lorg/flerovium/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/flerovium/settings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lorg/flerovium/settings/dashboard/DashboardSummary;

    # invokes: Lorg/flerovium/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lorg/flerovium/settings/dashboard/DashboardSummary;->access$000(Lorg/flerovium/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    .line 65
    return-void
.end method
