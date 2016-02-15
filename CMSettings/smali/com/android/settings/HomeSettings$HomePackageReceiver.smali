.class Lorg/flerovium/settings/HomeSettings$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/HomeSettings;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/flerovium/settings/HomeSettings$HomePackageReceiver;->this$0:Lorg/flerovium/settings/HomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/HomeSettings;Lorg/flerovium/settings/HomeSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/HomeSettings;
    .param p2, "x1"    # Lorg/flerovium/settings/HomeSettings$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/flerovium/settings/HomeSettings$HomePackageReceiver;-><init>(Lorg/flerovium/settings/HomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lorg/flerovium/settings/HomeSettings$HomePackageReceiver;->this$0:Lorg/flerovium/settings/HomeSettings;

    # invokes: Lorg/flerovium/settings/HomeSettings;->buildHomeActivitiesList()V
    invoke-static {v0}, Lorg/flerovium/settings/HomeSettings;->access$000(Lorg/flerovium/settings/HomeSettings;)V

    .line 77
    invoke-static {p1}, Lorg/flerovium/settings/search/Index;->getInstance(Landroid/content/Context;)Lorg/flerovium/settings/search/Index;

    move-result-object v0

    const-class v1, Lorg/flerovium/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/flerovium/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 79
    return-void
.end method
