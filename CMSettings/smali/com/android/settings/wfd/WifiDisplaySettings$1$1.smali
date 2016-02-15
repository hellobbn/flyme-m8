.class Lorg/flerovium/settings/wfd/WifiDisplaySettings$1$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wfd/WifiDisplaySettings$1;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/flerovium/settings/wfd/WifiDisplaySettings$1;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wfd/WifiDisplaySettings$1;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$1$1;->this$1:Lorg/flerovium/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v0, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$1$1;->this$1:Lorg/flerovium/settings/wfd/WifiDisplaySettings$1;

    iget-object v0, v0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$1;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    # getter for: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$000(Lorg/flerovium/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    .line 344
    return-void
.end method
