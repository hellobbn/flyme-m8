.class Lorg/flerovium/settings/wifi/WifiEnabler$2;
.super Landroid/os/Handler;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WifiEnabler;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WifiEnabler$2;->this$0:Lorg/flerovium/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 78
    .local v0, "isWiFiOn":Z
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WifiEnabler$2;->this$0:Lorg/flerovium/settings/wifi/WifiEnabler;

    # getter for: Lorg/flerovium/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WifiEnabler;->access$300(Lorg/flerovium/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/flerovium/settings/search/Index;->getInstance(Landroid/content/Context;)Lorg/flerovium/settings/search/Index;

    move-result-object v1

    const-class v2, Lorg/flerovium/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lorg/flerovium/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
