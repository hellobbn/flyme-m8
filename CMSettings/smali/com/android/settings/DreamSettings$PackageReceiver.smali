.class Lorg/flerovium/settings/DreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DreamSettings;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lorg/flerovium/settings/DreamSettings$PackageReceiver;->this$0:Lorg/flerovium/settings/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/DreamSettings;Lorg/flerovium/settings/DreamSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/DreamSettings;
    .param p2, "x1"    # Lorg/flerovium/settings/DreamSettings$1;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lorg/flerovium/settings/DreamSettings$PackageReceiver;-><init>(Lorg/flerovium/settings/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 367
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lorg/flerovium/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/DreamSettings;->access$200(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lorg/flerovium/settings/DreamSettings$PackageReceiver;->this$0:Lorg/flerovium/settings/DreamSettings;

    # invokes: Lorg/flerovium/settings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lorg/flerovium/settings/DreamSettings;->access$400(Lorg/flerovium/settings/DreamSettings;)V

    .line 369
    return-void
.end method
