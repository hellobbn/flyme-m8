.class Lorg/flerovium/settings/wfd/WifiDisplaySettings$13;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lorg/flerovium/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$13;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 595
    iget-object v1, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$13;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    # getter for: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$1000(Lorg/flerovium/settings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 596
    .local v0, "changes":I
    iget-object v1, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$13;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    # setter for: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1, v2}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$1002(Lorg/flerovium/settings/wfd/WifiDisplaySettings;I)I

    .line 597
    iget-object v1, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$13;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    # invokes: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->update(I)V
    invoke-static {v1, v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$1100(Lorg/flerovium/settings/wfd/WifiDisplaySettings;I)V

    .line 598
    return-void
.end method
