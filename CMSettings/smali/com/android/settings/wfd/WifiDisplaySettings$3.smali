.class Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;
.super Landroid/preference/SwitchPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 379
    iget-object v1, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    # getter for: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$300(Lorg/flerovium/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v1, v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$302(Lorg/flerovium/settings/wfd/WifiDisplaySettings;Z)Z

    .line 380
    iget-object v0, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    # getter for: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$300(Lorg/flerovium/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    # invokes: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->startAutoGO()V
    invoke-static {v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$400(Lorg/flerovium/settings/wfd/WifiDisplaySettings;)V

    .line 385
    :goto_1
    iget-object v0, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    # getter for: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$300(Lorg/flerovium/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;->setChecked(Z)V

    .line 386
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/flerovium/settings/wfd/WifiDisplaySettings$3;->this$0:Lorg/flerovium/settings/wfd/WifiDisplaySettings;

    # invokes: Lorg/flerovium/settings/wfd/WifiDisplaySettings;->stopAutoGO()V
    invoke-static {v0}, Lorg/flerovium/settings/wfd/WifiDisplaySettings;->access$500(Lorg/flerovium/settings/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
