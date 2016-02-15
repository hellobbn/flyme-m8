.class Lorg/flerovium/settings/wfd/WifiDisplaySettings$15;
.super Landroid/database/ContentObserver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 611
    iput-object p1, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$15;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 614
    iget-object v0, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$15;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x1

    # invokes: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$1200(Lorg/flerovium/settings/wfd/WifiDisplaySettings;I)V

    .line 615
    return-void
.end method
